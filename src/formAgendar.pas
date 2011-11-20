unit formAgendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  ComCtrls, ExtCtrls, Planner, Menus, PlannerCal, DBPlannerCal,
  StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DateUtils;

procedure createfrmAgendar;

type
  TfrmAgendar = class(TfrmBase)
    Panel1: TPanel;
    Panel2: TPanel;
    panelDetalhes: TPanel;
    Splitter1: TSplitter;
    srcSelf: TDataSource;
    dtsProfissional: TZMySqlQuery;
    srcProfissional: TDataSource;
    pcal: TPlannerCalendarGroup;
    planner: TPlanner;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtObs: TDBMemo;
    dtsSelf: TZMySqlTable;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtServico: TDBLookupComboBox;
    srcClientes: TDataSource;
    dtsClientes: TZMySqlQuery;
    srcServicos: TDataSource;
    dtsServicos: TZMySqlQuery;
    dtsProfissionalIDProfissional: TIntegerField;
    dtsProfissionalNome: TStringField;
    dtsClientesIDCliente: TIntegerField;
    dtsClientesNome: TStringField;
    edtProfissional: TDBLookupComboBox;
    edtCliente: TDBLookupComboBox;
    popupItem: TPopupMenu;
    Remover1: TMenuItem;
    popupPlanner: TPopupMenu;
    Adicionar1: TMenuItem;
    navegador: TDBNavigator;
    dtsSelfIDAgenda: TIntegerField;
    dtsSelfSTARTTIME: TDateTimeField;
    dtsSelfENDTIME: TDateTimeField;
    dtsSelfIDProfissional: TIntegerField;
    dtsSelfIDCliente: TIntegerField;
    dtsSelfNomeCliente: TStringField;
    dtsSelfDuracaoHoras: TIntegerField;
    dtsSelfObservacoes: TMemoField;
    dtsSelfIDServico: TIntegerField;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Splitter2: TSplitter;
    procedure dtsSelfAfterPost(DataSet: TDataSet);
    procedure PlannerItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure PlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pcalDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure plannerItemRightClick(Sender: TObject; Item: TPlannerItem);
    procedure plannerItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure plannerPlannerLeftClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure plannerPlannerRightClick(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure Adicionar1Click(Sender: TObject);
    procedure dtsSelfBeforePost(DataSet: TDataSet);
    procedure dtsSelfAfterCancel(DataSet: TDataSet);
    procedure Remover1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure plannerItemMove(Sender: TObject; Item: TPlannerItem;
      FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
    procedure plannerItemSize(Sender: TObject; Item: TPlannerItem;
      Position, FromBegin, FromEnd, ToBegin, ToEnd: Integer);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    current_item: TPlannerItem;
    buscando:  boolean;
    procedure change_date(newdate: TDateTime);
    procedure ResetFields;
    procedure criaCompromisso;
    procedure seleciona_item(Item: TPlannerItem);
    procedure apaga_item(Item: TPlannerItem);
  public
    { Public declarations }
  end;

const
   TAMANHO_ITEM=1;
var
  frmAgendar: TfrmAgendar;

implementation

uses DM_Main, formBuscarProf, formBuscarCliente, formMain,
  formCadastrarCliente, unitTheWayUtils;

{$R *.dfm}

procedure createfrmAgendar;
begin
   if (frmAgendar=nil) then
      frmAgendar:= TfrmAgendar.create(Application);
   frmAgendar.Show;
end;


procedure TfrmAgendar.ResetFields;
var
    ano, mes, dia:  word;
begin
    //Reinicia operaçções
    if buscando then exit;
    decodedate(date, ano, mes, dia);
    pcal.Day := dia;
    pcal.Month := mes;
    if mes<>1 then
      pcal.StartMonth := mes-1
    else
      pcal.StartMonth := 12;
    pcal.Year := ano;
    panelDetalhes.Visible := False;
end;

procedure TfrmAgendar.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
  dtsSelf.ApplyUpdates;
  planner.Enabled := True;
  pcal.Enabled := True;
  if current_item <> nil then begin
      current_item.Text.Clear;
      if not dtsSelf.FieldByName('IDProfissional').IsNull then
         current_item.Text.Add('  Prof.:'+dtsProfissional.fieldByName('Nome').AsString);
      if not dtsSelf.FieldByName('IDCliente').IsNull then
         current_item.Text.Add('Cliente:'+dtsClientes.fieldByName('Nome').AsString);
      if not dtsSelf.FieldByName('IDServico').IsNull then
         current_item.Text.Add('Serviço:'+dtsServicos.fieldByName('Descricao').AsString);
      if not dtsSelf.IsEmpty then begin
         current_item.tag := dtsSelf.fieldByName('IDAgenda').AsInteger;
      end else begin
         beep;
         planner.FreeItem(current_item);
      end;
  end;
  current_item:=nil;
  change_date(encodedate(pcal.Year,pcal.Month,pcal.Day));
end;

procedure TfrmAgendar.PlannerItemInsert(Sender: TObject; Position, FromSel,
  FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  inherited;
   criaCompromisso;
end;

procedure TfrmAgendar.PlannerItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
   apaga_item(Item);
end;

procedure TfrmAgendar.FormDestroy(Sender: TObject);
begin
  inherited;
    frmAgendar:=nil;
end;

procedure TfrmAgendar.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmAgendar.pcalDaySelect(Sender: TObject; SelDate: TDateTime);
begin
  inherited;
   change_date(seldate);
end;

procedure TfrmAgendar.plannerItemRightClick(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
   seleciona_item(Item);
end;

procedure TfrmAgendar.plannerItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
   seleciona_item(Item);
end;

procedure TfrmAgendar.plannerPlannerLeftClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  inherited;
   panelDetalhes.Visible := False;
end;

procedure TfrmAgendar.plannerPlannerRightClick(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  inherited;
   panelDetalhes.Visible := False;
end;

procedure TfrmAgendar.change_date(newdate: TDateTime);
var
    dia, mes, ano:  word;
    dia2, mes2, ano2:  word;
    pi:  TPlannerItem;
    em_loop:   boolean;
begin
   planner.Items.Clear;
   panelDetalhes.Visible := False;
   current_item:=nil;
   try
      decodedate(newdate, ano, mes, dia);
      newdate:=incday(newdate);
      decodedate(newdate, ano2, mes2, dia2);
      dtsSelf.Filter := '(STARTTIME>='+format('"%.4d-%.2d-%.2d"', [ano, mes, dia])+') and ('+'STARTTIME<'+format('"%.4d-%.2d-%.2d"', [ano2, mes2, dia2])+')';
      dtsSelf.Filtered := True;
//      frmmain.StatusBar.Panels[1].Text := IntToStr(ano)+'-'+IntToStr(mes)+'-'+IntToStr(dia);
      //dtsSelf.Refresh;
      dtsSelf.First;
      if not dtsSelf.IsEmpty then begin
         em_loop:=True;
         while em_loop do begin
            pi := planner.CreateItem;
            with pi do begin
               ItemStartTime := dtsSelf.fieldByName('STARTTIME').AsDateTime;
               ItemEndTime := dtsSelf.fieldByName('ENDTIME').AsDateTime;
               Tag := dtsSelf.fieldByName('IDAgenda').AsInteger;
               FixedPosition := False;
               ItemEnd := ItemBegin+TAMANHO_ITEM;
//               ShowMessage(IntToStr(dtsSelf.fieldByName('IDAgenda').AsInteger));
               Text.Clear;
               if not dtsSelf.FieldByName('IDProfissional').IsNull then
                  Text.Add('  Prof.:'+dtsProfissional.fieldByName('Nome').AsString);
               if not dtsSelf.FieldByName('IDCliente').IsNull then
                  Text.Add('Cliente:'+dtsClientes.fieldByName('Nome').AsString);
               if not dtsSelf.FieldByName('IDServico').IsNull then
                  Text.Add('Serviço:'+dtsServicos.fieldByName('Descricao').AsString);
               Update;
            end;
            if dtsSelf.RecNo>=dtsSelf.RecordCount then em_loop:=False
            else dtsSelf.Next;
         end;
      end;
   except
      beep;
      ShowMessage('Erro ao verificar os compromissos desse dia!');
   end;
end;


procedure TfrmAgendar.Adicionar1Click(Sender: TObject);
begin
  inherited;
   criaCompromisso;
end;

procedure TfrmAgendar.criaCompromisso;
var
   pi:   TPlannerItem;
   ano, mes, dia: word;
   numMinutes:  integer;
begin
   ano := pcal.Year;
   mes := pcal.Month;
   dia := pcal.Day;
   try
      dtsSelf.Post;
   except
   end;
   planner.Enabled := False;
   pcal.Enabled := False;
   pi := Planner.CreateItemAtSelection;
   with pi do begin
      FixedPosition := False;
      ItemEnd := ItemBegin+TAMANHO_ITEM;
      Text.Clear;
      Text.Add('  Novo compromisso');
      Update;
   end;
   current_item := pi;
   dtsSelf.Insert;
   numMinutes:=(planner.Display.DisplayStart+pi.itemBegin)*planner.Display.DisplayUnit;
   dtsSelf.FieldByName('STARTTIME').AsDateTime := encodedatetime(ano, mes, dia, numminutes div 60, numminutes mod 60,0,0);
   numMinutes:=(planner.Display.DisplayStart+pi.itemEnd)*planner.Display.DisplayUnit;
   dtsSelf.FieldByName('ENDTIME').AsDateTime := encodedatetime(ano, mes, dia,numminutes div 60, numminutes mod 60,0,0);
   panelDetalhes.Visible := true;
   edtProfissional.SetFocus;
end;

procedure TfrmAgendar.dtsSelfBeforePost(DataSet: TDataSet);
begin
  inherited;
   if dtsSelf.FieldByName('IDCliente').IsNull then begin
      beep;
      abort;
   end;
   if dtsSelf.FieldByName('STARTTIME').IsNull then begin
      beep;
      abort;
   end;
   if dtsSelf.FieldByName('IDProfissional').IsNull then begin
      beep;
      abort;
   end;
end;

procedure TfrmAgendar.dtsSelfAfterCancel(DataSet: TDataSet);
begin
  inherited;
   planner.FreeItem(current_item);
   planner.Enabled := True;
   pcal.Enabled := True;
end;

procedure TfrmAgendar.Remover1Click(Sender: TObject);
begin
  inherited;
   if planner.Items.selected <> nil then
      apaga_item(planner.Items.selected);
end;

procedure TfrmAgendar.seleciona_item(Item:   TPlannerItem);
var
   ano, mes, dia: word;
   ano2, mes2, dia2: word;
   tempdate:   TDate;
begin
   ano := pcal.Year;
   mes := pcal.Month;
   dia := pcal.Day;
   tempdate:= encodeDate(ano, mes, dia);
   tempdate := incday(tempdate);
   decodedate(tempdate, ano2, mes2, dia2);
   dtsSelf.Filter := '(STARTTIME>='+format('"%.4d-%.2d-%.2d"', [ano, mes, dia])+') and ('+'STARTTIME<'+format('"%.4d-%.2d-%.2d"', [ano2, mes2, dia2])+') and (IDAgenda='+IntToStr(item.Tag)+')';
   dtsSelf.Filtered := True;
   panelDetalhes.Visible := True;
end;

procedure TfrmAgendar.apaga_item(Item: TPlannerItem);
begin
   seleciona_item(Item);
   if MessageDlg('Tem certeza de que deseja apagar esse compromisso?',
      mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
      exit;
   end;
   Planner.FreeItem(Item);
   if not dtsSelf.IsEmpty then begin
       dtsSelf.Delete;
       dtsSelf.ApplyUpdates;
   end;
   panelDetalhes.Visible := false;
end;

procedure TfrmAgendar.BitBtn1Click(Sender: TObject);
var
    frmBusca:   TfrmBuscarProf;
begin
  inherited;
    if dtsSelf.IsEmpty then exit;
    //Abre a tela de busca de profissional e espera retorno
    buscando := true;
    frmMain.disable_shortcuts := True;
    frmBusca := TfrmBuscarProf.Create(Self);
    frmBusca.FormStyle := fsNormal;
    try
        frmBusca.Visible := False;
        frmBusca.ShowModal;
        if frmBusca.ModalResult = mrOk then begin
            if not frmBusca.dtsSelf.IsEmpty then begin
               dtsSelf.Edit;
               dtsSelf.fieldbyname('IDProfissional').AsInteger := frmBusca.dtsSelf.fieldbyname('IDProfissional').AsInteger;
            end else begin
                //ShowMessage('Nenhum profissional selecionado!');
                beep;
            end;
        end;
    finally
        WindowState:=wsMaximized;
        buscando := False;
        refresh;
        invalidate;
        frmBusca.Release;
        frmMain.disable_shortcuts := False;
        Application.ProcessMessages;
    end;
end;

procedure TfrmAgendar.BitBtn2Click(Sender: TObject);
var
    frmBusca:   TfrmBuscarCliente;
begin
  inherited;
    if dtsSelf.IsEmpty then exit;
    //Abre a tela de busca de clientes e espera retorno
    buscando := true;
    frmMain.disable_shortcuts := True;
    frmBusca := TfrmBuscarCliente.Create(Self);
    frmBusca.FormStyle := fsNormal;
    try
        frmBusca.Visible := False;
        frmBusca.ShowModal;
        if frmBusca.ModalResult = mrOk then begin
            if not frmBusca.dtsSelf.IsEmpty then begin
               dtsSelf.Edit;
               dtsSelf.fieldbyname('IDCliente').AsInteger := frmBusca.dtsSelf.fieldbyname('IDCliente').AsInteger;
            end else begin
                //ShowMessage('Nenhum profissional selecionado!');
                beep;
            end;
        end;
    finally
        WindowState:=wsMaximized;
        buscando := False;
        refresh;
        invalidate;
        frmBusca.Release;
        frmMain.disable_shortcuts := False;
        Application.ProcessMessages;
    end;
end;

procedure TfrmAgendar.FormCreate(Sender: TObject);
begin
  inherited;
   buscando := false;
end;

procedure TfrmAgendar.plannerItemMove(Sender: TObject; Item: TPlannerItem;
  FromBegin, FromEnd, FromPos, ToBegin, ToEnd, ToPos: Integer);
var
   ano, mes, dia: word;
   numMinutes:  integer;
begin
  inherited;
    ano := pcal.Year;
    mes := pcal.Month;
    dia := pcal.Day;
    seleciona_item(Item);
    if not dtsSelf.IsEmpty then begin
      dtsSelf.Edit;
      numMinutes:=(planner.Display.DisplayStart+tobegin)*planner.Display.DisplayUnit;
      dtsSelf.FieldByName('STARTTIME').AsDateTime := encodedatetime(ano, mes, dia, numminutes div 60, numminutes mod 60,0,0);
      numMinutes:=(planner.Display.DisplayStart+toend)*planner.Display.DisplayUnit;
      dtsSelf.FieldByName('ENDTIME').AsDateTime := encodedatetime(ano, mes, dia,numminutes div 60, numminutes mod 60,0,0);
      dtsSelf.Post;
    end;
end;

procedure TfrmAgendar.plannerItemSize(Sender: TObject; Item: TPlannerItem;
  Position, FromBegin, FromEnd, ToBegin, ToEnd: Integer);
var
   ano, mes, dia: word;
   numMinutes:  integer;
begin
  inherited;
    ano := pcal.Year;
    mes := pcal.Month;
    dia := pcal.Day;
    seleciona_item(Item);
    if not dtsSelf.IsEmpty then begin
      dtsSelf.Edit;
      numMinutes:=(planner.Display.DisplayStart+tobegin)*planner.Display.DisplayUnit;
      dtsSelf.FieldByName('STARTTIME').AsDateTime := encodedatetime(ano, mes, dia, numminutes div 60, numminutes mod 60,0,0);
      numMinutes:=(planner.Display.DisplayStart+toend)*planner.Display.DisplayUnit;
      dtsSelf.FieldByName('ENDTIME').AsDateTime := encodedatetime(ano, mes, dia,numminutes div 60, numminutes mod 60,0,0);
      dtsSelf.Post;
    end;
end;

procedure TfrmAgendar.BitBtn3Click(Sender: TObject);
begin
  inherited;
    if not verificaAcessoTela('Cadastrarcliente1', frmMain.IDProfissionalAtual) then begin
        beep;
        ShowMessage('Você não tem acesso para cadastrar clientes!');
        exit;
    end;
    buscando:=True;
    //Abre a tela de busca de cliente e espera retorno
    frmMain.disable_shortcuts := True;
    frmCadastrarCliente := TfrmCadastrarCliente.Create(Self);
    frmCadastrarCliente.FormStyle := fsNormal;
    Application.ProcessMessages;
    try
        frmCadastrarCliente.Visible := False;
        frmCadastrarCliente.ShowModal;
        if frmCadastrarCliente.ModalResult = mrOk then begin
            if not frmCadastrarCliente.dtsSelf.IsEmpty then begin
               dtsClientes.Refresh;
               dtsSelf.FieldByName('IDCliente').AsInteger:=frmCadastrarCliente.dtsSelf.FieldByName('IDCliente').AsInteger;
            end;
        end;
    finally
        WindowState:=wsMaximized;
        refresh;
        frmMain.disable_shortcuts := False;
        Application.ProcessMessages;
        buscando:=False;
        Application.ProcessMessages;
        frmCadastrarCliente.Release;
    end;
end;

end.

unit formAgendaProfissional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formCampoBase, StdCtrls, ZMySqlQuery, DB, ZQuery, ExtCtrls,
  PlannerCal, DBPlannerCal, DBCtrls, Planner, strutils, dateutils, Grids,
  DBGrids;

procedure createfrmAgendaProfissional;

type
  TfrmAgendaProfissional = class(TfrmCampoBase)
    srcSelf: TDataSource;
    srcProfissional: TDataSource;
    dtsProfissional: TZMySqlQuery;
    dtsProfissionalIDProfissional: TIntegerField;
    dtsProfissionalNome: TStringField;
    dtsClientes: TZMySqlQuery;
    dtsClientesIDCliente: TIntegerField;
    dtsClientesNome: TStringField;
    srcClientes: TDataSource;
    srcServicos: TDataSource;
    dtsServicos: TZMySqlQuery;
    Panel1: TPanel;
    pcal: TDBPlannerCalendar;
    GroupBox1: TGroupBox;
    edtEntrada: TEdit;
    DBText1: TDBText;
    planner: TPlanner;
    Bevel1: TBevel;
    DBMemo1: TDBMemo;
    dtsSelf: TZMySqlQuery;
    dtsServicosIDServico: TIntegerField;
    dtsServicosDescricao: TStringField;
    dtsSelfIDAgenda: TIntegerField;
    dtsSelfSTARTTIME: TDateTimeField;
    dtsSelfENDTIME: TDateTimeField;
    dtsSelfIDProfissional: TIntegerField;
    dtsSelfIDCliente: TIntegerField;
    dtsSelfNomeCliente: TStringField;
    dtsSelfDuracaoHoras: TIntegerField;
    dtsSelfObservacoes: TMemoField;
    dtsSelfIDServico: TIntegerField;
    dtsMark: TZMySqlQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    IntegerField4: TIntegerField;
    MemoField1: TMemoField;
    IntegerField5: TIntegerField;
    srcMark: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtEntradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pcalDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure plannerItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure plannerItemRightClick(Sender: TObject; Item: TPlannerItem);
  private
    { Private declarations }
    procedure ResetFields;
    procedure change_date(newdate: TDateTime);
    procedure seleciona_item(Item: TPlannerItem);
  public
    { Public declarations }
  end;

var
  frmAgendaProfissional: TfrmAgendaProfissional;

implementation

{$R *.dfm}

uses unitTheWayUtils, DM_main;

procedure createfrmAgendaProfissional;
begin
   if (frmAgendaProfissional=nil) then
      frmAgendaProfissional:=TfrmAgendaProfissional.Create(Application);
   frmAgendaProfissional.Show;
end;

procedure TfrmAgendaProfissional.FormDestroy(Sender: TObject);
begin
  inherited;
    frmAgendaProfissional:=nil;
end;

procedure TfrmAgendaProfissional.ResetFields;
begin
   dtsProfissional.Active := True;
   dtsSelf.Active := True;
   dtsMark.Active := True;
   dtsProfissional.filter := 'IDProfissional=0';
   dtsProfissional.filtered:=True;
   pcal.date := date;
end;

procedure TfrmAgendaProfissional.FormActivate(Sender: TObject);
begin
  inherited;
   ResetFields;
end;

procedure TfrmAgendaProfissional.edtEntradaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
   i: integer;
begin
  inherited;
   if key = VK_ESCAPE  then ResetFields;
   if (key=VK_LEFT) then begin
      pcal.Date := incday(pcal.Date, -1);
      change_date(pcal.date);
   end;
   if (key=VK_RIGHT)then begin
      pcal.Date := incday(pcal.Date);
      change_date(pcal.date);
   end;
   if (key=VK_UP) then begin
      pcal.Date := incweek(pcal.Date, -1);
      change_date(pcal.date);
   end;
   if (key=VK_DOWN) then begin
      pcal.Date := incweek(pcal.Date);
      change_date(pcal.date);
   end;

   if (key <>13) and (key <> 9) then exit;

   edtEntrada.Text := trim(edtEntrada.Text);
   edtEntrada.text := processaCodigo(edtEntrada.text);
   try
      if not VerificaProfissionalNaLoja(RightStr(edtEntrada.text, 11), dmmain.options.IDLoja) then begin
         beep;
         ShowMessage('Profissional não consta como estando na loja. Registre sua chegada primeiro.');
         edtEntrada.Clear;
      end;
      i := StrToInt(RightStr(edtEntrada.text, 11));
      dtsProfissional.Filter := 'IDProfissional='+IntToStr(i);
      dtsProfissional.Filtered := True;
      change_date(pcal.date);
      pcal.Refresh;
   except
      beep;
   end;
   edtEntrada.Clear;
   dtsMark.Active := False;
   dtsMark.Active := True;
end;

procedure TfrmAgendaProfissional.change_date(newdate: TDateTime);
var
    dia, mes, ano:  word;
    dia2, mes2, ano2:  word;
    pi:  TPlannerItem;
    em_loop:   boolean;
begin
   planner.Items.Clear;
   try
      decodedate(newdate, ano, mes, dia);
      newdate:=incday(newdate);
      decodedate(newdate, ano2, mes2, dia2);
      dtsSelf.Active := True;
      dtsMark.Active := True;
      dtsSelf.Filter := '(STARTTIME>='+format('"%.4d-%.2d-%.2d"', [ano, mes, dia])+') and ('+'STARTTIME<'+format('"%.4d-%.2d-%.2d"', [ano2, mes2, dia2])+')';
      dtsSelf.Filtered := True;
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
               FixedSize := True;
               ItemEnd := ItemBegin+4;
               Text.Clear;
               if not dtsSelf.FieldByName('IDCliente').IsNull then
                  Text.Add('Cliente:'+dtsClientes.fieldByName('Nome').AsString);
               if not dtsSelf.FieldByName('IDServico').IsNull then
                  Text.Add('Serviço:'+dtsServicos.fieldByName('Descricao').AsString);
               if not dtsSelf.FieldByName('Observacoes').IsNull then
                  Text.Add('    Obs:'+dtsSelf.fieldByName('Observacoes').AsString);
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
procedure TfrmAgendaProfissional.pcalDaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  inherited;
   change_date(selDate);
end;

procedure TfrmAgendaProfissional.plannerItemLeftClick(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
   seleciona_item(Item);
end;

procedure TfrmAgendaProfissional.seleciona_item(Item: TPlannerItem);
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
end;

procedure TfrmAgendaProfissional.plannerItemRightClick(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
   seleciona_item(Item);
end;

end.

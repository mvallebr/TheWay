unit formCaixinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, FloatSpinEdit, StdCtrls, ExtCtrls, ComCtrls, Gradient,
  DB, ZQuery, ZMySqlQuery, Qt, StrUtils, Buttons;

procedure createfrmCaixinha;

type
  TfrmCaixinha = class(TfrmBase)
    Label2: TLabel;
    Gradient1: TGradient;
    Bevel3: TBevel;
    Label4: TLabel;
    edtCodigo: TEdit;
    Label3: TLabel;
    edtValor: TFloatSpinEdit;
    dtsSelf: TZMySqlQuery;
    Timer1: TTimer;
    lbLegenda: TLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Label5: TLabel;
    edtCliente: TEdit;
    btnBuscar: TBitBtn;
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtValorEnter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteChange(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    idcomanda:      integer;
    datacomanda:    TDate;
    buscando :      boolean;
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmCaixinha: TfrmCaixinha;

implementation

uses formMain, unitTheWayUtils, DM_main, formBuscarProf;

{$R *.dfm}


procedure createfrmCaixinha;
begin
    if frmCaixinha=nil then
        frmCaixinha:=TfrmCaixinha.Create(Application);
    frmCaixinha.Show;
end;

procedure TfrmCaixinha.ResetFields;
begin
//    edtHora.text := TimeToStr(Time);
//    edtData.date := Date;
    if buscando then exit;
    btnBuscar.Enabled := False;
    lbLegenda.Caption := 'Passe o código de barras na comanda da cliente';
    edtCodigo.Clear;
    edtValor.Text := FloatToStr(0.0);
    edtCliente.Clear;
    edtCliente.SetFocus;
    idcomanda:=0;
    datacomanda:=now;
end;

procedure TfrmCaixinha.edtCodigoEnter(Sender: TObject);
begin
  inherited;
    edtCodigo.SelectAll;
    btnBuscar.Enabled := True;
end;

procedure TfrmCaixinha.edtValorEnter(Sender: TObject);
begin
  inherited;
    edtValor.SelectAll;
end;

procedure TfrmCaixinha.Timer1Timer(Sender: TObject);
begin
  inherited;
//   edtHora.text := TimeToStr(Time);
//   edtData.date := Date;
end;

procedure TfrmCaixinha.edtClienteEnter(Sender: TObject);
begin
  inherited;
    edtCliente.SelectAll;
end;

procedure TfrmCaixinha.edtClienteChange(Sender: TObject);
begin
  inherited;
    idcomanda:=0;
    datacomanda:=now;
end;

procedure TfrmCaixinha.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key<>13) and (key<>9) then exit;
    edtCliente.text := processaCodigo(edtCliente.text);
    dtsSelf.Active := False;
    dtsSelf.Sql.Clear;
    dtsSelf.Sql.Add('select * from crachas,comandas where');
    dtsSelf.Sql.Add('(');
    dtsSelf.Sql.Add('(crachas.idcracha=comandas.idcracha) ');
    dtsSelf.Sql.Add('and (crachas.TextoCodBarras="'+edtCliente.Text+'") ');
    dtsSelf.Sql.Add('and (crachas.EmUsoAtualmente=1) ');
    dtsSelf.Sql.Add('and (crachas.IDLoja='+IntToStr(DMMain.options.IDLoja)+') ');
    dtsSelf.Sql.Add('and (comandas.IDLoja='+IntToStr(DMMain.options.IDLoja)+') ');
    dtsSelf.Sql.Add(')');
    dtsSelf.Active := True;

    if dtsSelf.IsEmpty then begin
        beep;
        ResetFields;
        lbLegenda.Caption := 'Comanda não aberta! Tente novamente!';
    end else begin
        edtCliente.Text := dtsSelf.FieldByName('NomeCliente').asString;
        idcomanda:=dtsSelf.FieldByName('IDComanda').AsInteger;
        datacomanda:=dtsSelf.FieldByName('DataAbertura').AsDateTime;
        edtCodigo.SetFocus;
    end;
end;

procedure TfrmCaixinha.edtValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    ano, mes, dia:  word;
begin
  inherited;
  if key<> 13 then exit;
  if (edtValor.Value <= 0) then begin
      ResetFields;
      lbLegenda.Caption := 'Valor inválido! Tente novamente.';
      exit;
  end;
  if (idcomanda <= 0) then begin
      ResetFields;
      lbLegenda.Caption := 'Comanda inválida! Tente novamente.';
      exit;
  end;
  //Adiciona entrada de caixinha
  try
      dtsSelf.Active := false;
      dtsSelf.Sql.Clear;
      dtsSelf.Sql.Add('Insert into servicosComandas ');
      dtsSelf.Sql.Add('Set IDProfissional="'+rightstr(edtCodigo.Text,11)+'",');
      dtsSelf.Sql.Add('ValorCobrado="'+commatopoint(edtValor.Text)+'",');
      decodedate(DataComanda, ano, mes, dia);
      dtsSelf.Sql.Add('DataComanda="'+format('%.4d-%.2d-%.2d',[ano, mes, dia])+'",');
      dtsSelf.Sql.Add('IDComanda='+IntToStr(idcomanda)+',');
      dtsSelf.Sql.Add('IDServico=0');
      dtsSelf.ExecSql;
      ResetFields;
      lbLegenda.Caption := 'Recebimento de caixinha efetuado! <ESC> reinicia.!';
  except
      beep;
      ResetFields;
      lbLegenda.Caption := 'Erro!';
  end;
end;

procedure TfrmCaixinha.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //Só permite teclas numéricas
  case key of
    Key_A..Key_B, Key_D..Key_O, Key_Q..Key_Z: begin
        edtCodigo.Clear;
        edtCodigo.SetFocus;
        exit;
    end;
  end;
  if key=VK_F6 then btnBuscarClick(Sender);
  if key = VK_ESCAPE  then ResetFields;
  if (key<>13) and (key<>9) then exit;
  edtCodigo.Text:=Trim(edtCodigo.Text);
  edtCodigo.text := processaCodigo(edtCodigo.text);
  if not VerificaProfissionalNaLoja(RightStr(edtCodigo.Text, 11), DMMain.options.IDLoja) then
  begin
    ResetFields;
    lbLegenda.caption:='Profissional inválido ou não está na loja. Tente novamente!';
    exit;
  end;
  edtValor.SetFocus;
  lbLegenda.Caption := 'Entre com o valor da caixinha';
end;

procedure TfrmCaixinha.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmCaixinha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key=27 then ResetFields;
end;

procedure TfrmCaixinha.btnBuscarClick(Sender: TObject);
var
    frmBusca:   TfrmBuscarProf;
    tecla:      word;
begin
  inherited;
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
                edtCodigo.Text := frmBusca.dtsSelf.fieldbyname('IDProfissional').AsString;
                tecla := 13;
                edtCodigoKeyDown(Sender, tecla, []);
            end else begin
                ShowMessage('Nenhum profissional selecionado!');
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

procedure TfrmCaixinha.FormCreate(Sender: TObject);
begin
  inherited;
    buscando := False;
end;

procedure TfrmCaixinha.edtCodigoExit(Sender: TObject);
begin
  inherited;
    btnBuscar.Enabled := False;
end;

procedure TfrmCaixinha.FormDestroy(Sender: TObject);
begin
  inherited;
   frmCaixinha := nil;
end;

end.

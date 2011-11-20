unit formEntradaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, Gradient, ExtCtrls, ComCtrls, DB, ZQuery,
  ZMySqlQuery, FloatSpinEdit, Qt, StrUtils;

procedure createfrmEntradaCaixa;

type
  TfrmEntradaCaixa = class(TfrmBase)
    Timer1: TTimer;
    dtsSelf: TZMySqlQuery;
    lbLegenda: TLabel;
    edtData: TMonthCalendar;
    Bevel1: TBevel;
    Bevel3: TBevel;
    edtHora: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Gradient1: TGradient;
    Label3: TLabel;
    Label4: TLabel;
    edtCodigo: TEdit;
    Label5: TLabel;
    edtSenha: TEdit;
    Label6: TLabel;
    edtMotivo: TMemo;
    edtValor: TFloatSpinEdit;
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtCodigoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure edtSenhaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtMotivoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtSenhaEnter(Sender: TObject);
    procedure edtValorEnter(Sender: TObject);
    procedure edtMotivoEnter(Sender: TObject);
  private
    { Private declarations }
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmEntradaCaixa: TfrmEntradaCaixa;

implementation

{$R *.dfm}

uses unitTheWayUtils, formMain, DM_main;

procedure createfrmEntradaCaixa;
begin
   if (frmEntradaCaixa=nil) then
      frmEntradaCaixa:=TfrmEntradaCaixa.Create(Application);
   frmEntradaCaixa.show;
end;


procedure TfrmEntradaCaixa.ResetFields;
begin
    edtHora.text := TimeToStr(Time);
    edtData.date := Date;
    lbLegenda.Caption := 'Passe o código de barras em seu crachá';
    edtCodigo.Clear;
    edtSenha.Clear;
    edtMotivo.Clear;
    edtValor.Text := IntToStr(0);
    edtCodigo.SetFocus;
end;

procedure TfrmEntradaCaixa.FormDestroy(Sender: TObject);
begin
  inherited;
    frmEntradaCaixa:=nil;
end;

procedure TfrmEntradaCaixa.Timer1Timer(Sender: TObject);
begin
  inherited;
   edtHora.text := TimeToStr(Time);
   edtData.date := Date;
end;

procedure TfrmEntradaCaixa.edtCodigoKeyUp(Sender: TObject; var Key: Word;
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
  if key = VK_ESCAPE  then ResetFields;
  if (key<>13) and (key<>9) then exit;
  edtCodigo.Text:=Trim(edtCodigo.Text);
  edtCodigo.text := processaCodigo(edtCodigo.text);
  if VerificaProfissionalNaLoja(RightStr(edtCodigo.Text, 11), DMMain.options.IDLoja) then
  begin
    ResetFields;
    lbLegenda.caption:='Profissional inválido ou não está na loja. Digite novamente!';
    exit;
  end;

  lbLegenda.caption := 'Digite sua senha';
  edtSenha.SetFocus;
end;

procedure TfrmEntradaCaixa.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmEntradaCaixa.edtSenhaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //Só permite teclas numéricas
  case key of
   Key_A..Key_Z: begin
      edtSenha.text:='';
      exit;
   end;
  end;
  if (key<>13) and (key<>9) then exit;
  edtSenha.Text:=Trim(edtSenha.Text);

  if (not AutenticaProfissional(rightstr(edtCodigo.Text,11), edtSenha.Text)) then
  begin
    ResetFields;
    lbLegenda.Caption:='Falha de autenticação, tente novamente.';
    exit;
  end;
  edtValor.SetFocus;
  lbLegenda.Caption := 'Entre com o valor a entrar no caixa';
end;

procedure TfrmEntradaCaixa.edtValorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key<> 13) and (key<>9) then exit;
    if edtValor.Value <= 0 then begin
        ResetFields;
        lbLegenda.Caption := 'Valor inválido! Passe o código de barras em seu crachá';
        exit;
    end;
    lbLegenda.Caption := 'Digite o motivo da entrada e tecle <ENTER> para finalizar!';
    edtMotivo.SetFocus;
end;

procedure TfrmEntradaCaixa.edtMotivoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    ano, mes, dia:  word;
    hora, minuto, segundo, msegundo: word;
begin
  inherited;
    if (key<> 13) and (key<>9) then exit;
    edtMotivo.Text:= Trim(edtMotivo.Text);
    if edtMotivo.Text='' then begin
        beep;
        lbLegenda.Caption := 'Digite o motivo!';
        exit;
    end;
    //Adiciona entrada de caixa
    try
        dtsSelf.Active := false;
        dtsSelf.Sql.Clear;
        dtsSelf.Sql.Add('Insert into entradascaixa ');
        dtsSelf.Sql.Add('Set IDProfissional="'+rightstr(edtCodigo.Text,11)+'",');
        dtsSelf.Sql.Add('Valor="'+commatopoint(edtValor.Text)+'",');
        dtsSelf.Sql.Add('Motivo="'+edtMotivo.text+'",');
        decodedate(Date, ano, mes, dia);
        decodetime(Time, hora, minuto, segundo, msegundo);
        dtsSelf.Sql.Add('DataHora="'+format('%.4d-%.2d-%.2d %.2d:%.2d:%.2d',[ano, mes, dia, hora, minuto, segundo])+'"');
        dtsSelf.ExecSql;

        ResetFields;
        lbLegenda.Caption := 'Entrada de caixa registrada!';
    except
        beep;
        ResetFields;
    end;
end;

procedure TfrmEntradaCaixa.edtCodigoEnter(Sender: TObject);
begin
  inherited;
    edtCodigo.SelectAll;
end;

procedure TfrmEntradaCaixa.edtSenhaEnter(Sender: TObject);
begin
  inherited;
    edtSenha.SelectAll;
end;

procedure TfrmEntradaCaixa.edtValorEnter(Sender: TObject);
begin
  inherited;
    edtValor.SelectAll;
end;

procedure TfrmEntradaCaixa.edtMotivoEnter(Sender: TObject);
begin
  inherited;
    edtMotivo.SelectAll;
end;

end.

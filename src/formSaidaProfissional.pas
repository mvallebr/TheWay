unit formSaidaProfissional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formCampoBase, Gradient, FMTBcd, DB, SqlExpr, Provider, ComCtrls,
  Grids, Calendar, DBClient, StdCtrls, ExtCtrls, Mask, Qt, ZTransact,
  ZMySqlTr, ZQuery, ZMySqlQuery, strutils;

procedure createfrmSaidaProfissional;

type
  TfrmSaidaProfissional = class(TfrmCampoBase)
    Gradient1: TGradient;
    Label2: TLabel;
    Bevel3: TBevel;
    Bevel1: TBevel;
    lbLegenda: TLabel;
    Timer1: TTimer;
    dtsSelf: TZMySqlQuery;
    trnSelf: TZMySqlTransact;
    edtData: TMonthCalendar;
    Label1: TLabel;
    edtHora: TEdit;
    Label4: TLabel;
    edtCodigo: TEdit;
    Label5: TLabel;
    edtSenha: TEdit;
    Bevel2: TBevel;
    Bevel4: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmSaidaProfissional: TfrmSaidaProfissional;
  cargo, idfunc: integer;

implementation

{$R *.dfm}

uses DM_Main, unitTheWayUtils, formMain;

procedure createfrmSaidaProfissional;
begin
        if(frmSaidaProfissional=nil) then
                frmSaidaProfissional:=TfrmSaidaProfissional.Create(Application);

        frmSaidaProfissional.Show;

end;

procedure TfrmSaidaProfissional.ResetFields;
begin
    edtHora.text := TimeToStr(Time);
    edtData.date := Date;
    lbLegenda.Caption := 'Passe o código de barras em seu crachá';
    edtCodigo.Clear;
    edtSenha.Clear;
    edtCodigo.setFocus;
end;

procedure TfrmSaidaProfissional.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    Action:=cafree;
    frmSaidaProfissional:=nil;
end;

procedure TfrmSaidaProfissional.Timer1Timer(Sender: TObject);
begin
  inherited;
   edtHora.text := TimeToStr(Time);
   edtData.date := Date;
end;

procedure TfrmSaidaProfissional.FormDestroy(Sender: TObject);
begin
  inherited;
    frmSaidaProfissional:=nil;
end;

procedure TfrmSaidaProfissional.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmSaidaProfissional.edtCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 //Só permite teclas numéricas
  case key of
    Key_A..Key_B, Key_D..Key_O, Key_Q..Key_Z: begin
        edtCodigo.Clear;
        exit;
    end;
  end;
  if key = VK_ESCAPE  then ResetFields;
  if (key<>13) and (key<>9) then exit;
  edtCodigo.Text:=Trim(edtCodigo.Text);
  edtCodigo.text := processaCodigo(edtCodigo.text);
  if not VerificaProfissionalNaLoja(rightstr(edtCodigo.Text, 11), DMMain.options.IDLoja) then
  begin
    ResetFields;
    lbLegenda.caption:='Profissional inválido ou não chegou ainda. Passe novamente o código de barras!';
    exit;
  end;

  lbLegenda.caption := 'Digite sua senha e tecle <ENTER>.';
  edtSenha.SetFocus;
end;

procedure TfrmSaidaProfissional.edtSenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
    HoraChegada:    string;
    DataChegada:    string;
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

  // Se não tiver nenhum registro...
  if not VerificaProfissionalNaLoja(rightStr(edtCodigo.Text, 11), dmmain.options.IDLoja) then
  begin
    ResetFields;
    lbLegenda.caption:='ERRO: Entrada do profissional não foi registrada!';
    beep;
    exit;
  end;

  dtsSelf.Active:=False;
  dtsSelf.Sql.Clear;
  dtsSelf.Sql.Add('select * from ProfissionaisNaLoja where IDProfissional='+rightStr(edtCodigo.Text, 11));
  dtsSelf.Active:=True;
  if dtsSelf.isEmpty then begin
    ResetFields;
    lbLegenda.caption:='ERRO: Entrada do profissional não foi registrada!';
    beep;
    exit;
  end;
  // Acrescenta o Turno Realizado
  HoraChegada:=dtsSelf.FieldByName('HoraChegada').AsString;
  DataChegada:=dtsSelf.FieldByName('DataChegada').AsString;

  dtsSelf.Active:=False;
  dtsSelf.Sql.Clear;
  dtsSelf.Sql.Add('INSERT INTO turnosefetuados');
  dtsSelf.Sql.Add('SET IDLoja="' + IntToStr(DMMain.options.IDLoja) + '",');
  dtsSelf.Sql.Add('IDProfissional=' + RightStr(edtCodigo.Text,11) +',');
  dtsSelf.Sql.Add('DataChegada="' + DataChegada + '",');
  dtsSelf.Sql.Add('HoraChegada="' + HoraChegada + '",');
  dtsSelf.Sql.Add('DataSaida="' + DateToStr(Date) + '",');
  dtsSelf.Sql.Add('HoraSaida="' + TimeToStr(Time) + '"');
  dtsSelf.ExecSql;

  // Retira o PRofissional de ProfissionaisNaLoja
  dtsSelf.Active:=False;
  dtsSelf.Sql.Clear;
  dtsSelf.Sql.Add('DELETE FROM ProfissionaisNaLoja');
  dtsSelf .Sql.Add('WHERE IDProfissional=' + RightStr(edtCodigo.Text,11));
  dtsSelf.ExecSql;

  ResetFields;
  lbLegenda.Caption := 'Saida do profissional efetuada!';
  edtCodigo.setFocus;
  exit;
end;

end.

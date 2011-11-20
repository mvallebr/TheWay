unit formChegadaProfissional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, Gradient, FMTBcd, DB, SqlExpr, Provider, ComCtrls,
  Grids, Calendar, DBClient, StdCtrls, ExtCtrls, Mask, Qt, ZTransact,
  ZMySqlTr, ZQuery, ZMySqlQuery, formCampoBase, strutils;

procedure createfrmChegadaProfissional;

type
  TfrmChegadaProfissional = class(TfrmCampoBase)
    Gradient1: TGradient;
    Label1: TLabel;
    Label2: TLabel;
    lbLegenda: TLabel;
    edtCodigo: TEdit;
    edtHora: TEdit;
    Label4: TLabel;
    edtData: TMonthCalendar;
    Bevel1: TBevel;
    Timer1: TTimer;
    Label5: TLabel;
    edtSenha: TEdit;
    dtsSelf: TZMySqlQuery;
    Bevel3: TBevel;
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

// 27.07.02 Poli -> Cargo retirado da identificacao do fund

var
  frmChegadaProfissional: TfrmChegadaProfissional;
 // cargo, idfunc: integer;
    idfunc: integer;

implementation

{$R *.dfm}

uses DM_Main, unitTheWayUtils, formAgendaProfissional, formMain;

procedure createfrmChegadaProfissional;
begin
        if(frmChegadaProfissional=nil) then
                frmChegadaProfissional:=TfrmChegadaProfissional.Create(Application);

        frmChegadaProfissional.Show;

end;

procedure TfrmChegadaProfissional.ResetFields;
begin
    edtHora.text := TimeToStr(Time);
    edtData.date := Date;
    lbLegenda.Caption := 'Passe o código de barras em seu crachá';
    edtCodigo.Clear;
    edtCodigo.setFocus;
    edtSenha.Clear;
end;

procedure TfrmChegadaProfissional.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
        Action:=cafree;

end;

procedure TfrmChegadaProfissional.Timer1Timer(Sender: TObject);
begin
  inherited;
   edtHora.text := TimeToStr(Time);
   edtData.date := Date;
end;

procedure TfrmChegadaProfissional.FormDestroy(Sender: TObject);
begin
  inherited;
        frmChegadaProfissional:=nil;
end;

procedure TfrmChegadaProfissional.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmChegadaProfissional.edtCodigoKeyDown(Sender: TObject;
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
  if not VerificaProfissional(rightstr(edtCodigo.Text, 11)) then
  begin
    ResetFields;
    lbLegenda.caption:='Profissional inválido. Passe novamente o código de barras!';
    exit;
  end;

  if VerificaProfissionalNaLoja(rightstr(edtCodigo.Text, 11), DMMain.options.IDLoja) then
  begin
    ResetFields;
    lbLegenda.caption:='Profissional já está na loja. Passe novamente o código de barras!';
    exit;
  end;

  lbLegenda.caption := 'Digite sua senha e tecle <ENTER>';
  edtSenha.SetFocus;
end;

procedure TfrmChegadaProfissional.edtSenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Só permite teclas numéricas
  case key of
   Key_A..Key_Z: begin
      edtSenha.text:='';
      exit;
   end;
  end;
  if (key<>13) then exit;
  edtSenha.Text:=Trim(edtSenha.Text);

  if (not AutenticaProfissional(rightstr(edtCodigo.Text,11), edtSenha.Text)) then
  begin
    ResetFields;
    lbLegenda.Caption:='Falha de autenticação, tente novamente.';
    exit;
  end;

  // Se não tiver nenhum registro...
  if not verificaProfissionalNaLoja(rightStr(edtCodigo.text, 11), dmmain.options.IDLoja) then
  begin
    dtsSelf.Active:=False;
    dtsSelf.Sql.Clear;
    dtsSelf.Sql.Add('INSERT INTO ProfissionaisNaLoja');
    dtsSelf.Sql.Add('SET IDLoja="' + IntToStr(DMMain.options.IDLoja) + '",');
    dtsSelf.Sql.Add('IDProfissional="' + rightstr(edtCodigo.Text,11) +'",');
    dtsSelf.Sql.Add('DataChegada="' + DateToStr(Date) + '",');
    dtsSelf.Sql.Add('HoraChegada="' + TimeToStr(Time) + '"');
    dtsSelf.ExecSql;
    ResetFields;
    lbLegenda.Caption := 'Chegada registrada! Um bom dia de serviço!';
  end else begin
    ResetFields;
    lbLegenda.Caption := 'Profissional já está na loja!';
  end;

  // Abre a Agenda
  //createfrmAgendaProfissional;
  // Fecha o form de Chegada
  //Close;
  //exit;
end;

end.














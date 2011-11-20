unit formLogon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  formBase, StdCtrls,  Grids, DBGrids, Db, DBTables,
  ExtCtrls,  Gradient, Mask, DBCtrls, Qt, unitTheWayUtils,
  formMain, strUtils;

type
  TfrmLogon = class(TfrmBase)
    OKBtn: TButton;
    CancelBtn: TButton;
    Gradient1: TGradient;
    Bevel1: TBevel;
    lbUser: TLabel;
    lbPasswd: TLabel;
    Label1: TLabel;
    edtUsuario: TEdit;
    edtPassword: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUsuarioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OKBtnClick(Sender: TObject);
    procedure edtPasswordEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    loginCorrect: boolean;
//    IDCargoFuncionarioAtual: integer;
    IDProfissionalAtual: string;
    IDGrupoAcessoAtual:      integer;
  end;

var
  frmLogon: TfrmLogon;

implementation

{$R *.DFM}

procedure TfrmLogon.FormActivate(Sender: TObject);
begin
  inherited;
  loginCorrect:=false;
  edtUsuario.SetFocus;
end;

procedure TfrmLogon.FormShow(Sender: TObject);
begin
  inherited;
  loginCorrect:=false;
  frmMain.disable_shortcuts:=true;
end;



procedure TfrmLogon.edtUsuarioKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   case key of
     Key_A..Key_Z: begin
      edtUsuario.text:='';
      exit;
   end;
  end;
   if (key<>13) then exit;

   // Tecla foi enter
   if trim(edtUsuario.Text) = '' then begin
    beep;
    exit
   end;

   edtPassword.SetFocus;

end;

procedure TfrmLogon.edtPasswordKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
  inherited;
   case key of
     Key_A..Key_Z: begin
      edtPassword.text:='';
      exit;
   end;
  end;
   if (key<>13) then exit;
   // Tecla foi enter
   OKBtnClick(Sender);
end;

procedure TfrmLogon.OKBtnClick(Sender: TObject);
begin
  inherited;
   edtPassword.Text:=trim(edtPassword.Text);

   if(not AutenticaProfissional(rightstr(edtUsuario.Text, 11), edtPassword.text)) then
   begin
      ShowMessage('Erro: Senha Inválida!');
      edtUsuario.text:='';
      edtPassword.text:='';
      edtUsuario.Setfocus;
      exit;
   end;

   // usuario é válido
   try
      IDProfissionalAtual:=rightstr(edtUsuario.Text,11);
   except
      exit;
   end;
   ModalResult:=mrOK;
end;

procedure TfrmLogon.edtPasswordEnter(Sender: TObject);
begin
  inherited;


   edtUsuario.Text:=trim(edtUsuario.Text);
    //Descomentar a linha abaixo caso seja feita verificação de usuário
    //sempre que o campo de sennha receber o foco do teclado
   exit;
   if length(edtUsuario.Text)<>13 then
   begin
      ShowMessage('Erro: Usuário Inválido!');
      beep;
      edtUsuario.text:='';
      edtPassword.text:='';
      edtUsuario.SetFocus;
      exit;
   end;


   // Verifica se os 2 primeiros digitos sao 20 (profissional)
   if length(edtUsuario.Text) > 1 then
   begin
      if (not (leftstr(edtUsuario.Text, 2)='20')) then
      begin
         ShowMessage('Erro: Usuário Inválido!');
         beep;
         edtUsuario.text:='';
         edtPassword.Text:='';
         edtUsuario.SetFocus;
         exit;
      end;
    end;


   if(not VerificaProfissional(rightstr(edtUsuario.Text, 11))) then
   begin
      ShowMessage('Erro: Usuário Inválido!');
      beep;
      edtUsuario.text:='';
      edtPassword.text:='';
      edtUsuario.Setfocus;
      exit;
   end;
end;

procedure TfrmLogon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
      frmMain.disable_shortcuts:=false;
end;

procedure TfrmLogon.FormDestroy(Sender: TObject);
begin
  inherited;
   frmLogon:=nil;
end;

end.

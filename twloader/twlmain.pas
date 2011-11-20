unit twlmain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry, ExtCtrls;

type
  TfrmMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    espere, mostrado: boolean;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormShow(Sender: TObject);
begin
  mostrado:=True;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
   espere:=true;
   mostrado:=false;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  Registry: TRegistry;
  temp:  string;
begin
   if not espere then close;
   if not mostrado then exit;
   mostrado := False;
   Registry:=TRegistry.Create;

   Registry.RootKey:=HKEY_LOCAL_MACHINE;
   Registry.OpenKey('SOFTWARE\TW',False);

   temp := trim(Registry.ReadString('SERVIDOR'));
   if temp='' then begin
    beep;
   end else if not Boolean(winexec(PChar(temp), 0)) then begin
    beep;
    ShowMessage('ERRO: Não foi possível executar o servidor de dados MySQL! ');
   end;

   sleep(4000);

   temp := trim(Registry.ReadString('CLIENTE'));
   if temp='' then begin
    beep;
    ShowMessage('O Cliente TheWay não foi instalado corretamente!');
   end else if not Boolean(winexec(PChar(temp), 0)) then begin
    beep;
    ShowMessage('Não foi possível executar o cliente theway!');
   end;

   Registry.Free;
   espere := False;
end;

end.

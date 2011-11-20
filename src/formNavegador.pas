unit formNavegador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, HTMLLite;

procedure createfrmNavegador;

type
  TfrmNavegador = class(TfrmBase)
    viewer: ThtmlLite;
    IdHTTP1: TIdHTTP;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmNavegador: TfrmNavegador;

implementation

{$R *.dfm}

procedure createfrmNavegador;
begin
   if frmNavegador=nil then
      frmNavegador:=TfrmNavegador.Create(Application);
   frmNavegador.Show;
end;

procedure TfrmNavegador.ResetFields;
begin
   try
      viewer.LoadFromString(IdHTTP1.Get('http://www.google.com'));
   except
      beep;
   end;
end;

procedure TfrmNavegador.FormActivate(Sender: TObject);
begin
  inherited;
   ResetFields;
end;

end.

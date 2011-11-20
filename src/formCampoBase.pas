unit formCampoBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase;

type
  TfrmCampoBase = class(TfrmBase)
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCampoBase: TfrmCampoBase;

implementation

{$R *.dfm}

procedure TfrmCampoBase.FormActivate(Sender: TObject);
begin
  inherited;
//    WindowState:=wsMaximized;
end;

end.

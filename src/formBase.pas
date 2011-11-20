unit formBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, dbtables;

type
  TfrmBase = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

uses formMain;

{$R *.DFM}

procedure TfrmBase.FormCreate(Sender: TObject);
var
  I: Integer;
  Temp: TComponent;
begin
     for I := ComponentCount - 1 downto 0 do
     begin
          Temp := Components[I];
          if  (Temp is TDBDataset) then begin
             TDBDataset(Temp).active := true;
          end;
     end;
end;

procedure TfrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TfrmBase.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   frmMain.ProcessKeyPressed(Sender, key);
end;

procedure TfrmBase.FormShow(Sender: TObject);
begin
{   if (Top < (frmMain.Top + frmMain.Height)) then
      Top := Top + (frmMain.Top + frmMain.Height);
   if (Top+Height>Screen.Height) then
      Top := Screen.Height-Height;
      }
   Top := (frmMain.Top + frmMain.Height);
   Left := 0;
end;

end.

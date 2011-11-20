unit formSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, ExtCtrls, jpeg;

type
  TfrmSplash = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   Action := caFree;
end;

procedure TfrmSplash.FormClick(Sender: TObject);
begin
   close;
end;

procedure TfrmSplash.Image1Click(Sender: TObject);
begin
   close;
end;

end.

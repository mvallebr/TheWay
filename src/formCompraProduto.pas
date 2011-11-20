unit formCompraProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls;


procedure createfrmCompraProduto;

type
  TfrmCompraProduto = class(TfrmBase)
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompraProduto: TfrmCompraProduto;

implementation

{$R *.dfm}

procedure createfrmCompraProduto;
begin
   if (frmCompraProduto=nil) then
      frmCompraProduto:= TfrmCompraProduto.Create(Application);
   frmCompraProduto.Show;
end;

procedure TfrmCompraProduto.FormDestroy(Sender: TObject);
begin
  inherited;
    frmCompraProduto:=nil;
end;

end.




unit formRecebimentoVendaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls;

procedure createfrmRecebimentoVendaProduto;

type
  TfrmRecebimentoVendaProduto = class(TfrmBase)
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentoVendaProduto: TfrmRecebimentoVendaProduto;

implementation

{$R *.dfm}

procedure createfrmRecebimentoVendaProduto;
begin
    if (frmRecebimentoVendaProduto=nil) then
        frmRecebimentoVendaProduto:=TfrmRecebimentoVendaProduto.Create(Application);
    frmRecebimentoVendaProduto.Show;
end;

procedure TfrmRecebimentoVendaProduto.FormDestroy(Sender: TObject);
begin
  inherited;
    frmRecebimentoVendaProduto:=nil;
end;

end.

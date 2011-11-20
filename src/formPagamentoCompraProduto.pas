unit formPagamentoCompraProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls;

procedure createfrmPagamentoCompraProduto;

type
  TfrmPagamentoCompraProduto = class(TfrmBase)
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagamentoCompraProduto: TfrmPagamentoCompraProduto;

implementation

{$R *.dfm}

procedure createfrmPagamentoCompraProduto;
begin
   if (frmPagamentoCompraProduto=nil) then
      frmPagamentoCompraProduto:=TfrmPagamentoCompraProduto.Create(Application);
   frmPagamentoCompraProduto.show;
end;


procedure TfrmPagamentoCompraProduto.FormDestroy(Sender: TObject);
begin
  inherited;
    frmPagamentoCompraProduto:=nil;
end;

end.

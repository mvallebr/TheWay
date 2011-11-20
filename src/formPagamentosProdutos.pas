unit formPagamentosProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmPagamentosProdutos;

type
  TfrmPagamentosProdutos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditIDProduto: TDBEdit;
    EditIDCompra: TDBEdit;
    EditValor: TDBEdit;
    EditDataVencimento: TDBEdit;
    EditValorPago: TDBEdit;
    EditDataPagamento: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagamentosProdutos: TfrmPagamentosProdutos;

implementation

{$R *.dfm}

procedure createfrmPagamentosProdutos;
begin
    if (frmPagamentosProdutos=nil) then
        frmPagamentosProdutos:=TfrmPagamentosProdutos.Create(Application);
    frmPagamentosProdutos.Show;
end;

procedure TfrmPagamentosProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmPagamentosProdutos:=nil;
end;

end.

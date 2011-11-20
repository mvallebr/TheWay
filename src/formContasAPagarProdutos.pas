unit formContasAPagarProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmContasAPagarProdutos;

type
  TfrmContasAPagarProdutos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditIDProduto: TDBEdit;
    EditIDCompra: TDBEdit;
    EditValor: TDBEdit;
    EditDataVencimento: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasAPagarProdutos: TfrmContasAPagarProdutos;

implementation

procedure createfrmContasAPagarProdutos;
begin
    if (frmContasAPagarProdutos=nil) then
        frmContasAPagarProdutos:=TfrmContasAPagarProdutos.Create(Application);
    frmContasAPagarProdutos.Show;

end;

{$R *.dfm}

procedure TfrmContasAPagarProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmContasAPagarProdutos:=nil;
end;

end.

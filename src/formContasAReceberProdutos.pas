unit formContasAReceberProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmContasAReceberProdutos;

type
  TfrmContasAReceberProdutos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditIDProduto: TDBEdit;
    EditIDCliente: TDBEdit;
    EditIDVenda: TDBEdit;
    EditDataVencimento: TDBEdit;
    EditValor: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasAReceberProdutos: TfrmContasAReceberProdutos;

implementation

{$R *.dfm}

procedure createfrmContasAReceberProdutos;
begin
    if (frmContasAReceberProdutos=nil) then
        frmContasAReceberProdutos:=TfrmContasAReceberProdutos.Create(Application);
    frmContasAReceberProdutos.Show;
end;

procedure TfrmContasAReceberProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmContasAReceberProdutos:=nil;
end;

end.

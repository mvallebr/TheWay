unit formCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, TWDBRel, Mask;

procedure createfrmCompras;

type
  TfrmCompras = class(TfrmDBDetailBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EditIDCompra: TDBEdit;
    EditIDFornecedor: TDBEdit;
    EditIDProfissional: TDBEdit;
    EditTotal: TDBEdit;
    EditDataCompra: TDBEdit;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    srcProdutos: TDataSource;
    dtsProdutos: TZMySqlQuery;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompras: TfrmCompras;

implementation

{$R *.dfm}

uses DM_Main;

procedure createfrmCompras;
begin
    if (frmCompras=nil) then
        frmCompras:=TfrmCompras.Create(Application);
    frmCompras.Show;
end;

procedure TfrmCompras.FormDestroy(Sender: TObject);
begin
  inherited;
    frmCompras:=nil;
end;

end.

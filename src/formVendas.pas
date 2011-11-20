unit formVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, Mask;

procedure createfrmVendas;

type
  TfrmVendas = class(TfrmDBDetailBase)
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    srcProdutos: TDataSource;
    dtsProdutos: TZMySqlQuery;
    ScrollBox: TScrollBox;
    ScrollBox1: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditIDComanda: TDBEdit;
    EditTotalCobrado: TDBEdit;
    EditComissaoProfissional: TDBEdit;
    EditIDProfissionalVendedor: TDBEdit;
    EditDataVenda: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

procedure createfrmVendas;
begin
    if (frmVendas=nil) then
        frmVendas:=TfrmVendas.Create(Application);
    frmVendas.Show;
end;

procedure TfrmVendas.FormDestroy(Sender: TObject);
begin
  inherited;
    frmVendas:=nil;
end;

end.

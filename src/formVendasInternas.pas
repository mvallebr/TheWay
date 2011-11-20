unit formVendasInternas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, Mask;

procedure createfrmVendasInternas;

type
  TfrmVendasInternas = class(TfrmDBDetailBase)
    ScrollBox: TScrollBox;
    TabSheet1: TTabSheet;
    srcProdutos: TDataSource;
    dtsProdutos: TZMySqlQuery;
    DBGrid1: TDBGrid;
    ScrollBox1: TScrollBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditIDProfissional: TDBEdit;
    EditTotalCobrado: TDBEdit;
    EditDataVenda: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendasInternas: TfrmVendasInternas;

implementation

{$R *.dfm}

procedure createfrmVendasInternas;
begin
    if (frmVendasInternas=nil) then
        frmVendasInternas:=TfrmVendasInternas.Create(Application);
    frmVendasInternas.Show;
end;

procedure TfrmVendasInternas.FormDestroy(Sender: TObject);
begin
  inherited;
    frmVendasInternas:=nil;
end;

end.

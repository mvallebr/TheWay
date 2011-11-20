unit formServicosPrestados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, Mask;

procedure createfrmServicosPrestados;

type
  TfrmServicosPrestados = class(TfrmDBDetailBase)
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    dtsSelfIDComanda: TIntegerField;
    dtsSelfIDServicoPrestado: TIntegerField;
    dtsSelfIDCategoriaServico: TIntegerField;
    dtsSelfIDServico: TIntegerField;
    dtsSelfValorCobrado: TFloatField;
    dtsSelfIDCargoProfissional: TIntegerField;
    dtsSelfIDProfissional: TIntegerField;
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    EditIDComanda: TDBEdit;
    EditIDServicoPrestado: TDBEdit;
    EditIDServico: TDBEdit;
    EditValorCobrado: TDBEdit;
    EditIDProfissional: TDBEdit;
    Label9: TLabel;
    srcProdutos: TDataSource;
    dtsProdutos: TZMySqlQuery;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServicosPrestados: TfrmServicosPrestados;

implementation

{$R *.dfm}

procedure createfrmServicosPrestados;
begin
    if (frmServicosPrestados=nil) then
        frmServicosPrestados:=TfrmServicosPrestados.Create(Application);
    frmServicosPrestados.Show;
end;

procedure TfrmServicosPrestados.FormDestroy(Sender: TObject);
begin
  inherited;
    frmServicosPrestados:=nil;
end;

end.

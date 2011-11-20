unit formRecebimentosProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmRecebimentosProdutos;

type
  TfrmRecebimentosProdutos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditIDProduto: TDBEdit;
    EditIDComanda: TDBEdit;
    EditIDVenda: TDBEdit;
    EditIDRecebimentoProduto: TDBEdit;
    EditDataVencimento: TDBEdit;
    EditValor: TDBEdit;
    EditDataRecebimento: TDBEdit;
    EditValorRecebido: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentosProdutos: TfrmRecebimentosProdutos;

implementation

{$R *.dfm}

procedure createfrmRecebimentosProdutos;
begin
    if (frmRecebimentosProdutos=nil) then
        frmRecebimentosProdutos:=TfrmRecebimentosProdutos.Create(Application);
    frmRecebimentosProdutos.Show;
end;

procedure TfrmRecebimentosProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmRecebimentosProdutos:=nil;
end;

end.

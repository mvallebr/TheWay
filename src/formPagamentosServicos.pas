unit formPagamentosServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmPagamentosServicos;

type
  TfrmPagamentosServicos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditIDServicoTerceirizado: TDBEdit;
    EditIDContratacao: TDBEdit;
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
  frmPagamentosServicos: TfrmPagamentosServicos;

implementation

{$R *.dfm}

procedure createfrmPagamentosServicos;
begin
    if (frmPagamentosServicos=nil) then
        frmPagamentosServicos:=TfrmPagamentosServicos.Create(Application);
    frmPagamentosServicos.Show;
end;

procedure TfrmPagamentosServicos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmPagamentosServicos:=nil;
end;

end.

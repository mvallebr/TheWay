unit formRecebimentosServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmRecebimentosServicos;

type
  TfrmRecebimentosServicos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditIDComanda: TDBEdit;
    EditIDServicoPrestado: TDBEdit;
    EditIDRecebimentoServico: TDBEdit;
    EditValor: TDBEdit;
    EditDataVencimento: TDBEdit;
    EditDataRecebimento: TDBEdit;
    EditValorRecebido: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentosServicos: TfrmRecebimentosServicos;

implementation

{$R *.dfm}

procedure createfrmRecebimentosServicos;
begin
    if (frmRecebimentosServicos=nil) then
        frmRecebimentosServicos:=TfrmRecebimentosServicos.Create(Application);
    frmRecebimentosServicos.Show;
end;

procedure TfrmRecebimentosServicos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmRecebimentosServicos:=nil;
end;

end.

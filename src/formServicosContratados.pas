unit formServicosContratados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmServicosContratados;

type
  TfrmServicosContratados = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditIDServicoTerceirizado: TDBEdit;
    EditIDContratacao: TDBEdit;
    EditIDFornecedor: TDBEdit;
    EditDataContratacao: TDBEdit;
    EditDataPrestacao: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServicosContratados: TfrmServicosContratados;

implementation

{$R *.dfm}

procedure createfrmServicosContratados;
begin
    if (frmServicosContratados=nil) then
        frmServicosContratados:=TfrmServicosContratados.Create(Application);
    frmServicosContratados.Show;
end;

procedure TfrmServicosContratados.FormDestroy(Sender: TObject);
begin
  inherited;
    frmServicosContratados:=nil;
end;

end.

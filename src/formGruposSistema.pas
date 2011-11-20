unit formGruposSistema;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  formDBBase, ExtCtrls, DBCtrls, ImgList, FiltrDlg,
  ComCtrls, ToolWin, StdCtrls, Mask, Grids,
  DBGrids, Db, DBTables, FMTBcd, DBXpress, SqlExpr, Provider, DBClient,
  ZQuery, ZMySqlQuery, ZTransact, ZMySqlTr, formDBDetailBase, dbcgrids,
  TWDBRel;


procedure createFrmGruposSistema;
type
  TfrmGruposSistema = class(TfrmDBDetailBase)
    dtsSelfIDGrupoSistema: TIntegerField;
    dtsSelfDescricao: TStringField;
    TabPermissoes: TTabSheet;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    ID: TLabel;
    Descricao: TLabel;
    DBEdit2: TDBEdit;
    TabSheet1: TTabSheet;
    TWDBRel1: TTWDBRel;
    TWGruposSistemas: TTWDBRel;
    procedure FormDestroy(Sender: TObject);
    procedure DataSetProvider1BeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGruposSistema: TfrmGruposSistema;

implementation

{$R *.DFM}
uses DM_Main;

procedure createFrmGruposSistema;
begin
     if (frmGruposSistema=nil) then
        frmGruposSistema := TfrmGruposSistema.create(Application);
     frmGruposSistema.Show;
end;

procedure TfrmGruposSistema.FormDestroy(Sender: TObject);
begin
  inherited;
    frmGruposSistema:=nil;
end;

procedure TfrmGruposSistema.DataSetProvider1BeforeApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
  inherited;
beep;
   ShowMessage('Pronto para aplicar updates...');
end;

procedure TfrmGruposSistema.FormActivate(Sender: TObject);
begin
  inherited;
  
   pgctl.ActivePage:=TabPermissoes;
   TWGruposSistemas.Active:=True;
   
end;

procedure TfrmGruposSistema.FormCreate(Sender: TObject);
begin
  inherited;
   TWDBRel1.Active := True;
end;

end.

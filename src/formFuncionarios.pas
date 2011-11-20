unit formFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, TWDBRel, formDBBase;

procedure createfrmFuncionarios;

type
  TfrmFuncionarios = class(TfrmDBBase)
    TabSheet1: TTabSheet;
    TWDBRel2: TTWDBRel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

{$R *.dfm}

uses DM_Main;

procedure createfrmFuncionarios;
begin
    if (frmFuncionarios=nil) then
        frmFuncionarios:=TfrmFuncionarios.Create(Application);
    frmFuncionarios.Show;
end;

procedure TfrmFuncionarios.FormDestroy(Sender: TObject);
begin
  inherited;
    frmFuncionarios:=nil;
end;

end.

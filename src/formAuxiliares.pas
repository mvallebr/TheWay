unit formAuxiliares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailWithCategory, ZTransact, ZMySqlTr, DB, ZQuery,
  ZMySqlQuery, FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids,
  StdCtrls, ExtCtrls, DBCtrls, ToolWin, formDBDetailBase, ZFilterDlg,
  TWDBRel;

procedure createfrmAuxiliares;

type
  TfrmAuxiliares = class(TfrmDBDetailBase)
    dtsAuxiliares: TZMySqlQuery;
    TabSheet1: TTabSheet;
    TWDBRel1: TTWDBRel;
    Label43: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label45: TLabel;
    Label44: TLabel;
    DBText3: TDBText;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxiliares: TfrmAuxiliares;

implementation

{$R *.dfm}

uses DM_Main;

procedure createfrmAuxiliares;
begin
    if (frmAuxiliares=nil) then
        frmAuxiliares:=TfrmAuxiliares.Create(Application);
end;

procedure TfrmAuxiliares.FormDestroy(Sender: TObject);
begin
  inherited;
    frmAuxiliares:=nil;
end;

end.

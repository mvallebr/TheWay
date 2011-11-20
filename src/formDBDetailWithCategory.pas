unit formDBDetailWithCategory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin;

type
  TfrmDBDetailWithCategory = class(TfrmDBDetailBase)
    tabCategory: TTabSheet;
    dtsCategory: TZMySqlTable;
    srcCategory: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    procedure dtsCategoryAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBDetailWithCategory: TfrmDBDetailWithCategory;

implementation

{$R *.dfm}
uses DM_Main;


procedure TfrmDBDetailWithCategory.dtsCategoryAfterPost(DataSet: TDataSet);
begin
  inherited;
    dtsCategory.ApplyUpdates;
end;

procedure TfrmDBDetailWithCategory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmDBDetailWithCategory.FormCreate(Sender: TObject);
begin
  inherited;
    if not dtsCategory.Active then dtsCategory.Active:=True;
end;

end.

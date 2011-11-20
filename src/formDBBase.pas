unit formDBBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  formBase, Grids, DBGrids, QControls,
  ExtCtrls, DBCtrls, FiltrDlg, ImgList, ComCtrls, ToolWin,
  DBCGrids, Db, DBTables, FMTBcd, DBXpress, SqlExpr, Provider, DBClient,
  ZQuery, ZMySqlQuery, ZTransact, ZMySqlTr;

type
  TfrmDBBase = class(TfrmBase)
    FilterDlg: TFilterDialog;
    ImageList1: TImageList;
    srcSelf: TDataSource;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    pgctl: TPageControl;
    tabList: TTabSheet;
    tabDetails: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dtsSelf: TZMySqlTable;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BiDiDBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtsSelfAfterPost(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBBase: TfrmDBBase;

implementation

{$R *.DFM}

uses DM_Main;

procedure TfrmDBBase.ToolButton1Click(Sender: TObject);
begin
  inherited;
  FilterDlg.Execute;
end;

procedure TfrmDBBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;

end;

procedure TfrmDBBase.BiDiDBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button <> nbInsert) then exit;
  if (tabDetails.tabVisible) then
        pgctl.ActivePage := tabDetails;
end;

procedure TfrmDBBase.FormActivate(Sender: TObject);
begin
  inherited;
  pgctl.ActivePage := tabList;
end;

procedure TfrmDBBase.FormCreate(Sender: TObject);
  var
  I: Integer;
  Temp: TComponent;
begin
  inherited;
     for I := ComponentCount - 1 downto 0 do
     begin
          Temp := Components[I];
          if  (Temp is TDataset) then begin
             TDataset(Temp).active := true;
          end;
     end;
end;

procedure TfrmDBBase.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
    dtsSelf.ApplyUpdates;
end;

procedure TfrmDBBase.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
    if Button in [nbInsert, nbEdit] then begin
        if tabDetails.TabVisible then begin
            pgctl.ActivePage:=tabDetails;
            tabDetails.SetFocus;
        end;
    end;
end;

end.

unit formDBDetailBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  formBase, DBCGrids, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,
  Db, DBTables, DBCtrls, QControls,
  ToolWin, FiltrDlg, ImgList, FMTBcd, DBClient, Provider, SqlExpr,
  ZTransact, ZMySqlTr, ZQuery, ZMySqlQuery, TWDBRel, XPMenu;

type
  TfrmDBDetailBase = class(TfrmBase)
    ImageList1: TImageList;
    FilterDlg: TFilterDialog;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    srcSelf: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    DBCtrlGrid: TDBCtrlGrid;
    Spliter: TSplitter;
    pgctl: TPageControl;
    tabList: TTabSheet;
    tabDetails: TTabSheet;
    DBGridList: TDBGrid;
    DBNavigator1: TDBNavigator;
    dtsSelf: TZMySqlTable;
    procedure BiDiDBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dtsSelfAfterPost(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure pgctlChange(Sender: TObject);
    procedure pgctlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBDetailBase: TfrmDBDetailBase;

implementation

{$R *.DFM}

uses DM_Main;

procedure TfrmDBDetailBase.BiDiDBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if (Button <> nbInsert) then exit;
  if (tabDetails.tabVisible) then
        pgctl.ActivePage := tabDetails;
end;

procedure TfrmDBDetailBase.FormActivate(Sender: TObject);
begin
  inherited;
  if tabList.TabVisible then begin
    pgctl.ActivePage := tabList;
    pgctlChange(Sender);
  end else if tabDetails.TabVisible then begin
    pgctl.ActivePage := tabDetails;
    tabDetails.SetFocus;
  end;
end;

procedure TfrmDBDetailBase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmDBDetailBase.FormCreate(Sender: TObject);
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
          end
          ;// else if (Temp is TTWDBRel) then begin
            //TTWDBRel(Temp).active := true;
          //end;
     end;
     if not dtsSelf.active then dtsSelf.Active := true;
end;

procedure TfrmDBDetailBase.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
    dtsSelf.ApplyUpdates;
end;

procedure TfrmDBDetailBase.DBNavigator1Click(Sender: TObject;
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

procedure TfrmDBDetailBase.pgctlChange(Sender: TObject);
var
  I: Integer;
begin
  inherited;
//    ShowMessage(IntToStr(TPageControl(Sender).ActivePage.ControlCount));
    if dtsSelf.Modified then
        dtsSelf.Post;
    for I := TPageControl(pgctl).ActivePage.ControlCount - 1 downto 0 do
    begin
        if (TPageControl(pgctl).ActivePage.controls[I] is TTWDBRel) then begin
            TTWDBRel(TPageControl(pgctl).ActivePage.controls[I]).active := true;
        end;
    end;
end;

procedure TfrmDBDetailBase.pgctlChanging(Sender: TObject;
  var AllowChange: Boolean);
var
  I: Integer;
begin
  inherited;
    for I := TPageControl(pgctl).ActivePage.ControlCount - 1 downto 0 do
    begin
        if (TPageControl(pgctl).ActivePage.controls[I] is TTWDBRel) then begin
            TTWDBRel(TPageControl(pgctl).ActivePage.controls[I]).active := false;
        end;
    end;
end;

procedure TfrmDBDetailBase.ToolButton1Click(Sender: TObject);
begin
  inherited;
   FilterDlg.Execute;
end;

end.

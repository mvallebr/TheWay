unit formCrachas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmCrachas;

type
  TfrmCrachas = class(TfrmDBBase)
    dtsSelfIDLoja: TIntegerField;
    dtsSelfIDCracha: TIntegerField;
    dtsSelfTextoCodBarras: TStringField;
    dtsSelfEmUsoAtualmente: TIntegerField;
    procedure dtsSelfBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrachas: TfrmCrachas;

implementation

uses formMain, DM_main;

{$R *.dfm}
procedure createfrmCrachas;
begin
    if frmCrachas=nil then
        frmCrachas:=TfrmCrachas.Create(Application);
    frmCrachas.Show;
end;

procedure TfrmCrachas.dtsSelfBeforePost(DataSet: TDataSet);
begin
  inherited;
    try
        dtsSelf.FieldByName('IDLoja').AsInteger := DMMain.options.IDLoja;
    except
    end;
end;

end.

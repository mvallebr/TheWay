unit formCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmCargos;

type
  TfrmCargos = class(TfrmDBBase)
    dtsSelfIDCargo: TIntegerField;
    dtsSelfDescricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCargos: TfrmCargos;

implementation

{$R *.dfm}

procedure createfrmCargos;
begin
    if frmCargos=nil then
        frmCargos:=TfrmCargos.create(Application);
    frmCargos.Show;
end;

end.

unit formCatServicosTerceirizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmCatServicosTerceirizados;

type
  TfrmCatServicosTerceirizados = class(TfrmDBBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatServicosTerceirizados: TfrmCatServicosTerceirizados;

implementation

{$R *.dfm}

procedure createfrmCatServicosTerceirizados;
begin
    if frmCatServicosTerceirizados=nil then
        frmCatServicosTerceirizados:=TfrmCatServicosTerceirizados.Create(Application);
    frmCatServicosTerceirizados.Show;
end;

end.

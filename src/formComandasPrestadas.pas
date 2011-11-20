unit formComandasPrestadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, DB, ZQuery, ZMySqlQuery, FiltrDlg, ImgList,
  Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmComandasPrestadas;

type
  TfrmComandasPrestadas = class(TfrmDBDetailBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComandasPrestadas: TfrmComandasPrestadas;

implementation

{$R *.dfm}

procedure createfrmComandasPrestadas;
begin
    if frmComandasPrestadas=nil then
        frmComandasPrestadas:=TfrmComandasPrestadas.create(Application);
    frmComandasPrestadas.Show;
end;
end.

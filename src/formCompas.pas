unit formCompas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin;

type
  TfrmCompas = class(TfrmDBDetailBase)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompas: TfrmCompas;

implementation

{$R *.dfm}

procedure TfrmCompas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    frmCompras:=nil;
end;

end.

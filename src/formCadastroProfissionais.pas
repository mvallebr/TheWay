unit formCadastroProfissionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, FMTBcd, DBClient, Provider, DB, SqlExpr,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, ZTransact, ZMySqlTr, ZQuery, ZMySqlQuery,
  formDBDetailWithCategory;

procedure createfrmCadastroProfissionais;

type
  TfrmCadastroProfissionais = class(TfrmDBDetailWithCategory)
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProfissionais: TfrmCadastroProfissionais;

implementation

uses DM_main;

{$R *.dfm}

procedure createfrmCadastroProfissionais;
begin
        if(frmCadastroProfissionais=nil) then
                frmCadastroProfissionais:=TfrmCadastroProfissionais.Create(Application);

        frmCadastroProfissionais.Show;

end;

procedure TfrmCadastroProfissionais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
        Action:=cafree;
        frmCadastroProfissionais:=nil;
end;

end.

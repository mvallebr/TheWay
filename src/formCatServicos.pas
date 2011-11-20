unit formCatServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmCatServicos;

type
  TfrmCatServicos = class(TfrmDBBase)
    dtsSelfIDCategoriaServico: TIntegerField;
    dtsSelfDescricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatServicos: TfrmCatServicos;

implementation

{$R *.dfm}

procedure createfrmCatServicos;
begin
    if frmCatServicos=nil then
        frmCatServicos:=TfrmCatServicos.Create(Application);
    frmCatServicos.Show;
end;

end.

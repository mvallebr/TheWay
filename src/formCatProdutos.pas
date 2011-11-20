unit formCatProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmCatProdutos;

type
  TfrmCatProdutos = class(TfrmDBBase)
    dtsSelfIDCategoriaProduto: TIntegerField;
    dtsSelfDescricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatProdutos: TfrmCatProdutos;

implementation

{$R *.dfm}

procedure createfrmCatProdutos;
begin
    if frmCatProdutos=nil then
        frmCatProdutos:=TfrmCatProdutos.Create(Application);
    frmCatProdutos.Show;
end;

end.

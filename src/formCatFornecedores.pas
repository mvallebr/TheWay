unit formCatFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmCatFornecedores;

type
  TfrmCatFornecedores = class(TfrmDBBase)
    dtsSelfIDCategoriaFornecedor: TIntegerField;
    dtsSelfDescricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatFornecedores: TfrmCatFornecedores;

implementation

{$R *.dfm}

procedure createfrmCatFornecedores;
begin
    if frmCatFornecedores=nil then
        frmCatFornecedores:=TfrmCatFornecedores.Create(Application);
    frmCatFornecedores.Show;
end;

end.

unit formCatFornecedoresTerceirizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin;

procedure createfrmCatFornecedoresTerceirizados;

type
  TfrmCatFornecedoresTerceirizados = class(TfrmDBBase)
    dtsSelfIDCategoriaServicoTerc: TIntegerField;
    dtsSelfDescricao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatFornecedoresTerceirizados: TfrmCatFornecedoresTerceirizados;

implementation

{$R *.dfm}

procedure createfrmCatFornecedoresTerceirizados;
begin
    if frmCatFornecedoresTerceirizados=nil then
        frmCatFornecedoresTerceirizados:=TfrmCatFornecedoresTerceirizados.Create(Application);
    frmCatFornecedoresTerceirizados.Show;
end;

end.

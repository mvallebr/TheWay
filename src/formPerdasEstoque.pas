unit formPerdasEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmPerdasEstoque;

type
  TfrmPerdasEstoque = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditIDLoja: TDBEdit;
    EditIDProduto: TDBEdit;
    EditIDEstoque: TDBEdit;
    EditIDProfissional: TDBEdit;
    EditDataPerda: TDBEdit;
    EditQuantidade: TDBEdit;
    EditMotivo: TDBEdit;
    dtsSelfIDLoja: TIntegerField;
    dtsSelfIDProduto: TIntegerField;
    dtsSelfIDEstoque: TIntegerField;
    dtsSelfIDProfissional: TIntegerField;
    dtsSelfDataPerda: TDateField;
    dtsSelfQuantidade: TIntegerField;
    dtsSelfMotivo: TMemoField;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPerdasEstoque: TfrmPerdasEstoque;

implementation

{$R *.dfm}

procedure createfrmPerdasEstoque;
begin
    if (frmPerdasEstoque=nil) then
        frmPerdasEstoque:=TfrmPerdasEstoque.Create(Application);
    frmPerdasEstoque.Show;
end;

procedure TfrmPerdasEstoque.FormDestroy(Sender: TObject);
begin
  inherited;
    frmPerdasEstoque:=nil;
end;

end.

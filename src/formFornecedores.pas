unit formFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailWithCategory, ZTransact, ZMySqlTr, DB, ZQuery,
  ZMySqlQuery, FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids,
  StdCtrls, ExtCtrls, DBCtrls, ToolWin, Mask, TWDBRel;

procedure createfrmFornecedores;

type
  TfrmFornecedores = class(TfrmDBDetailWithCategory)
    dtsCategoryIDCategoriaFornecedor: TIntegerField;
    dtsCategoryDescricao: TStringField;
    dtsSelfIDCategoriaFornecedor: TIntegerField;
    dtsSelfIDFornecedor: TIntegerField;
    dtsSelfDescricao: TStringField;
    dtsSelfNomeContato: TStringField;
    dtsSelfEndereco: TStringField;
    dtsSelfCidade: TStringField;
    dtsSelfEstado: TStringField;
    dtsSelfCEP: TStringField;
    dtsSelfPais: TStringField;
    dtsSelfTelefone1: TStringField;
    dtsSelfTelefone2: TStringField;
    dtsSelfTelefone3: TStringField;
    dtsSelfFax: TStringField;
    dtsSelfEmail1: TStringField;
    dtsSelfEmail2: TStringField;
    dtsSelfEmail3: TStringField;
    dtsSelfDataCadastro: TDateField;
    ScrollBox: TScrollBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EditIDFornecedor: TDBEdit;
    EditDescricao: TDBEdit;
    EditNomeContato: TDBEdit;
    EditEndereco: TDBEdit;
    EditCidade: TDBEdit;
    EditCEP: TDBEdit;
    EditPais: TDBEdit;
    EditTelefone: TDBEdit;
    EditTelefone2: TDBEdit;
    EditTelefone3: TDBEdit;
    EditFax: TDBEdit;
    EditEmail: TDBEdit;
    EditEmail2: TDBEdit;
    EditEmail3: TDBEdit;
    EditDataCadastro: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    Label43: TLabel;
    Label44: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TWDBRel1: TTWDBRel;
    TWDBRel2: TTWDBRel;
    Label2: TLabel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses DM_Main;

procedure createfrmFornecedores;
begin
    if (frmFornecedores=nil) then
        frmFornecedores:=TfrmFornecedores.Create(Application);
    frmFornecedores.Show;
end;

procedure TfrmFornecedores.FormDestroy(Sender: TObject);
begin
  inherited;
    frmFornecedores:=nil;
end;

end.

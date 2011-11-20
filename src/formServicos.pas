unit formServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBDetailWithCategory, Mask, TWDBRel;

procedure createfrmServicos;

type
  TfrmServicos = class(TfrmDBDetailWithCategory)
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ScrollBox: TScrollBox;
    Label3: TLabel;
    Label4: TLabel;
    EditIDServico: TDBEdit;
    EditDescricao: TDBEdit;
    TWDBRel1: TTWDBRel;
    TWDBRel2: TTWDBRel;
    TWDBRel3: TTWDBRel;
    TabSheet4: TTabSheet;
    TWDBRel4: TTWDBRel;
    DBText1: TDBText;
    DBText2: TDBText;
    dtsSelfIDServico: TIntegerField;
    dtsSelfIDCategoriaServico: TIntegerField;
    dtsSelfDescricao: TStringField;
    dtsSelfValorMin: TFloatField;
    dtsSelfValorMax: TFloatField;
    dtsSelfComissaoPercentualPadrao: TFloatField;
    dtsSelfDataUltimaAlteracao: TDateField;
    dtsSelfComissaoFixaPadrao: TFloatField;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure dtsSelfBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServicos: TfrmServicos;

implementation

{$R *.dfm}

procedure createfrmServicos;
begin
    if (frmServicos=nil) then
        frmServicos:=TfrmServicos.Create(Application);
end;

procedure TfrmServicos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmServicos:=nil;
end;

procedure TfrmServicos.dtsSelfBeforePost(DataSet: TDataSet);
begin
  inherited;
    dtsSelf.FieldByName('DataUltimaAlteracao').AsDateTime := date;
end;

end.

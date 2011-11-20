unit formProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailWithCategory, ZTransact, ZMySqlTr, DB, ZQuery,
  ZMySqlQuery, FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids,
  StdCtrls, ExtCtrls, DBCtrls, ToolWin, Mask, TWDBRel, ZImage, ExtDlgs;

procedure createfrmProdutos;

type
  TfrmProdutos = class(TfrmDBDetailWithCategory)
    dtsCategoryIDCategoriaProduto: TIntegerField;
    dtsCategoryDescricao: TStringField;
    dtsSelfIDCategoriaProduto: TIntegerField;
    dtsSelfIDProduto: TIntegerField;
    dtsSelfDescricao: TStringField;
    dtsSelfPesoOuUnidade: TStringField;
    dtsSelfMarca: TStringField;
    dtsSelfDataUltimaAlteracao: TDateField;
    dtsSelfValorCusto: TFloatField;
    dtsSelfValorRevenda: TFloatField;
    dtsSelfValorRevendaFuncionario: TFloatField;
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    EditIDProduto: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TWDBRel1: TTWDBRel;
    TWDBRel2: TTWDBRel;
    TWDBRel3: TTWDBRel;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    dtsCompras: TZMySqlQuery;
    srcCompras: TDataSource;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    srcVendas: TDataSource;
    dtsVendas: TZMySqlQuery;
    srcVendasInternas: TDataSource;
    dtsVendasInternas: TZMySqlQuery;
    TabSheet7: TTabSheet;
    DescProdutos: TTWDBRel;
    Label43: TLabel;
    DBText2: TDBText;
    Label44: TLabel;
    DBText3: TDBText;
    TabSheet8: TTabSheet;
    imgFoto: TZDbImage;
    dtsSelfFoto: TBlobField;
    dlgFoto: TOpenPictureDialog;
    dtsSelfCodBarras: TStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure DescProdutosButtonUpClicked(Sender: TObject; dts: TDataSet;
      var fields: TStringList; var cancel: Boolean);
    procedure dtsSelfBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dtsSelfAfterScroll(DataSet: TDataSet);
    procedure imgFotoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imgFotoDblClick(Sender: TObject);
  private
    { Private declarations }
    picture_changed:    boolean;
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses DM_Main, formAddClienteProduto, unitTheWayUtils;

procedure createfrmProdutos;
begin
    if (frmProdutos=nil) then
        frmProdutos:=TfrmProdutos.Create(Application);
    frmProdutos.Show;
end;

procedure TfrmProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmProdutos:=nil;
end;

procedure TfrmProdutos.DescProdutosButtonUpClicked(Sender: TObject;
  dts: TDataSet; var fields: TStringList; var cancel: Boolean);
var
    frmAdd: TfrmAddClienteProduto;
    descontofixo:  real;
    descontopercentual: real;
begin
  inherited;
    frmAdd := TfrmAddClienteProduto.Create(Self);
    try
        WindowState:=wsNormal;
        frmAdd.Visible := false;
        frmAdd.preco:=dts.FieldByName('ValorRevenda').AsFloat;
        if (frmAdd.preco=0) then begin
            beep;
            ShowMessage('Erro: O preço do produto é nulo!');
            cancel := true;
            WindowState := wsMaximized;
            Refresh;
            exit;
        end;
        frmAdd.lbProduto.Caption := dts.FieldByName('Descricao').AsString;
        if frmAdd.ShowModal <> mrOk then begin
            cancel := true;
            WindowState := wsMaximized;
            Refresh;
            exit;
        end;
        try
            descontofixo := StrToFloat(frmadd.edtDescontoFixo.Text);
            descontopercentual := StrToFloat(frmadd.edtDescontoPercentual.Text);
        except
            ShowMessage('O valor digitado é inválido!');
            cancel := true;
            WindowState := wsMaximized;
            Refresh;
            exit;
        end;
//    ShowMessage(CommaToPoint(FloatToStr(descontoPercentual)));
        fields.Add('DescontoFixo='+CommaToPoint(FloatToStr(descontoFixo)));
        fields.Add('DescontoPercentual='+CommaToPoint(FloatToStr(descontoPercentual)));
    finally
        frmAdd.Destroy;
        WindowState := wsMaximized;
        Refresh;
    end;
end;

procedure TfrmProdutos.dtsSelfBeforePost(DataSet: TDataSet);
begin
  inherited;
  dtsSelf.FieldByName('DataUltimaAlteracao').AsDateTime := date;
  if not picture_changed then exit;
  try
    dtsSelf.FieldByName('Foto').Assign(imgFoto.Picture);
  except
    beep;
  end;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  inherited;
    picture_changed:=false;
end;

procedure TfrmProdutos.dtsSelfAfterScroll(DataSet: TDataSet);
begin
  inherited;
    picture_changed:=false;
end;

procedure TfrmProdutos.imgFotoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key=32 then imgFotoDblClick(Sender);
end;

procedure TfrmProdutos.imgFotoDblClick(Sender: TObject);
begin
  inherited;
  try
    if not dtsSelf.Active then exit;
    if dtsSelf.ReadOnly then exit;
    if dtsSelf.IsEmpty then exit;
    if not dlgFoto.Execute then exit;
    dtsSelf.Edit;
    imgFoto.Picture.LoadFromFile(dlgFoto.FileName);
    picture_changed:=true;
  except
  end;
end;

end.

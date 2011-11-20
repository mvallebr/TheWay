unit formEstoque;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, Buttons, ComCtrls, ExtCtrls, Gradient, DB,
  ZQuery, ZMySqlQuery, ZImage, DBCtrls, Mask, ExtDlgs, Qt, Spin, Grids,
  DBGrids, SysUtils;

procedure createfrmEstoque;

type
  TfrmEstoque = class(TfrmBase)
    lbTitulo: TLabel;
    srcProdutos: TDataSource;
    dtsProdutos: TZMySqlTable;
    Gradient1: TGradient;
    Panel1: TPanel;
    pgctl: TPageControl;
    tabLista: TTabSheet;
    Panel12: TPanel;
    Label26: TLabel;
    tabAdicionar: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label25: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Panel5: TPanel;
    lbLegenda: TLabel;
    edtCodigo: TEdit;
    dtsProdutosIDProduto: TIntegerField;
    dtsProdutosIDCategoriaProduto: TIntegerField;
    dtsProdutosDescricao: TStringField;
    dtsProdutosPesoOuUnidade: TStringField;
    dtsProdutosMarca: TStringField;
    dtsProdutosDataUltimaAlteracao: TDateField;
    dtsProdutosValorCusto: TFloatField;
    dtsProdutosValorRevenda: TFloatField;
    dtsProdutosValorRevendaFuncionario: TFloatField;
    dtsProdutosFoto: TBlobField;
    dtsProdutosCodBarras: TStringField;
    dtsProdutosComissaoPercentualProf: TFloatField;
    dtsCategory: TZMySqlTable;
    dtsCategoryIDCategoriaProduto: TIntegerField;
    dtsCategoryDescricao: TStringField;
    srcCategory: TDataSource;
    lbLegenda2: TLabel;
    Label3: TLabel;
    EditIDProduto: TDBEdit;
    edtCategoria: TDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    imgFoto: TZDbImage;
    Label10: TLabel;
    edtDescricao: TDBEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    edtValorCusto: TDBEdit;
    Label14: TLabel;
    edtCodBarras: TDBEdit;
    dlgFoto: TOpenPictureDialog;
    srcEstoque: TDataSource;
    dtsEstoque: TZMySqlQuery;
    grdLista: TDBGrid;
    dtsEstoqueIDLoja: TIntegerField;
    dtsEstoqueIDProduto: TIntegerField;
    dtsEstoqueQuantidade: TIntegerField;
    dtsEstoqueQtdVendivelProfissional: TIntegerField;
    dtsEstoqueIDProduto_1: TIntegerField;
    dtsEstoqueIDCategoriaProduto: TIntegerField;
    dtsEstoqueDescricao: TStringField;
    dtsEstoquePesoOuUnidade: TStringField;
    dtsEstoqueMarca: TStringField;
    dtsEstoqueDataUltimaAlteracao: TDateField;
    dtsEstoqueValorCusto: TFloatField;
    dtsEstoqueValorRevenda: TFloatField;
    dtsEstoqueValorRevendaFuncionario: TFloatField;
    dtsEstoqueFoto: TBlobField;
    dtsEstoqueCodBarras: TStringField;
    dtsEstoqueComissaoPercentualProf: TFloatField;
    tabDiferencas: TTabSheet;
    srcDiferencas: TDataSource;
    dtsDiferencas: TZMySqlQuery;
    IntegerField2: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    BlobField1: TBlobField;
    StringField4: TStringField;
    FloatField4: TFloatField;
    dtsDiferencasDataRegistro: TDateField;
    dtsDiferencasQuantidadePerdida: TIntegerField;
    Panel4: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    lbLegenda3: TLabel;
    edtCodigo2: TEdit;
    DBGrid2: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imgFotoDblClick(Sender: TObject);
    procedure imgFotoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtCodBarrasEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtsProdutosBeforePost(DataSet: TDataSet);
    procedure dtsProdutosAfterScroll(DataSet: TDataSet);
    procedure edtCodigoEnter(Sender: TObject);
    procedure dtsEstoqueAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure edtCodigo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtsEstoqueAfterPost(DataSet: TDataSet);
    procedure grdListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigo2Change(Sender: TObject);
    procedure dtsEstoqueAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    picture_changed:    boolean;
    ok_to_insert:   boolean;
    qtd, qtdprof:   integer;
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;

implementation

uses  DM_main;

{$R *.dfm}

procedure createfrmEstoque;
begin
    if frmEstoque=nil then
        frmEstoque:=TfrmEstoque.Create(Application);
    frmEstoque.Show;
end;

procedure TfrmEstoque.ResetFields;
begin
    pgctl.ActivePage := tabLista;
    tabAdicionar.TabVisible := False;
    lbLegenda.caption := 'Passe o código de barras pelo produto';
    lbLegenda2.Caption := '';
    edtCodigo.enabled := true;
    edtCodigo.Clear;
    edtCodigo.setFocus;
    dtsProdutos.IndexName := 'codbarras';
    dtsCategory.Active := True;
    dtsEstoque.Active := True;
    dtsDiferencas.Active := True;
    dtsEstoque.IndexName := 'nome';
    dtsDiferencas.IndexName := 'nome';
    ok_to_insert:= False;
    qtd:=0;
    qtdprof:=0;
end;

procedure TfrmEstoque.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmEstoque.edtCodigoChange(Sender: TObject);
begin
  inherited;
    lbLegenda2.Caption := '';
end;

procedure TfrmEstoque.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //Só permite teclas numéricas
    case key of
        Key_A..Key_Z: begin
            edtCodigo.Clear;
            exit;
        end;
    end;
    if key = VK_ESCAPE  then ResetFields;
    if (key<>13) and (key<>9) then exit;

    edtCodigo.Text:= Trim(edtCodigo.Text);
    if length(edtCodigo.Text)<>13 then begin
        edtCodigo.clear;
        beep;
        lbLegenda2.Caption := 'Código de barras inválido! ';
        exit;
    end;
    dtsProdutos.Filter := 'CodBarras="'+edtCodigo.text+'"';
    if not dtsProdutos.FindFirst then begin
        //Não encontrou cadastro do produto, pergunta se deseja cadastrar
        if MessageDlg('O produto não está cadastrado. Deseja cadastrá-lo agora?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
            edtCodigo.Clear;
            exit;
        end;
        pgctl.ActivePage := tabAdicionar;
        dtsProdutos.Insert;
        edtCodBarras.Text := edtCodigo.Text;
        edtCategoria.setFocus;
    end else begin
        //O produto existe, encontre o mesmo na lista de estoque
        dtsEstoque.Filter := 'CodBarras="'+edtCodigo.text+'"';
        if not dtsEstoque.FindFirst then begin
            //Não encontrou cadastro do produto, pergunta se deseja cadastrar
            if MessageDlg('O produto "'+dtsProdutos.FieldByName('Descricao').asString+'" não consta no estoque. Deseja adicionar uma entrada para o mesmo no estoque?',
                mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
                edtCodigo.Clear;
                exit;
            end;
            edtCodigo.Enabled := false;
            ok_to_insert:=True;
            dtsEstoque.insert;
            dtsEstoque.FieldByName('IDProduto').AsInteger := dtsProdutos.FieldByName('IDProduto').AsInteger;
            dtsEstoque.FieldByName('Descricao').AsString := dtsProdutos.FieldByName('Descricao').AsString;
            dtsEstoque.FieldByName('Marca').AsString := dtsProdutos.FieldByName('Marca').AsString;
            dtsEstoque.FieldByName('PesoOuUnidade').AsString := dtsProdutos.FieldByName('PesoOuUnidade').AsString;
            dtsEstoque.FieldByName('Quantidade').AsInteger  := 0;
            dtsEstoque.FieldByName('QtdVendivelProfissional').AsInteger := 0;
        end else begin
            dtsEstoque.Edit;
        end;
        grdLista.SelectedField := dtsEstoque.FieldByName('Quantidade');
        grdLista.SetFocus;
        edtCodigo.Clear;
    end;

end;

procedure TfrmEstoque.imgFotoDblClick(Sender: TObject);
begin
  inherited;
  try
    if not dtsProdutos.Active then exit;
    if dtsProdutos.ReadOnly then exit;
    if dtsProdutos.IsEmpty then exit;
    if not dlgFoto.Execute then exit;
    dtsProdutos.Edit;
    imgFoto.Picture.LoadFromFile(dlgFoto.FileName);
    picture_changed:=true;
  except
  end;
end;

procedure TfrmEstoque.imgFotoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key=32 then imgFotoDblClick(Sender);
end;

procedure TfrmEstoque.BitBtn2Click(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmEstoque.BitBtn1Click(Sender: TObject);
begin
  inherited;
    if length(edtCodBarras.Text)<13 then begin
        beep;
        showmessage('Código de barras inválido');
        edtCodBarras.SetFocus;
    end;
    edtDescricao.text := Trim(edtDescricao.text);
    if edtDescricao.text = '' then begin
        beep;
        showmessage('Insira uma descrição para o produto');
        edtDescricao.SetFocus;
    end;
    try
        dtsProdutos.Post;
    except
        ShowMessage('Erro ao cadastrar produto!');
    end;
    ResetFields;
    lbLegenda2.Caption := 'Produto cadastrado!';
end;

procedure TfrmEstoque.edtCodBarrasEnter(Sender: TObject);
begin
  inherited;
    edtCodBarras.SelectAll;
end;

procedure TfrmEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    picture_changed:= false;
end;

procedure TfrmEstoque.dtsProdutosBeforePost(DataSet: TDataSet);
begin
  inherited;
    dtsProdutos.FieldByName('DataUltimaAlteracao').AsDateTime := date;
    if not picture_changed then exit;
    try
        dtsProdutos.FieldByName('Foto').Assign(imgFoto.Picture);
    except
        beep;
    end;
    //Verifica se todos os campos obrigatórios estão preenchidos e aborta em caso negativo
    if dtsProdutos.fieldByName('Descricao').IsNull then begin
      beep;
      Abort;
      try
         edtDescricao.SetFocus;
      except
         beep;
      end;
      exit;
    end;
    if dtsProdutos.FieldByName('ValorCusto').IsNull then begin
      beep;
      abort;
      try
         edtValorCusto.SetFocus;
      except
         beep;
      end;
      exit;
    end;


end;

procedure TfrmEstoque.dtsProdutosAfterScroll(DataSet: TDataSet);
begin
  inherited;
    picture_changed:=false;
end;

procedure TfrmEstoque.edtCodigoEnter(Sender: TObject);
begin
  inherited;
    edtCodigo2.SelectAll;
end;

procedure TfrmEstoque.dtsEstoqueAfterInsert(DataSet: TDataSet);
begin
  inherited;
    if not ok_to_insert then begin
        dtsEstoque.Cancel;
        exit;
    end;
    dtsEstoque.FieldByName('IDLoja').AsInteger := DMMain.options.IDLoja;
    qtd:=0;
    qtdprof:=0;
end;

procedure TfrmEstoque.FormDestroy(Sender: TObject);
begin
  inherited;
    frmEstoque:=nil;
end;

procedure TfrmEstoque.edtCodigo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //Só permite teclas numéricas
    case key of
        Key_A..Key_Z: begin
            edtCodigo2.Clear;
            exit;
        end;
    end;
    if key = VK_ESCAPE  then ResetFields;
    if (key<>13) and (key<>9) then exit;
    edtCodigo2.Text:= Trim(edtCodigo2.Text);
    if length(edtCodigo2.Text)<>13 then begin
        edtCodigo2.clear;
        beep;
        lbLegenda3.Caption := 'Código de barras inválido! ';
        exit;
    end;
    dtsProdutos.Filter := 'CodBarras="'+edtCodigo2.text+'"';
    if not dtsProdutos.FindFirst then begin
        //Não encontrou cadastro do produto, pergunta se deseja cadastrar
        if MessageDlg('O produto não está cadastrado. Deseja cadastrá-lo agora?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
            edtCodigo2.Clear;
            exit;
        end;
        pgctl.ActivePage := tabAdicionar;
        dtsProdutos.Insert;
        edtCodBarras.Text := edtCodigo2.Text;
        edtCategoria.setFocus;
    end else begin
        //O produto existe, encontre o mesmo na lista de estoque
        dtsDiferencas.Filter := 'CodBarras="'+edtCodigo2.text+'"';
        if not dtsDiferencas.FindFirst then beep;
        edtCodigo2.Clear;
    end;
end;

procedure TfrmEstoque.dtsEstoqueAfterPost(DataSet: TDataSet);
var
    qtd2, qtdprof2: integer;
    ano, mes, dia:  word;
    diffinal:   integer;
begin
  inherited;
    ok_to_insert:=False;
    edtCodigo.Enabled := True;
    edtCodigo.SetFocus;
    try
        qtd2:=dtsEstoque.fieldByName('Quantidade').asInteger;
        qtdprof2:=dtsEstoque.fieldByName('QtdVendivelProfissional').asInteger;
        diffinal:=(qtd-qtd2)+(qtdprof-qtdprof2);
//        showMessage('Diferenças: 1='+IntToStr(qtd-qtd2)+' 2='+IntToStr(qtdprof-qtdprof2));

        dtsDiferencas.Refresh;

        decodedate(date, ano, mes, dia);
        dtsDiferencas.Filter := '(DataRegistro='+format('"%.4d-%.2d-%.2d" ', [ano, mes, dia])+') and (IDProduto='+dtsEstoque.fieldByName('IDProduto').asString+')';
        if not dtsDiferencas.FindFirst then begin
            dtsDiferencas.Insert;
            dtsDiferencas.FieldByName('DataRegistro').AsDateTime :=date;
            dtsDiferencas.FieldByName('IDProduto').AsInteger:=dtsEstoque.fieldByName('IDProduto').asInteger;
        end else begin
            dtsDiferencas.Edit;
            diffinal := diffinal + dtsDiferencas.FieldByName('QuantidadePerdida').AsInteger;
        end;
        dtsDiferencas.FieldByName('QuantidadePerdida').AsInteger:=diffinal;
        dtsDiferencas.Post;

        dtsEstoque.Refresh;
        dtsEstoque.FindFirst;
    except
        beep;
    end;
end;

procedure TfrmEstoque.grdListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key=27 then dtsEstoque.CancelUpdates;
    if key <> 13 then exit;
    try
        dtsEstoque.Post;
    except
        beep;
    end;
end;

procedure TfrmEstoque.edtCodigo2Change(Sender: TObject);
begin
  inherited;
    lbLegenda3.Caption := '';
end;

procedure TfrmEstoque.dtsEstoqueAfterScroll(DataSet: TDataSet);
begin
  inherited;
    try
        qtd:=dtsEstoque.fieldByName('Quantidade').asInteger;
        qtdprof:=dtsEstoque.fieldByName('QtdVendivelProfissional').asInteger;
    except
        qtd:=0;
        qtdprof:=0;
    end;
end;

end.

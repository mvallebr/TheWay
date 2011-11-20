unit formListaPrecos;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, Buttons, ComCtrls, ExtCtrls, Gradient, DB,
  ZQuery, ZMySqlQuery, ZImage, DBCtrls, Mask, ExtDlgs, Qt, SysUtils;

procedure createfrmListaPrecos;

type
  TfrmListaPrecos = class(TfrmBase)
    lbTitulo: TLabel;
    srcProdutos: TDataSource;
    dtsProdutos: TZMySqlTable;
    Gradient1: TGradient;
    Panel1: TPanel;
    pgctl: TPageControl;
    tabPreco: TTabSheet;
    Panel12: TPanel;
    Label26: TLabel;
    tabAdicionar: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label25: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    panelDetalhes: TPanel;
    Panel5: TPanel;
    lbLegenda: TLabel;
    edtCodigo: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    imgFoto1: TZDbImage;
    DBText1: TDBText;
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
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    edtValor: TDBEdit;
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
    procedure FormActivate(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtValorKeyDown(Sender: TObject; var Key: Word;
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
  private
    { Private declarations }
    picture_changed:    boolean;
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmListaPrecos: TfrmListaPrecos;

implementation

{$R *.dfm}

procedure createfrmListaPrecos;
begin
    if frmListaPrecos=nil then
        frmListaPrecos:=TfrmListaPrecos.Create(Application);
    frmListaPrecos.Show;
end;

procedure TfrmListaPrecos.ResetFields;
begin
    pgctl.ActivePage := tabPreco;
    lbLegenda.caption := 'Passe o código de barras pelo produto';
    lbLegenda2.Caption := '';
    edtValor.enabled := false;
    edtCodigo.enabled := true;
    edtCodigo.Clear;
    edtCodigo.setFocus;
    panelDetalhes.Visible := false;
    dtsProdutos.IndexName := 'nome';
    dtsCategory.Active := True;
end;

procedure TfrmListaPrecos.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmListaPrecos.edtCodigoChange(Sender: TObject);
begin
  inherited;
    lbLegenda2.Caption := '';
end;

procedure TfrmListaPrecos.edtCodigoKeyDown(Sender: TObject; var Key: Word;
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
        lbLegenda.Caption := 'Código de barras inválido! ';
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
        //Encontrou o produto, então edite o valor
        edtCodigo.Enabled := false;
        edtValor.Enabled := true;
        edtValor.setFocus;
        dtsProdutos.Edit;
        lbLegenda2.Caption := 'Digite o valor do produto';
        panelDetalhes.Visible := true;
    end;

end;

procedure TfrmListaPrecos.edtValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = VK_ESCAPE  then begin
        beep;
        edtCodigo.Enabled := true;
        edtValor.Enabled := false;
        edtCodigo.Clear;
        edtCodigo.setFocus;
        dtsProdutos.Cancel;
        lbLegenda2.Caption := '';
        panelDetalhes.Visible := False;
    end else if key=13 then begin
        try
            dtsProdutos.Post;
        except
            beep;
            lbLegenda2.Caption := 'Valor incorreto!';
        end;
        edtCodigo.Enabled := true;
        edtCodigo.Clear;
        edtValor.Enabled := false;
        edtCodigo.setFocus;
        lbLegenda2.Caption := 'Valor alterado';
        panelDetalhes.Visible := false;
    end;
end;

procedure TfrmListaPrecos.imgFotoDblClick(Sender: TObject);
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

procedure TfrmListaPrecos.imgFotoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key=32 then imgFotoDblClick(Sender);
end;

procedure TfrmListaPrecos.BitBtn2Click(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmListaPrecos.BitBtn1Click(Sender: TObject);
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

procedure TfrmListaPrecos.edtCodBarrasEnter(Sender: TObject);
begin
  inherited;
    edtCodBarras.SelectAll;
end;

procedure TfrmListaPrecos.FormCreate(Sender: TObject);
begin
  inherited;
    picture_changed:= false;
end;

procedure TfrmListaPrecos.dtsProdutosBeforePost(DataSet: TDataSet);
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
      Abort;
      try
         edtValorCusto.SetFocus;
      except
         beep;
      end;
      exit;
    end;
end;

procedure TfrmListaPrecos.dtsProdutosAfterScroll(DataSet: TDataSet);
begin
  inherited;
    picture_changed:=false;
end;

procedure TfrmListaPrecos.edtCodigoEnter(Sender: TObject);
begin
  inherited;
    edtCodigo.SelectAll;
end;

end.

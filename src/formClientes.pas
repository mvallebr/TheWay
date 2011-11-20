 unit formClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  formDBDetailBase, Db, DBTables, FiltrDlg, ImgList, DBCGrids, StdCtrls,
  ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ToolWin, Mask, FMTBcd, DBClient, Provider, SqlExpr, ZTransact, ZMySqlTr,
  ZQuery, ZMySqlQuery, TWDBRel;

procedure createFrmClientes;

type
  TfrmClientes = class(TfrmDBDetailBase)
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    Panel2: TPanel;
    ScrollBox: TScrollBox;
    Label9: TLabel;
    EditDataNasc: TDBEdit;
    tabLojas: TTabSheet;
    tabDescProdutos: TTabSheet;
    dtsSelfIDCliente: TIntegerField;
    dtsSelfSexo: TStringField;
    dtsSelfDataNasc: TDateField;
    dtsSelfEnderecoRes: TStringField;
    dtsSelfCidadeRes: TStringField;
    dtsSelfEstadoRes: TStringField;
    dtsSelfCEPRes: TStringField;
    dtsSelfTelefoneRes1: TStringField;
    dtsSelfTelefoneRes2: TStringField;
    dtsSelfTelefoneRes3: TStringField;
    dtsSelfFax: TStringField;
    dtsSelfEmail1: TStringField;
    dtsSelfEmail2: TStringField;
    dtsSelfEmail3: TStringField;
    dtsSelfPager: TStringField;
    dtsSelfCredito: TFloatField;
    dtsSelfReligiao: TStringField;
    dtsSelfProfissao: TStringField;
    dtsSelfEstadoCivil: TStringField;
    dtsSelfTipoCabelo: TStringField;
    dtsSelfTipoPele: TStringField;
    dtsSelfCorPele: TStringField;
    dtsSelfCPF: TStringField;
    dtsSelfRG: TStringField;
    dtsSelfCorCabelo: TStringField;
    dtsSelfCelular: TStringField;
    dtsSelfNomeContato1: TStringField;
    dtsSelfTelContato1: TStringField;
    dtsSelfNomeContato2: TStringField;
    dtsSelfTelContato2: TStringField;
    dtsSelfEnderecoCom: TStringField;
    dtsSelfCidadeCom: TStringField;
    dtsSelfEstadoCom: TStringField;
    dtsSelfTelefoneCom: TStringField;
    dtsSelfCEPCom: TStringField;
    dtsSelfDataCadastro: TDateField;
    dtsSelfPais: TStringField;
    dtsSelfNacionalidade: TStringField;
    dtsSelfNaturalidade: TStringField;
    dtsSelfNFilhos: TIntegerField;
    dtsSelfNomeFilhos: TMemoField;
    dtsSelfConjugue: TStringField;
    dtsSelfNovoCliente: TIntegerField;
    dtsSelfIndicadaPorCliente: TIntegerField;
    dtsSelfIDClienteIndicou: TIntegerField;
    TWDBRel1: TTWDBRel;
    tabDescServicos: TTabSheet;
    DescProdutos: TTWDBRel;
    DescServicos: TTWDBRel;
    dtsSelfNome: TStringField;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    EdtNome: TDBEdit;
    Label52: TLabel;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label8: TLabel;
    Label4: TLabel;
    DBText5: TDBText;
    DBCheckBox2: TDBCheckBox;
    Label25: TLabel;
    Label24: TLabel;
    EditProfissao: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label29: TLabel;
    EditCPF: TDBEdit;
    Label30: TLabel;
    EditRG: TDBEdit;
    Label23: TLabel;
    EditReligiao: TDBEdit;
    Label22: TLabel;
    EditCredito: TDBEdit;
    GroupBox2: TGroupBox;
    EditPager: TDBEdit;
    Label21: TLabel;
    EditEmail2: TDBEdit;
    Label19: TLabel;
    EditFax: TDBEdit;
    Label17: TLabel;
    EditTelefoneRes2: TDBEdit;
    Label15: TLabel;
    DBComboBox3: TDBComboBox;
    Label12: TLabel;
    EditCEPRes: TDBEdit;
    Label13: TLabel;
    Label10: TLabel;
    EditEnderecoRes: TDBEdit;
    Label11: TLabel;
    EditCidadeRes: TDBEdit;
    Label14: TLabel;
    EditTelefoneRes: TDBEdit;
    Label16: TLabel;
    EditTelefoneRes3: TDBEdit;
    Label18: TLabel;
    EditEmail: TDBEdit;
    Label20: TLabel;
    EditEmail3: TDBEdit;
    GroupBox3: TGroupBox;
    EditCelular: TDBEdit;
    Label32: TLabel;
    Label26: TLabel;
    EditTipoCabelo: TDBEdit;
    Label27: TLabel;
    EditTipoPele: TDBEdit;
    Label28: TLabel;
    EditCorPele: TDBEdit;
    Label31: TLabel;
    EditCorCabelo: TDBEdit;
    GroupBox4: TGroupBox;
    Label33: TLabel;
    EditNomeContato: TDBEdit;
    Label34: TLabel;
    EditTelContato: TDBEdit;
    Label35: TLabel;
    EditNomeContato2: TDBEdit;
    Label36: TLabel;
    EditTelContato2: TDBEdit;
    GroupBox5: TGroupBox;
    EditCEPCom: TDBEdit;
    Label41: TLabel;
    EditTelefoneCom: TDBEdit;
    Label40: TLabel;
    Label39: TLabel;
    DBComboBox4: TDBComboBox;
    EditCidadeCom: TDBEdit;
    Label38: TLabel;
    EditEnderecoCom: TDBEdit;
    Label37: TLabel;
    GroupBox6: TGroupBox;
    Label46: TLabel;
    EditNFilhos: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    EditConjugue: TDBEdit;
    EditNaturalidade: TDBEdit;
    Label45: TLabel;
    EditNacionalidade: TDBEdit;
    Label44: TLabel;
    EditPais: TDBEdit;
    Label43: TLabel;
    DBMemo1: TDBMemo;
    chkIndicado: TDBCheckBox;
    edtIndicado: TDBLookupComboBox;
    dtsLookup: TZMySqlTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    FloatField1: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    DateField2: TDateField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    IntegerField2: TIntegerField;
    MemoField1: TMemoField;
    StringField37: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    srcLookup: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DescProdutosButtonUpClicked(Sender: TObject; dts: TDataSet;
      var fields: TStringList; var cancel: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure chkIndicadoClick(Sender: TObject);
    procedure dtsSelfAfterScroll(DataSet: TDataSet);
    procedure dtsSelfAfterInsert(DataSet: TDataSet);
    procedure dtsSelfAfterEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.DFM}

uses DM_Main, formAddClienteProduto, unitTheWayUtils;

procedure createFrmClientes;
begin
     if (frmClientes=nil) then
        frmClientes := TfrmClientes.create(Application);
     frmClientes.Show;
end;


procedure TfrmClientes.Button1Click(Sender: TObject);
begin
  inherited;
    dtsSelf.Active := true;
end;

procedure TfrmClientes.DescProdutosButtonUpClicked(Sender: TObject;
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

procedure TfrmClientes.FormDestroy(Sender: TObject);
begin
  inherited;
    frmClientes:=nil;
end;

procedure TfrmClientes.chkIndicadoClick(Sender: TObject);
begin
  inherited;
    edtIndicado.Enabled := chkIndicado.Checked;
end;

procedure TfrmClientes.dtsSelfAfterScroll(DataSet: TDataSet);
begin
  inherited;
    edtIndicado.Enabled := chkIndicado.Checked;
end;

procedure TfrmClientes.dtsSelfAfterInsert(DataSet: TDataSet);
begin
  inherited;
    dtsSelf.FieldByName('DataCadastro').AsDateTime := date;
    pgctl.ActivePage := tabDetails;
    tabDetails.SetFocus;
    edtNome.SetFocus; 
end;

procedure TfrmClientes.dtsSelfAfterEdit(DataSet: TDataSet);
begin
  inherited;
    pgctl.ActivePage := tabDetails;
    tabDetails.SetFocus;
    edtNome.SetFocus;
end;

procedure TfrmClientes.FormActivate(Sender: TObject);
begin
  inherited;
    tabDetails.SetFocus;
end;

end.

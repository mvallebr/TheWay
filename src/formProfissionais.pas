unit formProfissionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, FMTBcd, DBClient, Provider, DB, SqlExpr,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, ZTransact, ZMySqlTr, ZQuery, ZMySqlQuery,
  formDBDetailWithCategory, Mask, TWDBRel;

procedure createfrmProfissionais;

type
  TfrmProfissionais = class(TfrmDBDetailWithCategory)
    dtsCategoryIDCargo: TIntegerField;
    dtsCategoryDescricao: TStringField;
    Label43: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label44: TLabel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TWDBRel1: TTWDBRel;
    TWDBRel4: TTWDBRel;
    DBGrid2: TDBGrid;
    srcServicosPrestados: TDataSource;
    dtsServicosPrestados: TZMySqlQuery;
    DBGrid3: TDBGrid;
    dtsTurnosEfetuados: TZMySqlQuery;
    srcTurnosEfetuados: TDataSource;
    tabProfissionais: TTabSheet;
    tabAuxiliar: TTabSheet;
    TWDBRel3: TTWDBRel;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TWDBRel2: TTWDBRel;
    dtsSelfIDProfissional: TIntegerField;
    dtsSelfIDCargoProfissional: TIntegerField;
    dtsSelfNome: TStringField;
    dtsSelfDataNascimento: TDateField;
    dtsSelfEndereco: TStringField;
    dtsSelfCidade: TStringField;
    dtsSelfEstado: TStringField;
    dtsSelfCEP: TStringField;
    dtsSelfTelefone1: TStringField;
    dtsSelfTelefone2: TStringField;
    dtsSelfFax: TStringField;
    dtsSelfEmail: TStringField;
    dtsSelfCelular: TStringField;
    dtsSelfPager: TStringField;
    dtsSelfRG: TStringField;
    dtsSelfCPF: TStringField;
    dtsSelfBanco: TStringField;
    dtsSelfConta: TStringField;
    dtsSelfAgencia: TStringField;
    dtsSelfNomePai: TStringField;
    dtsSelfNomeMae: TStringField;
    dtsSelfEstadoCivil: TStringField;
    dtsSelfNFilhos: TIntegerField;
    dtsSelfContratadoAtualmente: TIntegerField;
    dtsSelfSalarioFixo: TFloatField;
    dtsSelfDataContratacao: TDateField;
    dtsSelfPais: TStringField;
    dtsSelfNacionalidade: TStringField;
    dtsSelfNaturalidade: TStringField;
    dtsSelfDiaPagamento: TIntegerField;
    dtsSelfTipoDiaPagamento: TStringField;
    dtsSelfAuxiliar: TIntegerField;
    dtsSelfSenha: TStringField;
    dtsSelfEmPunicaoAtualmente: TIntegerField;
    dtsSelfPorcSalarioPagaPeloSalao: TFloatField;
    dtsSelfPodeVenderProduto: TIntegerField;
    dtsSelfPodePrestarServico: TIntegerField;
    dtsSelfGrupoSistema: TIntegerField;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    edtNome: TDBEdit;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    Label28: TLabel;
    DBEdit3: TDBEdit;
    Label40: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label36: TLabel;
    Label42: TLabel;
    DBEdit7: TDBEdit;
    GroupBox2: TGroupBox;
    Label39: TLabel;
    cboCargo: TDBLookupComboBox;
    DBText4: TDBText;
    Label38: TLabel;
    DBchkAuxiliar: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Label55: TLabel;
    DBEdit17: TDBEdit;
    Label56: TLabel;
    DBComboBox1: TDBComboBox;
    Label65: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label66: TLabel;
    GroupBox3: TGroupBox;
    Label61: TLabel;
    DBEdit23: TDBEdit;
    Label63: TLabel;
    DBComboBox4: TDBComboBox;
    DBEdit25: TDBEdit;
    Label64: TLabel;
    DBEdit24: TDBEdit;
    Label62: TLabel;
    GroupBox4: TGroupBox;
    Label41: TLabel;
    DBEdit6: TDBEdit;
    Label45: TLabel;
    DBEdit8: TDBEdit;
    DBComboBox3: TDBComboBox;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label48: TLabel;
    Label50: TLabel;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    Label49: TLabel;
    Label51: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label54: TLabel;
    GroupBox5: TGroupBox;
    Label57: TLabel;
    DBEdit19: TDBEdit;
    Label59: TLabel;
    DBEdit21: TDBEdit;
    DBEdit20: TDBEdit;
    Label58: TLabel;
    Label60: TLabel;
    DBEdit22: TDBEdit;
    dtsServicosPrestadosDataComanda: TDateField;
    dtsServicosPrestadosIDComanda: TIntegerField;
    dtsServicosPrestadosIDServico: TIntegerField;
    dtsServicosPrestadosValorCobrado: TFloatField;
    dtsServicosPrestadosIDProfissional: TIntegerField;
    dtsTurnosEfetuadosIDProfissional: TIntegerField;
    dtsTurnosEfetuadosDataChegada: TDateField;
    dtsTurnosEfetuadosHoraChegada: TTimeField;
    dtsTurnosEfetuadosDataSaida: TDateField;
    dtsTurnosEfetuadosHoraSaida: TTimeField;
    dtsTurnosEfetuadosIDLoja: TIntegerField;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pgctlChange(Sender: TObject);
    procedure TWDBRel2ButtonUpClicked(Sender: TObject; dts: TDataSet;
      var fields: TStringList; var cancel: Boolean);
    procedure dtsSelfAfterScroll(DataSet: TDataSet);
    procedure dtsSelfAfterPost(DataSet: TDataSet);
    procedure DBchkAuxiliarClick(Sender: TObject);
    procedure dtsSelfAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure refresh_auxiliar_checked;
  public
    { Public declarations }
  end;

var
  frmProfissionais: TfrmProfissionais;

implementation

{$R *.dfm}
uses DM_main, formAddFuncProf, formMain;

procedure createfrmProfissionais;
begin
        if(frmProfissionais=nil) then
                frmProfissionais:=TfrmProfissionais.Create(Application);
        frmProfissionais.Show;
end;

procedure TfrmProfissionais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
        Action:=cafree;
        frmProfissionais:=nil;
end;

procedure TfrmProfissionais.refresh_auxiliar_checked;
var
    i: boolean;
begin
    cboCargo.Enabled:= not DBchkAuxiliar.Checked;
    i := ((pgctl.ActivePage=tabAuxiliar) or (pgctl.ActivePage=tabProfissionais));
    tabAuxiliar.TabVisible:=not DBchkAuxiliar.Checked;
    tabProfissionais.TabVisible:= DBchkAuxiliar.Checked;
    if i then begin
        if tabAuxiliar.TabVisible then pgctl.ActivePage := tabAuxiliar;
        if tabProfissionais.TabVisible then pgctl.ActivePage := tabProfissionais;
    end;
end;

procedure TfrmProfissionais.FormDestroy(Sender: TObject);
begin
  inherited;
    frmProfissionais:=nil;
end;

procedure TfrmProfissionais.pgctlChange(Sender: TObject);
begin
  inherited;
    if dtsCategory.Modified then
        dtsCategory.Post;
end;

procedure TfrmProfissionais.TWDBRel2ButtonUpClicked(Sender: TObject;
  dts: TDataSet; var fields: TStringList; var cancel: Boolean);
var
    frmAdd: TfrmAddFuncProf;
    registrolegal:  string;
begin
  inherited;
    frmAdd := TfrmAddFuncProf.Create(Self);
    frmAdd.Visible := false;
    frmAdd.lbProfissional.Caption := dts.FieldByName('Nome').AsString;
    frmAdd.lbRG.Caption  := dts.FieldByName('RG').AsString;
    frmAdd.lbCPF.Caption := dts.FieldByName('CPF').AsString;
    if frmAdd.ShowModal <> mrOk then begin
        cancel := true;
        WindowState := wsMaximized;
        Refresh;
        exit;
    end;
    try
        registrolegal := Trim(frmadd.edtRegistroLegal.Text);
    except
        cancel := true;
        WindowState := wsMaximized;
        Refresh;
        exit;
    end;
    if registrolegal='' then begin
        beep;
        cancel := true;
        WindowState := wsMaximized;
        Refresh;
        exit;
    end;
    fields.Add('RegistroLegal='+registrolegal);
    frmAdd.Destroy;
    WindowState := wsMaximized;
    Refresh;
end;

procedure TfrmProfissionais.dtsSelfAfterScroll(DataSet: TDataSet);
begin
  inherited;
    refresh_auxiliar_checked;
end;

procedure TfrmProfissionais.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
  refresh_auxiliar_checked;
end;

procedure TfrmProfissionais.DBchkAuxiliarClick(Sender: TObject);
begin
  inherited;
  refresh_auxiliar_checked;
end;

procedure TfrmProfissionais.dtsSelfAfterInsert(DataSet: TDataSet);
begin
  inherited;
    pgctl.ActivePage := tabDetails;
    tabDetails.SetFocus;
    edtNome.SetFocus;
end;

procedure TfrmProfissionais.FormActivate(Sender: TObject);
begin
  inherited;
//    pgctl.ActivePage := tabDetails;
//    tabDetails.SetFocus;
end;

end.

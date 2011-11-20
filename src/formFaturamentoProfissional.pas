unit formFaturamentoProfissional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formCampoBase, StdCtrls, ComCtrls, Gradient, ExtCtrls, DB,
  ZQuery, ZMySqlQuery, DBCtrls, strutils, Buttons;

procedure createfrmFaturamentoProfissional;

type
  TfrmfaturamentoProfissional = class(TfrmCampoBase)
    lbLegenda: TLabel;
    Bevel3: TBevel;
    edtSenha: TEdit;
    Label5: TLabel;
    edtCodigo: TEdit;
    Label4: TLabel;
    Gradient1: TGradient;
    Bevel1: TBevel;
    Calendario: TMonthCalendar;
    Bevel2: TBevel;
    srcVales: TDataSource;
    srcVendasInternas: TDataSource;
    srcServicosProdutos: TDataSource;
    srcComissaoAuxiliares: TDataSource;
    srcFixoAuxiliares: TDataSource;
    dtsVales: TZMySqlQuery;
    dtsVendasInternas: TZMySqlQuery;
    dtsServicosProdutos: TZMySqlQuery;
    dtsComissaoAuxiliares: TZMySqlQuery;
    dtsFixoAuxiliares: TZMySqlQuery;
    dtsVendasInternastotal: TFloatField;
    Bevel4: TBevel;
    Bevel5: TBevel;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    btnCalcular: TBitBtn;
    srcSelf: TDataSource;
    dtsSelf: TZMySqlQuery;
    edtServicos: TDBText;
    dtsServicosProdutossomaServicos: TFloatField;
    dtsServicosProdutosSomaProdutos: TFloatField;
    edtProdutos: TDBText;
    edtSalarioFixo: TDBText;
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
    edtServicosP: TDBText;
    edtProdutosP: TDBText;
    edtVales: TDBText;
    edtCompraProdutos: TDBText;
    edtComissaoAux: TDBText;
    Bevel8: TBevel;
    Shape1: TShape;
    Label15: TLabel;
    Label16: TLabel;
    Shape2: TShape;
    Bevel9: TBevel;
    dtsValestotal: TFloatField;
    dtsComissaoAuxiliaressomaAuxiliares: TFloatField;
    edtComissaoAuxP: TDBText;
    srcProdutosServicosP: TDataSource;
    dtsProdutosServicosP: TZMySqlQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    dtsComissaoAuxiliaresP: TZMySqlQuery;
    FloatField3: TFloatField;
    srcComissaoAuxiliaresP: TDataSource;
    lbVezesSalario: TLabel;
    dtsNumProfs: TZMySqlQuery;
    dtsFixoAuxiliaresIDProfissional: TIntegerField;
    dtsFixoAuxiliaresContratadoAtualmente: TIntegerField;
    dtsFixoAuxiliaresSalarioFixo: TFloatField;
    dtsFixoAuxiliaresDiaPagamento: TIntegerField;
    dtsFixoAuxiliaresTipoDiaPagamento: TStringField;
    dtsFixoAuxiliaresAuxiliar: TIntegerField;
    dtsFixoAuxiliaresPorcSalarioPagaPeloSalao: TFloatField;
    dtsFixoAuxiliaresIDAuxiliar: TIntegerField;
    lbFixoAuxiliar: TLabel;
    srcUsoProdutos: TDataSource;
    dtsUsoProdutos: TZMySqlQuery;
    FloatField4: TFloatField;
    Label17: TLabel;
    edtUsoProdutos: TDBText;
    lbTotal: TLabel;
    lbTotalP: TLabel;
    Label18: TLabel;
    edtCaixinhas: TDBText;
    dtsCaixinhas: TZMySqlQuery;
    FloatField5: TFloatField;
    srcCaixinhas: TDataSource;
    dtsNumProfsnump: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CalendarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtpDataInicialChange(Sender: TObject);
    procedure edtSenhaEnter(Sender: TObject);
    procedure dtpDataInicialEnter(Sender: TObject);
    procedure dtpDataFinalEnter(Sender: TObject);
    procedure btnCalcularEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCalcularClick(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure edtSenhaChange(Sender: TObject);
    procedure dtsSelfAfterScroll(DataSet: TDataSet);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtpDataInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtpDataFinalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    senha:  string;
    idprof: string;
    fixo_auxiliar:  Real;
    numero_de_salarios:   integer;
    procedure ResetFields;
    procedure calcula_total;
  public
    { Public declarations }
  end;

var
  frmfaturamentoProfissional: TfrmfaturamentoProfissional;

implementation

{$R *.dfm}

uses Qt, unitTheWayUtils, DM_Main;

procedure createfrmFaturamentoProfissional;
begin
   if (frmfaturamentoProfissional=nil) then
      frmfaturamentoProfissional:=TfrmfaturamentoProfissional.create(Application);
   frmfaturamentoProfissional.show;
end;

procedure TfrmfaturamentoProfissional.ResetFields;
begin
    lbTotal.Visible := False;
    lbTotalP.Visible := False;
    dtpDataInicial.Enabled:=True;
    dtpDataFinal.Enabled:=True;
    Calendario.Enabled:=True;
    edtCodigo.Enabled:=True;
    edtSenha.Enabled:=True;
    edtCodigo.Text:='';
    edtSenha.Text:='';
    senha:='';
    idprof:='';
    lbFixoAuxiliar.Visible:=False;
    lbVezesSalario.Visible := false;
    edtCodigo.SetFocus;
    lbLegenda.Caption := 'Passe o código de barras pelo seu crachá';
    Calendario.Date:=date;
    Calendario.EndDate := date;
    dtpDataInicial.Date := date;
    dtpDataFinal.Date := date; 
    dtsSelf.Active := false;
end;

procedure TfrmfaturamentoProfissional.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   Action := caFree;

end;

procedure TfrmfaturamentoProfissional.FormDestroy(Sender: TObject);
begin
  inherited;
   frmfaturamentoProfissional:=nil;
end;

procedure TfrmfaturamentoProfissional.edtCodigoEnter(Sender: TObject);
begin
  inherited;
    edtCodigo.SelectAll;
end;

procedure TfrmfaturamentoProfissional.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmfaturamentoProfissional.CalendarioClick(Sender: TObject);
begin
  inherited;
    dtpDataInicial.Date:=Calendario.Date;
    dtpDataFinal.Date:=Calendario.EndDate;
end;

procedure TfrmfaturamentoProfissional.FormCreate(Sender: TObject);
begin
  inherited;
    senha:='';
    idprof:='';
end;

procedure TfrmfaturamentoProfissional.dtpDataInicialChange(
  Sender: TObject);
begin
  inherited;
  try
    Calendario.Date:=dtpDataInicial.Date;
    Calendario.EndDate:=dtpDataFinal.Date;
  except
    beep;
  end;
end;

procedure TfrmfaturamentoProfissional.edtSenhaEnter(Sender: TObject);
begin
  inherited;
    edtSenha.SelectAll;
end;

procedure TfrmfaturamentoProfissional.dtpDataInicialEnter(Sender: TObject);
begin
  inherited;
    lbLegenda.Caption := 'Digite a data inicial e tecle <ENTER>';
end;

procedure TfrmfaturamentoProfissional.dtpDataFinalEnter(Sender: TObject);
begin
  inherited;
    lbLegenda.Caption := 'Digite a data final e tecle <ENTER>';
end;

procedure TfrmfaturamentoProfissional.btnCalcularEnter(Sender: TObject);
begin
  inherited;
    lbLegenda.Caption := 'Tecle <ESPAÇO> para calcular';
end;

procedure TfrmfaturamentoProfissional.edtCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    //Só permite teclas numéricas
    case key of
        Key_A..Key_B, Key_D..Key_O, Key_Q..Key_Z: begin
            edtSenha.text:='';
            exit;
        end;
    end;
    if (key <> 13) and (key<>9) then exit;
    edtCodigo.Text :=  Trim(edtCodigo.text);
    edtCodigo.text := processaCodigo(edtCodigo.text);
    if length(edtCodigo.text)>13 then begin
        beep;
        edtCodigo.clear;
        lbLegenda.Caption := 'Código inválido!';
        exit;
    end;

    idprof := rightStr(edtCodigo.Text, 11);
    try
        StrToInt(idprof);
    except
        beep;
        edtCodigo.clear;
        lbLegenda.Caption := 'Código inválido!';
        exit;
    end;
    if not verificaProfissionalNaloja(idprof, dmmain.options.IDLoja) then begin
        beep;
        edtCodigo.clear;
        lbLegenda.Caption := 'Profissional não está na loja. Registre sua chegada primeiro.';
        exit;
    end;
    edtSenha.SetFocus;
end;

procedure TfrmfaturamentoProfissional.btnCalcularClick(Sender: TObject);
var
    dataini_str:    string;
    datafim_str:    string;
    ano, mes, dia:  word;
begin
  inherited;
    edtCodigo.Text := Trim(edtCodigo.Text);
    edtSenha.Text:= trim(edtSenha.Text);
    senha:=edtSenha.text;
    idprof:=rightStr(edtCodigo.text, 11);
    lbLegenda.Caption := 'Calculando...';
    lbLegenda.Invalidate;
    lbLegenda.Refresh;
    if not autenticaProfissional(idprof, senha) then begin
        beep;
        lbLegenda.Caption := 'Senha inválida!';
        edtSenha.Clear;
        exit;
    end;
    try
        dtsSelf.Active := false;
        dtsSelf.Sql.Clear;
        dtsSelf.Sql.Add('select * from profissionais where IDProfissional='+idprof);
        dtsSelf.Sql.Add('and ContratadoAtualmente=1');
        dtsSelf.Active := True;

        decodedate(dtpDataInicial.Date, ano, mes, dia);
        dataini_str := format('"%.4d-%.2d-%.2d"',[ano, mes, dia]);
        decodedate(dtpDataFinal.Date, ano, mes, dia);
        datafim_str := format('"%.4d-%.2d-%.2d"',[ano, mes, dia]);

        dtsServicosProdutos.Active := false;
        dtsServicosProdutos.sql.Clear;
        dtsServicosProdutos.sql.Add('select');
        dtsServicosProdutos.sql.Add('sum(ValorServicos+ComissaoPagaAuxiliar) as somaServicos,');
        dtsServicosProdutos.sql.Add('sum(ValorProdutos) as SomaProdutos');
        dtsServicosProdutos.sql.Add('from relcontasAReceberprofissionais, contasAReceber');
        dtsServicosProdutos.sql.Add('where');
        dtsServicosProdutos.sql.Add('(');
        dtsServicosProdutos.sql.Add('(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceber.DataComandaPrestada)');
        dtsServicosProdutos.sql.Add('and (relcontasAReceberprofissionais.IDComandaPrestada=contasAReceber.IDComandaPrestada)');
        dtsServicosProdutos.Sql.Add('and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDParcela)');
        dtsServicosProdutos.sql.Add('and (contasAReceber.DataRecebimento>='+dataini_str+')');
        dtsServicosProdutos.sql.Add('and (contasAReceber.DataRecebimento<='+datafim_str+')');
        dtsServicosProdutos.sql.Add('and (contasAReceber.ESTADO="R")');
        dtsServicosProdutos.sql.Add('and (IDProfissional=:IDProfissional)');
        dtsServicosProdutos.sql.Add(')');
        dtsServicosProdutos.Active := True;

        dtsProdutosServicosP.Active := false;
        dtsProdutosServicosP.Sql.Clear;
        dtsProdutosServicosP.Sql.Add('select');
        dtsProdutosServicosP.Sql.Add('sum(ValorServicos+ComissaoPagaAuxiliar) as somaServicos,');
        dtsProdutosServicosP.Sql.Add('sum(ValorProdutos) as SomaProdutos');
        dtsProdutosServicosP.Sql.Add('from relcontasAReceberprofissionais, contasAReceber');
        dtsProdutosServicosP.Sql.Add('where');
        dtsProdutosServicosP.Sql.Add('(');
        dtsProdutosServicosP.Sql.Add('(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceber.DataComandaPrestada)');
        dtsProdutosServicosP.Sql.Add('and (relcontasAReceberprofissionais.IDComandaPrestada=contasAReceber.IDComandaPrestada)');
        dtsProdutosServicosP.Sql.Add('and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDParcela)');
        dtsProdutosServicosP.Sql.Add('and (contasAReceber.DataVencimento>'+dataini_str+')');
        dtsProdutosServicosP.Sql.Add('and (contasAReceber.ESTADO="N")');
        dtsProdutosServicosP.Sql.Add('and (IDProfissional=:IDProfissional)');
        dtsProdutosServicosP.Sql.Add(')');
        dtsProdutosServicosP.Active := True;

        dtsVales.Active := False;
        dtsVales.Sql.Clear;
        dtsVales.Sql.Add('select (-sum(vales.Valor)) as total from vales');
        dtsVales.Sql.Add('where (');
        dtsVales.Sql.Add('(Data>='+dataini_str+')');
        dtsVales.Sql.Add('and (Data<='+datafim_str+')');
        dtsVales.Sql.Add('and (IDProfissionalBeneficiado=:IDProfissional)');
        dtsVales.Sql.Add(')');
        dtsVales.Active := True;

        dtsCaixinhas.Active := False;
        dtsCaixinhas.Sql.Clear;
        dtsCaixinhas.Sql.Add('select (sum(caixinhas.Valor)) as total from caixinhas');
        dtsCaixinhas.Sql.Add('where (');
        dtsCaixinhas.Sql.Add('(DataHora>='+dataini_str+')');
        dtsCaixinhas.Sql.Add('and (DataHora<='+datafim_str+')');
        dtsCaixinhas.Sql.Add('and (IDProfissional=:IDProfissional)');
        dtsCaixinhas.Sql.Add(')');
        dtsCaixinhas.Active := True;

        dtsVendasInternas.Active := False;
        dtsVendasInternas.Sql.Clear;
        dtsVendasInternas.Sql.Add('select (-sum(vendasinternas.TotalCobrado)) as total from vendasinternas');
        dtsVendasInternas.Sql.Add('where (');
        dtsVendasInternas.Sql.Add('(DataHoraVenda<='+datafim_str+')');
        dtsVendasInternas.Sql.Add('and (DataHoraVenda>='+dataini_str+')');
        dtsVendasInternas.Sql.Add('and (IDProfissional=:IDProfissional)');
        dtsVendasInternas.Sql.Add(')');
        dtsVendasInternas.Active := True;

        dtsUsoProdutos.Active := False;
        dtsUsoProdutos.Sql.Clear;
        dtsUsoProdutos.Sql.Add('select (-sum(vendasUso.TotalCobrado)) as total from vendasUso');
        dtsUsoProdutos.Sql.Add('where (');
        dtsUsoProdutos.Sql.Add('(DataHoraVenda<='+datafim_str+')');
        dtsUsoProdutos.Sql.Add('and (DataHoraVenda>='+dataini_str+')');
        dtsUsoProdutos.Sql.Add('and (IDProfissional=:IDProfissional)');
        dtsUsoProdutos.Sql.Add(')');
        dtsUsoProdutos.Active := True;

        dtsComissaoAuxiliares.Active := False;
        dtsComissaoAuxiliares.Sql.Clear;
        dtsComissaoAuxiliares.Sql.Add('select');
        dtsComissaoAuxiliares.Sql.Add('-sum(ComissaoPagaAuxiliar) as somaAuxiliares');
        dtsComissaoAuxiliares.Sql.Add('from relcontasAReceberprofissionais, contasAReceber');
        dtsComissaoAuxiliares.Sql.Add('where');
        dtsComissaoAuxiliares.Sql.Add('(');
        dtsComissaoAuxiliares.Sql.Add('(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceber.DataComandaPrestada)');
        dtsComissaoAuxiliares.Sql.Add('and (relcontasAReceberprofissionais.IDComandaPrestada=contasAReceber.IDComandaPrestada)');
        dtsComissaoAuxiliares.Sql.Add('and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDParcela)');
        dtsComissaoAuxiliares.Sql.Add('and (contasAReceber.DataRecebimento>='+dataini_str+')');
        dtsComissaoAuxiliares.Sql.Add('and (contasAReceber.DataRecebimento<='+datafim_str+')');
        dtsComissaoAuxiliares.Sql.Add('and (contasAReceber.ESTADO="R")');
        dtsComissaoAuxiliares.Sql.Add('and (IDProfissional=:IDProfissional)');
        dtsComissaoAuxiliares.Sql.Add(')');
        dtsComissaoAuxiliares.Active := True;

        dtsComissaoAuxiliaresP.Active := False;
        dtsComissaoAuxiliaresP.Sql.Clear;
        dtsComissaoAuxiliaresP.Sql.Add('select');
        dtsComissaoAuxiliaresP.Sql.Add('-sum(ComissaoPagaAuxiliar) as somaAuxiliares');
        dtsComissaoAuxiliaresP.Sql.Add('from relcontasAReceberprofissionais, contasAReceber');
        dtsComissaoAuxiliaresP.Sql.Add('where');
        dtsComissaoAuxiliaresP.Sql.Add('(');
        dtsComissaoAuxiliaresP.Sql.Add('(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceber.DataComandaPrestada)');
        dtsComissaoAuxiliaresP.Sql.Add('and (relcontasAReceberprofissionais.IDComandaPrestada=contasAReceber.IDComandaPrestada)');
        dtsComissaoAuxiliaresP.Sql.Add('and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDParcela)');
        dtsComissaoAuxiliaresP.Sql.Add('and (contasAReceber.DataVencimento>'+dataini_str+')');
        dtsComissaoAuxiliaresP.Sql.Add('and (contasAReceber.ESTADO="N")');
        dtsComissaoAuxiliaresP.Sql.Add('and (IDProfissional=:IDProfissional)');
        dtsComissaoAuxiliaresP.Sql.Add(')');
        dtsComissaoAuxiliaresP.Active := True;

        numero_de_salarios := NumVezesDiasEntreDatas(dtsSelf.FieldByName('DiaPagamento').AsInteger,
            dtpDataInicial.DateTime, dtpDataFinal.DateTime);
        lbVezesSalario.Caption  := IntToStr(numero_de_salarios) + ' *';
        lbVezesSalario.Visible := True;

        calcula_total;
        beep;
    except
        beep;
        ShowMessage('Erro ao calcular faturamento!');
    end;
    edtCodigo.SetFocus;
    lbLegenda.Caption := 'Cálculo concluído. Pressione <ESC>...';
    lbLegenda.Invalidate;
end;

procedure TfrmfaturamentoProfissional.edtCodigoChange(Sender: TObject);
begin
  inherited;
    idprof := trim(edtCodigo.Text);
end;

procedure TfrmfaturamentoProfissional.edtSenhaChange(Sender: TObject);
begin
  inherited;
    senha:=trim(edtSenha.Text);
end;

procedure TfrmfaturamentoProfissional.dtsSelfAfterScroll(
  DataSet: TDataSet);
var
    em_loop:    boolean;
    numvezes:   integer;
begin
  inherited;
    fixo_auxiliar:=0.0;
    lbFixoAuxiliar.Visible := False;
    dtsFixoAuxiliares.Active := true;
    dtsNumProfs.Active := True;
    if dtsFixoAuxiliares.IsEmpty then exit;
    dtsFixoAuxiliares.First;
    em_loop:=True;
    while em_loop do begin
        numvezes :=NumVezesDiasEntreDatas(dtsFixoAuxiliares.FieldByName('DiaPagamento').AsInteger,
            dtpDataInicial.DateTime, dtpDataFinal.DateTime);
        fixo_auxiliar := fixo_auxiliar - (
        (
        numvezes * (dtsFixoAuxiliares.fieldByName('SalarioFixo').AsFloat *
        ((100)-dtsFixoAuxiliares.fieldByName('PorcSalarioPagaPeloSalao').AsFloat)/100)
        )
        /dtsNumProfs.fieldByName('nump').AsFloat);
        if dtsFixoAuxiliares.RecNo = dtsFixoAuxiliares.RecordCount then
            em_loop:=False;
        dtsFixoAuxiliares.Next;
    end;
    lbFixoAuxiliar.caption := format('%m', [fixo_auxiliar]);
    lbFixoAuxiliar.Visible := true;
end;

procedure TfrmfaturamentoProfissional.edtSenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    //Só permite teclas numéricas
    case key of
        Key_A..Key_Z: begin
            edtSenha.text:='';
            exit;
        end;
    end;
    if (key<>13) then exit;

    edtCodigo.Text := Trim(edtCodigo.Text);
    edtSenha.Text:= trim(edtSenha.Text);
    senha:=edtSenha.text;
    if not autenticaProfissional(idprof, senha) then begin
        beep;
        lbLegenda.Caption := 'Senha inválida!';
        edtSenha.Clear;
        exit;
    end;
    dtpDataInicial.SetFocus;
end;

procedure TfrmfaturamentoProfissional.dtpDataInicialKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key=13 then dtpDataFinal.SetFocus;
end;

procedure TfrmfaturamentoProfissional.dtpDataFinalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if key=13 then btnCalcular.SetFocus;
end;

procedure TfrmfaturamentoProfissional.calcula_total;
var
    total, totalp:  real;
begin
    total  := 0.0;
    totalp := 0.0;

    if not dtsServicosProdutos.IsEmpty then begin
        total := total + dtsServicosProdutos.fieldByName('SomaServicos').AsFloat;
        total := total + dtsServicosProdutos.fieldByName('SomaProdutos').AsFloat;
    end;
    if not dtsSelf.IsEmpty then begin
        total := total + (dtsSelf.fieldByName('SalarioFixo').AsFloat*numero_de_salarios);
    end;
    if not dtsComissaoAuxiliares.IsEmpty then begin
        total := total + (dtsComissaoAuxiliares.fieldByName('SomaAuxiliares').AsFloat);
    end;
    if not dtsVales.IsEmpty then begin
        total := total + (dtsVales.fieldByName('total').AsFloat);
    end;
    if not dtsUsoProdutos.IsEmpty then begin
        total := total + (dtsUsoProdutos.fieldByName('total').AsFloat);
    end;
    if not dtsVendasInternas.IsEmpty then begin
        total := total + (dtsVendasInternas.fieldByName('total').AsFloat);
    end;

    total := total + fixo_auxiliar;
    //Agora calcula "a prazo"
    if not dtsProdutosServicosP.IsEmpty then begin
        totalp := totalp + dtsProdutosServicosP.fieldByName('SomaServicos').AsFloat;
        totalp := totalp + dtsProdutosServicosP.fieldByName('SomaProdutos').AsFloat;
    end;
    if not dtsComissaoAuxiliaresP.IsEmpty then begin
        totalp := totalp + (dtsComissaoAuxiliaresP.fieldByName('SomaAuxiliares').AsFloat);
    end;
    //Coloca tudo na tela
    lbTotal.Caption := format('%m', [total]);
    lbTotalP.Caption := format('%m', [totalP]);
    if total>0 then
        lbTotal.Font.Color := clBlue
    else
        lbTotal.Font.Color := clRed;
    if totalp>0 then
        lbTotalp.Font.Color := clBlue
    else
        lbTotalp.Font.Color := clRed;
    lbTotal.Visible := true;
    lbTotalP.Visible := true;
end;

procedure TfrmfaturamentoProfissional.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key=VK_ESCAPE then
        ResetFields;
end;

end.












unit formFecharComanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, formCampoBase, StdCtrls, ComCtrls, ExtCtrls, Buttons,
  Gradient, Grids, DBGrids, DB, ZQuery, ZMySqlQuery, Qt, strutils, DBCtrls,
  Mask, DateUtils, dbcgrids, FloatSpinEdit;

procedure createfrmFecharComanda;

type
  TfrmFecharComanda = class(TfrmBase)
    Gradient1: TGradient;
    lbTitulo: TLabel;
    Panel1: TPanel;
    pgctl: TPageControl;
    tabEscolheComanda: TTabSheet;
    tabConfirma: TTabSheet;
    tabFormaPagamento: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    grdComandas: TDBGrid;
    srcComandas: TDataSource;
    dtsComandas: TZMySqlQuery;
    grdConsumo: TDBGrid;
    dtsConsumo: TZMySqlQuery;
    srcConsumo: TDataSource;
    dtsConsumoDescricao: TStringField;
    dtsConsumoPreco: TFloatField;
    Panel5: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    Label7: TLabel;
    srcTotal: TDataSource;
    dtsTotal: TZMySqlQuery;
    dtsConsumoqtd: TLargeintField;
    Panel6: TPanel;
    Label8: TLabel;
    DBText5: TDBText;
    dtsTotalvalor: TFloatField;
    DBText4: TDBText;
    Panel7: TPanel;
    lbEscolheComanda: TLabel;
    edtComanda: TEdit;
    Label3: TLabel;
    btnBuscar: TBitBtn;
    btnCadastrarCliente: TBitBtn;
    dtsComandasDataAbertura: TDateField;
    dtsComandasHoraAbertura: TTimeField;
    dtsComandasIDComanda: TIntegerField;
    dtsComandasIDCliente: TIntegerField;
    dtsComandasNomeCliente: TStringField;
    btnPagar1: TBitBtn;
    srcFormasPagamento: TDataSource;
    dtsFormasPagamento: TZMySqlQuery;
    dtsPrestacoes: TZMySqlQuery;
    srcPrestacoes: TDataSource;
    dtsFormasPagamentoIDFormaPagamento: TIntegerField;
    dtsFormasPagamentoDescricao: TStringField;
    dtsPrestacoesIDPrestacao: TIntegerField;
    dtsPrestacoesDescricao: TStringField;
    dtsPrestacoesPorcentagemDoValor: TFloatField;
    dtsPrestacoesDiasAposNegocio: TIntegerField;
    dtsPrestacoesIDMeioPagamento: TIntegerField;
    dtsPrestacoesIDFormaPagamento: TIntegerField;
    dtsPrestacoesIDPrestacao_1: TIntegerField;
    Panel8: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel9: TPanel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBText6: TDBText;
    BitBtn2: TBitBtn;
    tabDataPrestacoes: TTabSheet;
    tabValorPrestacoes: TTabSheet;
    tabConcluir: TTabSheet;
    Panel10: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    Panel11: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn3: TBitBtn;
    dtsSemData: TZMySqlQuery;
    srcSemData: TDataSource;
    dtsSemValor: TZMySqlQuery;
    srcSemValor: TDataSource;
    dtsSemDataDataComanda: TDateField;
    dtsSemDataIDComanda: TIntegerField;
    dtsSemDataIDParcela: TIntegerField;
    dtsSemDataDataVencimento: TDateField;
    dtsSemDataValor: TFloatField;
    dtsSemDataSemData: TIntegerField;
    dtsSemDataSemValor: TIntegerField;
    dtsSemValorDataComanda: TDateField;
    dtsSemValorIDComanda: TIntegerField;
    dtsSemValorIDParcela: TIntegerField;
    dtsSemValorDataVencimento: TDateField;
    dtsSemValorValor: TFloatField;
    dtsSemValorSemData: TIntegerField;
    dtsSemValorSemValor: TIntegerField;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText7: TDBText;
    DBText8: TDBText;
    Label15: TLabel;
    DBText9: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtVencimento: TDBEdit;
    DBText10: TDBText;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText11: TDBText;
    DBText12: TDBText;
    Label20: TLabel;
    DBText13: TDBText;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBText14: TDBText;
    edtValor: TDBEdit;
    Panel12: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    BitBtn4: TBitBtn;
    Label27: TLabel;
    DBText15: TDBText;
    Label28: TLabel;
    DBText16: TDBText;
    Label29: TLabel;
    DBText17: TDBText;
    Label30: TLabel;
    DBText18: TDBText;
    srcParcelas: TDataSource;
    dtsParcelas: TZMySqlQuery;
    DateField1: TDateField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField2: TDateField;
    FloatField1: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    dtsPrestacoesMeioDePagamento: TStringField;
    Label31: TLabel;
    DBText19: TDBText;
    dtsSemDataIDMeioPagamento: TIntegerField;
    dtsSemDataMeioDePagamento: TStringField;
    dtsSemValorIDMeioPagamento: TIntegerField;
    dtsSemValorMeioDePagamento: TStringField;
    DBText20: TDBText;
    Label32: TLabel;
    dtsComandasIDLoja: TIntegerField;
    dtsComandasIDCracha: TIntegerField;
    dtsComandasE_Cliente: TIntegerField;
    dtsComandasIDProfissional: TIntegerField;
    dtsConsumoIDComanda: TIntegerField;
    dtsConsumoDataComanda: TDateField;
    dtsConsumoID1: TIntegerField;
    dtsConsumoID2: TIntegerField;
    dtsConsumoe_produto: TLargeintField;
    dtsConsumoID3: TIntegerField;
    dtsConsumoIDProfissional: TIntegerField;
    panelParcelas: TPanel;
    panelParcela: TPanel;
    gradeParcelas: TDBGrid;
    DBText21: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText22: TDBText;
    Label33: TLabel;
    Bevel1: TBevel;
    edtValorCobrado: TFloatSpinEdit;
    Bevel2: TBevel;
    Label34: TLabel;
    lbTroco: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtComandaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure grdConsumoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnPagar1Click(Sender: TObject);
    procedure btnCadastrarClienteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dtsParcelasAfterOpen(DataSet: TDataSet);
    procedure edtValorCobradoChange(Sender: TObject);
  private
    { Private declarations }
    disable_comanda:    boolean;
    procedure ResetFields;
    procedure goto_confirma;
    procedure calcula_total;
    procedure goto_concluir;    
  public
    { Public declarations }
  end;

var
  frmFecharComanda: TfrmFecharComanda;

implementation

uses formMain, DM_main, formCadastrarCliente, formBuscarCliente,
    unitTheWayUtils, formContasAReceber;

{$R *.dfm}

procedure createfrmFecharComanda;
begin
   if (frmFecharComanda=nil) then
      frmFecharComanda:=TfrmFecharComanda.Create(Application);
   frmFecharComanda.show;
end;

procedure TfrmFecharComanda.ResetFields;
begin
    //Reinicia todas as operações
    dtsComandas.Refresh;
    tabEscolheComanda.TabVisible := false;
    tabConfirma.TabVisible := false;
    tabFormaPagamento.TabVisible := false;
    tabDataPrestacoes.TabVisible := false;
    tabValorPrestacoes.TabVisible := false;
    tabConcluir.TabVisible := false;
    pgctl.ActivePage := tabEscolheComanda;
    edtComanda.SetFocus;
    disable_comanda:=False;
    dtsTotal.Active  := False;
    dtsConsumo.Active:= False;
    dtsFormasPagamento.Active:= False;
    dtsPrestacoes.Active:= False;
    dtsSemData.Active:= False;
    dtsSemValor.Active:= False;
    dtsParcelas.Active:= False;
    if frmMain.logged then begin
        btnCadastrarCliente.Visible := True;
        btnPagar1.Visible := True;
        lbTitulo.Caption := 'Fechar comanda';
        lbEscolheComanda.Caption := 'Escolha a comanda a ser fechada pela lista ou passe o código de barras no crachá de comanda da cliente:';
    end else begin
        btnCadastrarCliente.Visible := false;
        btnPagar1.Visible := false;
        lbTitulo.Caption := 'Histórico de comanda';
        lbEscolheComanda.Caption := 'Escolha a comanda pela lista ou passe o código de barras no crachá de comanda da cliente:';
    end;
    caption:=lbTitulo.Caption;
end;

procedure TfrmFecharComanda.FormDestroy(Sender: TObject);
begin
  inherited;
    frmFecharComanda:=nil;
end;

procedure TfrmFecharComanda.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmFecharComanda.edtComandaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    dts:    TZMySQLQuery;
begin
  inherited;
    if key = VK_UP then dtsComandas.Prior;
    if key = VK_DOWN then dtsComandas.Next;
    if key = VK_PRIOR then dtsComandas.MoveBy(-5);
    if key = VK_NEXT then dtsComandas.MoveBy(5);
    if key = VK_HOME then dtsComandas.First;
    if key = VK_END then dtsComandas.Last;

    if disable_comanda then exit;
    //Só permite teclas numéricas
    case key of
        Key_A..Key_B, Key_D..Key_O, Key_Q..Key_Z: begin
            edtComanda.Clear;
            exit;
        end;
    end;
    if (key<>13) and (key<>9) then exit;
    if dtsComandas.IsEmpty then begin
        beep;
        exit;
    end;
    edtComanda.Text := trim(edtComanda.Text);
    edtComanda.text := processaCodigo(edtComanda.text);
    if edtComanda.Text = '' then begin
        goto_confirma;
        exit;
    end;
    //Se o comprimento do texto for menor que 13, então vá para a linha digitada
    if length(edtComanda.Text) < 13 then begin
        try
            dtsComandas.RecNo := StrToInt(edtComanda.Text);
            edtComanda.Clear;
            exit;
        except
            beep;
        end;
    end;
    //Verifica se é mesmo comanda
    if leftstr(edtComanda.text, 2) <> '22' then begin
        beep;
        disable_comanda:=true;
        ShowMessage('Atenção: Passe o código de barras em um crachá de comanda!');
        Application.ProcessMessages;
        disable_comanda:=False;
        edtComanda.Clear;
        exit;
    end;
    //Procura pelo crachá digitado
    dts:=TZMySQLQuery.Create(Self);
    try
        dts.Database := DMMain.Database;
        dts.Transaction := DMMain.Transaction;
        dts.Active := False;
        dts.sql.Clear;
        dts.Sql.Add('select * from crachas ');
        dts.Sql.Add('where TextoCodBarras="'+edtComanda.Text+'"');
        dts.Sql.Add('and EmUsoAtualmente=1');
        dts.Active := true;
        //Crachá existe? Qual é o IDCracha?
        if dts.IsEmpty then begin
            beep;
            disable_comanda:=true;
            ShowMessage('Crachá de comanda inexistente!');
            Application.ProcessMessages;
            disable_comanda:=False;
            edtComanda.Clear;
            exit;
        end;
        //Verifica se consta na lista
        dtsComandas.Filter := 'IDCracha='+dts.FieldByName('IDCracha').AsString;
        if not dtsComandas.FindFirst then begin
            beep;
            disable_comanda:=true;
            ShowMessage('Crachá de comanda não corresponde à uma comanda aberta nesta loja!');
            Application.ProcessMessages;
            disable_comanda:=False;
            edtComanda.Clear;
            exit;
        end;
        //Se chegou até aqui, achamos a comanda em questão!
        //Pule para a próxima etapa!
        goto_confirma;
    finally
        edtComanda.Clear;
        dts.Destroy;
    end;
end;

procedure TfrmFecharComanda.goto_confirma;
begin

    //Calcula total e ativa a dataset
    calcula_total;
    //Pula para a próxima página
    pgctl.ActivePage := tabConfirma;
    dtsConsumo.Active := true;
    btnCadastrarCliente.Visible := frmMain.logged;
    if frmMain.logged then begin
        if not verificaAcessoTela('Cadastrarcliente1', frmMain.IDProfissionalAtual) then begin
            btnCadastrarCliente.Visible := False;
        end;
    end;
end;

procedure TfrmFecharComanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = VK_ESCAPE  then ResetFields;
end;

procedure TfrmFecharComanda.FormCreate(Sender: TObject);
begin
  inherited;
    dtsComandas.Active := false;
    dtsComandas.Sql.Clear;
    dtsComandas.Sql.Add('select * from comandas');
    dtsComandas.Sql.Add('where IDLoja='+IntToStr(DMMain.options.IDLoja));
    dtsComandas.active:=true;
end;

procedure TfrmFecharComanda.grdConsumoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    dts:    TZMySQLQuery;
    ano, mes, dia:  word;
begin
  inherited;
//    if Key = VK_F5 then
//        chkCliente.Checked := not chkCliente.Checked;
    if Key = VK_F6 then
        btnBuscarClick(Sender);
    if Key = VK_F7 then
        btnCadastrarClienteClick(Sender);

    if key = VK_DELETE then begin
        if dtsConsumo.IsEmpty then exit;
        if not frmMain.logged then begin
            ShowMessage('Não é permitido apagar items de consumo sem logar-se no sistema!');
            exit;
        end else if not VerificaAcessoTela('ApagarItemConsumoComanda',frmMain.IDProfissionalAtual) then begin
            ShowMessage('Acesso negado para apagar itens de consumo da comanda. Peça permissão para a gerente!');
            exit;
        end;
        if MessageDlg('Tem certeza de que deseja apagar esse item de consumo?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
            exit;
        end;

        dts:=TZMySQLQuery.Create(Self); //Destino para os dados
        dts.Database := DMMain.Database;
        dts.Transaction := DMMain.Transaction;
        try
            dts.Active := false;
            dts.Sql.Clear;
            if dtsConsumo.FieldByName('e_produto').AsInteger=1 then begin
                dts.Sql.Add('delete from produtosComandas where');
                decodeDate(dtsConsumo.FieldByName('DataComanda').asDateTime, ano, mes, dia);
                dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d"',[ano,mes,dia]));
                dts.Sql.Add('and IDComanda='+IntToStr(dtsConsumo.FieldByName('IDComanda').AsInteger));
                dts.Sql.Add('and IDProduto='+IntToStr(dtsConsumo.FieldByName('ID2').AsInteger));
                dts.Sql.Add('and IDProfissional='+IntToStr(dtsConsumo.FieldByName('IDProfissional').AsInteger));
            end else begin
                dts.Sql.Add('delete from servicosComandas where');                decodeDate(dtsConsumo.FieldByName('DataComanda').asDateTime, ano, mes, dia);
                dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d"',[ano,mes,dia]));
                dts.Sql.Add('and IDComanda='+IntToStr(dtsConsumo.FieldByName('IDComanda').AsInteger));
                dts.Sql.Add('and IDServicoComanda='+IntToStr(dtsConsumo.FieldByName('ID3').AsInteger));
            end;
            dts.ExecSql;
            dtsConsumo.Delete;
        except
            ShowMessage('Erro ao apagar item de consumo!');
        end;
    end;

end;

procedure TfrmFecharComanda.btnBuscarClick(Sender: TObject);
var
    frmBusca:   TfrmBuscarCliente;
begin
  inherited;
    //Abre a tela de busca de cliente e espera retorno
    frmBusca := TfrmBuscarCliente.Create(Self);
    frmBusca.FormStyle := fsNormal;
    try
        frmBusca.Visible := False;
        frmBusca.ShowModal;
        if frmBusca.ModalResult = mrOk then begin
            if not frmBusca.dtsSelf.IsEmpty then begin
                dtsComandas.Edit;
                dtsComandas.fieldbyname('NomeCliente').AsString := frmBusca.dtsSelf.fieldbyname('Nome').AsString;
                dtsComandas.fieldbyname('IDCliente').AsInteger := frmBusca.dtsSelf.fieldbyname('IDCliente').AsInteger;
                dtsComandas.Post;
            end else begin
                ShowMessage('Nenhum cliente selecionado!');
                beep;
            end;
        end;
    finally
        windowState:=wsMaximized;
        Refresh;
        Application.ProcessMessages;
        frmBusca.Release;
    end;
end;

procedure TfrmFecharComanda.btnPagar1Click(Sender: TObject);
begin
  inherited;
    if not CaixaEstaAberto then begin
        beep;
        ShowMessage('Atualmente, o caixa não está aberto! Utilize a tela de abertura de caixa primeiro.');
        exit;
    end;
    if dtsTotal.FieldByName('valor').IsNull then begin
        goto_concluir;
        exit;
    end;
    if dtsTotal.FieldByName('valor').AsFloat=0.0 then begin
        goto_concluir;
        exit;
    end;

    dtsFormasPagamento.Active := True;
    dtsPrestacoes.Active := true;
    pgctl.ActivePage := tabFormaPagamento;

end;
procedure TfrmFecharComanda.goto_concluir;
var
    dts:    TZMySQLQuery;
    ano, mes, dia:  word;
begin
    dts:=TZMySQLQuery.Create(Self);
    try
        dts.Database := DMMain.Database;
        dts.Transaction := DMMain.Transaction;
        //Remove dados inseridos anteriormente, caso a tela tenha sido fechada no
        //meio da operação
        dts.Active := False;
        dts.Sql.Clear;
        dts.Sql.Add('delete from parcelasComandas where');
        decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
        dts.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
        dts.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
        dts.ExecSql;
        pgctl.ActivePage := tabConcluir;
    finally
        dts.Destroy;
    end;
end;

procedure TfrmFecharComanda.btnCadastrarClienteClick(Sender: TObject);
begin
  inherited;
    if frmMain.logged then begin
        if not verificaAcessoTela('Cadastrarcliente1', frmMain.IDProfissionalAtual) then begin
            beep;
            ShowMessage('Você não tem acesso para cadastrar clientes!');
            exit;
        end;
    end;
    //Abre a tela de busca de cliente e espera retorno
    frmCadastrarCliente := TfrmCadastrarCliente.Create(Self);
    frmCadastrarCliente.FormStyle := fsNormal;
    Application.ProcessMessages;
    try
        frmCadastrarCliente.Visible := False;
        frmCadastrarCliente.ShowModal;
        if frmCadastrarCliente.ModalResult = mrOk then begin
            if not frmCadastrarCliente.dtsSelf.IsEmpty then begin
                dtsComandas.Edit;
                dtsComandas.fieldbyname('NomeCliente').AsString := frmCadastrarCliente.dtsSelf.fieldbyname('Nome').AsString;
                dtsComandas.fieldbyname('IDCliente').AsInteger := frmCadastrarCliente.dtsSelf.fieldbyname('IDCliente').AsInteger;
                dtsComandas.Post;
            end;
        end;
    finally
        windowState:=wsMaximized;
        Refresh;
        Application.ProcessMessages;
        frmCadastrarCliente.Release;
    end;
end;

procedure TfrmFecharComanda.BitBtn2Click(Sender: TObject);
var
    dts:    TZMySQLQuery;
    ano, mes, dia:  word;
    em_loop:    boolean;
begin
  inherited;
    if dtsPrestacoes.IsEmpty then begin
        beep;
        ShowMessage('Forma de pagamento inválida! Não há parcelas a serem pagas. Fale com o(a) gerente ou escolha outra forma de pagamento!');
        exit;
    end;
    dts:=TZMySQLQuery.Create(Self);
    dts.Database := DMMain.Database;
    dts.Transaction := DMMain.Transaction;
    //Remove dados inseridos anteriormente, caso a tela tenha sido fechada no
    //meio da operação
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('delete from parcelasComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts.ExecSql;
    //Adiciona cada parcela calculando o valor e a data de vencimento
    try
        dtsPrestacoes.First;
        em_loop:=True;
        while em_loop do begin
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('insert into parcelasComandas set');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            dts.Sql.Add('IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+',');
            dts.Sql.Add('IDMeioPagamento='+IntToStr(dtsPrestacoes.FieldByName('IDMeioPagamento').AsInteger)+',');
            if dtsPrestacoes.fieldbyname('DiasAposNegocio').AsInteger <= -1 then begin
                decodedate(Date, ano, mes, dia);
                dts.Sql.Add('SemData=1,');
            end else begin
                decodedate(IncDay(Date, dtsPrestacoes.fieldbyname('DiasAposNegocio').AsInteger), ano, mes, dia);
                dts.Sql.Add('SemData=0,');
            end;
            dts.Sql.Add('DataVencimento='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            if dtsPrestacoes.FieldByName('PorcentagemDoValor').AsInteger<=-1 then begin
                dts.Sql.Add('SemValor=1,');
                dts.Sql.Add('Valor=0');
            end else begin
                dts.Sql.Add('SemValor=0,');
                dts.Sql.Add('Valor='+commaToPoint(
                    format('%f',[dtsPrestacoes.FieldByName('PorcentagemDoValor').AsInteger*
                    dtsTotal.fieldByName('valor').AsFloat/100])
                    ));
            end;
            dts.ExecSql;
            if dtsPrestacoes.RecNo>=dtsPrestacoes.RecordCount then em_loop:=False
            else dtsPrestacoes.Next;
        end;
    finally
        dts.Destroy;
    end;

    dtsSemData.Active:= True;
    dtsSemValor.Active:= True;
    if not dtsSemData.IsEmpty then begin
        pgctl.ActivePage := tabDataPrestacoes;
        dtsSemData.Edit;
        edtVencimento.SetFocus;
    end else if not dtsSemValor.IsEmpty then begin
        pgctl.ActivePage := tabValorPrestacoes;
        dtsSemValor.Edit;
        edtValor.SetFocus;
    end else begin
        dtsParcelas.Active:= True;
        pgctl.ActivePage := tabConcluir;
    end;
end;

procedure TfrmFecharComanda.BitBtn1Click(Sender: TObject);
begin
    try
        dtsSemData.Post;
    except
    end;
    if not dtsSemValor.IsEmpty then begin
        dtsSemValor.Active:= True;
        dtsSemValor.Refresh;
        pgctl.ActivePage := tabValorPrestacoes;
        dtsSemValor.Edit;
        edtValor.SetFocus;
    end else begin
        dtsParcelas.Active:= True;
        pgctl.ActivePage := tabConcluir;
    end;
end;

procedure TfrmFecharComanda.BitBtn3Click(Sender: TObject);
var
    dts:    TZMySQLQuery;
    ano, mes, dia:  word;
begin
  inherited;
    try
        dtsSemValor.Post;
    except
    end;
    dts:=TZMySQLQuery.Create(Self);
    dts.Database := DMMain.Database;
    dts.Transaction := DMMain.Transaction;
    //Verifica se o usuário digitou tudo corretamente
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('select * from parcelasComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts.Sql.Add('and (Valor<=0)');
    dts.Active := True;
    if dts.IsEmpty then begin
        dtsParcelas.Active:= True;
        pgctl.ActivePage := tabConcluir
    end else
        ShowMessage('Por favor, preencha corretamente o valor de todas as parcelas!');
end;

procedure TfrmFecharComanda.BitBtn4Click(Sender: TObject);
var
    dts, dts2, dts3, dts4:              TZMySQLQuery;
    ano, mes, dia:                      word;
    hora, minuto, segundo, msegundo:    word;
    em_loop, em_loop2:                  boolean;
    DataComandaPrestada:                TDateTime;
    IDComandaPrestada:                  Integer;
    comissao_auxiliar, comissao_prof:   Real;
    IDServicoPrestado:                  Integer;
    old_autocommit:                     boolean;
    IDParcela:                          integer;
    Desagio:                            Real;
begin
  inherited;
    //Conclui o fechamento da comanda
    /////////////////
    //Cria uma comanda prestada
    //Move produtosComanda para vendas
    //Move servicosComandas e relservicoscomandasauxiliares para servicosPrestados, relservicosPrestadosAuxiliares
    //Move parcelasComandas para ContasAReceber
    //Apaga tudo o que for relativo a essa comanda nas tabelas
    //produtosComanda, servicosComandas, relServicosComandasAuxiliares
    //parcelasComandas, comandas
    //Abre a tela de ContasAReceber com a comanda em questão selecionada
    /////////////////
    old_autocommit := DMMain.Transaction.AutoCommit;
    DMMain.Transaction.AutoCommit := False;
    dts:=TZMySQLQuery.Create(Self); //Destino para os dados
    dts.Database := DMMain.Database;
    dts.Transaction := DMMain.Transaction;
    dts2:=TZMySQLQuery.Create(Self); //Origem dos dados
    dts2.Database := DMMain.Database;
    dts2.Transaction := DMMain.Transaction;
    dts3:=TZMySQLQuery.Create(Self); //Auxiliar 1
    dts3.Database := DMMain.Database;
    dts3.Transaction := DMMain.Transaction;
    dts4:=TZMySQLQuery.Create(Self); //Auxiliar 2
    dts4.Database := DMMain.Database;
    dts4.Transaction := DMMain.Transaction;
    //////////////////////////////////////////////
    //Adiciona uma nova comanda prestada
//    IDComandaPrestada:=0;
//    DataComandaPrestada:=date;
    try
(*    //Apaga possíveis registros existentes por causa de um mal fechamento anterior
    //exemplo : queda de energia no meio da operação
    //Apaga de comandas prestadas
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('delete from comandasPrestadas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('DataAbertura='+format('"%.4d-%.2d-%.2d" and ', [ano, mes, dia]));
    dts.Sql.Add('IDComandaPrestada='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger));
    dts.ExecSql;
    //Apaga de comandas prestadas
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('delete from contasAReceber where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('DataComandaPrestada='+format('"%.4d-%.2d-%.2d" and ', [ano, mes, dia]));
    dts.Sql.Add('IDComandaPrestada='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger));
    dts.ExecSql;
    //Apaga de serviços prestados
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('delete from servicosPrestados where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d" and ', [ano, mes, dia]));
    dts.Sql.Add('IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger));
    dts.ExecSql;
    //Apaga de relservicosprestadosauxiliares
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('delete from relservicosPrestadosAuxiliares where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d" and ', [ano, mes, dia]));
    dts.Sql.Add('IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger));
    dts.ExecSql;
    //Apaga de vendas
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('delete from vendas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d" and ', [ano, mes, dia]));
    dts.Sql.Add('IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger));
    dts.ExecSql;
    dts.Transaction.Commit;
    *)
    ///////////////
    //Insere nova comanda prestada
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('insert into comandasPrestadas set');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('DataAbertura='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
    decodetime(dtsComandas.FieldByName('HoraAbertura').AsDateTime, hora, minuto, segundo, msegundo);
    dts.Sql.Add('HoraAbertura='+format('"%.2d:%.2d:%.2d", ', [hora, minuto, segundo]));
//    dts.Sql.Add('IDComandaPrestada='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+',');
    dts.Sql.Add('IDLoja='+IntToStr(dtsComandas.FieldByName('IDLoja').AsInteger)+',');
    dts.Sql.Add('IDCracha='+IntToStr(dtsComandas.FieldByName('IDCracha').AsInteger)+',');
    dts.Sql.Add('IDCliente='+IntToStr(dtsComandas.FieldByName('IDCliente').AsInteger)+',');
    dts.Sql.Add('NomeCliente="'+dtsComandas.FieldByName('NomeCliente').AsString+'",');
    dts.Sql.Add('IDProfissionalAbertura='+IntToStr(dtsComandas.FieldByName('IDProfissional').AsInteger)+',');
    dts.Sql.Add('IDProfissionalFechamento='+frmMain.IDProfissionalAtual+',');
    decodedate(date, ano, mes, dia);
    dts.Sql.Add('DataFechamento='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
    decodetime(time, hora, minuto, segundo, msegundo);
    dts.Sql.Add('HoraFechamento='+format('"%.2d:%.2d:%.2d" ', [hora, minuto, segundo]));
    dts.ExecSql;
    //Acha novo id de comanda
    dts.Active := False;
    dts.Sql.Clear;
    dts.Sql.Add('select max(IDComandaPrestada) as MAXIMO from comandasPrestadas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts.Sql.Add('DataAbertura='+format('"%.4d-%.2d-%.2d" ', [ano, mes, dia]));
    dts.active:=True;
    IDComandaPrestada:=dts.FieldByName('MAXIMO').AsInteger;
    DataComandaPrestada:=dtsComandas.FieldByName('DataAbertura').AsDateTime;
    //Seleciona os produtos e caso haja algum, adiciona a venda
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('select * from produtosComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.Active := true;
    if not dts2.IsEmpty then begin //Se estiver vazia, vai pular essa parte e não vai adiciona a venda
        //Adiciona venda de cada produto para cada profissional
        dts2.First;
        em_loop:=True;
        while em_loop do begin
            //Seleciona o produto para achar a comissao
            dts3.Active := False;
            dts3.Sql.Clear;
            dts3.Sql.Add('select * from produtos where');
            dts3.Sql.Add('IDProduto='+IntToStr(dts2.FieldByName('IDProduto').AsInteger));
            dts3.Active := true;

            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('insert into vendas set');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            dts.Sql.Add('DataVenda='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            dts.Sql.Add('IDComanda='+IntToStr(IDComandaPrestada)+',');
            dts.Sql.Add('IDLoja='+IntToStr(DMMain.options.IDLoja)+',');
            dts.Sql.Add('IDProfissional='+IntToStr(dts2.FieldByName('IDProfissional').AsInteger)+',');
            dts.Sql.Add('IDProduto='+IntToStr(dts2.FieldByName('IDProduto').AsInteger)+',');
            dts.Sql.Add('Quantidade='+IntToStr(dts2.FieldByName('Qtd').AsInteger)+',');
            dts.Sql.Add('TotalCobrado='+CommaToPoint(format('%.6f',[dts2.FieldByName('Qtd').AsInteger*dts2.FieldByName('Preco').AsFloat]))+',');
            dts.Sql.Add('ComissaoProfissional='+
                CommaToPoint(format('%.6f',[
                dts3.FieldByName('ComissaoPercentualProf').AsFloat*
                dts2.FieldByName('Qtd').AsInteger*
                dts2.FieldByName('Preco').AsFloat/100.0
                ])));
            dts.ExecSql;
            if dts2.RecNo>=dts2.RecordCount then em_loop:=False
            else dts2.Next;
        end;
    end;
    //Apaga todos os produtos vendidos relacionadas com essa comanda
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('delete from produtosComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.ExecSql;
    //////////////////////////////////////////////
    //Move servicosComandas e relservicoscomandasauxiliares para servicosPrestados, relservicosPrestadosAuxiliares
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('select * from servicosComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.Active := true;
    if not dts2.IsEmpty then begin //Se estiver vazia, vai pular essa parte e não vai adicionar servico prestado
        dts2.First;
        em_loop:=True;
        while em_loop do begin
            //Seleciona o servico para achar a comissao
            dts3.Active := False;
            dts3.Sql.Clear;
            dts3.Sql.Add('select * from servicos where');
            dts3.Sql.Add('IDServico='+IntToStr(dts2.FieldByName('IDServico').AsInteger));
            dts3.Active := true;
            //Seleciona Auxiliares relacionados com esse servico
            dts4.Active := False;
            dts4.Sql.Clear;
            dts4.Sql.Add('select * from relServicosComandasAuxiliares where');
            dts4.Sql.Add('IDServico='+IntToStr(dts2.FieldByName('IDServicoComanda').AsInteger));
            dts4.Active := true;
            //Calcula comissoes
            comissao_auxiliar:=DMMain.options.PorcentagemAuxiliar
                *dts2.FieldByName('ValorCobrado').AsFloat;
            comissao_prof:=(dts2.FieldByName('ValorCobrado').AsFloat
                *dts3.FieldByName('ComissaoPercentualPadrao').AsFloat/100)
                - (dts4.RecordCount*comissao_auxiliar);
            //ShowMessage(FloatToStr(comissao_prof) + ' ' + FloatToStr((dts2.FieldByName('ValorCobrado').AsFloat
            //    *dts3.FieldByName('ComissaoPercentualPadrao').AsFloat/100))
            //    + ' ' + FloatToStr(dts4.RecordCount*comissao_auxiliar));
            //Insere servico prestado
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('insert into servicosPrestados set');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            dts.Sql.Add('IDComanda='+IntToStr(IDComandaPrestada)+',');
            dts.Sql.Add('IDProfissional='+IntToStr(dts2.FieldByName('IDProfissional').AsInteger)+',');
            dts.Sql.Add('IDServico='+IntToStr(dts2.FieldByName('IDServico').AsInteger)+',');
            dts.Sql.Add('ValorCobrado='+CommaToPoint(format('%.6f',[dts2.FieldByName('ValorCobrado').AsFloat]))+',');
            dts.Sql.Add('ComissaoProfissional='+
                CommaToPoint(format('%.6f',[comissao_prof]))+', ');
            dts.Sql.Add('ComissaoPagaAuxiliar='+
                CommaToPoint(format('%.6f',[dts4.RecordCount*comissao_auxiliar])));
            dts.ExecSql;
            //Acha o ID do servico prestado inserido
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('select max(IDServicoPrestado) as MAXIMO from servicosPrestados where');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d" ', [ano, mes, dia]));
            dts.Sql.Add('and IDComanda='+IntToStr(IDComandaPrestada));
            dts.active:=True;
            IDServicoPrestado:=dts.fieldByName('MAXIMO').AsInteger;
            //Agora insere relação entre o servicoPrestado inserido e auxiliares
            if not dts4.IsEmpty then begin //Se estiver vazia, vai pular essa parte
                dts4.First;
                em_loop2:=True;
                while em_loop2 do begin
                    //Insere relação de servico prestado com auxiliar
                    dts.Active := False;
                    dts.Sql.Clear;
                    dts.Sql.Add('insert into relservicosPrestadosAuxiliares set');
                    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
                    dts.Sql.Add('DataComanda='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
                    dts.Sql.Add('IDComanda='+IntToStr(IDComandaPrestada)+',');
                    dts.Sql.Add('IDServicoPrestado='+IntToStr(IDServicoPrestado)+',');
                    dts.Sql.Add('IDAuxiliar='+IntToStr(dts4.FieldByName('IDAuxiliar').AsInteger)+',');
                    dts.Sql.Add('ComissaoAuxiliar='+
                        CommaToPoint(format('%.6f',[comissao_auxiliar])));
                    dts.ExecSql;
                    if dts4.RecNo>=dts4.RecordCount then em_loop2:=False
                    else dts4.Next;
                end;
            end;
            if dts2.RecNo>=dts2.RecordCount then em_loop:=False
            else dts2.Next;
        end;
    end;
    //Apaga todas as relações com essa comanda e com servicosComandas
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('delete from servicosComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.ExecSql;
    //Apaga todas as relações com essa comanda e com relação de serviços comandas e auxiliares
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('delete from relservicosComandasAuxiliares where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.ExecSql;
    //////////////////////////////////////////////
    //Seleciona as parcelas associadas com a comanda e move para contas a receber
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('select * from parcelasComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.Active := true;
    if not dts2.IsEmpty then begin //Se estiver vazia, vai pular essa parte e não vai adiciona a conta a receber
        //Apaga tabela temporária criada anteriormente, caso tenha havido erro
        dts.Active := False;
        dts.Sql.Clear;
        dts.Sql.Add('drop table if exists somao ');
        dts.ExecSql;
        //Cria uma tabela temporária para guardar as comissões dos profissionais
        dts.Active := False;
        dts.Sql.Clear;
        dts.Sql.Add('create temporary table somao ');
        dts.Sql.Add('select sum(ComissaoProfissional)/'+commaToPoint(format('%.6f',[dtsTotal.fieldByName('valor').asFloat])));
        dts.Sql.Add(' as v, ');
        dts.sql.Add('sum(ComissaoProfissional)/'+commaToPoint(format('%.6f',[dtsTotal.fieldByName('valor').asFloat])));
        dts.sql.Add('as vp, 0.0000000 as vs, ');
        dts.sql.Add('0.0000000 as ComissaoPagaAux, IDProfissional from vendas');
        decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
        dts.Sql.Add('where ((DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
        dts.Sql.Add('and (IDComanda='+IntToStr(IDComandaPrestada)+'))');
        dts.Sql.Add('group by IDProfissional');
        dts.Sql.Add('union');
        dts.Sql.Add('select sum(ComissaoProfissional)/'+commaToPoint(format('%.6f',[dtsTotal.fieldByName('valor').asFloat])));
        dts.Sql.Add(' as v, ');
        dts.sql.Add('0.0000000 as vp, sum(ComissaoProfissional)/'+commaToPoint(format('%.6f',[dtsTotal.fieldByName('valor').asFloat])));
        dts.sql.Add('as vs, ');
        dts.sql.Add('sum(ComissaoPagaAuxiliar)/'+commaToPoint(format('%.6f',[dtsTotal.fieldByName('valor').asFloat])));
        dts.sql.add('as ComissaoPagaAux,');
        dts.sql.add('IDProfissional from servicosPrestados');
        decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
        dts.Sql.Add('where ((DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
        dts.Sql.Add('and (IDComanda='+IntToStr(IDComandaPrestada)+'))');
        dts.Sql.Add('group by IDProfissional');
        dts.ExecSql;
        dts.Active := False;
        dts.Sql.Clear;
        dts.Sql.Add('select * from somao ');
        dts.active := true;
        //Adiciona parcelas em contas a receber e adiciona, para cada, relação com os profissionais
        dts2.First;
        em_loop:=True;
        while em_loop do begin
            //Seleciona o meio de pagamento e descobre o desagio
            dts3.Active := False;
            dts3.Sql.Clear;
            dts3.Sql.Add('select * from meiopagamento where');
            dts3.Sql.Add('IDMeioPagamento='+IntToStr(dts2.FieldByName('IDMeioPagamento').AsInteger));
            dts3.Active := true;
            if dts3.IsEmpty then
                desagio := 0
            else if dts3.FieldByName('Desagio').IsNull then
                desagio := 0
            else
                desagio := dts3.FieldByName('Desagio').AsFloat/100;
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('insert into contasAReceber set');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            decodetime(dtsComandas.FieldByName('HoraAbertura').AsDateTime, hora, minuto, segundo, msegundo);
            dts.Sql.Add('DataComandaPrestada='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            dts.Sql.Add('DataHoraAbertura='+format('"%.4d-%.2d-%.2d %.2d:%.2d:%.2d", ', [ano, mes, dia, hora, minuto, segundo]));
            dts.Sql.Add('IDComandaPrestada='+IntToStr(IDComandaPrestada)+',');
            decodedate(dts2.FieldByName('DataVencimento').AsDateTime, ano, mes, dia);
            dts.Sql.Add('DataVencimento='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            dts.Sql.Add('IDMeioPagamento='+IntToStr(dts2.FieldByName('IDMeioPagamento').AsInteger)+',');
            dts.Sql.Add('Valor='+CommaToPoint(format('%.6f',[(1-desagio)*dts2.FieldByName('Valor').AsFloat]))+',');
            dts.Sql.Add('Estado="N"');
            dts.ExecSql;
            //Acha o ID da parcela inserida
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('select max(IDParcela) as MAXIMO from contasAReceber where');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add('DataComandaPrestada='+format('"%.4d-%.2d-%.2d" and ', [ano, mes, dia]));
            dts.Sql.Add('IDComandaPrestada='+IntToStr(IDComandaPrestada));
            dts.active:=True;
            IDParcela := dts.fieldByName('MAXIMO').AsInteger;
            //Insere cada parcela calculando as porcentagens, na tabela relcontasareceberprofissionais
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('insert into relContasAReceberProfissionais select ');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add(format('"%.4d-%.2d-%.2d"  ', [ano, mes, dia])+'as DataComandaPrestada,');
            dts.Sql.Add(IntToStr(IDComandaPrestada)+' as IDComandaPrestada,');
            dts.Sql.Add(IntToStr(IDParcela)+' as IDParcela,');
            dts.Sql.Add('IDProfissional, NULL, (sum(v)*'+CommaToPoint(format('%.6f',[dts2.FieldByName('Valor').AsFloat]))+')');
            dts.Sql.Add('as ValorComissao, ComissaoPagaAux*'+CommaToPoint(format('%.6f',[dts2.FieldByName('Valor').AsFloat]))+' as ComissaoPagaAuxiliar,');
            dts.Sql.Add('(sum(vs)*'+CommaToPoint(format('%.6f',[dts2.FieldByName('Valor').AsFloat]))+')');
            dts.Sql.Add('as ValorServicos,');
            dts.Sql.Add('(sum(vp)*'+CommaToPoint(format('%.6f',[dts2.FieldByName('Valor').AsFloat]))+')');
            dts.Sql.Add('as ValorProdutos');
            dts.sql.Add('from somao group by IDProfissional');
            dts.ExecSql;
            //Agora faz o mesmo para os auxiliares
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('insert into relContasAReceberProfissionais select ');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add(format('"%.4d-%.2d-%.2d"  ', [ano, mes, dia])+'as DataComandaPrestada,');
            dts.Sql.Add(IntToStr(IDComandaPrestada)+' as IDComandaPrestada,');
            dts.Sql.Add(IntToStr(IDParcela)+' as IDParcela,');
            dts.Sql.Add('IDAuxiliar as IDProfissional, NULL, ');
            dts.Sql.Add('(sum(ComissaoAuxiliar)'+
                '*'+CommaToPoint(format('%.6f',[dts2.FieldByName('Valor').AsFloat]))+
                '/'+commaToPoint(format('%.6f',[dtsTotal.fieldByName('valor').asFloat]))+')');
            dts.Sql.Add('as ValorComissao, 0 as ComissaoPagaAuxiliar, ');
            dts.Sql.Add('(sum(ComissaoAuxiliar)'+
                '*'+CommaToPoint(format('%.6f',[dts2.FieldByName('Valor').AsFloat]))+
                '/'+commaToPoint(format('%.6f',[dtsTotal.fieldByName('valor').asFloat]))+')');
            dts.Sql.Add(' as ValorServicos, 0.0 as ValorProdutos  from relservicosPrestadosAuxiliares');
            decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
            dts.Sql.Add('where ((DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
            dts.Sql.Add('and (IDComanda='+IntToStr(IDComandaPrestada)+'))');
            dts.Sql.Add(' group by IDProfissional');
            dts.ExecSql;
            //Próximoooooo ;-)
            if dts2.RecNo>=dts2.RecordCount then em_loop:=False
            else dts2.Next;
        end;
        //Apaga tabela temporária criada anteriormente
        dts.Active := False;
        dts.Sql.Clear;
        dts.Sql.Add('drop table somao');
        dts.ExecSql;
    end;

    //Apaga todas as parcelas
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('delete from parcelasComandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataComanda='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.ExecSql;
    //////////////////////////////////////////////
    //Todo o trabalho foi feito, apague a comanda
    dts2.Active := False;
    dts2.Sql.Clear;
    dts2.Sql.Add('delete from Comandas where');
    decodedate(dtsComandas.FieldByName('DataAbertura').AsDateTime, ano, mes, dia);
    dts2.Sql.Add('(DataAbertura='+format('"%.4d-%.2d-%.2d") ', [ano, mes, dia]));
    dts2.Sql.Add('and (IDComanda='+IntToStr(dtsComandas.FieldByName('IDComanda').AsInteger)+')');
    dts2.ExecSql;

    //Finaliza, finalmente
    dts.Destroy;
    dts2.Destroy;
    dts3.Destroy;
    dts4.Destroy;
    DMMain.Transaction.AutoCommit := old_autocommit;
    DMMain.Transaction.Commit;
    //Abre a tela de Contas a receber com essa comanda selecionada
    except
        DMMain.Transaction.Rollback;
        ShowMessage('Erro no fechamento da comanda!');
        exit;
    end;
    createfrmContasAReceber;
    frmContasAReceber.Escolhe_Comanda(DataComandaPrestada, IDComandaPrestada);
    Close;
end;

procedure TfrmFecharComanda.calcula_total;
var
    v_servicos, v_produtos: Real;
begin
    //Calcula número de servicos
    dtsTotal.Active := False;
    dtsTotal.Sql.Clear;
    dtsTotal.Sql.Add('select');
    dtsTotal.Sql.Add('(sum(servicosComandas.ValorCobrado)) as valor');
    dtsTotal.Sql.Add('from servicosComandas, servicos');
    dtsTotal.Sql.Add('where');
    dtsTotal.Sql.Add('(servicosComandas.DataComanda=:DataAbertura');
    dtsTotal.Sql.Add('and  servicosComandas.IDComanda=:IDComanda');
    dtsTotal.Sql.Add('and servicosComandas.IDServico=servicos.IDServico) ');
    dtsTotal.Active := True;
    v_servicos := dtsTotal.fieldByName('valor').AsFloat;
    //Calcula número de produtos
    dtsTotal.Active := False;
    dtsTotal.Sql.Clear;
    dtsTotal.Sql.Add('select');
    dtsTotal.Sql.Add('(sum(produtosComandas.Preco*produtosComandas.Qtd)) as valor');
    dtsTotal.Sql.Add('from produtosComandas, produtos');
    dtsTotal.Sql.Add('where');
    dtsTotal.Sql.Add('(produtosComandas.DataComanda=:DataAbertura');
    dtsTotal.Sql.Add('and produtosComandas.IDComanda=:IDComanda');
    dtsTotal.Sql.Add('and produtosComandas.IDProduto=produtos.IDProduto)');
    dtsTotal.Active := True;
    v_produtos := dtsTotal.fieldByName('valor').AsFloat;
    //Calcula total
    dtsTotal.Active := False;
    dtsTotal.Sql.Clear;
    dtsTotal.Sql.Add('select ');
    dtsTotal.Sql.Add('('+commaToPoint(format('%.2f',[v_servicos]))+')');
    dtsTotal.Sql.Add('+('+commaToPoint(format('%.2f',[v_produtos]))+')');
    dtsTotal.Sql.Add(' as valor ');
    dtsTotal.Active := true;
end;

procedure TfrmFecharComanda.dtsParcelasAfterOpen(DataSet: TDataSet);
begin
  inherited;
   if dtsParcelas.RecordCount > 1 then begin
      panelParcela.Visible := False;
      panelParcelas.Visible := True;
   end else begin
      panelParcela.Visible := True;
      panelParcelas.Visible := False;
   end;
   if dtsParcelas.IsEmpty then exit;
   try
      edtValorCobrado.Value := dtsParcelas.fieldByName('Valor').asFloat;
      lbTroco.Caption := format('%m',[0.0]);
   except
      beep;
   end;
end;

procedure TfrmFecharComanda.edtValorCobradoChange(Sender: TObject);
var
   diferenca:  Real;
begin
  inherited;
   if dtsParcelas.IsEmpty then exit;
   try
      diferenca := dtsParcelas.fieldByName('Valor').asFloat;
      diferenca := edtValorCobrado.Value - diferenca;
      lbTroco.Caption := format('%m',[diferenca]);
   except
      beep;
   end;
end;

end.

program TheWay;

{%ToDo 'TheWay.todo'}

uses
  Forms,
  SysUtils,
  formMain in 'formMain.pas' {frmMain},
  formAbout in 'formAbout.pas' {frmAbout},
  DM_main in 'DM_main.pas' {DMMain: TDataModule},
  formBase in 'formBase.pas' {frmBase},
  formDBBase in 'formDBBase.pas' {frmDBBase},
  formGruposSistema in 'formGruposSistema.pas' {frmGruposSistema},
  formLojas in 'formLojas.pas' {frmLojas},
  formLogon in 'formLogon.pas' {frmLogon},
  formDBDetailBase in 'formDBDetailBase.pas' {frmDBDetailBase},
  formClientes in 'formClientes.pas' {frmClientes},
  formChegadaProfissional in 'formChegadaProfissional.pas' {frmChegadaProfissional},
  formSaidaProfissional in 'formSaidaProfissional.pas' {frmSaidaProfissional},
  formFaturamentoProfissional in 'formFaturamentoProfissional.pas' {frmfaturamentoProfissional},
  formVenderProduto in 'formVenderProduto.pas' {frmVenderProduto},
  formCompraProduto in 'formCompraProduto.pas' {frmCompraProduto},
  formAdicionarServico in 'formAdicionarServico.pas' {frmAdicionarServico},
  formVenderProdutoParaProf in 'formVenderProdutoParaProf.pas' {frmVenderProdutoParaProf},
  formCadastrarCliente in 'formCadastrarCliente.pas' {frmCadastrarCliente},
  formAbrirComanda in 'formAbrirComanda.pas' {frmAbrirComanda},
  formFecharComanda in 'formFecharComanda.pas' {frmFecharComanda},
  formEntradaCaixa in 'formEntradaCaixa.pas' {frmEntradaCaixa},
  formSaidaCaixa in 'formSaidaCaixa.pas' {frmSaidaCaixa},
  formAgendar in 'formAgendar.pas' {frmAgendar},
  formAgenda in 'formAgenda.pas' {frmAgenda},
  formAgendaProfissional in 'formAgendaProfissional.pas' {frmAgendaProfissional},
  unitTheWayUtils in 'unitTheWayUtils.pas',
  formProfissionais in 'formProfissionais.pas' {frmProfissionais},
  formDBDetailWithCategory in 'formDBDetailWithCategory.pas' {frmDBDetailWithCategory},
  formFuncionarios in 'formFuncionarios.pas' {frmFuncionarios},
  formAddBase in 'formAddBase.pas' {frmAddBase},
  formAddClienteProduto in 'formAddClienteProduto.pas' {frmAddClienteProduto},
  formFornecedores in 'formFornecedores.pas' {frmFornecedores},
  formFormaPagamento in 'formFormaPagamento.pas' {frmFormaPagamento},
  formTiposPrestacoes in 'formTiposPrestacoes.pas' {frmTiposPrestacoes},
  formProdutos in 'formProdutos.pas' {frmProdutos},
  formCompras in 'formCompras.pas' {frmCompras},
  formVendas in 'formVendas.pas' {frmVendas},
  formVendasInternas in 'formVendasInternas.pas' {frmVendasInternas},
  formServicos in 'formServicos.pas' {frmServicos},
  formServicosPrestados in 'formServicosPrestados.pas' {frmServicosPrestados},
  formAddFuncProf in 'formAddFuncProf.pas' {frmAddFuncProf},
  formCampoBase in 'formCampoBase.pas' {frmCampoBase},
  formComandasPrestadas in 'formComandasPrestadas.pas' {frmComandasPrestadas},
  formVales in 'formVales.pas' {frmVales},
  formCrachas in 'formCrachas.pas' {frmCrachas},
  formEstoque in 'formEstoque.pas' {frmEstoque},
  formReportBase in 'formReportBase.pas' {frmReportBase},
  formCrachasComandas in 'formCrachasComandas.pas' {frmCrachasComandas},
  formCargos in 'formCargos.pas' {frmCargos},
  formCatProdutos in 'formCatProdutos.pas' {frmCatProdutos},
  formCatServicos in 'formCatServicos.pas' {frmCatServicos},
  formCatFornecedores in 'formCatFornecedores.pas' {frmCatFornecedores},
  formAberturaFechamentoCaixa in 'formAberturaFechamentoCaixa.pas' {frmAberturaFechamentoCaixa},
  formOpcoesGeral in 'formOpcoesGeral.pas' {frmOpcoesGeral},
  formValorServico in 'formValorServico.pas' {frmValorServico},
  formCrachasFuncionarios in 'formCrachasFuncionarios.pas' {frmCrachasFuncionarios},
  formBuscarProf in 'formBuscarProf.pas' {frmBuscarProf},
  formUsarProdutos in 'formUsarProdutos.pas' {frmUsarProdutos},
  formCaixinha in 'formCaixinha.pas' {frmCaixinha},
  formMeiosPagamento in 'formMeiosPagamento.pas' {frmMeiosPagamento},
  formContasAReceber in 'formContasAReceber.pas' {frmContasAReceber},
  formRepPontuacoesClientes in 'formRepPontuacoesClientes.pas' {frmRepPontuacoesClientes},
  formListaPrecos in 'formListaPrecos.pas' {frmListaPrecos},
  formBuscarCliente in 'formBuscarCliente.pas' {frmBuscarCliente},
  formSair in 'formSair.pas' {frmSair},
  formSplash in 'formSplash.pas' {frmSplash},
  formNavegador in 'formNavegador.pas' {frmNavegador};

{$R *.RES}

begin
  //Configura locales
  ThousandSeparator:='.';
  DecimalSeparator :=',';
  CurrencyString   :='R$';
  CurrencyFormat   := 2;
  ShortDateFormat  :='DD/MM/YY';
  TimeAMString     :='Matutino';
  TimePMString     :='Vespertino';
  //Inicializa
  Application.Initialize;
  //Splash
  frmSplash := TfrmSplash.Create(Application);
  frmSplash.FormStyle := fsStayOnTop;
  frmSplash.Show;
  //Cria forms da aplicação
  Application.Title := 'The Way';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDMMain, DMMain);
  Application.Run;
end.

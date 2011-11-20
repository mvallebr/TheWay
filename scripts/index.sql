create index nome on clientes (nome);
create index Pontuacao on clientes (Pontuacao);
create index IDClienteIndicou on clientes (IDClienteIndicou);

create index nome on profissionais (nome);

create index nome on produtos (Descricao);
create unique index codbarras on produtos (codbarras);

create index nome on fornecedores (Descricao);

create index nome on servicos (Descricao);

create index codbarras on crachas (TextoCodBarras);

create index prof on aberturafechamentocaixa (IDProfissional);
create index ValorCalculadoParaOCaixa on aberturafechamentocaixa (ValorCalculadoParaOCaixa);
create index ValorRealNoCaixa on aberturafechamentocaixa (ValorRealNoCaixa);
create index DataHora on aberturafechamentocaixa (DataHora);

create index Nome on telas (Nome);
create index Descricao on telas (Descricao);
create index Ativa on telas (Ativa);

create index Estado on contasAReceber (Estado);
create index DataVencimento on contasAReceber (DataVencimento);
create index Valor on contasAReceber (Valor);
create index IDMeioPagamento on contasAReceber (IDMeioPagamento);

create index Descricao  on      cargos (Descricao);

create index Descricao  on      categoriasFornecedores (Descricao);

create index Descricao  on      categoriasProdutos (Descricao);

create index Descricao  on      categoriasServicos (Descricao);

create index NomeCliente on comandas (NomeCliente);
create index IDCracha on comandas (IDCracha);

create index NomeCliente on comandasPrestadas (NomeCliente);

create index DataHora on entradasCaixa (DataHora);
create index DataHora on saidasCaixa (DataHora);
create index DataHora on caixinhas (DataHora);

create index Descricao on gruposSistema (Descricao);

create index Data on Vales (Data);
create index Valor on Vales (Valor);



insert into servicos set IDServico=0, IDCategoriaServico=0, Descricao="Caixinha", ComissaoPercentualPadrao=100;
update servicos set IDServico=0 where (Descricao="Caixinha");














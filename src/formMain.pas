unit formMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Menus, Grids, DBGrids, StdCtrls, Mask,
  DBCtrls, DBCGrids, XPMenu, Buttons, ImgList, Qt, ExtCtrls,
  unitTheWayUtils, ZMySqlQuery, DB, ZQuery, DateUtils, Types;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    Sistema1: TMenuItem;
    LogOnOff1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    LogOff1: TMenuItem;
    Campo1: TMenuItem;
    Recepo1: TMenuItem;
    Gerncia1: TMenuItem;
    Contabilidade1: TMenuItem;
    Chegadadeprofissional1: TMenuItem;
    Sadadeprofissional1: TMenuItem;
    N2: TMenuItem;
    Adicionarserviocomandadocliente1: TMenuItem;
    Venderprodutoparacliente1: TMenuItem;
    N3: TMenuItem;
    Faturamentodeprofissional1: TMenuItem;
    Efetuarcompradeprodutos1: TMenuItem;
    N4: TMenuItem;
    VenderprodutosparaCliente1: TMenuItem;
    Venderprodutosparaprofissional1: TMenuItem;
    N5: TMenuItem;
    agendarserviocomprofissional1: TMenuItem;
    Cadastrarcliente1: TMenuItem;
    Chegadadeprofissional2: TMenuItem;
    Sadadeprofissional2: TMenuItem;
    N7: TMenuItem;
    Abrircomanda1: TMenuItem;
    Fecharcomanda1: TMenuItem;
    Registrarentradadecaixa1: TMenuItem;
    Registrarsadadecaixa1: TMenuItem;
    Efetuarcontrataodeservios1: TMenuItem;
    Registrarrecebimentoporprestaodeservios1: TMenuItem;
    Registrarpagamentoporcompradeprodutos1: TMenuItem;
    Registrarpagamentoporcontrataodeservios1: TMenuItem;
    Opesdesistema1: TMenuItem;
    Relatriode1: TMenuItem;
    Relatriodeserviosprestadosporcadaprofissional1: TMenuItem;
    Relatriodepontuaesdeclientes1: TMenuItem;
    Cadastrodelojas1: TMenuItem;
    Faturamento1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Comissopagafranquia1: TMenuItem;
    Relatriodecaixinhas1: TMenuItem;
    Relatriodefolhadepagamento1: TMenuItem;
    Deprodutoseserviosporformadepagamento1: TMenuItem;
    Deprodutospor1: TMenuItem;
    Deserviosprestadospelotipodeservio1: TMenuItem;
    Relatriodedespesas1: TMenuItem;
    Imprimircrachsdefuncionrios1: TMenuItem;
    N10: TMenuItem;
    Gruposdesistema1: TMenuItem;
    N11: TMenuItem;
    Profissionais1: TMenuItem;
    Funcionrios1: TMenuItem;
    Tiposdeproduto1: TMenuItem;
    Tiposdeservio1: TMenuItem;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Vendasinternas1: TMenuItem;
    Auxiliares1: TMenuItem;
    N14: TMenuItem;
    Serviosprestados1: TMenuItem;
    Servioscontratados1: TMenuItem;
    Recursoshumanos1: TMenuItem;
    Produtos1: TMenuItem;
    Servios1: TMenuItem;
    N16: TMenuItem;
    Itensemestoque1: TMenuItem;
    Perdasdeestoque2: TMenuItem;
    N12: TMenuItem;
    Agenda1: TMenuItem;
    Formasdepagamento1: TMenuItem;
    Tiposdeprestaes1: TMenuItem;
    Contas1: TMenuItem;
    Recebimentos1: TMenuItem;
    Contasapagarprodutos2: TMenuItem;
    Pagamentosprodutos2: TMenuItem;
    N13: TMenuItem;
    Contasapagarservios2: TMenuItem;
    Pagamentosservios2: TMenuItem;
    Contasareceberprodutos1: TMenuItem;
    Recebimentosprodutos1: TMenuItem;
    N15: TMenuItem;
    Contasareceberservios1: TMenuItem;
    Recebimentosservios1: TMenuItem;
    XPMenu: TXPMenu;
    Agendadoprofissional1: TMenuItem;
    ilCampo: TImageList;
    StatusBar: TStatusBar;
    tbCampo: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton7: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton8: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Timer1: TTimer;
    ilRecepcao: TImageList;
    ilGerencia: TImageList;
    ilContabilidade: TImageList;
    ilSistema: TImageList;
    N17: TMenuItem;
    iposdeserviosterceirizados1: TMenuItem;
    Vales1: TMenuItem;
    ComandasPrestadas1: TMenuItem;
    N18: TMenuItem;
    Crachs1: TMenuItem;
    Loja1: TMenuItem;
    Atualizarlistadepreos1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    iAjuda: TImageList;
    Cargos1: TMenuItem;
    Categoriasdefornecedores1: TMenuItem;
    N22: TMenuItem;
    Categoriasdeprodutos1: TMenuItem;
    N23: TMenuItem;
    Categoriadeservios1: TMenuItem;
    Categoriasdeservicosterceirizados1: TMenuItem;
    Abrircomanda2: TMenuItem;
    N19: TMenuItem;
    AberturaFechamentodecaixa1: TMenuItem;
    N24: TMenuItem;
    ilOpcoes: TImageList;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    Geral1: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    Registrarcaixinha1: TMenuItem;
    Usarprodutosemservio1: TMenuItem;
    N27: TMenuItem;
    Imprimircrachsdecomandas1: TMenuItem;
    ilTbRecepcao: TImageList;
    Meiosdepagamento1: TMenuItem;
    ToolButton9: TToolButton;
    Histrico1: TMenuItem;
    Contasareceber1: TMenuItem;
    N28: TMenuItem;
    Reiniciodobancodedados1: TMenuItem;
    tbRecepcao: TToolBar;
    tbbVenda: TToolButton;
    tbbVendaInterna: TToolButton;
    tbbUsarProdutos: TToolButton;
    ToolButton13: TToolButton;
    tbbCaixinha: TToolButton;
    ToolButton10: TToolButton;
    tbbAgendar: TToolButton;
    tbbCadCliente: TToolButton;
    tbbAbrirComanda: TToolButton;
    tbbFecharComanda: TToolButton;
    ToolButton12: TToolButton;
    tbbContasAReceber: TToolButton;
    ToolButton11: TToolButton;
    tbbChegadaProf: TToolButton;
    tbbSaidaProf: TToolButton;
    ToolButton16: TToolButton;
    tbbEntradaCaixa: TToolButton;
    tbbSaidaCaixa: TToolButton;
    tbbAbertFechCaixa: TToolButton;
    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Gruposdesistema1Click(Sender: TObject);
    procedure Lojas1Click(Sender: TObject);
    procedure LogOnOff1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LogOff1Click(Sender: TObject);
    procedure Cadastrodelojas1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Chegadadeprofissional1Click(Sender: TObject);
    procedure Sadadeprofissional1Click(Sender: TObject);
    procedure Faturamentodeprofissional1Click(Sender: TObject);
    procedure Adicionarserviocomandadocliente1Click(Sender: TObject);
    procedure Venderprodutoparacliente1Click(Sender: TObject);
    procedure Efetuarcompradeprodutos1Click(Sender: TObject);
    procedure VenderprodutosparaCliente1Click(Sender: TObject);
    procedure Venderprodutosparaprofissional1Click(Sender: TObject);
    procedure agendarserviocomprofissional1Click(Sender: TObject);
    procedure Abrircomanda1Click(Sender: TObject);
    procedure Fecharcomanda1Click(Sender: TObject);
    procedure Chegadadeprofissional2Click(Sender: TObject);
    procedure Sadadeprofissional2Click(Sender: TObject);
    procedure Registrarentradadecaixa1Click(Sender: TObject);
    procedure Registrarsadadecaixa1Click(Sender: TObject);
    procedure Agendadoprofissional1Click(Sender: TObject);
    procedure LogInOutMenus;
    procedure ProcessKeyPressed(Sender:TObject; key: word);
    procedure Profissionais1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Formasdepagamento1Click(Sender: TObject);
    procedure Tiposdeprestaes1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Auxiliares1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Tiposdeproduto1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Vendasinternas1Click(Sender: TObject);
    procedure Itensemestoque1Click(Sender: TObject);
    procedure Tiposdeservio1Click(Sender: TObject);
    procedure Serviosprestados1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Vales1Click(Sender: TObject);
    procedure Atualizarlistadepreos1Click(Sender: TObject);
    procedure Crachs1Click(Sender: TObject);
    procedure ComandasPrestadas1Click(Sender: TObject);
    procedure Cadastrarcliente1Click(Sender: TObject);
    procedure Imprimircrachsdefuncionrios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure Categoriasdefornecedores1Click(Sender: TObject);
    procedure Categoriadeservios1Click(Sender: TObject);
    procedure Categoriasdeprodutos1Click(Sender: TObject);
    procedure AberturaFechamentodecaixa1Click(Sender: TObject);
    procedure Abrircomanda2Click(Sender: TObject);
    procedure Geral1Click(Sender: TObject);
    procedure Registrarcaixinha1Click(Sender: TObject);
    procedure Imprimircrachsdecomandas1Click(Sender: TObject);
    procedure Usarprodutosemservio1Click(Sender: TObject);
    procedure Meiosdepagamento1Click(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    procedure Contasareceber1Click(Sender: TObject);
    procedure Reiniciodobancodedados1Click(Sender: TObject);
    procedure Relatriodepontuaesdeclientes1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    permite_saida:   boolean;
    procedure update_visibility;
  public
    { Public declarations }
    IDProfissionalAtual:      string;
    IDCargoProfissionalAtual:      string;
    NomeProfissionalAtual, CargoProfissionalAtual:  string;
    IDGrupoAcessoAtual:       integer;
    logged: boolean;
    disable_shortcuts: boolean;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.DFM}
uses formAbout, dm_main, formGruposSistema, formLojas,
     formLogon, formClientes, formChegadaProfissional,
     formSaidaProfissional, formFaturamentoProfissional,
     formAdicionarServico, formVenderProduto, formCompraProduto,
     formVenderProdutoParaProf,
     formCadastrarCliente,
     formAbrirComanda, formFecharComanda,
     formEntradaCaixa, formSaidaCaixa, formAgendar,
     formAgenda, formAgendaProfissional,
     formProfissionais,
     formAuxiliares, formCompras,
     formTiposPrestacoes, formFormaPagamento,
     formFuncionarios, formProdutos, formFornecedores,
     formVendas, formVendasInternas, formEstoque,
     formServicos, formServicosPrestados,
     formListaPrecos, formVales, formCrachas, formComandasPrestadas,
     formCrachasFuncionarios, formCatProdutos, formCatServicos,
     formCatFornecedores, formCargos,
     formAberturaFechamentoCaixa, formOpcoesGeral,
     formCrachasComandas, formUsarProdutos, formCaixinha,
     formMeiosPagamento, formContasAReceber,
     formRepPontuacoesClientes, formSair,
     formNavegador;

procedure TfrmMain.Sair1Click(Sender: TObject);
begin
   frmSair := TfrmSair.Create(Self);
   frmSair.ShowModal;
   if frmSair.ModalResult = mrOk then begin
      permite_saida:=true;
      close;
   end;
end;

procedure TfrmMain.Sobre1Click(Sender: TObject);
var
   fabout: TfrmAbout;
begin
     fabout := TfrmAbout.create(Self);
     fabout.ShowModal;
     fabout.Destroy;
end;

procedure TfrmMain.update_visibility;
begin
    Recursoshumanos1.Visible := Cargos1.Visible or Profissionais1.Visible or
        Auxiliares1.Visible or Categoriasdefornecedores1.Visible or
        Fornecedores1.Visible or Clientes1.Visible;
    Produtos1.Visible := Categoriasdeprodutos1.visible or Tiposdeproduto1.visible or
        Atualizarlistadepreos1.Visible or Compras1.Visible or Vendas1.Visible or
        Vendasinternas1.Visible or Itensemestoque1.Visible or Perdasdeestoque2.Visible;
    Servios1.Visible := Categoriadeservios1.Visible or Tiposdeservio1.Visible or
        Serviosprestados1.Visible or Categoriasdeservicosterceirizados1.Visible or
        iposdeserviosterceirizados1.Visible or Servioscontratados1.Visible;
    Loja1.Visible := Gruposdesistema1.Visible or ComandasPrestadas1.Visible or
        Crachs1.Visible or Funcionrios1.Visible;
    Gerncia1.Enabled := Imprimircrachsdefuncionrios1.Visible or
        Agenda1.Visible or Vales1.Visible or Formasdepagamento1.Visible or
        Tiposdeprestaes1.Visible or Recursoshumanos1.Visible or Produtos1.Visible or
        Servios1.Visible or Loja1.Visible or MeiosdePagamento1.Visible;
    tbbCaixinha.Visible := Registrarcaixinha1.Visible;
    tbbAgendar.Visible := agendarserviocomprofissional1.Visible;
    tbbCadCliente.Visible := Cadastrarcliente1.Visible;
    tbbFecharComanda.Visible := Fecharcomanda1.Visible;
    tbbEntradaCaixa.Visible := Registrarentradadecaixa1.Visible;
    tbbSaidaCaixa.Visible := Registrarsadadecaixa1.Visible;
    tbbAbertFechCaixa.Visible := AberturaFechamentodecaixa1.Visible;
    tbbUsarProdutos.Visible := Venderprodutosparaprofissional1.Visible;
    tbbVendaInterna.Visible := Usarprodutosemservio1.Visible;
    tbbAbrircomanda.Visible := Abrircomanda1.Visible;
end;

procedure TfrmMain.Gruposdesistema1Click(Sender: TObject);
begin
     createFrmGruposSistema;
end;

procedure TfrmMain.Lojas1Click(Sender: TObject);
begin
     createFrmLojas;
end;

procedure TfrmMain.LogOnOff1Click(Sender: TObject);
var
   I: integer;
   Temp: TCustomForm;
begin
   for I := MDIChildCount - 1 downto 0 do
   begin
      Temp := MDIChildren[I];
      Temp.close;
   end;
   Self.Invalidate;
   Self.Refresh;
   Application.ProcessMessages;

   Keypreview := False;
   if frmLogon = nil then begin
      frmLogon := TfrmLogon.create(Self);
      frmLogon.ShowModal;
      if (frmLogon.ModalResult=mrOK) then begin
         IDProfissionalAtual:=frmLogon.IDProfissionalAtual;
         IDGrupoAcessoAtual:=frmLogon.IDGrupoAcessoAtual;
         logged:=(frmLogon.ModalResult=mrOK);
         LogInOutMenus;
      end;     
   end;
   Keypreview := True;
   StatusBar.Top := Self.Height;
//   createfrmNavegador;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
   frmLogon := nil;
   permite_saida:=false;
    //Carrega opções
//    options:=TOptions.Create;
//    options.setDefault;
//    options.Load;

   IDProfissionalAtual:='0';

   Width:=800;
   Height:=600;

   logged:=False;
   LogInOutMenus;
end;

procedure TfrmMain.LogOff1Click(Sender: TObject);
var
  I: Integer;
  Temp: TCustomForm;
begin
     logged:=False;
     for I := MDIChildCount - 1 downto 0 do
     begin
          Temp := MDIChildren[I];
          Temp.close;
     end;
   LogInOutMenus;
end;

procedure TfrmMain.Cadastrodelojas1Click(Sender: TObject);
begin
     createFrmLojas;
end;

procedure TfrmMain.Clientes1Click(Sender: TObject);
begin
     createFrmClientes;
end;

procedure TfrmMain.Chegadadeprofissional1Click(Sender: TObject);
begin
   createfrmChegadaProfissional;
end;

procedure TfrmMain.Sadadeprofissional1Click(Sender: TObject);
begin
   createfrmSaidaProfissional;
end;

procedure TfrmMain.Faturamentodeprofissional1Click(Sender: TObject);
begin
   createfrmFaturamentoProfissional;
end;

procedure TfrmMain.Adicionarserviocomandadocliente1Click(Sender: TObject);
begin
   createfrmAdicionarServico;
end;

procedure TfrmMain.Venderprodutoparacliente1Click(Sender: TObject);
begin
   createfrmVenderProduto;
end;

procedure TfrmMain.Efetuarcompradeprodutos1Click(Sender: TObject);
begin
   createfrmCompraProduto;
end;

procedure TfrmMain.VenderprodutosparaCliente1Click(Sender: TObject);
begin
   createfrmVenderProduto;
end;

procedure TfrmMain.Venderprodutosparaprofissional1Click(Sender: TObject);
begin
   createfrmVenderProdutoParaProf;
end;

procedure TfrmMain.agendarserviocomprofissional1Click(Sender: TObject);
begin
   createfrmAgendar;
end;

procedure TfrmMain.Abrircomanda1Click(Sender: TObject);
begin
   createfrmAbrirComanda;
end;

procedure TfrmMain.Fecharcomanda1Click(Sender: TObject);
begin
   createfrmFecharComanda;
end;

procedure TfrmMain.Chegadadeprofissional2Click(Sender: TObject);
begin
   createfrmChegadaProfissional;
end;

procedure TfrmMain.Sadadeprofissional2Click(Sender: TObject);
begin
   createfrmSaidaProfissional;
end;

procedure TfrmMain.Registrarentradadecaixa1Click(Sender: TObject);
begin
   createfrmEntradaCaixa;
end;

procedure TfrmMain.Registrarsadadecaixa1Click(Sender: TObject);
begin
   createfrmSaidaCaixa;
end;

procedure TfrmMain.Agendadoprofissional1Click(Sender: TObject);
begin
   createfrmAgendaProfissional;
end;

procedure TfrmMain.LogInOutMenus;
var
   i,j:    integer;
   dts:  TZMySqlQuery;
   lista: TStringList;
begin
    for i := 2 to MainMenu.Items.Count-1 do begin
        MainMenu.Items[i].enabled:=logged;
    end;
    lista:=TStringList.Create;
    lista.Clear;
    i:=lista.Add('Venderprodutosparaprofissional1');
    lista.Objects[i]:=Venderprodutosparaprofissional1;
    i:=lista.Add('Usarprodutosemservio1');
    lista.Objects[i]:=Usarprodutosemservio1;
    i:=lista.Add('Contasareceber1');
    lista.Objects[i]:=Contasareceber1;
    i:=lista.Add('agendarserviocomprofissional1');
    lista.Objects[i]:=agendarserviocomprofissional1;
    i:=lista.Add('Meiosdepagamento1');
    lista.Objects[i]:=Meiosdepagamento1;
    i:=lista.Add('Registrarcaixinha1');
    lista.Objects[i]:=Registrarcaixinha1;
    i:=lista.Add('Cadastrarcliente1');
    lista.Objects[i]:=Cadastrarcliente1;
    i:=lista.Add('Registrarentradadecaixa1');
    lista.Objects[i]:=Registrarentradadecaixa1;
    i:=lista.Add('Registrarsadadecaixa1');
    lista.Objects[i]:=Registrarsadadecaixa1;
    i:=lista.Add('AberturaFechamentodecaixa1');
    lista.Objects[i]:=AberturaFechamentodecaixa1;
    i:=lista.Add('Abrircomanda1');
    lista.Objects[i]:=Abrircomanda1;
    i:=lista.Add('Imprimircrachsdefuncionrios1');
    lista.Objects[i]:=Imprimircrachsdefuncionrios1;
    i:=lista.Add('Agenda1');
    lista.Objects[i]:=Agenda1;
    i:=lista.Add('Vales1');
    lista.Objects[i]:=Vales1;
    i:=lista.Add('Formasdepagamento1');
    lista.Objects[i]:=Formasdepagamento1;
    i:=lista.Add('Tiposdeprestaes1');
    lista.Objects[i]:=Tiposdeprestaes1;
    i:=lista.Add('Cargos1');
    lista.Objects[i]:=Cargos1;
    i:=lista.Add('Profissionais1');
    lista.Objects[i]:=Profissionais1;
    i:=lista.Add('Auxiliares1');
    lista.Objects[i]:=Auxiliares1;
    i:=lista.Add('Categoriasdefornecedores1');
    lista.Objects[i]:=Categoriasdefornecedores1;
    i:=lista.Add('Fornecedores1');
    lista.Objects[i]:=Fornecedores1;
    i:=lista.Add('Clientes1');
    lista.Objects[i]:=Clientes1;
    i:=lista.Add('Efetuarcompradeprodutos1');
    lista.Objects[i]:=Efetuarcompradeprodutos1;
    i:=lista.Add('Registrarpagamentoporcompradeprodutos1');
    lista.Objects[i]:=Registrarpagamentoporcompradeprodutos1;
    i:=lista.Add('Contasapagarprodutos2');
    lista.Objects[i]:=Contasapagarprodutos2;
    i:=lista.Add('Pagamentosprodutos2');
    lista.Objects[i]:=Pagamentosprodutos2;
    i:=lista.Add('Contasapagarservios2');
    lista.Objects[i]:=Contasapagarservios2;
    i:=lista.Add('Pagamentosservios2');
    lista.Objects[i]:=Pagamentosservios2;
    i:=lista.Add('Contasareceberprodutos1');
    lista.Objects[i]:=Contasareceberprodutos1;
    i:=lista.Add('Recebimentosprodutos1');
    lista.Objects[i]:=Recebimentosprodutos1;
    i:=lista.Add('Contasareceberservios1');
    lista.Objects[i]:=Contasareceberservios1;
    i:=lista.Add('Recebimentosservios1');
    lista.Objects[i]:=Recebimentosservios1;
    i:=lista.Add('Deprodutoseserviosporformadepagamento1');
    lista.Objects[i]:=Deprodutoseserviosporformadepagamento1;
    i:=lista.Add('Deprodutospor1');
    lista.Objects[i]:=Deprodutospor1;
    i:=lista.Add('Deserviosprestadospelotipodeservio1');
    lista.Objects[i]:=Deserviosprestadospelotipodeservio1;
    i:=lista.Add('Relatriodedespesas1');
    lista.Objects[i]:=Relatriodedespesas1;
    i:=lista.Add('Comissopagafranquia1');
    lista.Objects[i]:=Comissopagafranquia1;
    i:=lista.Add('Relatriodecaixinhas1');
    lista.Objects[i]:=Relatriodecaixinhas1;
    i:=lista.Add('Relatriodefolhadepagamento1');
    lista.Objects[i]:=Relatriodefolhadepagamento1;
    i:=lista.Add('Relatriode1');
    lista.Objects[i]:=Relatriode1;
    i:=lista.Add('Relatriodeserviosprestadosporcadaprofissional1');
    lista.Objects[i]:=Relatriodeserviosprestadosporcadaprofissional1;
    i:=lista.Add('Relatriodepontuaesdeclientes1');
    lista.Objects[i]:=Relatriodepontuaesdeclientes1;
    i:=lista.Add('Geral1');
    lista.Objects[i]:=Geral1;
    i:=lista.Add('Categoriasdeprodutos1');
    lista.Objects[i]:=Categoriasdeprodutos1;
    i:=lista.Add('Tiposdeproduto1');
    lista.Objects[i]:=Tiposdeproduto1;
    i:=lista.Add('Atualizarlistadepreos1');
    lista.Objects[i]:=Atualizarlistadepreos1;
    i:=lista.Add('Compras1');
    lista.Objects[i]:=Compras1;
    i:=lista.Add('Vendas1');
    lista.Objects[i]:=Vendas1;
    i:=lista.Add('Vendasinternas1');
    lista.Objects[i]:=Vendasinternas1;
    i:=lista.Add('Itensemestoque1');
    lista.Objects[i]:=Itensemestoque1;
    i:=lista.Add('Perdasdeestoque2');
    lista.Objects[i]:=Perdasdeestoque2;
    i:=lista.Add('Categoriadeservios1');
    lista.Objects[i]:=Categoriadeservios1;
    i:=lista.Add('Tiposdeservio1');
    lista.Objects[i]:=Tiposdeservio1;
    i:=lista.Add('Serviosprestados1');
    lista.Objects[i]:=Serviosprestados1;
    i:=lista.Add('Categoriasdeservicosterceirizados1');
    lista.Objects[i]:=Categoriasdeservicosterceirizados1;
    i:=lista.Add('iposdeserviosterceirizados1');
    lista.Objects[i]:=iposdeserviosterceirizados1;
    i:=lista.Add('Servioscontratados1');
    lista.Objects[i]:=Servioscontratados1;
    i:=lista.Add('Gruposdesistema1');
    lista.Objects[i]:=Gruposdesistema1;
    i:=lista.Add('ComandasPrestadas1');
    lista.Objects[i]:=ComandasPrestadas1;
    i:=lista.Add('Crachs1');
    lista.Objects[i]:=Crachs1;
    i:=lista.Add('Fecharcomanda1');
    lista.Objects[i]:=Fecharcomanda1;
    i:=lista.Add('Relatriodepontuaesdeclientes1');
    lista.Objects[i]:=Relatriodepontuaesdeclientes1;

    for j:=0 to lista.Count-1 do
    begin
        TMenuItem(lista.Objects[j]).Enabled:=False;
        TMenuItem(lista.Objects[j]).Visible:=False;
    end;

    if logged then begin
        dts:=TZMySqlQuery.Create(Self);
        dts.Transaction:=DMMain.Transaction;
        dts.Database:=DMMain.Database;
        dts.Active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('SELECT *');
        dts.Sql.Add('FROM telas, relgrupossistemasprofissionais, reltelasgrupossistemas WHERE ');
        if StrToInt(IDProfissionalAtual)<>0 then
            dts.Sql.Add('relgrupossistemasprofissionais.IDProfissional="' + IDProfissionalAtual +'" AND');
        dts.Sql.Add('reltelasgrupossistemas.IDGrupoSistema=relgrupossistemasprofissionais.IDGrupoSistema AND');
        dts.Sql.Add('reltelasgrupossistemas.IDTela=telas.IDTela AND');
        dts.Sql.Add('telas.Ativa=1');
        if StrToInt(IDProfissionalAtual)=0 then begin
            Reiniciodobancodedados1.Enabled := true;
            Reiniciodobancodedados1.Visible := true;
        end else begin
            Reiniciodobancodedados1.Enabled := False;
            Reiniciodobancodedados1.Visible := False;
        end;
        try
            dts.Active:=True;
        except
            beep;
            ShowMessage('ATENÇÃO: Erro ao verificar permissões. Reconfigure o programa usando a tela de opções!');
            Geral1.Visible := true;
            Geral1.Enabled := true;
            Sair1.Visible := true;
            Sair1.Enabled := true;
            exit;
        end;

        dts.First;
        for i:=0 to dts.RecordCount-1 do
        begin
            j:=lista.IndexOf(dts.Fieldbyname('Nome').AsString);
            //-ShowMessage(dts.Fieldbyname('Nome').AsString);
            if(j<>-1) then
            begin
                TMenuItem(lista.Objects[j]).Enabled:=True;
                TMenuItem(lista.Objects[j]).Visible:=True;
            end;
            dts.Next;
        end;

        dts.Active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('select * from profissionais where IDProfissional='+trim(IDProfissionalAtual));
        dts.Active := True;
        if not dts.isEmpty then begin
            NomeProfissionalAtual  := dts.fieldByName('Nome').asString;
            IDCargoProfissionalAtual := dts.fieldByName('IDCargoProfissional').asString;
            dts.Active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('select * from cargos where IDCargo='+trim(IDCargoProfissionalAtual));
            dts.Active := True;
            CargoProfissionalAtual := dts.fieldByName('Descricao').asString;
        end;

        update_visibility;

        lista.Destroy;
        dts.Destroy;
    end;

    Sair1.Enabled := logged;
    Keypreview := True; //not logged;
    XPMenu.Active:=false;
    refresh;
    Application.ProcessMessages;
    XPMenu.Active:=True;
    refresh;
    Application.ProcessMessages;

   if not logged then begin
        StatusBar.Panels.Items[0].Text:= 'The way - Nenhum usuário logado';
        StatusBar.Panels.Items[1].Text:= '';
   end else begin
        StatusBar.Panels.Items[0].Text:= 'The way - Usuário: '+IntToStr(StrToInt(IDProfissionalAtual))+' - cargo: '+CargoProfissionalAtual;
        StatusBar.Panels.Items[1].Text:= NomeProfissionalAtual;
   end;
   tbCampo.Visible := not logged;
   tbRecepcao.Visible := logged;
   Self.Invalidate;
   Self.Refresh;
   Application.ProcessMessages;
end;


procedure TfrmMain.ProcessKeyPressed(Sender:TObject; key: word);
begin
//    case key of
////    Key_F2: LogOnOff1Click(Sender);
//    VK_F2: LogOnOff1Click(Sender);
////    Key_F3: LogOff1Click(Sender);
//    VK_F3: LogOff1Click(Sender);
//    end;

    if logged or disable_shortcuts then exit;
    case key of
    Key_G:  Chegadadeprofissional1Click(Sender);
    Key_A:  Sadadeprofissional1Click(Sender);
    Key_F:  Faturamentodeprofissional1Click(Sender);
    Key_N:  Agendadoprofissional1Click(Sender);
    Key_S:  Adicionarserviocomandadocliente1Click(Sender);
    Key_V:  Venderprodutoparacliente1Click(Sender);
    Key_O:  Abrircomanda2Click(Sender);
    Key_H:  Histrico1Click(Sender);
    end;
end;

procedure TfrmMain.Profissionais1Click(Sender: TObject);
begin
    createfrmProfissionais;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
   data: TDate;
begin
//    LogOnOff1Click(Sender);
  IDProfissionalAtual:='0';
  IDGrupoAcessoAtual:=0;
  logged:=False;
  LogInOutMenus;

   data := encodedate(2003, 7, 1);
   //if compareDateTime(data, date) = LessThanValue then begin
   //   ShowMessage('Fatal error');
   //   permite_saida:=True;
   //   close;
   //end;
end;

procedure TfrmMain.Agenda1Click(Sender: TObject);
begin
    createfrmAgenda;
end;

procedure TfrmMain.Formasdepagamento1Click(Sender: TObject);
begin
    createfrmFormaPagamento;
end;

procedure TfrmMain.Tiposdeprestaes1Click(Sender: TObject);
begin
    createfrmTiposPrestacoes;
end;

procedure TfrmMain.Funcionrios1Click(Sender: TObject);
begin
    createfrmFuncionarios;
end;

procedure TfrmMain.Auxiliares1Click(Sender: TObject);
begin
    createfrmAuxiliares;
end;

procedure TfrmMain.Fornecedores1Click(Sender: TObject);
begin
    createfrmFornecedores;
end;

procedure TfrmMain.Tiposdeproduto1Click(Sender: TObject);
begin
    createfrmProdutos;
end;

procedure TfrmMain.Compras1Click(Sender: TObject);
begin
    createfrmCompras;
end;

procedure TfrmMain.Vendas1Click(Sender: TObject);
begin
    createfrmVendas;
end;

procedure TfrmMain.Vendasinternas1Click(Sender: TObject);
begin
    createfrmVendasInternas;
end;

procedure TfrmMain.Itensemestoque1Click(Sender: TObject);
begin
    createfrmEstoque;
end;

procedure TfrmMain.Tiposdeservio1Click(Sender: TObject);
begin
    createfrmServicos;
end;

procedure TfrmMain.Serviosprestados1Click(Sender: TObject);
begin
    createfrmServicosPrestados;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
    StatusBar.Panels.Items[2].Text:=DateTimeToStr(now);
end;

procedure TfrmMain.Vales1Click(Sender: TObject);
begin
    createfrmVales;
end;

procedure TfrmMain.Atualizarlistadepreos1Click(Sender: TObject);
begin
    createfrmListaPrecos;
end;

procedure TfrmMain.Crachs1Click(Sender: TObject);
begin
    createfrmCrachas;
end;

procedure TfrmMain.ComandasPrestadas1Click(Sender: TObject);
begin
    createfrmComandasPrestadas;
end;

procedure TfrmMain.Cadastrarcliente1Click(Sender: TObject);
begin
   createfrmCadastrarCliente;
end;

procedure TfrmMain.Imprimircrachsdefuncionrios1Click(Sender: TObject);
begin
    createfrmCrachasFuncionarios;
end;

procedure TfrmMain.Cargos1Click(Sender: TObject);
begin
    createfrmCargos;
end;

procedure TfrmMain.Categoriasdefornecedores1Click(Sender: TObject);
begin
    createfrmCatFornecedores;
end;

procedure TfrmMain.Categoriadeservios1Click(Sender: TObject);
begin
    createfrmCatServicos;
end;

procedure TfrmMain.Categoriasdeprodutos1Click(Sender: TObject);
begin
    createfrmCatProdutos;
end;

procedure TfrmMain.AberturaFechamentodecaixa1Click(Sender: TObject);
begin
    createfrmAberturaFechamentoCaixa;
end;

procedure TfrmMain.Abrircomanda2Click(Sender: TObject);
begin
   createfrmAbrirComanda;
end;

procedure TfrmMain.Geral1Click(Sender: TObject);
begin
    createfrmOpcoesGeral;
end;

procedure TfrmMain.Registrarcaixinha1Click(Sender: TObject);
begin
    createfrmCaixinha;
end;

procedure TfrmMain.Imprimircrachsdecomandas1Click(Sender: TObject);
begin
    createfrmCrachasComandas;
end;

procedure TfrmMain.Usarprodutosemservio1Click(Sender: TObject);
begin
    createfrmUsarProdutos;
end;

procedure TfrmMain.Meiosdepagamento1Click(Sender: TObject);
begin
    createfrmMeiosPagamento;
end;

procedure TfrmMain.Histrico1Click(Sender: TObject);
begin
   createfrmFecharComanda;
end;

procedure TfrmMain.Contasareceber1Click(Sender: TObject);
begin
    createfrmContasAReceber;
end;

procedure TfrmMain.Reiniciodobancodedados1Click(Sender: TObject);
begin
    zera_database;
end;

procedure TfrmMain.Relatriodepontuaesdeclientes1Click(Sender: TObject);
begin
    createfrmRepPontuacoesClientes;
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   ProcessKeyPressed(Sender, key);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not permite_saida then Action := caNone;
end;

end.

unit formOpcoesGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, Spin, ComCtrls, FloatSpinEdit, Buttons,
  ExtCtrls;

procedure createfrmOpcoesGeral;

type
  TfrmOpcoesGeral = class(TfrmBase)
    PageControl1: TPageControl;
    tabLoja: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    edtLoja: TSpinEdit;
    chkAuxiliarPodeVenderProduto: TCheckBox;
    TabSheet3: TTabSheet;
    chkPermiteVendaSemEstoque: TCheckBox;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtPorcNClientes: TFloatSpinEdit;
    edtPorcClientes: TFloatSpinEdit;
    edtPorcProfissionais: TFloatSpinEdit;
    edtPorcUsoServico: TFloatSpinEdit;
    TabSheet5: TTabSheet;
    Label6: TLabel;
    edtPorcentagemAuxiliar: TFloatSpinEdit;
    TabSheet6: TTabSheet;
    Label7: TLabel;
    edtSenhaAdmin: TEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    edtDBServer: TEdit;
    Label9: TLabel;
    edtPorta: TSpinEdit;
    Label10: TLabel;
    edtDBName: TEdit;
    Label11: TLabel;
    edtdblogin: TEdit;
    Label12: TLabel;
    edtDBPasswd: TEdit;
    tabDescontos: TTabSheet;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtDomingo: TFloatSpinEdit;
    edtSegunda: TFloatSpinEdit;
    edtTerca: TFloatSpinEdit;
    edtQuarta: TFloatSpinEdit;
    edtQuinta: TFloatSpinEdit;
    edtSexta: TFloatSpinEdit;
    edtSabado: TFloatSpinEdit;
    Label20: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    chkSubstExplorer: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure carrega_opcoes;
    procedure salva_opcoes;
  public
    { Public declarations }
  end;

var
  frmOpcoesGeral: TfrmOpcoesGeral;

implementation

uses formMain, DM_main;

{$R *.dfm}

procedure createfrmOpcoesGeral;
begin
    if frmOpcoesGeral = nil then
        frmOpcoesGeral:=TfrmOpcoesGeral.Create(Application);
    frmOpcoesGeral.Show;
end;

procedure TfrmOpcoesGeral.FormCreate(Sender: TObject);
begin
  inherited;
    carrega_opcoes;
end;

procedure TfrmOpcoesGeral.BitBtn1Click(Sender: TObject);
begin
  inherited;
  salva_opcoes;
  close;
end;

procedure TfrmOpcoesGeral.carrega_opcoes;
begin
    //Carrega opções para o formulário
    with DMMain.options do begin
        edtLoja.Value := IDLoja;
        chkAuxiliarPodeVenderProduto.Checked := AuxiliarPodeVenderProduto;
        chkPermiteVendaSemEstoque.Checked := PermiteVendaSemEstoque;
        edtPorcNClientes.Value := porc_n_clientes*100;
        edtPorcClientes.Value  := porc_clientes*100;
        edtPorcProfissionais.Value := porc_profissionais*100;
        edtPorcUsoServico.Value := porc_uso_em_servicos*100;
        edtPorcentagemAuxiliar.Value := PorcentagemAuxiliar*100;
        edtSenhaAdmin.Text := admin_passwd;
        edtDBServer.Text := ip_dbserver;
        edtPorta.Value := port_dbServer;
        edtDBName.Text := dbname;
        edtdblogin.Text := dblogin;
        edtDBPasswd.Text := dbpasswd;
        edtDomingo.Value := descontos[1]*100;
        edtSegunda.Value := descontos[2]*100;
        edtTerca.Value := descontos[3]*100;
        edtQuarta.Value := descontos[4]*100;
        edtQuinta.Value := descontos[5]*100;
        edtSexta.Value := descontos[6]*100;
        edtSabado.Value := descontos[7]*100;
        chkSubstExplorer.Checked:=SubstExplorer;
        update_all;
    end;
end;

procedure TfrmOpcoesGeral.salva_opcoes;
begin
    //Salva opções do formulário
    with DMMain.options do begin
        IDLoja:=edtLoja.Value;
        AuxiliarPodeVenderProduto:=chkAuxiliarPodeVenderProduto.Checked;
        PermiteVendaSemEstoque:=chkPermiteVendaSemEstoque.Checked;
        porc_n_clientes:=edtPorcNClientes.Value/100;
        porc_clientes:=edtPorcClientes.Value/100;
        porc_profissionais:=edtPorcProfissionais.Value/100;
        porc_uso_em_servicos:=edtPorcUsoServico.Value/100;
        PorcentagemAuxiliar:=edtPorcentagemAuxiliar.Value/100;
        admin_passwd:=trim(edtSenhaAdmin.Text);
        ip_dbserver:=trim(edtDBServer.Text);
        port_dbServer:=edtPorta.Value;
        dbname:=trim(edtDBName.Text);
        dblogin:=trim(edtdblogin.Text);
        dbpasswd:=edtDBPasswd.Text;
        descontos[1]:=edtDomingo.Value/100;
        descontos[2]:=edtSegunda.Value/100;
        descontos[3]:=edtTerca.Value/100;
        descontos[4]:=edtQuarta.Value/100;
        descontos[5]:=edtQuinta.Value/100;
        descontos[6]:=edtSexta.Value/100;
        descontos[7]:=edtSabado.Value/100;
        SubstExplorer:=chkSubstExplorer.Checked;
        update_all;
        Save;
    end;
end;

procedure TfrmOpcoesGeral.BitBtn3Click(Sender: TObject);
begin
  inherited;
  DMMain.options.setDefault;
  carrega_opcoes;
end;

procedure TfrmOpcoesGeral.FormDestroy(Sender: TObject);
begin
  inherited;
    frmOpcoesGeral:=nil;
end;

procedure TfrmOpcoesGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    Action := caFree;
end;

procedure TfrmOpcoesGeral.BitBtn2Click(Sender: TObject);
begin
  inherited;
    close;
end;

end.

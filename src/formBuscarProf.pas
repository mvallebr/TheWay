unit formBuscarProf;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, ZMySqlQuery, DB, ZQuery, Grids, DBGrids,
  formBase, DM_Main;

type
  TfrmBuscarProf = class(TfrmBase)
    Button1: TButton;
    Button2: TButton;
    srcSelf: TDataSource;
    DBGrid1: TDBGrid;
    edtBusca: TEdit;
    dtsSelf: TZMySqlQuery;
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
    dtsSelfIDLoja: TIntegerField;
    dtsSelfIDProfissional_1: TIntegerField;
    dtsSelfDataChegada: TDateField;
    dtsSelfHoraChegada: TTimeField;
    procedure edtBuscaChange(Sender: TObject);
    procedure edtBuscaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  end;

var
  frmBuscarProf: TfrmBuscarProf;

implementation

{$R *.DFM}

procedure TfrmBuscarProf.edtBuscaChange(Sender: TObject);
begin
    dtsSelf.Filtered := not (trim(edtBusca.Text)='');
    dtsSelf.Filter := 'Nome like"'+trim(edtBusca.Text)+'*"';
    if not dtsSelf.Filtered then dtsSelf.Refresh;
end;

procedure TfrmBuscarProf.edtBuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = VK_UP then dtsSelf.Prior;
    if key = VK_DOWN then dtsSelf.Next;
    if key = VK_PRIOR then dtsSelf.MoveBy(-5);
    if key = VK_NEXT then dtsSelf.MoveBy(5);
    if key = VK_HOME then dtsSelf.First;
    if key = VK_END then dtsSelf.Last;

end;

procedure TfrmBuscarProf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    action:=caHide;
end;

end.

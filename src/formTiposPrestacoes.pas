unit formTiposPrestacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, TWDBRel, Mask;

procedure createfrmTiposPrestacoes;

type
  TfrmTiposPrestacoes = class(TfrmDBDetailBase)
    dtsSelfIDPrestacao: TIntegerField;
    dtsSelfPorcentagemDoValor: TFloatField;
    dtsSelfDiasAposNegocio: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    TabSheet1: TTabSheet;
    TWDBRel1: TTWDBRel;
    dtsSelfDescricao: TStringField;
    Label5: TLabel;
    DBText4: TDBText;
    dtsSelfIDMeioPagamento: TIntegerField;
    srcMeioPagamento: TDataSource;
    dtsMeioPagamento: TZMySqlTable;
    dtsMeioPagamentoIDMeioPagamento: TIntegerField;
    dtsMeioPagamentoDescricao: TStringField;
    dtsMeioPagamentoEntraEmCaixa: TIntegerField;
    Label6: TLabel;
    DBText5: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposPrestacoes: TfrmTiposPrestacoes;

implementation

{$R *.dfm}

procedure createfrmTiposPrestacoes;
begin
    if (frmTiposPrestacoes=nil) then
        frmTiposPrestacoes:=TfrmTiposPrestacoes.Create(Application);
    frmTiposPrestacoes.Show;
end;

procedure TfrmTiposPrestacoes.FormDestroy(Sender: TObject);
begin
  inherited;
    frmTiposPrestacoes:=nil;
end;

end.

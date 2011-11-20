unit formAberturaFechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, DB, ZQuery, ZMySqlQuery, StdCtrls, ComCtrls, ExtCtrls,
  Gradient, FloatSpinEdit, Buttons, DBCtrls, dbcgrids, Grids, DBGrids;

procedure createfrmAberturaFechamentoCaixa;

type
  TfrmAberturaFechamentoCaixa = class(TfrmBase)
    srcSelf: TDataSource;
    dtsSelf: TZMySqlQuery;
    Label2: TLabel;
    Gradient1: TGradient;
    Panel1: TPanel;
    pgctl: TPageControl;
    tabAbrir: TTabSheet;
    tabFechar: TTabSheet;
    Panel2: TPanel;
    btnAbrir: TBitBtn;
    Label1: TLabel;
    dtsSelfIDAberturaFechamentoCaixa: TIntegerField;
    dtsSelfIDProfissional: TIntegerField;
    dtsSelfAberto: TIntegerField;
    dtsSelfValorCalculadoParaOCaixa: TFloatField;
    dtsSelfValorRealNoCaixa: TFloatField;
    dtsSelfDataHora: TDateTimeField;
    Panel3: TPanel;
    DBText2: TDBText;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    btnFechar: TBitBtn;
    Panel5: TPanel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Panel6: TPanel;
    srcEntradas: TDataSource;
    dtsEntradas: TZMySqlQuery;
    srcSaidas: TDataSource;
    dtsSaidas: TZMySqlQuery;
    dtsEntradassoma: TFloatField;
    Label8: TLabel;
    Label9: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Shape1: TShape;
    Label10: TLabel;
    DBText7: TDBText;
    srcContas: TDataSource;
    dtsContas: TZMySqlQuery;
    dtsSomaContas: TZMySqlQuery;
    FloatField2: TFloatField;
    srcSomaContas: TDataSource;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel8: TPanel;
    grdMeioPag: TDBCtrlGrid;
    DBNavigator1: TDBNavigator;
    Label11: TLabel;
    srcMeioPagamento: TDataSource;
    dtsMeioPagamento: TZMySqlQuery;
    Label12: TLabel;
    DBText8: TDBText;
    Label13: TLabel;
    DBText9: TDBText;
    dtsMeioPagamentoIDMeioPagamento: TIntegerField;
    dtsMeioPagamentoDescricao: TStringField;
    dtsMeioPagamentoEntraEmCaixa: TIntegerField;
    dtsMeioPagamentosoma: TFloatField;
    dtsContasDataComandaPrestada: TDateField;
    dtsContasIDComandaPrestada: TIntegerField;
    dtsContasIDParcela: TIntegerField;
    dtsContasDataVencimento: TDateField;
    dtsContasDataRecebimento: TDateField;
    dtsContasValor: TFloatField;
    dtsContasIDMeioPagamento: TIntegerField;
    dtsContasEstado: TStringField;
    Label14: TLabel;
    DBText10: TDBText;
    srcCaixinhas: TDataSource;
    dtsCaixinhas: TZMySqlQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAbrirClick(Sender: TObject);
    procedure dtsMeioPagamentoAfterScroll(DataSet: TDataSet);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmAberturaFechamentoCaixa: TfrmAberturaFechamentoCaixa;

implementation

{$R *.dfm}

uses unitTheWayUtils, formMain;

procedure createfrmAberturaFechamentoCaixa;
begin
    if frmAberturaFechamentoCaixa=nil then
        frmAberturaFechamentoCaixa:=TfrmAberturaFechamentoCaixa.Create(Application);
    frmAberturaFechamentoCaixa.Show;
end;

procedure TfrmAberturaFechamentoCaixa.ResetFields;
begin
    //Reinicia operações
//    windowstate := wsMaximized;
//    Application.ProcessMessages;
    invalidate;
    refresh;
//    Application.ProcessMessages;

    dtsSelf.Active := true;
    dtsSelf.Refresh;
    tabAbrir.TabVisible  := false;
    tabFechar.TabVisible := false;
    if CaixaEstaAberto then begin
        pgctl.ActivePage := tabFechar;
        dtsEntradas.Active := True;
        dtsSaidas.Active := True;
        dtsMeioPagamento.Active := True;
        dtsSomaContas.Active := True;
        dtsContas.Active := True;
        grdMeioPag.SetFocus;
    end else begin
        pgctl.ActivePage := tabAbrir;
        dtsEntradas.Active := False;
        dtsSaidas.Active := False;
        dtsMeioPagamento.Active := False;
        dtsSomaContas.Active := False;
        dtsContas.Active := False;
    end;
end;

procedure TfrmAberturaFechamentoCaixa.FormDestroy(Sender: TObject);
begin
  inherited;
    frmAberturaFechamentoCaixa:=nil;
end;

procedure TfrmAberturaFechamentoCaixa.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmAberturaFechamentoCaixa.FormKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = VK_ESCAPE then ResetFields;
end;

procedure TfrmAberturaFechamentoCaixa.btnAbrirClick(Sender: TObject);
var
    Valor:      Real;
    idprof:     integer;
begin
  inherited;
    if MessageDlg('Tem certeza de que deseja abrir o caixa agora?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
            exit;
    end;
    try
        idprof := StrToInt(frmMain.IDprofissionalAtual);
        valor := dtsSelf.FieldByName('ValorRealNoCaixa').asFloat;
        dtsSelf.Insert;
        dtsSelf.FieldByName('IDProfissional').AsInteger := idprof;
        dtsSelf.FieldByName('Aberto').AsInteger := 1;
        dtsSelf.FieldByName('ValorRealNoCaixa').AsFloat := valor;
        dtsSelf.FieldByName('ValorCalculadoParaOCaixa').AsFloat := valor;
        dtsSelf.FieldByName('DataHora').AsDateTime := now;
        dtsSelf.Post;
        dtsSelf.Refresh;
    except
        beep;
        ShowMessage('Erro ao abrir o caixa!');
        exit;
    end;
    ShowMessage('Caixa aberto com sucesso!');
    ResetFields;
end;

procedure TfrmAberturaFechamentoCaixa.dtsMeioPagamentoAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
    if dtsMeioPagamento.IsEmpty then exit;
    dtsContas.Filter := 'IDMeioPagamento='+IntToStr(dtsMeioPagamento.FieldByName('IDMeioPagamento').AsInteger);
    dtsContas.Filtered := true;
end;

procedure TfrmAberturaFechamentoCaixa.btnFecharClick(Sender: TObject);
var
    Valor:      Real;
    idprof:     integer;
begin
  inherited;
    if MessageDlg('Tem certeza de que deseja fechar o caixa agora?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
            exit;
    end;
    try
        //Desativa todas as contas, a fim de ficar mais rápido
        dtsEntradas.Active := False;
        dtsSaidas.Active := False;
        dtsMeioPagamento.Active := False;
        dtsSomaContas.Active := False;
        dtsContas.Active := False;
        //ID do profissional atual
        idprof := StrToInt(frmMain.IDprofissionalAtual);
        //Calcula o valor
        valor := dtsSelf.FieldByName('ValorRealNoCaixa').asFloat;
        if not dtsEntradas.IsEmpty then
            valor := valor + dtsEntradas.FieldByName('soma').asFloat;
        if not dtsSaidas.IsEmpty then
            valor := valor - dtsSaidas.FieldByName('soma').asFloat;
        if not dtsCaixinhas.IsEmpty then
            valor := valor + dtsCaixinhas.FieldByName('soma').asFloat;
        if not dtsSomaContas.IsEmpty then
            valor := valor + dtsSomaContas.FieldByName('soma').asFloat;
        //Insere
        dtsSelf.Insert;
        dtsSelf.FieldByName('IDProfissional').AsInteger := idprof;
        dtsSelf.FieldByName('Aberto').AsInteger := 0;
        dtsSelf.FieldByName('ValorRealNoCaixa').AsFloat := valor;
        dtsSelf.FieldByName('ValorCalculadoParaOCaixa').AsFloat := valor;
        dtsSelf.FieldByName('DataHora').AsDateTime := now;
        dtsSelf.Post;
        dtsSelf.Refresh;
    except
        beep;
        ShowMessage('Erro ao fechar o caixa!');
        dtsEntradas.Active := True;
        dtsSaidas.Active := True;
        dtsMeioPagamento.Active := True;
        dtsSomaContas.Active := True;
        dtsContas.Active := True;
        exit;
    end;
    ShowMessage('Caixa fechado com sucesso!');
    ResetFields;
end;

end.

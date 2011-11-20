unit formContasAReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, Gradient, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,
  Buttons, ComCtrls, DB, ZQuery, ZMySqlQuery, ToolWin, ZFilterDlg, Spin,
  ZTableBox, FloatSpinEdit, DM_Main;

procedure   createfrmContasAReceber;

type
  TfrmContasAReceber = class(TfrmBase)
    Gradient1: TGradient;
    lbTitulo: TLabel;
    Panel1: TPanel;
    pgctl: TPageControl;
    tabParcelas: TTabSheet;
    Panel12: TPanel;
    Label26: TLabel;
    tabFiltro: TTabSheet;
    srcParcelas: TDataSource;
    dtsParcelas: TZMySqlTable;
    dtsParcelasDataComandaPrestada: TDateField;
    dtsParcelasIDComandaPrestada: TIntegerField;
    dtsParcelasIDParcela: TIntegerField;
    dtsParcelasDataVencimento: TDateField;
    dtsParcelasValor: TFloatField;
    dtsParcelasIDMeioPagamento: TIntegerField;
    dtsParcelasEstado: TStringField;
    Panel2: TPanel;
    Label2: TLabel;
    dtsParcelasDataRecebimento: TDateField;
    grdContas: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label25: TLabel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    edtDataComandaMa: TDateTimePicker;
    edtDataComandaMe: TDateTimePicker;
    chkDataComandaMa: TCheckBox;
    chkDataComandaMe: TCheckBox;
    GroupBox4: TGroupBox;
    chkNumeroComanda: TCheckBox;
    GroupBox2: TGroupBox;
    edtDataVencimentoMa: TDateTimePicker;
    edtDataVencimentoMe: TDateTimePicker;
    chkDataVencimentoMa: TCheckBox;
    chkDataVencimentoMe: TCheckBox;
    GroupBox3: TGroupBox;
    edtDataRecebimentoMa: TDateTimePicker;
    edtDataRecebimentoMe: TDateTimePicker;
    chkDataRecebimentoMa: TCheckBox;
    chkDataRecebimentoMe: TCheckBox;
    edtNumeroComanda: TSpinEdit;
    GroupBox5: TGroupBox;
    chkNaoRecebida: TCheckBox;
    chkRecebida: TCheckBox;
    chkSemFundo: TCheckBox;
    GroupBox6: TGroupBox;
    chkValorMa: TCheckBox;
    chkValorMe: TCheckBox;
    edtValorMa: TFloatSpinEdit;
    edtValorMe: TFloatSpinEdit;
    ToolBar1: TToolBar;
    btnRecebida: TToolButton;
    btnNaoRecebida: TToolButton;
    btnSemFundo: TToolButton;
    ToolButton4: TToolButton;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dtsParcelasAfterScroll(DataSet: TDataSet);
    procedure btnRecebidaClick(Sender: TObject);
    procedure btnNaoRecebidaClick(Sender: TObject);
    procedure btnSemFundoClick(Sender: TObject);
    procedure dtsParcelasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    pode_escrever:  boolean;
    procedure ResetFields;
    procedure AplicarFiltro;
  public
    { Public declarations }
    procedure Escolhe_Comanda(DataAbertura: TDateTime; IDComandaPrestada: Integer);
  end;

var
  frmContasAReceber: TfrmContasAReceber;

implementation

{$R *.dfm}

uses unitTheWayUtils, formMain;

procedure   createfrmContasAReceber;
begin
    if frmContasAReceber=nil then
        frmContasAReceber:= TfrmContasAReceber.Create(Application);
    frmContasAReceber.Show;
end;

procedure TfrmContasAReceber.Escolhe_Comanda(DataAbertura: TDateTime; IDComandaPrestada: Integer);
var
    temp :  string;
    ano, mes, dia:  word;
begin
    //Escolha a comanda dada
    temp := '';
    temp := temp + '(IDComandaPrestada='+IntToStr(IDComandaPrestada)+')';
    decodeDate(DataAbertura, ano, mes, dia);
    temp:=temp+' and ';
    temp := temp + '(DataComandaPrestada='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')';
    dtsParcelas.Filter := temp;
//    showmessage(dtsParcelas.Filter);
    dtsParcelas.Filtered := True;
    Application.ProcessMessages;
    dtsParcelas.Refresh;
    pgctl.ActivePage := tabParcelas;
end;

procedure TfrmContasAReceber.ResetFields;
begin
    edtDataVencimentoMa.Date := Date;
    edtDataVencimentoMe.Date := Date;
    edtDataRecebimentoMa.Date := Date;
    edtDataRecebimentoMe.Date := Date;
    edtDataComandaMa.Date := Date;
    edtDataComandaMe.Date := Date;
    pode_escrever:=True;
    processaContasAReceber;
    edtValorMe.Text := FloatToStr(0.0);
    edtValorMa.Text := edtValorMe.Text;
    dtsParcelas.Active := True;
    dtsParcelas.IndexName := 'ESTADO';
    if not verificaAcessoTela('FiltroContasAReceber', frmMain.IDProfissionalAtual) then begin
        pode_escrever:=False;
        btnNaoRecebida.Enabled := False;
        btnSemFundo.Enabled := False;
        tabFiltro.TabVisible := False;
        tabParcelas.TabVisible := False;
        tabFiltro.Enabled := False;
        grdContas.ReadOnly := True;
    end;
    pgctl.ActivePage := tabParcelas;
end;
procedure TfrmContasAReceber.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmContasAReceber.BitBtn2Click(Sender: TObject);
begin
  inherited;
    dtsParcelas.Filter := '';
end;

procedure TfrmContasAReceber.BitBtn1Click(Sender: TObject);
begin
  inherited;
    AplicarFiltro;
    pgctl.ActivePage := tabParcelas;
end;

procedure TfrmContasAReceber.AplicarFiltro;
var
    temp:   string;
    tbol:   boolean;
    tand:   boolean;
    ano, mes, dia:  word;
begin
    //Cria o filtro da tabela de acordo com a configuração do usuário
    temp := '';
    tbol:=false;
    tand:=false;
    //Apenas aplica filtro de estado se houver diferença entre os estados
    if (chkNaoRecebida.Checked<>chkRecebida.Checked) or
    (chkSemFundo.Checked<>chkRecebida.Checked) then begin
        temp := temp + '(';
        if chkNaoRecebida.Checked then begin
            temp := temp + '(ESTADO="N")';
            tbol:=true;
        end;
        if chkRecebida.Checked then begin
            if tbol then temp := temp + ' or ';
            temp := temp + '(ESTADO="R")';
            tbol:=true;
        end;
        if chkSemFundo.Checked then begin
            if tbol then temp := temp + ' or ';
            temp := temp + '(ESTADO="S")';
        end;
        temp := temp + ')';
        tand := true;
    end;
    ///////// Número da comanda
    if (chkNumeroComanda.Checked) then begin
        if tand then temp:=temp+' and ';
        temp := temp + '(IDComandaPrestada='+edtNumeroComanda.Text+')';
        tand := true;
    end;
    ///////// Data da comanda
    if (chkDataComandaMa.Checked) then begin
        decodeDate(edtDataComandaMa.DateTime, ano, mes, dia);
        if tand then temp:=temp+' and ';
        temp := temp + '(DataComandaPrestada>='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')';
        tand := true;
    end;
    if (chkDataComandaMe.Checked) then begin
        decodeDate(edtDataComandaMe.DateTime, ano, mes, dia);
        if tand then temp:=temp+' and ';
        temp := temp + '(DataComandaPrestada<='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')';
        tand := true;
    end;
    ///////// Data de vencimento
    if (chkDataVencimentoMa.Checked) then begin
        decodeDate(edtDataVencimentoMa.DateTime, ano, mes, dia);
        if tand then temp:=temp+' and ';
        temp := temp + '(DataVencimento>='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')';
        tand := true;
    end;
    if (chkDataVencimentoMe.Checked) then begin
        decodeDate(edtDataVencimentoMe.DateTime, ano, mes, dia);
        if tand then temp:=temp+' and ';
        temp := temp + '(DataVencimento<='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')';
        tand := true;
    end;
    ///////// Data de recebimento
    if (chkDataRecebimentoMa.Checked) then begin
        decodeDate(edtDataRecebimentoMa.DateTime, ano, mes, dia);
        if tand then temp:=temp+' and ';
        temp := temp + '(DataRecebimento>='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')';
        tand := true;
    end;
    if (chkDataRecebimentoMe.Checked) then begin
        decodeDate(edtDataRecebimentoMe.DateTime, ano, mes, dia);
        if tand then temp:=temp+' and ';
        temp := temp + '(DataRecebimento<='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')';
        tand := true;
    end;
    ///////// Valor da parcela
    if (chkValorMa.Checked) then begin
        if tand then temp:=temp+' and ';
        temp := temp + '(Valor>='+commaToPoint(FloatToStr(edtValorMa.Value))+')';
        tand := true;
    end;
    if (chkValorMe.Checked) then begin
        if tand then temp:=temp+' and ';
        temp := temp + '(Valor<='+commaToPoint(FloatToStr(edtValorMe.Value))+')';
    end;
//    ShowMessage(temp);
    try
        dtsParcelas.Filter := temp;
        dtsParcelas.Filtered := True;
        dtsParcelas.Refresh;
    except
        beep;
    end;
end;

procedure TfrmContasAReceber.FormDestroy(Sender: TObject);
begin
  inherited;
    frmContasAReceber := nil;
end;

procedure TfrmContasAReceber.dtsParcelasAfterScroll(DataSet: TDataSet);
begin
  inherited;
    btnRecebida.Down := False;
    btnNaoRecebida.Down := False;
    btnSemFundo.Down := False;
    if dtsParcelas.IsEmpty then exit;
    if not dtsParcelas.Active then exit;
    if UpperCase(dtsParcelas.FieldByName('Estado').AsString) = 'R' then
        btnRecebida.Down := true;
    if UpperCase(dtsParcelas.FieldByName('Estado').AsString) = 'N' then
        btnNaoRecebida.Down := true;
    if UpperCase(dtsParcelas.FieldByName('Estado').AsString) = 'S' then
        btnSemFundo.Down := true;
    btnRecebida.Enabled:= not btnRecebida.Down;
    btnNaoRecebida.Enabled:= (not btnNaoRecebida.Down) and  pode_escrever;
    btnSemFundo.Enabled:= (not btnSemFundo.Down) and pode_escrever;
end;

procedure TfrmContasAReceber.btnRecebidaClick(Sender: TObject);
begin
  inherited;
    if btnRecebida.Down then exit;
    if dtsParcelas.IsEmpty then exit;
    dtsParcelas.Edit;
    dtsParcelas.FieldByName('Estado').AsString := 'R';
    dtsParcelas.FieldByName('DataRecebimento').AsDateTime := date;
    dtsParcelas.Post;
end;

procedure TfrmContasAReceber.btnNaoRecebidaClick(Sender: TObject);
begin
  inherited;
    if btnNaoRecebida.Down then exit;
    if dtsParcelas.IsEmpty then exit;
    dtsParcelas.Edit;
    dtsParcelas.FieldByName('Estado').AsString := 'N';
    dtsParcelas.Post;
end;

procedure TfrmContasAReceber.btnSemFundoClick(Sender: TObject);
begin
  inherited;
    if btnSemFundo.Down then exit;
    if dtsParcelas.IsEmpty then exit;
    dtsParcelas.Edit;
    dtsParcelas.FieldByName('Estado').AsString := 'S';
    dtsParcelas.Post;
end;

procedure TfrmContasAReceber.dtsParcelasAfterPost(DataSet: TDataSet);
begin
  inherited;
    dtsParcelasAfterScroll(DataSet);
end;

end.













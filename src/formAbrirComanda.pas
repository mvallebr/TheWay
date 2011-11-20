unit formAbrirComanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, Gradient, Qt, Buttons, ZMySqlQuery, strutils,
  ExtCtrls;

procedure createfrmAbrirComanda;

type
  TfrmAbrirComanda = class(TfrmBase)
    Gradient1: TGradient;
    Label2: TLabel;
    lbLegenda: TLabel;
    edtEntrada: TEdit;
    lbCliente: TLabel;
    lbCracha: TLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Panel1: TPanel;
    chkCliente: TCheckBox;
    btnBuscar: TBitBtn;
    btnCadastrarCliente: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnCadastrarClienteClick(Sender: TObject);
    procedure edtEntradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    idcliente:  integer;
    idprof:     integer;
    nome_cliente:   string;
    idcracha:  integer;
    buscando:   boolean;
    procedure ResetFields;
    procedure update_labels;
  public
    { Public declarations }
  end;

var
  frmAbrirComanda: TfrmAbrirComanda;

const
    caption_cliente='Cliente: ';
    caption_profissional='Profissional: ';
    caption_cracha='Crachá de comanda: ';

implementation

{$R *.dfm}

uses formBuscarCliente, formMain, DM_main, unitTheWayUtils,
    formCadastrarCliente;

procedure createfrmAbrirComanda;
begin
   if (frmAbrirComanda=nil) then
      frmAbrirComanda:= TfrmAbrirComanda.create(Application);
   frmAbrirComanda.show;
end;

procedure TfrmAbrirComanda.ResetFields;
begin
    if not CaixaEstaAberto then begin
        beep;
        ShowMessage('O caixa não está aberto. Abra o caixa primeiro!');
    end;
    edtEntrada.Clear;
    chkCliente.Checked := False;
//    lbProfissional.Caption := caption_profissional;
    lbCliente.Caption := caption_cliente;
    lbCracha.Caption := caption_cracha;
    idcracha:=0;
    idcliente:=0;
    idprof:=0;
    nome_cliente:='';
    edtEntrada.SetFocus;
    update_labels;
    buscando:=False;
    btnCadastrarCliente.Visible := frmMain.logged;
    if frmMain.logged then begin
        if not verificaAcessoTela('Cadastrarcliente1', frmMain.IDProfissionalAtual) then begin
            btnCadastrarCliente.Visible := False;
        end;
    end;
end;

procedure TfrmAbrirComanda.FormDestroy(Sender: TObject);
begin
  inherited;
    frmAbrirComanda:=nil;
end;

procedure TfrmAbrirComanda.FormActivate(Sender: TObject);
begin
  inherited;
    if not buscando then ResetFields;
end;

procedure TfrmAbrirComanda.btnBuscarClick(Sender: TObject);
var
    frmBusca:   TfrmBuscarCliente;
begin
  inherited;
    buscando:=True;
    edtEntrada.Enabled := False;
    //Abre a tela de busca de cliente e espera retorno
    frmMain.disable_shortcuts := True;
    frmBusca := TfrmBuscarCliente.Create(Self);
    frmBusca.FormStyle := fsNormal;
    try
        frmBusca.Visible := False;
        frmBusca.ShowModal;
        if frmBusca.ModalResult = mrOk then begin
            if not frmBusca.dtsSelf.IsEmpty then begin
                nome_cliente := frmBusca.dtsSelf.fieldbyname('Nome').AsString;
                idcliente := frmBusca.dtsSelf.fieldbyname('IDCliente').AsInteger;
                lbCliente.Caption := caption_cliente + nome_cliente;
                update_labels;
            end else begin
                ShowMessage('Nenhum cliente selecionado!');
                beep;
            end;
        end;
    finally
        WindowState:=wsMaximized;
        refresh;
        invalidate;
        frmBusca.Release;
        frmMain.disable_shortcuts := False;
        Application.ProcessMessages;
        buscando:=False;
        Application.ProcessMessages;
        edtEntrada.Enabled := True;
        edtEntrada.SetFocus;
    end;
end;

procedure TfrmAbrirComanda.update_labels;
begin
    if (lbcliente.caption=caption_cliente) then
        lbLegenda.caption:='Passe o código de barras no cartão do cliente ou tecle F6 para buscar pelo nome.';
//    if (lbprofissional.Caption=caption_profissional) then
//        lbLegenda.caption:='Passe o código de barras em seu crachá!';
    if (lbcracha.Caption=caption_cracha) then
        lbLegenda.caption:='Passe o código de barras no crachá de comanda a ser aberto!';
    if (lbcliente.caption<>caption_cliente)
        //and (lbprofissional.Caption<>caption_profissional)
        and (lbcracha.Caption<>caption_cracha) then
        lbLegenda.caption:='Tecle <F5> para informar se é ou não cliente e tecle <ENTER> para finalizar a abertura da comanda.';
end;
procedure TfrmAbrirComanda.btnCadastrarClienteClick(Sender: TObject);
begin
  inherited;
    if not verificaAcessoTela('Cadastrarcliente1', frmMain.IDProfissionalAtual) then begin
        beep;
        ShowMessage('Você não tem acesso para cadastrar clientes!');
        exit;
    end;
    buscando:=True;
    edtEntrada.Enabled := False;
    //Abre a tela de busca de cliente e espera retorno
    frmMain.disable_shortcuts := True;
    frmCadastrarCliente := TfrmCadastrarCliente.Create(Self);
    frmCadastrarCliente.FormStyle := fsNormal;
    Application.ProcessMessages;
    try
        frmCadastrarCliente.Visible := False;
        frmCadastrarCliente.ShowModal;
        if frmCadastrarCliente.ModalResult = mrOk then begin
            if not frmCadastrarCliente.dtsSelf.IsEmpty then begin
                idcliente:=frmCadastrarCliente.dtsSelf.FieldByName('IDCliente').AsInteger;
                nome_cliente:=frmCadastrarCliente.dtsSelf.FieldByName('Nome').AsString;
                lbCliente.Caption:=caption_cliente+nome_cliente;
                update_labels;
            end;
        end;
    finally
        WindowState:=wsMaximized;
        refresh;
        frmMain.disable_shortcuts := False;
        Application.ProcessMessages;
        buscando:=False;
        Application.ProcessMessages;
        edtEntrada.Enabled := True;
        edtEntrada.SetFocus;
        frmCadastrarCliente.Release;
    end;
end;

procedure TfrmAbrirComanda.edtEntradaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
    tipo:   string;
    dts:    TZMysqlQuery;
    ano, mes, dia:  word;
    hora, minuto, segundo, msegundo:  word;
begin
  inherited;
    //Só permite teclas numéricas
    case key of
      Key_A..Key_B, Key_D..Key_O, Key_Q..Key_Z: begin
         edtEntrada.Clear;
         exit;
      end;
    end;

    if Key = VK_F5 then
        chkCliente.Checked := not chkCliente.Checked;
    if Key = VK_F6 then
        btnBuscarClick(Sender);
    if frmMain.logged then begin
        if Key = VK_F7 then
            btnCadastrarClienteClick(Sender);
    end;
    if key = VK_ESCAPE then ResetFields;
    if (key <> 13) and (key<>9) then exit;
    edtEntrada.text:=trim(edtEntrada.text);
    edtEntrada.text := processaCodigo(edtEntrada.text);
    if buscando then exit; //Busca de cliente está sendo realizada

    //Verifica tamanho e sai se for diferente de 13
    if (edtEntrada.Text<>'') and (length(edtEntrada.Text)<>13) then begin
        beep;
        edtEntrada.clear;
        exit
    end;
    //Tamanho = 13, ou seja, um código de barras foi digitado.
    //Vamos verificar qual o tipo
    tipo:=leftstr(edtEntrada.text, 2);
    dts:=TZMysqlQuery.Create(Self);
    try
        dts.Database:=dmmain.database;
        dts.Transaction :=dmmain.transaction;
        //Texto em branco = Finalização de operação
        if edtEntrada.Text = '' then begin
            if (lbCliente.Caption=caption_cliente) then begin
                //Só falta digitar o cliente
                edtEntrada.Enabled := False;
                nome_cliente:=trim(inputbox('Nome do(a) cliente','Qual é o nome do(a) cliente?',''));
                Application.ProcessMessages;
                edtEntrada.Enabled := True;
                edtEntrada.SetFocus;
                lbCliente.Caption:=caption_cliente+nome_cliente;
            end;
            if (lbCliente.Caption=caption_cliente) or
                //(lbProfissional.Caption=caption_profissional) or
                (lbCracha.Caption = caption_cracha) then begin
                edtEntrada.Clear;
                beep;
                update_labels;
                exit;
            end;
            //Última verificação, caixa tem de estar aberto!
            if not CaixaEstaAberto then begin
                beep;
                ShowMessage('O caixa deve estar aberto para que seja possível abrir a comanda! Utilize a tela de abertura de caixa primeiro.');
                exit;
            end;
            //Abre a comanda
            dts.active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('Insert into comandas set');
            decodedate(date, ano, mes, dia);
            dts.Sql.Add('DataAbertura='+format('"%.4d-%.2d-%.2d", ', [ano, mes, dia]));
            decodetime(time, hora, minuto, segundo, msegundo);
            dts.Sql.Add('HoraAbertura='+format('"%.2d:%.2d:%.2d", ', [hora, minuto, segundo]));
            dts.Sql.Add('IDLoja='+IntToStr(DMMain.options.IDLoja)+', ');
            dts.Sql.Add('IDCracha='+IntToStr(idcracha)+', ');
            dts.Sql.Add('IDCliente='+IntToStr(idcliente)+', ');
            dts.Sql.Add('IDProfissional='+IntToStr(idprof)+', ');
            if chkCliente.Checked then
                dts.Sql.Add('E_Cliente=1, ')
            else
                dts.Sql.Add('E_Cliente=0, ');
            dts.Sql.Add('NomeCliente="'+nome_cliente+'" ');
            dts.ExecSql;
            ResetFields;
            lbLegenda.Caption := 'Comanda aberta! Pressione ESC para abrir nova comanda.';
        end else if tipo='20' then begin //Profissional
            if not VerificaProfissionalNaLoja(rightstr(edtEntrada.text, 11), DMMain.options.IDLoja) then begin
                beep;
                lbLegenda.caption := 'Profissional não registrou sua chegada. Utilize a tela de chegada de profissional primeiro!';
                edtEntrada.clear;
                exit;
            end;
            dts.active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('select * from profissionais where IDProfissional='+rightstr(edtEntrada.text, 11));
            dts.Active:=true;
            //lbProfissional.Caption:=caption_profissional+dts.FieldByName('Nome').AsString;
            //idprof:=StrToInt(rightstr(edtEntrada.text, 11));
            edtEntrada.clear;
            update_labels;
        end else if tipo='23' then begin //Cliente
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('Select * from clientes where IDCliente='+rightstr(edtEntrada.Text, 11));
            dts.Active := True;
            if dts.IsEmpty then begin
                edtEntrada.Clear;
                lbLegenda.Caption := 'Cadastro de cliente é inválido! Tente novamente.';
            end else begin
                nome_cliente := dts.fieldByName('Nome').AsString;
                lbCliente.Caption := caption_cliente + nome_cliente;
                idcliente := dts.fieldByName('IDCliente').AsInteger;
                update_labels;
            end;
        end else if tipo='22' then begin //Comanda
            dts.Active := False;
            dts.Sql.Clear;
            dts.Sql.Add('select * from crachas,comandas where');
            dts.Sql.Add('(');
            dts.Sql.Add('(crachas.idcracha=comandas.idcracha) ');
            dts.Sql.Add('and (crachas.TextoCodBarras="'+edtEntrada.Text+'") ');
            dts.Sql.Add('and (crachas.EmUsoAtualmente=1) ');
            dts.Sql.Add('and (crachas.IDLoja='+IntToStr(DMMain.options.IDLoja)+') ');
            dts.Sql.Add('and (comandas.IDLoja='+IntToStr(DMMain.options.IDLoja)+') ');
            dts.Sql.Add(')');
            dts.Active := True;
            if not dts.IsEmpty then begin
                edtEntrada.Clear;
                edtEntrada.Enabled := False;
                ShowMessage('Crachá de comanda já em uso ou desativada pela gerente. Tente novamente ou use outro crachá de comanda.');
                Application.ProcessMessages;
                edtEntrada.Enabled := True;
                edtEntrada.SetFocus;
            end else begin
                //Verifica agora se o crachá existe!
                dts.Active := False;
                dts.Sql.Clear;
                dts.Sql.Add('select * from crachas where ');
                dts.Sql.Add('(');
                dts.Sql.Add('(crachas.TextoCodBarras="'+edtEntrada.Text+'") ');
                dts.Sql.Add('and (crachas.EmUsoAtualmente=1) ');
                dts.Sql.Add('and (crachas.IDLoja='+IntToStr(DMMain.options.IDLoja)+') ');
                dts.Sql.Add(')');
                dts.Active := True;
                if dts.IsEmpty then begin
                    edtEntrada.Enabled := False;
                    edtEntrada.Clear;
                    ShowMessage('Crachá de comanda não cadastrado! Fale com a gerente ou use outro crachá.');
                    Application.ProcessMessages;
                    edtEntrada.Enabled := True;
                    edtEntrada.SetFocus;
                end else begin
                    idCracha := dts.fieldByName('IDCracha').AsInteger;
                    lbCracha.Caption := caption_cracha + rightstr(edtEntrada.Text, 11);
                    edtEntrada.Clear;
                end;
            end;
            update_labels;
        end;
    finally
        edtEntrada.Clear;
        dts.Destroy;
    end;
end;

end.

unit formVenderProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formCampoBase, StdCtrls, DB, ZQuery, ZMySqlQuery, Grids,
  DBGrids, Gradient, ExtCtrls, ZImage, strUtils, jpeg, Qt, DBCtrls;

procedure createfrmVenderProduto;

type
  TfrmVenderProduto = class(TfrmCampoBase)
    Gradient1: TGradient;
    lbLegenda: TLabel;
    Label2: TLabel;
    lbProfissional: TLabel;
    lbCliente: TLabel;
    edtEntrada: TEdit;
    srcSelf: TDataSource;
    Label1: TLabel;
    grdProdutos: TDBGrid;
    imgProduto: TZDbImage;
    dtsSelf: TZMySqlQuery;
    imgDefault: TImage;
    dtsSelfDataComanda: TDateField;
    dtsSelfIDComanda: TIntegerField;
    dtsSelfIDProduto: TIntegerField;
    dtsSelfIDProfissional: TIntegerField;
    dtsSelfQtd: TIntegerField;
    dtsSelfIDLoja: TIntegerField;
    dtsSelfPreco: TFloatField;
    dtsSelfDescricao: TStringField;
    dtsSelfFoto: TBlobField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label3: TLabel;
    DBText1: TDBText;
    srcTotal: TDataSource;
    dtsTotal: TZMySqlQuery;
    dtsTotaltotal: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure edtEntradaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtsSelfAfterScroll(DataSet: TDataSet);
    procedure dtsSelfAfterPost(DataSet: TDataSet);
    procedure dtsSelfAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    idprof:     integer;
    idcomanda:  integer;
    datacomanda:TDate;
    qtd:        integer;
    e_cliente:  boolean;
    procedure ResetFields;
    procedure update_product_list;
    procedure deleteCurrentProduct;
  public
    { Public declarations }
  end;

var
  frmVenderProduto: TfrmVenderProduto;
const
    caption_profissional='Profissional: ';
    caption_cliente='Cliente: ';

implementation

uses DM_main, formMain, unitTheWayUtils;

{$R *.dfm}

procedure createfrmVenderProduto;
begin
   if (frmVenderProduto=nil) then
      frmVenderProduto := TfrmVenderProduto.Create(Application);
   frmVenderProduto.Show;
end;

procedure TfrmVenderProduto.FormDestroy(Sender: TObject);
begin
  inherited;
    frmVenderProduto:=nil;
end;

procedure TfrmVenderProduto.ResetFields;
begin
    lbCliente.Caption:=caption_cliente;
    lbProfissional.Caption:=caption_profissional;
    edtEntrada.Text:='';
    edtEntrada.Enabled:=true;
    lbLegenda.Caption:='Passe o código de barras em seu crachá e no crachá de comanda aberta do cliente';
    idprof:=0;
    idcomanda:=0;
    datacomanda:=date;
    update_product_list;
    qtd:=1;
    e_cliente:=false;
end;

procedure TfrmVenderProduto.deleteCurrentProduct;
var
    dts:    TZMysqlQuery;
    dia, mes, ano:  word;
begin
    if dtsSelf.IsEmpty or (not dtsSelf.Active) then begin
        beep;
        exit;
    end;
    dts:=TZMysqlQuery.Create(Self);
    dts.Database:=dmmain.database;
    dts.Transaction :=dmmain.transaction;
    DecodeDate(dtsSelf.FieldByName('DataComanda').AsDateTime, ano, mes, dia);
    try
        dts.Sql.Clear;
        dts.Sql.Add('delete from produtosComandas where ');
        dts.Sql.Add('DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'"');
        dts.Sql.Add('and IDComanda='+dtsSelf.FieldByName('IDComanda').AsString);
        dts.Sql.Add('and IDProfissional='+dtsSelf.FieldByName('IDProfissional').AsString);
        dts.Sql.Add('and IDProduto='+dtsSelf.FieldByName('IDProduto').AsString);
        //Realiza agora a ALTA de estoque
        BaixaDeEstoque(DMMain.options.IDLoja, dtsSelf.FieldByName('IDProduto').asInteger, -dtsSelf.FieldByName('Qtd').asInteger);
        dts.ExecSql;
    finally
        dts.Destroy;
    end;
    dtsSelf.Refresh;
    dtsTotal.Refresh;
    dtsSelf.Last;
end;

procedure TfrmVenderProduto.update_product_list;
var
    dia, mes, ano:  word;
begin
    //Profissional e comanda já devem ter sido fornecidos
    if not ((lbProfissional.Caption<>caption_profissional) and (lbCliente.Caption<>caption_cliente)) then begin
        dtsSelf.Active := false;
        exit;
    end;
    DecodeDate(datacomanda, ano, mes, dia);
    //Constroi o sql a partir do produto
    dtsSelf.Active := false;
    dtsSelf.Sql.Clear;
    dtsSelf.Sql.Add('select produtosComandas.*,produtos.ValorCusto,produtos.Descricao,produtos.Foto from produtosComandas,produtos where');
    dtsSelf.Sql.Add('IDLoja='+IntToStr(DMMain.options.IDLoja));
    dtsSelf.Sql.Add('and DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'"');
    dtsSelf.Sql.Add('and IDComanda='+IntToStr(idcomanda));
//    dtsSelf.Sql.Add('and IDProfissional='+IntToStr(idprof));
    dtsSelf.Sql.Add('and produtos.IDProduto=produtosComandas.IDProduto');
    dtsSelf.Active := true;
    /////////////////////
    //Constrói sql que calcula o total
    dtsTotal.Active := false;
    dtsTotal.Sql.Clear;
    dtsTotal.Sql.Add('select (sum(produtosComandas.Qtd*produtosComandas.Preco)) as total from produtosComandas, produtos where');
    dtsTotal.Sql.Add('IDLoja='+IntToStr(DMMain.options.IDLoja));
    dtsTotal.Sql.Add('and DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'"');
    dtsTotal.Sql.Add('and IDComanda='+IntToStr(idcomanda));
    dtsTotal.Sql.Add('and produtos.IDProduto=produtosComandas.IDProduto');
    dtsTotal.Active := true;
end;
procedure TfrmVenderProduto.edtEntradaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    tipo:   string;
    dts:    TZMysqlQuery;
    idcliente:  integer;
    idcracha:   string;
    idproduto:  integer;
    dia, mes, ano:  word;
    qtd2:       integer;
    qtd_estoque:integer;
    preco:      Real;
begin
  inherited;
    //Só permite teclas numéricas
    case key of
        Key_A..Key_B, Key_D..Key_O, Key_Q..Key_Z: begin
            edtEntrada.Clear;
            exit;
        end;
    end;
    if key = VK_UP then dtsSelf.Prior;
    if key = VK_DOWN then dtsSelf.Next;
    if key = VK_PRIOR then dtsSelf.MoveBy(-5);
    if key = VK_NEXT then dtsSelf.MoveBy(5);
    if key = VK_HOME then dtsSelf.First;
    if key = VK_END then dtsSelf.Last;
    if key = VK_ESCAPE  then ResetFields;
    if key = VK_DELETE  then deleteCurrentProduct;
    if (key <> 13) and (key<>9) then exit;
    edtEntrada.text:=trim(edtEntrada.text);
    edtEntrada.text := processaCodigo(edtEntrada.text);
    if (length(edtEntrada.text)>13) then begin //Não deve ocorrer
        beep;
        edtEntrada.Clear;
        exit;
    end;
    //Deve ser considerado quantidade do próximo produto
    if edtEntrada.Text = '' then exit;
    if (length(edtEntrada.text)<13) then begin
        try
            qtd:=StrToInt(edtEntrada.Text);
            if qtd<=0 then begin
                beep;
                edtEntrada.Clear;
                ShowMessage('A quantidade não pode ser menor que 1 (um) !!!');
                exit;
            end;
        except
            beep;
            edtEntrada.Clear;
            edtEntrada.Enabled := false;
            ShowMessage('A quantidade digitada é inválida!');
            Application.ProcessMessages;
            edtEntrada.Enabled := True;
            exit;
        end;
        lbLegenda.Caption := 'Quantidade: ' + IntToStr(Qtd)+ #13#10+' Passe o código de barras no produto!';
        edtEntrada.Clear;
        exit;
    end;
    //Tamanho = 13, ou seja, um código de barras foi digitado.
    //Vamos verificar qual o tipo
    tipo:=leftstr(edtEntrada.text, 2);
//    ShowMessage(tipo);
    dts:=TZMysqlQuery.Create(Self);
    dts.Database:=dmmain.database;
    dts.Transaction :=dmmain.transaction;
    try
        if tipo='20' then begin //Profissional
            qtd:=1;
            lbLegenda.Caption:='';
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
            if (dts.fieldbyname('Auxiliar').AsInteger=1) then begin //é Auxiliar
                if (not DMMain.options.AuxiliarPodeVenderProduto) then begin
                    edtEntrada.clear;
                    lbLegenda.Caption := 'Erro: Auxiliares não estão autorizados a vender produtos.';
                    beep;
                    exit;
                end;
            end;
            lbProfissional.Caption:=caption_profissional+dts.fieldbyname('Nome').AsString;
            idprof:=StrToInt(rightstr(edtEntrada.text, 11));
            update_product_list;
            if (lbCliente.Caption <> caption_cliente) then
                lbLegenda.Caption := 'Passe o código de barras em um produto'
            else
                lbLegenda.Caption := 'Passe o código de barras no crachá de comanda da cliente';
        end else if tipo='22' then begin //Comanda
            qtd:=1;
            dts.active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('select * from crachas ');
            dts.Sql.Add(' where TextoCodBarras='+edtEntrada.text);
            dts.Sql.Add(' and IDLoja='+IntToStr(DMMain.options.idloja));
            dts.Active:=true;
            if dts.IsEmpty then begin
                beep;
                lbLegenda.Caption := 'Crachá de comanda não cadastrado!';
                edtEntrada.Clear;
                exit;
            end;
            idcracha:=dts.fieldbyname('IDCracha').AsString;
            dts.active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('select * from comandas ');
            dts.Sql.Add(' where IDLoja='+IntToStr(DMMain.options.idloja));
            dts.Sql.Add(' and IDCracha='+idcracha);
            dts.Active:=true;
            if dts.IsEmpty then begin
                beep;
                lbLegenda.Caption := 'Comanda não está aberta!';
                edtEntrada.Clear;
                exit;
            end;
            datacomanda:=TDate(dts.fieldbyname('DataAbertura').AsDateTime);
            idcomanda:=dts.fieldbyname('IDComanda').AsInteger;

            lbCliente.Caption:=caption_cliente+dts.fieldbyname('NomeCliente').AsString;
            idcliente:=dts.fieldbyname('IDCliente').AsInteger;
            e_cliente:=(dts.FieldByName('E_Cliente').AsInteger=1);
            if idcliente <> 0 then begin
                //A cliente é cadastrada, use o nome proveniente do cadastro
                dts.active:=false;
                dts.Sql.Clear;
                dts.Sql.Add('select * from clientes where IDCliente='+IntToStr(idcliente));
                dts.Active:=true;
                lbCliente.Caption:=caption_cliente+
                    //dts.fieldbyname('SobreNome').AsString+', '+
                    dts.fieldbyname('Nome').AsString;
            end;
            update_product_list;
            if (lbProfissional.Caption <> caption_profissional) then
                lbLegenda.Caption := 'Passe o código de barras em um produto'
            else
                lbLegenda.Caption := 'Passe o código de barras em seu crachá';
        end else if leftstr(tipo, 1)<> '2' then begin //Tudo que não começa com 2 é produto
            if ((lbProfissional.Caption=caption_profissional) or (lbCliente.Caption=caption_cliente)) then begin
                edtEntrada.Clear;
                lbLegenda.Caption := 'Informe primeiro o profissional e a comanda';
                beep;
                exit;
            end;
            //Adiciona produto na lista
            dts.active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('select IDProduto,CodBarras,ValorCusto from produtos ');
            dts.Sql.Add('where CodBarras='+edtEntrada.Text);
            dts.active:=true;
            if dts.RecordCount<=0 then begin
                beep;
                edtEntrada.Clear;
                lbLegenda.Caption := 'Produto inexistente!';
                exit;
            end;
            idproduto:=dts.fieldbyName('IDProduto').AsInteger;
            preco:=dts.fieldbyName('ValorCusto').AsFloat;
            //Verifica produto no estoque
            if not podeVenderProdutoEmEstoque(DMMain.options.IDLoja, idproduto, qtd_estoque) then begin
                beep;
                edtEntrada.Clear;
                lbLegenda.Caption := 'Produto não consta em estoque!';
                exit;
            end;
            //Verifica se já existe algum produto na lista
            dts.active:=false;
            DecodeDate(datacomanda, ano, mes, dia);
            dts.Sql.Clear;
            dts.Active := false;
            dts.Sql.Add('select * from produtosComandas where');
            dts.Sql.Add('IDProfissional='+IntToStr(idprof));
            dts.Sql.Add('and DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'" ');
            dts.Sql.Add('and IDComanda='+IntToStr(idcomanda));
            dts.Sql.Add('and IDProduto='+IntToStr(idproduto));
            dts.Active := true;
            //Adiciona produto na lista ou atualiza quantidade, caso o produto já exista
            if dts.IsEmpty then begin
                if not DMMain.options.PermiteVendaSemEstoque then begin
                    if qtd>qtd_estoque then begin
                        beep;
                        edtEntrada.Clear;
                        lbLegenda.Caption := 'Existem apenas '+IntToStr(qtd_estoque)+' unidades desse produto em estoque!';
                        exit;
                    end;
                end;
                dts.Active := false;
                dts.Sql.Clear;
                dts.Sql.Add('insert into produtosComandas set');
                dts.Sql.Add('IDProfissional='+IntToStr(idprof)+',');
                dts.Sql.Add('IDLoja='+IntToStr(DMMain.options.IDLoja)+',');
                dts.Sql.Add('DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'" ,');
                dts.Sql.Add('IDComanda='+IntToStr(idcomanda)+',');
                dts.Sql.Add('IDProduto='+IntToStr(idproduto)+',');
                dts.Sql.Add('Qtd='+IntToStr(qtd)+',');
                if e_cliente then
                    dts.Sql.Add('Preco='+
                        commaToPoint(FloatToStr(
                        preco*DMMain.options.porc_clientes
                        *(1-DMMain.options.descontos[dayofweek(date)])
                        )))
                else
                    dts.Sql.Add('Preco='+
                        commaToPoint(FloatToStr(
                        preco*DMMain.options.porc_n_clientes
                        *(1-DMMain.options.descontos[dayofweek(date)])
                        )));
                dts.ExecSql;
            end else begin
                qtd2:= dts.FieldByName('Qtd').AsInteger;
                if not DMMain.options.PermiteVendaSemEstoque then begin
                    if qtd>qtd_estoque then begin
                        beep;
                        edtEntrada.Clear;
                        lbLegenda.Caption := 'Existem apenas '+IntToStr(qtd_estoque)+' unidades desse produto em estoque!';
                        exit;
                    end;
                end;
                dts.Active := false;
                dts.Sql.Clear;
                dts.Sql.Add('update produtosComandas');
                dts.Sql.Add('set Qtd='+IntToStr(qtd+qtd2));
                dts.Sql.Add('where ((IDProfissional='+IntToStr(idprof)+')');
                dts.Sql.Add('and (DataComanda='+format('"%.4d-%.2d-%.2d")',[ano, mes, dia]));
                dts.Sql.Add('and (IDComanda='+IntToStr(idcomanda)+')');
                dts.Sql.Add('and (IDProduto='+IntToStr(idproduto)+'))');
                dts.ExecSql;
            end;
            //Realiza agora a baixa de estoque
            BaixaDeEstoque(DMMain.options.IDLoja, idproduto, qtd);

            dtsSelf.Refresh;
            dtsTotal.Refresh;
            dtsSelf.Last;
            qtd:=1;
            lbLegenda.Caption := 'Produto adicionado';
        end;
    finally
        edtEntrada.Clear;
        dts.Destroy;
    end;
    edtEntrada.Clear;
end;

procedure TfrmVenderProduto.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;

end;

procedure TfrmVenderProduto.FormCreate(Sender: TObject);
begin
  inherited;
    imgDefault.Width := grdProdutos.Left + grdProdutos.Width - imgDefault.Left;
    imgDefault.Height:= imgProduto.Height;
end;

procedure TfrmVenderProduto.dtsSelfAfterScroll(DataSet: TDataSet);
begin
  inherited;
    imgProduto.Visible := not dtsSelf.FieldByName('Foto').IsNull;
end;

procedure TfrmVenderProduto.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
    imgProduto.Visible := not dtsSelf.FieldByName('Foto').IsNull;
end;

procedure TfrmVenderProduto.dtsSelfAfterOpen(DataSet: TDataSet);
begin
  inherited;
    imgProduto.Visible := not dtsSelf.FieldByName('Foto').IsNull;
end;

end.

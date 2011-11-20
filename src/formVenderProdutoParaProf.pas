unit formVenderProdutoParaProf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, Gradient, ExtCtrls, ZMysqlQuery, strUtils;

procedure createfrmVenderProdutoParaProf;

type
  TfrmVenderProdutoParaProf = class(TfrmBase)
    Label2: TLabel;
    Gradient1: TGradient;
    edtEntrada: TEdit;
    lbProfissional: TLabel;
    lbProduto: TLabel;
    lbLegenda: TLabel;
    lbQuantidade: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    lbPreco: TLabel;
    Label4: TLabel;
    lbPrecoTotal: TLabel;
    Bevel1: TBevel;
    Bevel4: TBevel;
    Bevel2: TBevel;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtEntradaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    quantidade: integer;
    preco, total:   Real;
    idprof:     integer;
    idprod:     integer;
    procedure ResetFields;
    procedure update_labels;
    procedure recalc_preco;
  public
    { Public declarations }
  end;

var
  frmVenderProdutoParaProf: TfrmVenderProdutoParaProf;

const
    caption_profissional='Profissional: ';
    caption_produto='Produto: ';

implementation

{$R *.dfm}

uses unitTheWayUtils, DM_main, formMain;

procedure createfrmVenderProdutoParaProf;
begin
   if (frmVenderProdutoParaProf=nil) then
      frmVenderProdutoParaProf:= TfrmVenderProdutoParaProf.create(Application);
   frmVenderProdutoParaProf.Show;
end;

procedure TfrmVenderProdutoParaProf.ResetFields;
begin
    lbProfissional.Caption := caption_profissional;
    quantidade:=1;
    preco:=0.0;
    total:=0.0;
    idprof:=0;
    idprod:=0;
    recalc_preco;
    update_labels;
end;

procedure TfrmVenderProdutoParaProf.update_labels;
begin
    if (lbProfissional.caption=caption_profissional) then
        lbLegenda.Caption := 'Passe o código de barras no crachá do profissional que está comprando o produto'
    else if (lbProduto.caption=caption_produto) then
        lbLegenda.Caption := 'Passe o código de barras no produto a ser comprado pelo profissional ou digite a quantidade'
    else
        lbLegenda.Caption := 'Tecle <ENTER> sem digitar nada para concluir a venda';
end;

procedure TfrmVenderProdutoParaProf.FormDestroy(Sender: TObject);
begin
  inherited;
    frmVenderProdutoParaProf:=nil;
end;

procedure TfrmVenderProdutoParaProf.recalc_preco;
begin
    total := preco * quantidade;
    lbPrecoTotal.Caption := format('%m',[total]);
    lbPreco.Caption := format('%f',[preco]);
    lbQuantidade.Caption := format('%d',[Quantidade]);
end;

procedure TfrmVenderProdutoParaProf.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmVenderProdutoParaProf.edtEntradaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
    dts:    TZMysqlQuery;
    dia, mes, ano:  word;
    hora, minuto, segundo, msegundo:    word;
    qtd_estoque:    integer;
begin
  inherited;
    if key=VK_ESCAPE then ResetFields;
    if (key<>13) and (key<>9) then exit;
    edtEntrada.Text:=trim(edtEntrada.Text);
    edtEntrada.text := processaCodigo(edtEntrada.text);
    dts:=TZMysqlQuery.Create(Self);
    try
        dts.Database := DMMain.Database;
        dts.Transaction := DMMain.Transaction;
        if edtEntrada.text=''then begin
            //Finaliza operações
            //Primeiro verifica
            if (total=0.0) or (lbProduto.Caption=caption_produto)
            or (lbProfissional.caption=caption_profissional) then begin
                beep;
                edtEntrada.clear;
                update_labels;
                exit;
            end;
            //Finaliza de fato
            decodeDate(date, ano, mes, dia);
            decodeTime(time, hora, minuto, segundo, msegundo);
            dts.Active:=False;
            dts.Sql.Clear;
            dts.Sql.Add('insert into vendasinternas set');
            dts.Sql.Add('IDProfissional='+IntToStr(idprof)+', ');
            dts.Sql.Add('IDProduto='+IntToStr(IDprod)+', ');
            dts.Sql.Add('TotalCobrado='+FloatToStr(total)+', ');
            dts.Sql.Add('Quantidade='+IntToStr(Quantidade)+', ');
            dts.Sql.Add('DataHoraVenda="'+format('%.4d-%.2d-%.2d %.2d:%.2d:%.2d', [ano, mes, dia, hora, minuto, segundo])+'"');
            dts.ExecSql;
            BaixaDeEstoque(DMMain.options.IDLoja, idprod, Quantidade);            
        end;
        if length(edtEntrada.Text)<13 then begin
            //Digitou a quantidade
            try
                quantidade := StrToInt(edtEntrada.Text);
            except
                ShowMessage('Quantidade inválida!');
            end;
            lbQuantidade.Caption := IntToStr(quantidade);
            edtEntrada.Clear;
            recalc_preco;
            exit;
        end;

        if leftStr(edtEntrada.text, 2)='20' then begin
            //Profissional
            try
                idprof := StrToInt(rightStr(edtEntrada.Text, 11));
            except
                ShowMessage('Profissional inválido');
            end;
            if not verificaProfissionalNaLoja(rightStr(edtEntrada.text, 11), DMMain.options.IDLoja) then begin
                edtEntrada.Clear;
                ResetFields;
                lbLegenda.caption:='Profissional não está na loja ou não foi cadastrado, fale com a gerente. <ESC> reinicia operações.';
                exit;
            end;
            dts.Active:=False;
            dts.Sql.Clear;
            dts.Sql.Add('select * from profissionais where IDProfissional='+rightStr(edtEntrada.text, 11));
            dts.Active := True;
            if dts.IsEmpty then begin
                edtEntrada.Clear;
                ResetFields;
                lbLegenda.caption:='Profissional não foi cadastrado, fale com a gerente. <ESC> reinicia operações.';
                exit;
            end;
            lbProfissional.Caption := caption_profissional + dts.fieldByName('Nome').AsString;
            edtEntrada.Clear;
            recalc_preco;
            update_labels;
            exit;
        end else if leftStr(edtEntrada.text, 1)<>'2' then begin
            //Produto
            dts.Active:=False;
            dts.Sql.Clear;
            dts.Sql.Add('select * from produtos where CodBarras="'+edtEntrada.text+'"');
            dts.Active := True;
            if dts.IsEmpty then begin
                edtEntrada.Clear;
                lbLegenda.caption:='Produto inválido ou não cadastrado!';
                exit;
            end;
            idprod:= dts.FieldByName('IDProduto').asInteger;
            preco := dts.FieldByName('ValorCusto').AsFloat * DMMain.options.porc_profissionais;
            //Verifica produto no estoque
            if not podeVenderProdutoEmEstoque(DMMain.options.IDLoja, idprod, qtd_estoque) then begin
                beep;
                ResetFields;
                lbLegenda.Caption := 'Produto não consta em estoque! <ESC> Reinicia.';
                exit;
            end;
            edtEntrada.Clear;
            recalc_preco;
            update_labels;
            exit;
        end;
    finally
        edtEntrada.Clear;
        dts.Destroy;
    end;
end;

end.

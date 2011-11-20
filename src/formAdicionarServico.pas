unit formAdicionarServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formCampoBase, StdCtrls, Gradient, DB, ZQuery, ZMySqlQuery,
  DBCtrls, Grids, DBGrids, Qt, ExtCtrls, strutils;

procedure createfrmAdicionarServico;

type
  TfrmAdicionarServico = class(TfrmCampoBase)
    Gradient1: TGradient;
    edtEntrada: TEdit;
    lbLegenda: TLabel;
    Label2: TLabel;
    lbProfissional: TLabel;
    srcSelf: TDataSource;
    dtsSelf: TZMySqlTable;
    dtsSelfIDCategoriaServico: TIntegerField;
    dtsSelfIDServico: TIntegerField;
    dtsSelfDescricao: TStringField;
    dtsSelfValorMin: TFloatField;
    dtsSelfValorMax: TFloatField;
    dtsSelfComissaoPercentualPadrao: TFloatField;
    dtsSelfDataUltimaAlteracao: TDateField;
    dtsSelfComissaoFixaPadrao: TFloatField;
    DBGrid1: TDBGrid;
    lbCliente: TLabel;
    Label1: TLabel;
    lstAuxiliares: TListBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    lbServico: TLabel;
    DBText1: TDBText;
    procedure FormDestroy(Sender: TObject);
    procedure edtEntradaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure lstAuxiliaresDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    idprof, idcomanda:  integer;
    datacomanda:    TDate;
    idAuxiliares:  TStringList;
    disable_autoreset: boolean;
    procedure ResetFields;
  public
    { Public declarations }
  end;

var
  frmAdicionarServico: TfrmAdicionarServico;
const
    caption_cliente='Cliente: ';
    caption_profissional='Profissional: ';

implementation

uses formMain, DM_main, unitTheWayUtils, formValorServico;

{$R *.dfm}

procedure createfrmAdicionarServico;
begin
   if (frmAdicionarServico=nil) then
      frmAdicionarServico := TfrmAdicionarServico.create(Application);
   frmAdicionarServico.show;
end;

procedure TfrmAdicionarServico.ResetFields;
begin
    if disable_autoreset then exit;
    lbCliente.Caption:=caption_cliente;
    lbProfissional.Caption:=caption_profissional;
    edtEntrada.Clear;
    edtEntrada.Enabled:=true;
    lbLegenda.Caption:='Passe o código de barras em seu crachá e no crachá de comanda aberta do cliente';
    idprof:=0;
    idcomanda:=0;
    datacomanda:=date;
    lstAuxiliares.Clear;
    idAuxiliares.Clear;
    dtsSelf.Active := True;
end;

procedure TfrmAdicionarServico.FormDestroy(Sender: TObject);
begin
  inherited;
    idAuxiliares.Destroy;
    frmAdicionarServico:=nil;
end;

procedure TfrmAdicionarServico.edtEntradaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    tipo:   string;
    dts:    TZMysqlQuery;
    idcliente:  integer;
    idcracha:   string;
    frmAdd: TfrmValorServico;
    dia, mes, ano:  word;
    i:  integer;
    id_servico_comanda: integer;
begin
  inherited;
    //Só permite teclas numéricas
    case key of
        Key_A..Key_B, Key_D..Key_O, Key_Q..Key_Z: begin
            edtEntrada.clear;
            exit;
        end;
    end;
    if key = VK_UP then dtsSelf.Prior;
    if key = VK_DOWN then dtsSelf.Next;
    if key = VK_PRIOR then dtsSelf.MoveBy(-5);
    if key = VK_NEXT then dtsSelf.MoveBy(5);
    if key = VK_ESCAPE  then ResetFields;
    if key = VK_HOME then dtsSelf.First;
    if key = VK_END then dtsSelf.Last;
    if (key <> 13) and (key<>9) then exit;
    if disable_autoreset then exit; //Pressionou enter no valor do serviço
    edtEntrada.text:=trim(edtEntrada.text);
    edtEntrada.text := processaCodigo(edtEntrada.text);
    dts:=TZMysqlQuery.Create(Self);
    dts.Database:=dmmain.database;
    dts.Transaction :=dmmain.transaction;
    try
        if edtEntrada.text='' then begin
            //Enter com entrada nula, terminar operações
            if (lbProfissional.Caption<>caption_profissional) and (lbCliente.Caption<>caption_cliente) and (not dtsSelf.IsEmpty) then begin
                beep;
                disable_autoreset:=True;
                frmAdd:=TfrmValorServico.Create(Self);
                frmAdd.Visible := false;
                frmAdd.edtValor.MaxValue := dtsSelf.FieldByName('ValorMax').AsFloat;
                frmAdd.edtValor.MinValue := dtsSelf.FieldByName('ValorMin').AsFloat;
                frmAdd.edtValor.Value := (frmAdd.edtValor.MaxValue+frmAdd.edtValor.MinValue)/2;
                frmAdd.ShowModal;
                disable_autoreset:=false;
                if frmAdd.ModalResult <> mrOk then begin
                    Application.ProcessMessages;
                    exit;
                end;
                DecodeDate(datacomanda, ano, mes, dia);
                dts.Active := false;
                dts.Sql.Clear;
                dts.Sql.Add('insert into servicosComandas set');
                dts.Sql.Add('IDProfissional='+IntToStr(idprof)+',');
                dts.Sql.Add('DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'" ,');
                dts.Sql.Add('IDComanda='+IntToStr(idcomanda)+',');
                dts.Sql.Add('IDServico='+dtsSelf.FieldByName('IDServico').AsString+',');
                dts.Sql.Add('ValorCobrado='+CommaToPoint(FloatToStr(frmAdd.edtValor.Value)));
                dts.ExecSql;
                dts.Active := false;
                dts.Sql.Clear;
                dts.Sql.Add('select max(IDServicoComanda) as MAXIMO from servicosComandas where');
                dts.Sql.Add('DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'" ');
                dts.Sql.Add('and IDComanda='+IntToStr(idcomanda));
                dts.Active := True;
                id_servico_comanda:=dts.fieldbyname('MAXIMO').AsInteger;
                //Adiciona relação de auxiliares com esse serviço
                for i := 0 to idAuxiliares.Count-1 do begin
                    dts.Active := false;
                    dts.Sql.Clear;
                    dts.Sql.Add('insert into relServicosComandasAuxiliares set');
                    dts.Sql.Add('DataComanda="'+format('%.4d',[ano])+'-'+format('%.2d',[mes])+'-'+format('%.2d',[dia])+'" ,');
                    dts.Sql.Add('IDComanda='+IntToStr(idcomanda)+',');
                    dts.Sql.Add('IDAuxiliar='+idAuxiliares.values[idAuxiliares.Names[i]]+',');
                    dts.Sql.Add('IDServico='+IntToStr(id_servico_comanda));
                    dts.ExecSql;
                end;
                edtEntrada.Clear;
                edtEntrada.Enabled:=true;
                lbLegenda.Caption:='Serviço adicionado à comanda da cliente. Escolha um novo serviço e tecle <ENTER> novamente ou <ESC> para reiniciar! ';
                //Nesse momento a tela de visualização de comanda deve ser aberta.';
                exit;
            end;
        end;
        if (length(edtEntrada.text)>13) then begin //Não deve ocorrer
            beep;
            edtEntrada.Clear;
            exit;
        end;
        //Deve ser considerado número do serviço
        if (length(edtEntrada.text)<13) then begin
            dtsSelf.Filter := 'IDServico='+QuotedStr(edtEntrada.text);
            dtsSelf.FindFirst;
            beep;
            edtEntrada.Clear;
            exit;
        end;
        //Tamanho = 13, ou seja, um código de barras foi digitado.
        //Vamos verificar qual o tipo
        tipo:=leftstr(edtEntrada.text, 2);
        if tipo='20' then begin //Profissional
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
            if (dts.fieldbyname('Auxiliar').AsInteger=0) then begin //é profissional
                lbProfissional.Caption:=caption_profissional+dts.fieldbyname('Nome').AsString;
                idprof:=StrToInt(rightstr(edtEntrada.text, 11));
                //lstAuxiliares.Clear;
            end else begin //é auxiliar
                if lstAuxiliares.Items.IndexOf(dts.fieldbyname('Nome').AsString) = -1 then begin
                    lstAuxiliares.Items.Add(dts.fieldbyname('Nome').AsString);
                    idAuxiliares.Values[dts.fieldbyname('Nome').AsString]:=dts.fieldbyname('IDProfissional').AsString;
                end else begin
                    beep;
                    lbLegenda.Caption := 'Auxiliar já está na lista de participantes do serviço';
                    edtEntrada.Clear;
                    exit;
                end;
            end;
        end else if tipo='22' then begin //Comanda
            dts.active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('select * from crachas ');
            dts.Sql.Add(' where TextoCodBarras='+edtEntrada.text);
            dts.Sql.Add(' and IDLoja='+IntToStr(DMMain.options.idloja));
            dts.Active:=true;
            if dts.IsEmpty then begin
                beep;
                lbLegenda.Caption := 'Comanda não está aberta!';
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
            idcomanda:=dts.fieldbyname('IDComanda').AsInteger;
            datacomanda:=dts.fieldbyname('DataAbertura').AsDateTime;
            lbCliente.Caption:=caption_cliente+dts.fieldbyname('NomeCliente').AsString;
            idcliente:=dts.fieldbyname('IDCliente').AsInteger;
            if idcliente <> 0 then begin
                //A cliente é cadastrada, use o nome proveniente do cadastro
                dts.active:=false;
                dts.Sql.Clear;
                dts.Sql.Add('select * from clientes where IDCliente='+IntToStr(idcliente));
                dts.Active:=true;
                lbCliente.Caption:=caption_cliente+dts.fieldbyname('Nome').AsString;
            end;
        end else if tipo='21' then begin //Serviço
            dtsSelf.Filter := 'IDServico='+rightstr(edtEntrada.text, 11);
            dtsSelf.FindFirst;
            beep;
            edtEntrada.Clear;
            exit;
        end;
    finally
        edtEntrada.Clear;
        dts.Destroy;
    end;
    if (lbProfissional.Caption<>caption_profissional) and (lbCliente.Caption<>caption_cliente) and (not dtsSelf.IsEmpty) then begin
        lbLegenda.Caption:='Tecle <ENTER> para finalizar a operação!';
    end;
    edtEntrada.Clear;
end;

procedure TfrmAdicionarServico.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmAdicionarServico.lstAuxiliaresDblClick(Sender: TObject);
begin
  inherited;
  if lstAuxiliares.ItemIndex>=0 then
    ShowMessage(idAuxiliares.values[lstAuxiliares.Items.Names[lstAuxiliares.ItemIndex]]);
end;

procedure TfrmAdicionarServico.FormCreate(Sender: TObject);
begin
  inherited;
    idAuxiliares:= TStringList.Create;
    disable_autoreset:=false;
end;

end.




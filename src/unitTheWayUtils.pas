unit unitTheWayUtils;

interface

uses SysUtils, ZMySqlQuery, Qforms, QDialogs, strUtils,
    Classes, Dialogs, Controls, Types, IniFiles;

type
TOptions = class
private

protected

public
    IDLoja: Integer;
    AuxiliarPodeVenderProduto:  boolean;
    PermiteVendaSemEstoque:     boolean;
    SubstExplorer:              boolean;
    porc_n_clientes:        Real; //porcentagem que não cliente paga na compra de produto
    porc_clientes:          Real; //porcentagem que cliente paga na compra de produto
    porc_profissionais:     Real; //porcentagem que profissional paga na compra de produto
    porc_uso_em_servicos:   Real; //porcentagem que profissional paga no uso de produto em um servico
    PorcentagemAuxiliar:    Real; //Porcentagem que auxiliar GANHA por ajudar em um serviço
    //Administrador do sistema
    admin_passwd:           string;
    //Database
    ip_dbserver:            string;
    port_dbServer:          integer;
    dbname:                 string;
    dblogin:                string;
    dbpasswd:               string;
    //Descontos em produtos para cada dia da semana. 1 = domingo
    descontos:              array[1..7] of Real;
    constructor Create;
    destructor Destroy; override;
    procedure Load;
    procedure Save;
    procedure setDefault;
    procedure update_all;
published

end;


//function getProfissionalFromText(texto: string; var cargo, idfunc: integer; var erro: string):boolean;
function CommaToPoint(text: String): String;
//Verifica se o id corresponde a um profissional cadastrado
function VerificaProfissionalNaLoja(sidfunc:string; idloja:integer): boolean;
//Verifica se o profissional está na loja
function VerificaProfissional(sidfunc:string): boolean;
function AutenticaProfissional(sidfunc: string; senha: string): boolean;
function VerificaAcessoTela(Nome:string;sidfunc:string): boolean;
//Verifica se o produto pode ser vendido
function podeVenderProdutoEmEstoque(idloja:integer; idproduto: integer; var qtd_estoque: integer): boolean;
procedure BaixaDeEstoque(idloja: integer; idproduto: integer; qtd: integer);
//Move contas que já deveriam ter sido recebidas para recebimentos
procedure processaContasAReceber;
//Verifica se o caixa está aberto e retorna true em caso positivo
function CaixaEstaAberto: boolean;
//Verifica condições necessárias e zera banco de dados
procedure zera_database;
//Função retorna o número de vezes que um dia está em um intervalo de datas.
//Por exemplo, do dia 6 do mês de abril até o dia 9 do mês de outubro, quantas vezes
//ocorreu um dia 5?
function NumVezesDiasEntreDatas(dia: integer; data1, data2: TDateTime):    integer;
//Transforma código interno em código de barras
function processaCodigo(texto:   string): string;

implementation

uses formMain, DM_Main, DateUtils, Registry;

constructor TOptions.Create;
begin
    //
end;
destructor TOptions.Destroy;
begin
    //
    inherited;
end;

procedure TOptions.update_all;
var
  AppIni: TIniFile;
//  valores: TStringList;
begin
//   valores:= TStringList.Create;

   AppIni := TIniFile.Create('SYSTEM.INI');
//   AppIni.CaseSensitive := False;
//   AppIni.ReadSectionValues('BOOT', valores);

   if SubstExplorer then begin

      AppIni.WriteString('BOOT', 'SHELL', 'twloader.exe');
   end else begin
      AppIni.WriteString('BOOT', 'SHELL', 'explorer.exe');
   end;
   AppIni.UpdateFile;
   AppIni.Free;
end;

procedure TOptions.Load;
var
    reg:    TRegistry;
begin
    //Carrega opções a partir do registro do windows
   Reg := TRegistry.Create;
   try
//      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey('\Software\TW', False) then begin
         IDLoja := reg.ReadInteger('IDLoja');
         AuxiliarPodeVenderProduto  := reg.ReadBool('AuxiliarPodeVenderProduto');
         PermiteVendaSemEstoque     := reg.ReadBool('PermiteVendaSemEstoque');
         SubstExplorer              := reg.ReadBool('SubstExplorer');
         porc_n_clientes            := reg.ReadFloat('porc_n_clientes');
         porc_clientes              := reg.ReadFloat('porc_clientes');
         porc_profissionais         := reg.ReadFloat('porc_profissionais');
         porc_uso_em_servicos       := reg.ReadFloat('porc_uso_em_servicos');
         PorcentagemAuxiliar        := reg.ReadFloat('PorcentagemAuxiliar');
         admin_passwd               := IntToStr(reg.ReadInteger('admin_passwd') div 127);
         ip_dbserver                := reg.ReadString('ip_dbserver');
         port_dbserver              := reg.ReadInteger('port_dbserver');
         dbname                     := reg.ReadString('dbname');
         //dblogin := reg.ReadString('dblogin');
         //dbpasswd := reg.ReadString('dbpasswd');
         Descontos[1] := reg.ReadFloat('descontoDomingo');
         Descontos[2] := reg.ReadFloat('descontoSegunda');
         Descontos[3] := reg.ReadFloat('descontoTerca');
         Descontos[4] := reg.ReadFloat('descontoQuarta');
         Descontos[5] := reg.ReadFloat('descontoQuinta');
         Descontos[6] := reg.ReadFloat('descontoSexta');
         Descontos[7] := reg.ReadFloat('descontoSabado');
         Reg.CloseKey;
      end;
    finally
        Reg.Free;
    end;
end;
procedure TOptions.Save;
var
    reg:    TRegistry;
begin
    //Salva opções para registro do ruindows
    Reg := TRegistry.Create;
   try
//      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey('\Software\TW', True) then begin
         reg.WriteInteger('IDLoja', IDLoja);
         reg.WriteBool('AuxiliarPodeVenderProduto',AuxiliarPodeVenderProduto);
         reg.WriteBool('PermiteVendaSemEstoque',PermiteVendaSemEstoque);
         reg.WriteBool('SubstExplorer',SubstExplorer);
         reg.WriteFloat('porc_n_clientes',porc_n_clientes);
         reg.WriteFloat('porc_clientes',porc_clientes);
         reg.WriteFloat('porc_profissionais',porc_profissionais);
         reg.WriteFloat('porc_uso_em_servicos',porc_uso_em_servicos);
         reg.WriteFloat('PorcentagemAuxiliar',PorcentagemAuxiliar);
         reg.WriteInteger('admin_passwd',StrToInt(admin_passwd)*127);
         reg.WriteString('ip_dbserver',ip_dbserver);
         reg.WriteInteger('port_dbserver',port_dbserver);
         reg.WriteString('dbname',dbname);
         //reg.WriteString('dblogin',dblogin);
         //reg.WriteString('dbpasswd',dbpasswd);
         reg.WriteFloat('descontoDomingo',Descontos[1]);
         reg.WriteFloat('descontoSegunda',Descontos[2]);
         reg.WriteFloat('descontoTerca'  ,Descontos[3]);
         reg.WriteFloat('descontoQuarta' ,Descontos[4]);
         reg.WriteFloat('descontoQuinta' ,Descontos[5]);
         reg.WriteFloat('descontoSexta'  ,Descontos[6]);
         reg.WriteFloat('descontoSabado' ,Descontos[7]);
         Reg.CloseKey;
      end;
    finally
        Reg.Free;
    end;
    update_all;
end;
procedure TOptions.setDefault;
var
    i:  integer;
begin
    //Seta variáveis com o valor padrão
    IDLoja:=1;
    AuxiliarPodeVenderProduto:=True;
    PermiteVendaSemEstoque:=true;
    SubstExplorer:=False;
    porc_n_clientes         :=1.7;
    porc_clientes           :=1.5;
    porc_profissionais      :=1.2;
    porc_uso_em_servicos    :=0.5;
    PorcentagemAuxiliar     :=0.05;
    admin_passwd            := '123';
    //Database
    ip_dbserver             := 'localhost';
    port_dbServer           := 3306;
    dbname                  := 'TheWay';
    dblogin                 := 'dbadmin';
    dbpasswd                := 'dbtheway';
    for i := 1 to 7 do
        descontos[i]:=0.0;
end;

function CaixaEstaAberto: boolean;
var
    dts:    TZMysqlQuery;
begin
    dts:=TZMysqlQuery.Create(Application);
    try
        dts.Database:=dmmain.database;
        dts.Transaction :=dmmain.transaction;
        dts.Sql.Clear;
        dts.Sql.Add('select * from aberturafechamentocaixa');
        dts.Sql.Add('order by DataHora Desc LIMIT 1');
        dts.Active := True;
        if dts.IsEmpty then begin
            Result := False; //Por default, considerar o caixa fechado
            exit;
        end;
        if dts.FieldByName('Aberto').AsInteger = 1 then begin
            Result := True;
        end else begin
            Result := False;
        end;
    finally
        dts.Destroy;
    end;
end;

procedure processaContasAReceber;
var
    ano, mes, dia:  word;
    dts:    TZMysqlQuery;
begin
    //Processa contas a receber
    dts:=TZMysqlQuery.Create(Application);
    try
        dts.Database:=dmmain.database;
        dts.Transaction :=dmmain.transaction;
        dts.Sql.Clear;
        dts.Sql.Add('update contasAReceber set ESTADO="R", ');
        decodeDate(date, ano, mes, dia);
        dts.Sql.Add('DataRecebimento='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+' where');
        dts.Sql.Add('(DataVencimento<='+format('"%.4d-%.2d-%.2d"',[ano, mes, dia])+')');
        dts.Sql.Add(' and (ESTADO="N")');
        dts.ExecSql;
    finally
        dts.Destroy;
    end;
end;

procedure BaixaDeEstoque(idloja: integer; idproduto: integer; qtd: integer);
var
    dts:    TZMysqlQuery;
begin
    dts:=TZMysqlQuery.Create(Application);
    dts.Database:=dmmain.database;
    dts.Transaction :=dmmain.transaction;

    dts.active:=false;
    dts.Sql.Clear;
    dts.Sql.Add('select * from estoque ');
    dts.Sql.Add('where IDLoja='+IntToStr(IDLoja));
    dts.Sql.Add('and IDProduto='+IntToStr(idproduto));
    dts.active:=true;
    if dts.isEmpty then begin //Insere quantidade negativa
        dts.active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('insert into estoque set');
        dts.Sql.Add('IDLoja='+IntToStr(idloja)+',');
        dts.Sql.Add('IDProduto='+IntToStr(idproduto)+',');
        dts.Sql.Add('QtdVendivelProfissional=0,');
        dts.Sql.Add('Quantidade=-'+IntToStr(qtd));
        dts.ExecSQL;
    end else begin //Decrementa quantidade no estoque
        qtd := dts.FieldByName('Quantidade').AsInteger-qtd;
        dts.active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('update estoque set');
        dts.Sql.Add('Quantidade='+IntToStr(qtd));
        dts.Sql.Add('where ((IDLoja='+IntToStr(idloja)+')');
        dts.Sql.Add('and (IDProduto='+IntToStr(idproduto)+'))');
        dts.ExecSQL;
    end;
end;

function podeVenderProdutoEmEstoque(idloja:integer; idproduto: integer; var qtd_estoque: integer): boolean;
var
    dts:    TZMysqlQuery;
begin
    dts:=TZMysqlQuery.Create(Application);
    Result:=true;
    try
        dts.Database:=dmmain.database;
        dts.Transaction :=dmmain.transaction;
        dts.active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('select * from estoque ');
        dts.Sql.Add('where IDLoja='+IntToStr(IDLoja));
        dts.Sql.Add('and IDProduto='+IntToStr(idproduto));
        dts.active:=true;
    except
        qtd_estoque:=0;
        Result:=false;
        exit;
    end;
    if not dts.isEmpty then
        qtd_estoque:=dts.FieldByName('Quantidade').AsInteger
    else
        qtd_estoque:=0;
    if (dts.isEmpty) or (qtd_estoque<=0) then
        if not DMMain.options.PermiteVendaSemEstoque then
            Result:=false;
end;

function VerificaProfissionalNaLoja(sidfunc:string; idloja:integer): boolean;
var
    dts: TZMySqlQuery;
begin
    Result:=True;
    dts:=TZMySqlQuery.Create(Application);
    try
        dts.Transaction:=DMMain.Transaction;
        dts.Active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('SELECT IDProfissional, IDLoja');
        dts.Sql.Add('FROM ProfissionaisNaLoja WHERE IDProfissional=' + sidfunc);
        dts.Sql.Add(' AND IDLoja=' + IntToStr(idloja));
        dts.Active:=True;
    except
        Result:=false;
        dts.Destroy;
        exit;
    end;

    if dts.isEmpty then
    begin
      Result:=false;
      dts.Destroy;
      exit;
    end;
    dts.Destroy;
end;

function VerificaProfissional(sidfunc:string): boolean;
var
    dts: TZMySqlQuery;
begin

    Result:=True;
    dts:=TZMySqlQuery.Create(Application);
    try
        dts.Transaction:=DMMain.Transaction;
        dts.Active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('SELECT IDProfissional, ContratadoAtualmente');
        dts.Sql.Add('FROM Profissionais WHERE IDProfissional=' + sidfunc);
        dts.Sql.Add('and ContratadoAtualmente=1');
        dts.Active:=True;
    except
        Result:=false;
        dts.Destroy;
        exit;
    end;
    if dts.isEmpty then
    begin
      ShowMessage('Profissional "'+sidfunc+'" inexistente!');
      Result:=false;
      dts.Destroy;
      exit;
    end;
    dts.Destroy;
end;


function AutenticaProfissional(sidfunc: string; senha: string): boolean;
var
    dts: TZMySqlQuery;
begin
    dts:=TZMySqlQuery.Create(Application);
    try
        if StrToInt(sidfunc)=0 then begin
            Result := (trim(Uppercase(senha))=trim(Uppercase(DMMain.options.admin_passwd)));
            exit;
        end;
        dts.Transaction:=DMMain.Transaction;
        dts.Database:=DMMain.Database;
        dts.Active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('SELECT IDProfissional, Senha, ContratadoAtualmente');
        dts.Sql.Add('FROM Profissionais WHERE IDProfissional='+sidfunc );
        dts.Sql.Add('and ContratadoAtualmente=1');
        dts.Active:=True;
    except
        dts.Destroy;
        Result:=false;
        exit;
    end;

    if dts.isEmpty then
    begin
      dts.Destroy;
      Result:=False;
      exit;
    end;

    if((senha<>dts.FieldByName('Senha').AsString)) then
    begin
      dts.Destroy;
      Result:=False;
      exit;
    end;

    Result:=True;
    dts.Destroy;
end;

function VerificaAcessoTela(Nome:string;sidfunc:string): boolean;
var
    dts: TZMySqlQuery;
begin
    dts:=TZMySqlQuery.Create(Application);
    try
        dts.Database:=DMMain.Database;
        dts.Transaction:=DMMain.Transaction;
        dts.Active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('SELECT *');
        dts.Sql.Add('FROM telas, relgrupossistemasprofissionais, reltelasgrupossistemas');
        dts.Sql.Add('WHERE relgrupossistemasprofissionais.IDProfissional="' + sidfunc +'" AND');
        dts.Sql.Add('reltelasgrupossistemas.IDGrupoSistema=relgrupossistemasprofissionais.IDGrupoSistema AND');
        dts.Sql.Add('telas.Nome="' + Nome + '" AND');
        dts.Sql.Add('telas.Ativa=1 AND');
        dts.Sql.Add('reltelasgrupossistemas.IDTela=telas.IDTela');
        dts.Active:=True;
    except
        dts.Destroy;
        Result:=False;
        exit;
    end;

    if dts.IsEmpty then
    begin
      dts.Destroy;
      Result:=false;
      exit;
    end;

    dts.Destroy;
    Result:=True;
end;


function CommaToPoint(text: String): String;
var
    i:  integer;
    temp:   string;
begin
    i:=1;
    while  i < length(text) do begin
        if text[i]='.' then begin
            temp := leftstr(text, i-1) + RightStr(text, length(text)-i);
            text := temp;
        end;
        Inc(i);
    end;
    for i := 1 to length(text) do begin
        if text[i]=',' then text[i]:='.';
    end;
    Result:=text;
end;

procedure zera_database;
var
    dts: TZMySqlQuery;
begin
    if CaixaEstaAberto then begin
        beep;
        ShowMessage('O caixa não pode estar aberto para reiniciar o banco de dados! Feche-o primeiro.');
        exit;
    end;
    dts:=TZMySqlQuery.Create(Application);
    try
        dts.Database:=DMMain.Database;
        dts.Transaction:=DMMain.Transaction;
        dts.Active:=false;
        dts.Sql.Clear;
        dts.Sql.Add('SELECT *');
        dts.Sql.Add('FROM comandas');
        dts.Active:=True;
        if not dts.IsEmpty then begin
            beep;
            ShowMessage('Existem comanda abertas! Não é possível reiniciar o banco de dados até que não existam comandas abertas!');
            exit;
        end;
        if MessageDlg('ATENÇÃO: Certifique-se de ter impresso todos os relatórios necessários e de ter feito backup do banco de dados! Após o reinicio, os dados não poderão ser recuperados. Tem certeza de que deseja reiniciar os dados?',
            mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
            ShowMessage('Reinicio do banco de dados cancelado!');
            exit;
        end;
        //Reinicia de fato o banco de dados
        try
            //
            dts.Active:=false;
            dts.Sql.Clear;
            dts.Sql.Add('delete from aberturafechamentocaixa');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from caixinhas');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from contasareceber');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from entradascaixa');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from relcontasareceberprofissionais');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from relservicosprestadosauxiliares');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from saidascaixa');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from servicosprestados');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from vendas');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from vendasinternas');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from vendasuso');
            dts.ExecSql;
            ///////Relativas a comandas abertas
            dts.Sql.Clear;
            dts.Sql.Add('delete from comandas');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from parcelascomandas');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from produtoscomandas');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from relservicoscomandasauxiliares');
            dts.ExecSql;
            //
            dts.Sql.Clear;
            dts.Sql.Add('delete from servicoscomandas');
            dts.ExecSql;
            //Pronto. Concluido com êxito!
            ShowMessage('BANCO DE DADOS REINICIADO!');
        except
            beep;
            ShowMessage('ERRO!!!!! Alguns itens do banco de dados não puderam ser reiniciados! Contate o suporte ou tente o reinicio novamente! Certifique-se de ter seguido a risca os procedimentos descritos no manual.');
        end;
    except
        dts.Destroy;
    end;
end;

function NumVezesDiasEntreDatas(dia: integer; data1, data2: TDateTime):    integer;
var
    d, m, a:    word;
    data:       TDateTime;
    numvezes:   integer;
begin
    numvezes:=0;
    decodedate(data1, a, m, d);
    d := dia;
    if not Tryencodedate(a, m, d, data) then begin
        Result := 0;
        exit;
    end;
    while compareDateTime(data, data2)=LessThanValue do begin
        if (compareDateTime(data, data1)=GreaterThanValue) or (compareDateTime(data, data1)=EqualsValue) then
            Inc(numvezes);
        data:=IncMonth(data);
    end;
    Result := numvezes;
end;

function processaCodigo(texto:   string): string;
begin
   texto := trim(texto);
   if uppercase(leftstr(Texto, 1))='P' then begin
      Texto := '20'+StringOfChar('0',11-length(Texto)+1)+
      rightStr(Texto, length(Texto)-1);
   end else if uppercase(leftstr(Texto, 1))='C' then begin
      Texto := '22'+StringOfChar('0',11-length(Texto)+1)+
      rightStr(Texto, length(Texto)-1);
   end;
   Result := texto;
end;


end.













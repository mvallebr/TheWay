unit TWDBRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ZTransact, ZMySqlTr, ZConnect, ZMySqlCon, DB, ZQuery,
  ZMySqlQuery, ImgList, ComCtrls, ToolWin, ExtCtrls, StdCtrls;

type
  TOnUpEvent = procedure (Sender: TObject; dts: TDataset;
    var fields: TStringList; var cancel: boolean) of object;
  TTWDBRel = class(TFrame)
    trn1: TZMySqlTransact;
    dts1: TZMySqlQuery;
    dts2: TZMySqlQuery;
    trn2: TZMySqlTransact;
    src1: TDataSource;
    src2: TDataSource;
    Panel1: TPanel;
    Splitter1: TSplitter;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ImageList: TImageList;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    lb1: TLabel;
    lb2: TLabel;
    ToolButton4: TToolButton;
    procedure dts1AfterClose(DataSet: TDataSet);
    procedure dts2AfterClose(DataSet: TDataSet);
    procedure dts1AfterPost(DataSet: TDataSet);
    procedure dts2AfterPost(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    { Private declarations }
    pActive:         boolean;
    ptablename1:     string;
    ptablenameRel:   string;
    pMasterFields:   TStringList;
    pRelFields:      TStringList;
    pShowFields1:    TStringList;
    pShowFields2:    TStringList;
    pOrderBy1:    TStringList;
    pOrderBy2:    TStringList;
    psql1, psql2:    TStringList;
    pZMySqlDatabase: TZMySqlDatabase;
    FOnUp:           TOnUpEvent;
    fields:          TStringList;
    pFilter1:        TStringList;
    pFilter2:        TStringList;
    procedure writeZMysqlDatabase(db: TZMysqlDatabase);
    function readZMysqlDatabase: TZMysqlDatabase;
    procedure writeActive(a: boolean);
    function readActive: boolean;

//    procedure writesql1(text: TStrings);
//    function readsql1: TStrings;
//    procedure writesql2(text: TStrings);
//    function readsql2: TStrings;

    procedure writelb1(text: string);
    function  readlb1: string;
    procedure writelb2(text: string);
    function  readlb2: string;

    function  readTablename1: string;
    procedure writeTablename1(text: string);
    function  readMasterFields: TStringList;
    procedure writeMasterFields(text: TStringList);
    function  readTablenameRel: string;
    procedure writeTablenameRel(text: string);

    function readRelFields: TStringList;
    procedure writeRelFields(rf: TStringList);

    function readShowFields1: TStringList;
    procedure writeShowFields1(rf: TStringList);
    function readShowFields2: TStringList;
    procedure writeShowFields2(rf: TStringList);

    function readOrderBy1: TStringList;
    procedure writeOrderBy1(rf: TStringList);
    function readOrderBy2: TStringList;
    procedure writeOrderBy2(rf: TStringList);

    function  readFilter1: TStringList;
    procedure writeFilter1(text: TStringList);
    function  readFilter2: TStringList;
    procedure writeFilter2(text: TStringList);

    function readMasterSource: TDataSource;
    procedure writeMasterSource(src: TDataSource);

//    function readgrid1Columns: TDBGridColumns;
//    procedure writegrid1Columns(cols: TDBGridColumns);


//    function readDataSource1: TDataSource;
   protected
    { Protected declarations }
    procedure reconstruct_sqls;
  public
    { Public declarations }
  published
    { Published declarations }

    property tablename1: string read readTablename1 write writeTablename1;
    property MasterFields: TStringList read readMasterFields write writeMasterFields;
    property tablenameRel: string read readTablenameRel write writeTablenameRel;
    property RelFields: TStringList read readRelFields write writeRelFields;
    property ShowFields1: TStringList read readShowFields1 write writeShowFields1;
    property ShowFields2: TStringList read readShowFields2 write writeShowFields2;
    property OrderBy1: TStringList read readOrderBy1 write writeOrderBy1;
    property OrderBy2: TStringList read readOrderBy2 write writeOrderBy2;

    property Filter1: TStringList read readFilter1 write writeFilter1;
    property Filter2: TStringList read readFilter2 write writeFilter2;

    property ZMysqlDatabase: TZMysqlDatabase read readZMysqlDatabase write writeZMysqlDatabase;
    property Active: boolean read readActive write writeActive;
    property Grid1: TDBGrid read DBGrid1;
    property Grid2: TDBGrid read DBGrid2;
    property label1: string read readlb1 write writelb1;
    property label2: string read readlb2 write writelb2;

//    property sql1: TStrings read readsql1 write writesql1;
//    property sql2: TStrings read readsql2 write writesql2;
//    property sql1: TStringList read psql1 write psql1;
//    property sql2: TStringList read psql2 write psql2;

    property MasterSource: TDataSource read readMasterSource write writeMasterSource;
//    property datasource1: TDataSource read readDataSource1;

//    property grid1columns: TDBGridColumns read readgrid1columns write writegrid1columns;


    property OnButtonUpClicked: TOnUpEvent read FOnUp write FOnUp;
    constructor Create(Owner: TComponent); override;
  end;

//procedure Register;

implementation

{$R *.dfm}


(*procedure Register;
begin
  RegisterComponents('TheWay', [TTWDBRel]);
end;
  *)

constructor TTWDBRel.Create(Owner: TComponent);
begin
   inherited Create(Owner);
   ZMySqlDatabase := nil;
   trn1.Database := nil;
   dts1.Database := nil;
   dts2.Database := nil;
   trn2.Database := nil;
   pActive := false;
   ptablename1 := '';
   ptablenameRel := '';
   pRelFields := TStringList.Create;
   pShowFields1 := TStringList.Create;
   pShowFields2 := TStringList.Create;
   pOrderBy1 := TStringList.Create;
   pOrderBy2 := TStringList.Create;
   pMasterFields:= TStringList.Create;
   psql1    := TStringList.Create;
   psql2    := TStringList.Create;
   fields   := TStringList.Create;
   pFilter1  := TStringList.Create;
   pFilter2  := TStringList.Create;
   FOnUp    := nil;
end;

(*
function  TTWDBRel.readgrid1Columns: TDBGridColumns;
begin
    Result := DBGrid1.Columns;
end;

procedure TTWDBRel.writegrid1Columns(cols: TDBGridColumns);
begin
    DBGrid1.Columns.assign(cols);
end;
*)
(*
function TTWDBRel.readDataSource1: TDataSource;
begin
    Result := src1;
end;
*)

procedure TTWDBRel.reconstruct_sqls;
var
    i:  integer;
    col:   TColumn;
begin
(*
select lojas.* from lojas, relClientesLojas
where (
(lojas.idloja=relClientesLojas.idloja) and
(relClientesLojas.idcliente=1)
)
*)
   writeActive(false);
   with dts1.Sql do begin
        Clear;
        Add('select '+ptablename1+'.*, '+ptablenameRel+'.* ');
(*        for i := 0 to pShowFields.Count-1 do begin
            temp := pShowFields.Strings[i];
            if i <> pShowFields.Count-1 then
                temp := temp + ', ';
            Add(temp);
        end;
        *)
        Add(' from '+ptablename1+', '+ptablenameRel);
        Add('where (');
        for i := 0 to pRelFields.Count-1 do begin
            if trim(pRelFields.Values[pRelFields.Names[i]])='' then
                Add('('+ptablename1+'.'+pRelFields.Strings[i]+'='+ptablenameRel+'.'+pRelFields.Strings[i]+') ')
            else
                Add('('+ptablename1+'.'+pRelFields.Names[i]+'='+ptablenameRel+'.'+pRelFields.Values[pRelFields.Names[i]]+') ');
            if (i<>(pRelFields.Count-1)) then
                Add(' and ');
        end;
        if pMasterFields.Count>=1 then
            Add(' and ');
        for i := 0 to pMasterFields.Count-1 do begin
            if trim(pMasterFields.Values[pMasterFields.Names[i]])='' then
                Add('('+ptablenameRel+'.'+pMasterFields.Strings[i]+'= :'+pMasterFields.Strings[i]+') ')
            else
                Add('('+ptablenameRel+'.'+pMasterFields.Values[pMasterFields.Names[i]]+'= :'+pMasterFields.Names[i]+') ');
            if (i<>(pMasterFields.Count-1)) then
                Add(' and ');
        end;
        if pFilter1.Count>=1 then
            Add(' and ');
        for i := 0 to pFilter1.Count-1 do begin
            Add('('+pFilter1.Strings[i]+')');
        end;
        Add(')');
        if pOrderBy1.Count>0 then begin
            Add(' Order by ');
            for i := 0 to pOrderBy1.Count-1 do begin
                if i <> pOrderBy1.Count-1 then
                    Add(pOrderBy1.Strings[i]+', ')
                else
                    Add(pOrderBy1.Strings[i]);
            end;
        end;
    end;

    dbgrid1.Columns.Clear;
    for i := 0 to pShowFields1.Count-1 do begin
        col := dbgrid1.Columns.Add;
        col.FieldName:= pShowFields1.Strings[i];
    end;

(*
select * from lojas left join relClientesLojas on
((relClientesLojas.idcliente=1) and (relClientesLojas.idloja=lojas.idloja) )
where (relClientesLojas.idloja is null)
*)

    with dts2.Sql do begin
        Clear;
        Add('select '+ptablename1+'.* from '+ptablename1+' left join '+ptablenameRel);
        Add('on (');
        for i := 0 to pRelFields.Count-1 do begin
            if trim(pRelFields.Values[pRelFields.Names[i]])='' then
                Add('('+ptablename1+'.'+pRelFields.Strings[i]+'='+ptablenameRel+'.'+pRelFields.Strings[i]+') ')
            else
                Add('('+ptablename1+'.'+pRelFields.Names[i]+'='+ptablenameRel+'.'+pRelFields.Values[pRelFields.Names[i]]+') ');

            if (i<>(pRelFields.Count-1)) then
                Add(' and ');
        end;
        if pMasterFields.Count>=1 then
            Add(' and ');
        for i := 0 to pMasterFields.Count-1 do begin
            if trim(pMasterFields.Values[pMasterFields.Names[i]])='' then
                Add('('+ptablenameRel+'.'+pMasterFields.Strings[i]+'= :'+pMasterFields.Strings[i]+') ')
            else
                Add('('+ptablenameRel+'.'+pMasterFields.Values[pMasterFields.Names[i]]+'= :'+pMasterFields.Names[i]+') ');
            if (i<>(pMasterFields.Count-1)) then
                Add(' and ');
        end;
        Add(') where (');
        for i := 0 to pRelFields.Count-1 do begin
            Add('('+ptablenameRel+'.'+pRelFields.Strings[i]+' is null)');
            if i<>pRelFields.Count-1 then
                Add(' and ');
        end;
        if pFilter2.Count>=1 then
            Add(' and ');
        for i := 0 to pFilter2.Count-1 do begin
            Add('('+pFilter2.Strings[i]+')');
        end;

        Add(')');
        if pOrderBy2.Count>0 then begin
            Add(' Order by ');
            for i := 0 to pOrderBy2.Count-1 do begin
                if i <> pOrderBy2.Count-1 then
                    Add(pOrderBy2.Strings[i]+', ')
                else
                    Add(pOrderBy2.Strings[i]);
            end;
        end;
    end;

    dbgrid2.Columns.Clear;
    for i := 0 to pShowFields2.Count-1 do begin
        col := dbgrid2.Columns.Add;
        col.FieldName:= pShowFields2.Strings[i];
    end;

    psql1.Assign(dts1.Sql);
    psql2.Assign(dts2.Sql);

//    ShowMessage('sql1='+psql1.text);
//    ShowMessage('sql2='+psql2.text);
end;

function  TTWDBRel.readMasterSource: TDataSource;
begin
    Result := dts1.DataSource;
end;

procedure TTWDBRel.writeMasterSource(src: TDataSource);
begin
    writeActive(false);
    dts1.DataSource:=src;
    dts2.DataSource:=src;
end;

function  TTWDBRel.readRelFields: TStringList;
begin
    Result:=pRelFields;
end;

procedure TTWDBRel.writeRelFields(rf: TStringList);
begin
    pRelFields.Assign(rf);
    reconstruct_sqls;
end;

function  TTWDBRel.readShowFields1: TStringList;
begin
    Result:=pShowFields1;
end;

procedure TTWDBRel.writeShowFields1(rf: TStringList);
begin
    pShowFields1.Assign(rf);
    reconstruct_sqls;
end;

function  TTWDBRel.readShowFields2: TStringList;
begin
    Result:=pShowFields2;
end;

procedure TTWDBRel.writeShowFields2(rf: TStringList);
begin
    pShowFields2.Assign(rf);
    reconstruct_sqls;
end;

function  TTWDBRel.readOrderBy1: TStringList;
begin
    Result:=pOrderBy1;
end;

procedure TTWDBRel.writeOrderBy1(rf: TStringList);
begin
    pOrderBy1.Assign(rf);
    reconstruct_sqls;
end;

function  TTWDBRel.readOrderBy2: TStringList;
begin
    Result:=pOrderBy2;
end;

procedure TTWDBRel.writeOrderBy2(rf: TStringList);
begin
    pOrderBy2.Assign(rf);
    reconstruct_sqls;
end;

function  TTWDBRel.readTablename1: string;
begin
    Result := ptablename1;
end;

procedure TTWDBRel.writeTablename1(text: string);
begin
    ptablename1 := text;
    reconstruct_sqls;
end;

function  TTWDBRel.readMasterFields: TStringList;
begin
    Result := pMasterFields;
end;

procedure TTWDBRel.writeMasterFields(text: TStringList);
begin
    pMasterFields.Assign(text);
    reconstruct_sqls;
end;

function  TTWDBRel.readFilter1: TStringList;
begin
    Result := pFilter1;
end;

procedure TTWDBRel.writeFilter1(text: TStringList);
begin
    pFilter1.Assign(text);
    reconstruct_sqls;
end;

function  TTWDBRel.readFilter2: TStringList;
begin
    Result := pFilter2;
end;

procedure TTWDBRel.writeFilter2(text: TStringList);
begin
    pFilter2.Assign(text);
    reconstruct_sqls;
end;

function  TTWDBRel.readTablenameRel: string;
begin
    Result := ptablenameRel;
end;

procedure TTWDBRel.writeTablenameRel(text: string);
begin
    ptablenameRel := text;
    reconstruct_sqls;
end;

procedure TTWDBRel.writelb1(text: string);
begin
    lb1.Caption := text;
end;

function  TTWDBRel.readlb1: string;
begin
    Result := lb1.Caption;
end;

procedure TTWDBRel.writelb2(text: string);
begin
    lb2.Caption := text;
end;

function  TTWDBRel.readlb2: string;
begin
    Result := lb2.Caption;
end;

(*
procedure TTWDBRel.writesql1(text: TStrings);
begin
    writeActive(false);
    dts1.Sql.Assign(text);
//    reconstruct_sqls;
end;


function  TTWDBRel.readsql1: TStrings;
begin
    reconstruct_sqls;
    Result :=dts1.Sql;
end;


procedure TTWDBRel.writesql2(text: TStrings);
begin
    writeActive(false);
    dts2.Sql.Assign(text);
    //reconstruct_sqls;
end;


function  TTWDBRel.readsql2: TStrings;
begin
    reconstruct_sqls;
    Result:=dts2.Sql;
end;
*)

procedure TTWDBRel.writeActive(a: boolean);
begin
    if pZMySqlDatabase=nil then exit;
    if a = true then
        reconstruct_sqls;
    pActive := a;
    dts1.active := pActive;
    dts2.active := pActive;
    pActive := dts1.active and dts2.active;
    dts1.active := pActive;
    dts2.active := pActive;
end;

function  TTWDBRel.readActive: boolean;
begin
    Result := pActive;
end;

procedure TTWDBRel.writeZMysqlDatabase(db: TZMysqlDatabase);
begin
   pZMySqlDatabase := db;
   trn1.Database := db;
   dts1.Database := db;
   dts2.Database := db;
   trn2.Database := db;
end;

function TTWDBRel.readZMysqlDatabase: TZMysqlDatabase;
begin
   Result := pZMySqlDatabase;
end;

procedure TTWDBRel.dts1AfterClose(DataSet: TDataSet);
begin
    dts2.Active := false;
    pActive     := false;
end;

procedure TTWDBRel.dts2AfterClose(DataSet: TDataSet);
begin
    dts1.Active := false;
    pActive     := false;
end;

procedure TTWDBRel.dts1AfterPost(DataSet: TDataSet);
begin
    dts1.ApplyUpdates;
end;

procedure TTWDBRel.dts2AfterPost(DataSet: TDataSet);
begin
    dts2.ApplyUpdates;
end;

procedure TTWDBRel.ToolButton1Click(Sender: TObject);
var
    dataset: TZMySqlQuery;
    datatrn: TZMySqlTransact;
    i:  integer;
    masterind: string;
    cancel:     boolean;
begin
    if pZMySqlDatabase = nil then exit;
    if dts1.DataSource  = nil then exit;
    if dts2.IsEmpty then begin
        beep;
        exit;
    end;
    //Call Event OnUp and receive a list of fields to be inserted on database
    fields.Clear;
    cancel:=false;
    if Assigned(FOnUp) then FOnUp(Self, dts2, fields, cancel);
    if cancel then exit; //Cancela caso cancel tenha sido setada pelo usuário
    //Insert current line on the relation table
    datatrn := TZMySqlTransact.Create(Self);
    datatrn.Database := pZMySqlDatabase;
    dataset := TZMySqlQuery.Create(Self);
    dataset.Database := pZMySqlDatabase;
    dataset.Transaction := datatrn;
    dataset.DataSource := dts1.DataSource;
    with dataset.Sql do begin
        Clear;
        Add('insert into '+ptablenameRel + ' set ');
        for i := 0 to prelFields.Count-1 do begin
            if trim(pRelFields.Values[pRelFields.Names[i]])='' then
                Add (pRelFields.Strings[i]+'='+dts2.FieldByName(pRelFields.Strings[i]).AsString)
            else
                Add (pRelFields.Values[pRelFields.Names[i]]+'='+dts2.FieldByName(pRelFields.Names[i]).AsString);
//            Add (pRelFields.Strings[i]+'='+dts2.FieldByName(pRelFields.Strings[i]).AsString)
            if (i<>(pRelFields.Count-1)) then
                Add(', ');
        end;
        if (fields.Count>=1) then
            Add(', ');
        for i := 0 to fields.Count-1 do begin
            Add (fields.Names[i]+'='+fields.Values[fields.Names[i]]+' ');
            if (i<>(fields.Count-1)) then
                Add(', ');
        end;
        if pMasterFields.Count>=1 then
            Add(', ');
        for i := 0 to pMasterFields.Count-1 do begin
            if trim(pMasterFields.Values[pMasterFields.Names[i]])='' then
                masterind := dts2.DataSource.DataSet.FieldByName(pMasterFields.Strings[i]).AsString
            else
                masterind := dts2.DataSource.DataSet.FieldByName(pMasterFields.Names[i]).AsString;
            if i<>(pMasterFields.Count-1) then
                masterind:=masterind+', ';
            if trim(pMasterFields.Values[pMasterFields.Names[i]])='' then
                Add(pMasterFields.Strings[i]+'='+masterind)
            else
                Add(pMasterFields.Values[pMasterFields.Names[i]]+'='+masterind);
        end;
    end;
//    ShowMessage(dataset.sql.Text);
    dataset.ExecSql;
    dataset.ApplyUpdates;
    dataset.Destroy;
    datatrn.destroy;
    dts1.Refresh;
    dts2.Refresh;
end;

procedure TTWDBRel.ToolButton2Click(Sender: TObject);
var
    dataset: TZMySqlQuery;
    datatrn: TZMySqlTransact;
    i:  integer;
    masterind: string;
begin
    if pZMySqlDatabase = nil then exit;
    if dts2.DataSource  = nil then exit;
    if dts1.IsEmpty then begin
        beep;
        exit;
    end;
    //Insert current line on the relation table
    datatrn := TZMySqlTransact.Create(Self);
    datatrn.Database := pZMySqlDatabase;
    dataset := TZMySqlQuery.Create(Self);
    dataset.Database := pZMySqlDatabase;
    dataset.Transaction := datatrn;
    dataset.DataSource := dts1.DataSource;
    with dataset.Sql do begin
        Clear;
        Add('delete from '+ptablenameRel + ' where (');
        for i := 0 to prelFields.Count-1 do begin
            if trim(pRelFields.Values[pRelFields.Names[i]])='' then
                Add ('('+pRelFields.Strings[i]+'='+dts1.FieldByName(pRelFields.Strings[i]).AsString+') ')
            else
                Add ('('+pRelFields.Values[pRelFields.Names[i]]+'='+dts1.FieldByName(pRelFields.Names[i]).AsString+') ');
//            Add ('('+pRelFields.Strings[i]+'='+dts1.FieldByName(pRelFields.Strings[i]).AsString+') ');
            if (i<>(pRelFields.Count-1)) then
                Add(' and ');
        end;
        if pMasterFields.Count>=1 then
            Add(' and ');
        for i := 0 to pMasterFields.Count-1 do begin
            if trim(pMasterFields.Values[pMasterFields.Names[i]])='' then
                masterind := '('+pMasterFields.Strings[i]+'='+dts2.DataSource.DataSet.FieldByName(pMasterFields.Strings[i]).AsString+')'
            else
                masterind := '('+pMasterFields.Values[pMasterFields.Names[i]]+'='+dts2.DataSource.DataSet.FieldByName(pMasterFields.Names[i]).AsString+')';

            if (i<>(pMasterFields.Count-1)) then
                masterind := masterind+' and ';
            Add(masterind);
        end;
        Add(')');
    end;
//    ShowMessage(dataset.sql.Text);
    dataset.ExecSql;
    dataset.ApplyUpdates;
    dataset.Destroy;
    datatrn.destroy;
    dts1.Refresh;
    dts2.Refresh;
end;

end.

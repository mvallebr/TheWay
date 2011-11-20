unit formAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, DB, DBTables, FiltrDlg, ImgList, Grids,
  DBGrids, ComCtrls, dbcgrids, StdCtrls, ExtCtrls, DBCtrls, ToolWin,
  ZTransact, ZMySqlTr, ZQuery, ZMySqlQuery, Mask;

procedure createfrmAgenda;

type
  TfrmAgenda = class(TfrmDBDetailBase)
    dtsSelfIDAgenda: TIntegerField;
    dtsSelfPLANNERKEY: TStringField;
    dtsSelfSTARTTIME: TDateTimeField;
    dtsSelfENDTIME: TDateTimeField;
    dtsSelfIDProfissional: TIntegerField;
    dtsSelfIDCliente: TIntegerField;
    dtsSelfNomeCliente: TStringField;
    dtsSelfDuracaoHoras: TIntegerField;
    dtsSelfObservacoes: TMemoField;
    dtsSelfIDCategoriaServico: TIntegerField;
    dtsSelfIDServico: TIntegerField;
    dtsSelfNOTES: TMemoField;
    dtsSelfSUBJECT: TStringField;
    dtsSelfCOLOR: TFloatField;
    dtsSelfIMAGE: TFloatField;
    dtsSelfCAPTION: TIntegerField;
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditSTARTTIME: TDBEdit;
    EditENDTIME: TDBEdit;
    EditIDProfissional: TDBEdit;
    EditIDCliente: TDBEdit;
    EditNomeCliente: TDBEdit;
    EditIDCategoriaServico: TDBEdit;
    EditIDServico: TDBEdit;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    DBText2: TDBText;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgenda: TfrmAgenda;

implementation

{$R *.dfm}

procedure createfrmAgenda;
begin
    if (frmAgenda=nil) then
        frmAgenda:=TfrmAgenda.create(Application);
    frmAgenda.Show;
end;

procedure TfrmAgenda.FormDestroy(Sender: TObject);
begin
  inherited;
    frmAgenda:=nil;
end;

end.

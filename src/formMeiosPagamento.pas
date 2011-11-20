unit formMeiosPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin, StdCtrls, dbcgrids, Mask;

procedure createfrmMeiosPagamento;

type
  TfrmMeiosPagamento = class(TfrmDBBase)
    dtsSelfIDMeioPagamento: TIntegerField;
    dtsSelfDescricao: TStringField;
    dtsSelfEntraEmCaixa: TIntegerField;
    DBCtrlGrid1: TDBCtrlGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dtsSelfDesagio: TFloatField;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMeiosPagamento: TfrmMeiosPagamento;

implementation

{$R *.dfm}

procedure createfrmMeiosPagamento;
begin
    if frmMeiosPagamento=nil then
        frmMeiosPagamento:= TfrmMeiosPagamento.Create(Application);
    frmMeiosPagamento.Show;
end;

procedure TfrmMeiosPagamento.FormDestroy(Sender: TObject);
begin
  inherited;
    frmMeiosPagamento:=nil;
end;

end.

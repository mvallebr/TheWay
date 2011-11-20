unit formVales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBBase, DB, ZQuery, ZMySqlQuery, ImgList, FiltrDlg, Grids,
  DBGrids, ComCtrls, ExtCtrls, DBCtrls, ToolWin, formDBDetailBase,
  dbcgrids, StdCtrls, Mask;

procedure createfrmVales;

type
  TfrmVales = class(TfrmDBDetailBase)
    dtsSelfIDVale: TIntegerField;
    dtsSelfData: TDateField;
    dtsSelfValor: TFloatField;
    dtsSelfIDProfissionalBeneficiado: TIntegerField;
    dtsSelfIDProfissionalResponsavel: TIntegerField;
    dtsSelfMotivo: TMemoField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    srcProfissionais: TDataSource;
    dtsProfissionais: TZMySqlTable;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVales: TfrmVales;

implementation

{$R *.dfm}
procedure createfrmVales;
begin
    if frmVales=nil then
        frmVales:=TfrmVales.Create(Application);
    frmVales.Show;
end;

end.

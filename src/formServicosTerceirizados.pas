unit formServicosTerceirizados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, DB, ZQuery, ZMySqlQuery, FiltrDlg, ImgList,
  Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls, ExtCtrls, DBCtrls, ToolWin,
  formDBDetailWithCategory, TWDBRel, Mask;

procedure createfrmServicosTerceirizados;

type
  TfrmServicosTerceirizados = class(TfrmDBDetailWithCategory)
    dtsCategoryIDCategoriaServicoTerc: TIntegerField;
    dtsCategoryDescricao: TStringField;
    dtsSelfIDCategoriaServicoTerc: TIntegerField;
    dtsSelfIDServicoTerceirizado: TIntegerField;
    dtsSelfDescricao: TStringField;
    dtsSelfValor: TFloatField;
    dtsSelfDataUltimaAtualizacao: TDateField;
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditIDCategoriaServicoTerc: TDBEdit;
    EditIDServicoTerceirizado: TDBEdit;
    EditDescricao: TDBEdit;
    EditValor: TDBEdit;
    EditDataUltimaAtualizacao: TDBEdit;
    TabSheet1: TTabSheet;
    TWDBRel1: TTWDBRel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmServicosTerceirizados: TfrmServicosTerceirizados;

implementation

{$R *.dfm}

procedure createfrmServicosTerceirizados;
begin
    if (frmServicosTerceirizados=nil) then
        frmServicosTerceirizados:=TfrmServicosTerceirizados.Create(Application);
    frmServicosTerceirizados.Show;
end;

procedure TfrmServicosTerceirizados.FormDestroy(Sender: TObject);
begin
  inherited;
    frmServicosTerceirizados:=nil;
end;

end.

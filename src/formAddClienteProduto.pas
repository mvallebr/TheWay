unit formAddClienteProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formAddBase, Gradient, StdCtrls, ExtCtrls, Mask, DB, DBCtrls,
  TWFloatEdit, FloatSpinEdit;

type
  TfrmAddClienteProduto = class(TfrmAddBase)
    lbProduto1: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    CancelBtn: TButton;
    OKBtn: TButton;
    lbProduto: TLabel;
    edtDescontoFixo: TEdit;
    edtDescontoPercentual: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDescontoFixoChange(Sender: TObject);
    procedure edtDescontoPercentualChange(Sender: TObject);
  private
    { Private declarations }
    disableedit:    boolean;
  public
    { Public declarations }
    preco: real;
  end;

var
  frmAddClienteProduto: TfrmAddClienteProduto;

implementation

{$R *.dfm}

procedure TfrmAddClienteProduto.FormActivate(Sender: TObject);
begin
  inherited;
    edtDescontoFixo.SetFocus;
end;

procedure TfrmAddClienteProduto.FormCreate(Sender: TObject);
begin
  inherited;
    preco:=0;
    OkBtn.Enabled:=false;
    disableedit:=false;
end;

procedure TfrmAddClienteProduto.edtDescontoFixoChange(Sender: TObject);
begin
  inherited;
    if disableedit then exit;
    try
        disableedit:=true;
        edtDescontoPercentual.Text := format('%.2f',[100*StrToFloat(edtDescontoFixo.Text)/preco]);
        disableedit:=false;
    except
        beep;
    end;
    OkBtn.Enabled:=(trim(edtDescontoPercentual.Text)<>'') and (trim(edtDescontoFixo.Text)<>'');
end;

procedure TfrmAddClienteProduto.edtDescontoPercentualChange(
  Sender: TObject);
begin
  inherited;
    if disableedit then exit;
    try
        disableedit:=true;
        edtDescontoFixo.Text := format('%.2f',[StrToFloat(edtDescontoPercentual.Text)*preco/100]);
        disableedit:=false;
    except
        beep;
    end;
    OkBtn.Enabled:=(trim(edtDescontoPercentual.Text)<>'') and (trim(edtDescontoFixo.Text)<>'');
end;

end.

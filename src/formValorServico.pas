unit formValorServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, ExtCtrls, FloatSpinEdit;

type
  TfrmValorServico = class(TfrmBase)
    lbLegenda: TLabel;
    Bevel1: TBevel;
    CancelBtn: TButton;
    OKBtn: TButton;
    Bevel2: TBevel;
    Label2: TLabel;
    edtValor: TFloatSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtValorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValorServico: TfrmValorServico;

implementation

{$R *.dfm}

procedure TfrmValorServico.FormShow(Sender: TObject);
begin
  inherited;
    edtValor.SetFocus;
end;

procedure TfrmValorServico.FormActivate(Sender: TObject);
begin
  inherited;
    edtValor.Text:=trim(edtValor.Text);
    edtValor.SelStart := 0;
    edtValor.SelLength := length(edtValor.Text);
end;

procedure TfrmValorServico.edtValorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key=13 then ModalResult:=mrOk;
    if key=27 then ModalResult:=mrCancel;
end;

end.

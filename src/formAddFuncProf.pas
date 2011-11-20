unit formAddFuncProf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formAddBase, Gradient, StdCtrls, ExtCtrls;

type
  TfrmAddFuncProf = class(TfrmAddBase)
    Label1: TLabel;
    lbProfissional: TLabel;
    Label2: TLabel;
    edtRegistroLegal: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    lbRG: TLabel;
    lbCPF: TLabel;
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    procedure FormActivate(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddFuncProf: TfrmAddFuncProf;

implementation

{$R *.dfm}

procedure TfrmAddFuncProf.FormActivate(Sender: TObject);
begin
  inherited;
    edtRegistroLegal.SetFocus;
end;

procedure TfrmAddFuncProf.OKBtnClick(Sender: TObject);
begin
  inherited;
    if Trim(edtRegistroLegal.Text)='' then begin
        beep;
        ShowMessage('O campo não pode ser nulo!');
    end;
end;

end.

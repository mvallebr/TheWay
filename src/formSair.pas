unit formSair;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls, ExtCtrls, Buttons;

type
  TfrmSair = class(TForm)
    rdOpcao: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSair: TfrmSair;

implementation

{$R *.dfm}

procedure TfrmSair.BitBtn1Click(Sender: TObject);
begin
   case rdOpcao.ItemIndex of
      0: ExitWindowsEx(EWX_SHUTDOWN, 0);
      1: ExitWindowsEx(EWX_REBOOT, 0);
      2: ExitWindowsEx(EWX_LOGOFF, 0);
      3: WinExec('explorer.exe', 0);
   end;
   ModalResult := mrOk;
end;

end.

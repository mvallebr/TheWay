unit formCadastrarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, Gradient, StdCtrls, Mask, DBCtrls, ExtCtrls, DB,
  ZQuery, ZMySqlQuery, Buttons, StrUtils;

procedure createfrmCadastrarCliente;

type
  TfrmCadastrarCliente = class(TfrmBase)
    Gradient1: TGradient;
    Label2: TLabel;
    Panel1: TPanel;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edtNome: TDBEdit;
    edtDataNasc: TDBEdit;
    edtTipoCabelo: TDBEdit;
    edtTipoPele: TDBEdit;
    edtCorPele: TDBEdit;
    edtCorCabelo: TDBEdit;
    edtNacionalidade: TDBEdit;
    edtNaturalidade: TDBEdit;
    srcSelf: TDataSource;
    dtsSelf: TZMySqlTable;
    edtSexo: TDBComboBox;
    dtsSelfIDCliente: TIntegerField;
    dtsSelfNome: TStringField;
    dtsSelfSexo: TStringField;
    dtsSelfDataNasc: TDateField;
    dtsSelfEnderecoRes: TStringField;
    dtsSelfCidadeRes: TStringField;
    dtsSelfEstadoRes: TStringField;
    dtsSelfCEPRes: TStringField;
    dtsSelfTelefoneRes1: TStringField;
    dtsSelfTelefoneRes2: TStringField;
    dtsSelfTelefoneRes3: TStringField;
    dtsSelfFax: TStringField;
    dtsSelfEmail1: TStringField;
    dtsSelfEmail2: TStringField;
    dtsSelfEmail3: TStringField;
    dtsSelfPager: TStringField;
    dtsSelfCredito: TFloatField;
    dtsSelfReligiao: TStringField;
    dtsSelfProfissao: TStringField;
    dtsSelfEstadoCivil: TStringField;
    dtsSelfTipoCabelo: TStringField;
    dtsSelfTipoPele: TStringField;
    dtsSelfCorPele: TStringField;
    dtsSelfCPF: TStringField;
    dtsSelfRG: TStringField;
    dtsSelfCorCabelo: TStringField;
    dtsSelfCelular: TStringField;
    dtsSelfNomeContato1: TStringField;
    dtsSelfTelContato1: TStringField;
    dtsSelfNomeContato2: TStringField;
    dtsSelfTelContato2: TStringField;
    dtsSelfEnderecoCom: TStringField;
    dtsSelfCidadeCom: TStringField;
    dtsSelfEstadoCom: TStringField;
    dtsSelfTelefoneCom: TStringField;
    dtsSelfCEPCom: TStringField;
    dtsSelfDataCadastro: TDateField;
    dtsSelfPais: TStringField;
    dtsSelfNacionalidade: TStringField;
    dtsSelfNaturalidade: TStringField;
    dtsSelfNFilhos: TIntegerField;
    dtsSelfNomeFilhos: TMemoField;
    dtsSelfConjugue: TStringField;
    dtsSelfNovoCliente: TIntegerField;
    dtsSelfIndicadaPorCliente: TIntegerField;
    dtsSelfIDClienteIndicou: TIntegerField;
    DBNavigator1: TDBNavigator;
    DBCheckBox1: TDBCheckBox;
    edtEstadoCivil: TDBComboBox;
    edtReligiao: TDBComboBox;
    edtProfissao: TDBComboBox;
    chkIndicado: TDBCheckBox;
    edtIndicado: TDBLookupComboBox;
    srcLookup: TDataSource;
    dtsLookup: TZMySqlTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    FloatField1: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    DateField2: TDateField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    IntegerField2: TIntegerField;
    MemoField1: TMemoField;
    StringField37: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    edtEnderecoRes: TDBEdit;
    Label6: TLabel;
    EdtCidadeRes: TDBEdit;
    EdtCelular: TDBEdit;
    Label18: TLabel;
    Label7: TLabel;
    edtEstadoRes: TDBComboBox;
    EdtTelefoneRes: TDBEdit;
    Label9: TLabel;
    Label8: TLabel;
    EdtCEPRes: TDBEdit;
    Label10: TLabel;
    EdtEmail: TDBEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    EdtEnderecoCom: TDBEdit;
    Label20: TLabel;
    EdtCidadeCom: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    EdtTelefoneCom: TDBEdit;
    EdtCEPCom: TDBEdit;
    Label23: TLabel;
    BitBtn1: TBitBtn;
    edtEstadoCom: TDBComboBox;
    dtsLookupPontuacao: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtsSelfBeforePost(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkIndicadoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dtsSelfAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ResetFields;
    procedure update_chkIndicado;
  public
    { Public declarations }
  end;

var
  frmCadastrarCliente: TfrmCadastrarCliente;

implementation

{$R *.dfm}

procedure createfrmCadastrarCliente;
begin
   if (frmCadastrarCliente=nil) then
      frmCadastrarCliente:=TfrmCadastrarCliente.Create(Application);
   frmCadastrarCliente.show;
end;

procedure TfrmCadastrarCliente.FormDestroy(Sender: TObject);
begin
  inherited;
    if frmCadastrarCliente<>nil then
        frmCadastrarCliente:=nil;
end;

procedure TfrmCadastrarCliente.ResetFields;
begin
    dtsSelf.Cancel;
    dtsSelf.Insert;
    update_chkIndicado;
    edtNome.setFocus;
end;

procedure TfrmCadastrarCliente.update_chkIndicado;
begin
    //Habilita ou não o campo de cliente que indicou, dependendo do estado do check box
    edtIndicado.Enabled := chkIndicado.Checked;
end;

procedure TfrmCadastrarCliente.FormActivate(Sender: TObject);
begin
  inherited;
    ResetFields;
end;

procedure TfrmCadastrarCliente.dtsSelfBeforePost(DataSet: TDataSet);
begin
  inherited;
    //Valida os campos e aborta a operação caso haja problemas de validação
    EdtNome.Text:=Trim(EdtNome.Text);
    edtEnderecoRes.Text:=trim(edtEnderecoRes.Text);
    edtCidadeRes.Text:=Trim(edtCidadeRes.Text);
    edtTelefoneRes.Text:=Trim(edtTelefoneRes.Text );
    edtEmail.Text:=Trim(edtEmail.Text); 

    dtsSelf.FieldByName('DataCadastro').AsDateTime := date;
    if trim(EdtNome.Text)='' then begin
        ShowMessage('Campo NOME não está preenchido corretamente!');
        edtNome.setFocus;
        Abort;
        exit;
    end;
    if (UpperCase(leftstr(EdtSexo.Text,1))<>'F')and (UpperCase(leftstr(EdtSexo.Text,1))<>'M') then begin
        ShowMessage('Campo SEXO não está preenchido corretamente!');
        edtSexo.setFocus;
        Abort;
        exit;
    end;
    if trim(EdtDataNasc.Text)='' then begin
        ShowMessage('Campo DATA DE NASCIMENTO não está preenchido corretamente!');
        EdtDataNasc.setFocus;
        Abort;
        exit;
    end;
    if trim(EdtEnderecoRes.Text)='' then begin
        ShowMessage('Campo ENDEREÇO RESIDENCIAL não está preenchido corretamente!');
        EdtEnderecoRes.setFocus;
        Abort;
        exit;
    end;
    if trim(EdtCidadeRes.Text)='' then begin
        ShowMessage('Campo CIDADE RESIDENCIAL não está preenchido corretamente!');
        EdtCidadeRes.setFocus;
        Abort;
        exit;
    end;
(*
    if trim(EdtTelefoneRes.Text)='' then begin
        ShowMessage('Campo TELEFONE não está preenchido corretamente!');
        EdtTelefoneRes.setFocus;
        Abort;
        exit;
    end;
    if trim(EdtEmail.Text)='' then begin
        ShowMessage('Campo E-MAIL não está preenchido corretamente!');
        EdtEmail.setFocus;
        Abort;
        exit;
    end;

    if Pos('@', Email.Text)=0 then begin
        ShowMessage('Campo E-MAIL não está preenchido corretamente!');
        EdtEmail.setFocus;
        Abort;
        exit;
    end;
    *)
    if (Pos('@', edtEmail.Text)<>0 ) and ((Pos('.', edtEmail.Text)-Pos('@', edtEmail.Text))<2) then begin
        ShowMessage('Campo E-MAIL não está preenchido corretamente!');
        EdtEmail.setFocus;
        Abort;
        exit;
    end;
    if dtsSelf.FieldByName('DataNasc').AsDateTime>=date then begin
        ShowMessage('Campo DATA DE NASCIMENTO não está preenchido corretamente!');
        EdtDataNasc.setFocus;
        Abort;
        exit;
    end;
    if MessageDlg('Tem certeza de que deseja cadastrar o cliente "'+edtNome.Text+'"?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
        Abort;
        exit;
    end;
end;

procedure TfrmCadastrarCliente.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = VK_F6 then begin
        BitBtn1Click(Sender);
        exit;
    end;
    if key = VK_ESCAPE then begin
        //ResetFields;
        ModalResult:=mrCancel;
        exit;
    end;
end;

procedure TfrmCadastrarCliente.chkIndicadoClick(Sender: TObject);
begin
  inherited;
    update_chkIndicado;
end;

procedure TfrmCadastrarCliente.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dtsSelf.Post;
end;

procedure TfrmCadastrarCliente.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
    try
        if chkIndicado.Checked and (not dtsLookup.IsEmpty) then begin
            dtsLookup.Edit;
            if dtsLookup.FieldByName('Pontuacao').IsNull then
                dtsLookup.FieldByName('Pontuacao').AsInteger:=0;
            dtsLookup.FieldByName('Pontuacao').AsInteger:=dtsLookup.FieldByName('Pontuacao').AsInteger+1;
            dtsLookup.Post;  
        end;
    except
        ShowMessage('Erro desconhecido ao incrementar pontuação do(a) cliente "'+dtsLookup.FieldByName('Nome').AsString+'"!');
    end;
    ShowMessage('Cliente "'+dtsSelf.FieldByName('Nome').AsString+'" cadastrado(a) com sucesso!');
    ModalResult:=mrOk;
end;

procedure TfrmCadastrarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    if (ModalResult<>mrOK) and (ModalResult<>mrCancel) then
        ModalResult:=mrCancel;
    Action:=caHide;
end;

end.

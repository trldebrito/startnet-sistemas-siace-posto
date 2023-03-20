unit Acesso;

interface
              
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, DB, DBClient, ComCtrls, Buttons,
  SUIButton, DBCtrls, RXCtrls,  Mylabel, SUIDlg, RxGIF, ModulodeDados, SUIDBCtrls,
  SUIMgr, LockApplication, Mask, ToolEdit, CurrEdit, OnGuard,
  OgProExe, DateUtil, jpeg;

type
  TForm_Usuario = class(TForm)
    myLabel3d4: TmyLabel3d;
    Label2: TLabel;
    Label5: TLabel;
    informacao: TsuiMessageDialog;
    Informacao2: TsuiMessageDialog;
    Informacao3: TsuiMessageDialog;
    Informacao4: TsuiMessageDialog;
    Bevel1: TBevel;
    Edit2: TEdit;
    Edit11: TDBLookupComboBox;
    Label1: TLabel;
    suiButton3: TsuiButton;
    Label4: TLabel;
    Bevel3: TBevel;
    L: TLockApplication;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    btnVerify: TSpeedButton;
    edtStatus: TEdit;
    edtUserName2: TDBEdit;
    SpeedButton1: TSpeedButton;
    edtRegCode2: TEdit;
    OgProtectExe1: TOgProtectExe;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Image2: TImage;
    myLabel3d1: TmyLabel3d;
    procedure Sair1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    //  procedure SpeedButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton3Click(Sender: TObject);
    procedure btnVerifyClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
   USER,PASS:String;
   RegStr : string;
   fecha: Boolean;
  end;

var
  Form_Usuario: TForm_Usuario;


  implementation

  {$R *.dfm}

uses   OgUtil, Principal, Z_RotinasGerais, Z_CriptDecript;

const
  EncryptionKey : TKey = ($E5, $8F, $84, $D6, $92, $C9, $A4, $D8,
                          $1A, $FA, $6F, $8D, $AB, $FC, $DF, $B4);

Function GetStateK (Key: integer): boolean;

begin

  Result := Odd (GetKeyState (Key));

end;

procedure TForm_Usuario.Sair1Click(Sender: TObject);
begin
CLOSE;

end;

procedure TForm_Usuario.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
{Try
 USER:=(edit11.Text);
 PASS:= Wcriptografar(Edit2.Text,5);
  if USER='' then
  begin
    Informacao4.ShowModal;
    edit11.SetFocus;
    end
    else
  {  if PASS ='' then
    begin
    Informacao2.ShowModal;
    edit2.SetFocus;
    end
    else }
 {if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,PASS]),[locaseInsensitive])then
 begin
// Application.CreateForm(TFormPrincipal, FormPrincipal);
  FormPrincipal.suiStatusBar1.Panels[1].Text:= USER;
// Form_Usuario.Visible:=False;
 //FormPrincipal.Show;
// Form_Usuario.Free;
  close;
 end
 else
   begin
    Informacao.ShowModal;
    edit11.SetFocus;
    end;
except
//       Informacao3.ShowModal;
end;  }
end;
END;


procedure TForm_Usuario.suiButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm_Usuario.suiButton1Click(Sender: TObject);
var
  Key : TKey;
  Code : TCode;
  Modifier : Longint;
begin
Try
 USER:=(edit11.Text);
 PASS:= Wcriptografar(Edit2.Text,5);
  if USER='' then
  begin
    Informacao4.ShowModal;
    edit11.SetFocus;
    end
    else
  {  if PASS ='' then
    begin
    Informacao2.ShowModal;
    edit2.SetFocus;
    end
    else }
 if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,PASS]),[locaseInsensitive])then
 begin
// Application.CreateForm(TFormPrincipal, FormPrincipal);
 //FormPrincipal.Visible := True;
// FormPrincipal.Show;
//FormPrincipal.suiStatusBar1.Panels[1].Text:= USER;
 // Form_Usuario.Free;
 btnVerify.Click;

  Key := EncryptionKey;
  Modifier := StringHashELF(edtUserName2.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
    begin
      edtStatus.Text := 'Expirada';
      GroupBox2.Visible := True;
    end else
      edtStatus.Text := 'Valida';
      if  edtStatus.Text = 'Valida' then
      begin
         fecha := True;
         Form_Usuario.Close;
      end;
    end else
    begin
    edtStatus.Text := 'Não é Valida';
    ShowMessage('Sistema não Esta liberado para Este cliente...');
    end;
 end
 else
   begin
    Informacao.ShowModal;
    edit11.SetFocus;
    end;
except
//       Informacao3.ShowModal;
end;
end;


procedure TForm_Usuario.FormShow(Sender: TObject);
var
  Key : TKey;
  Code : TCode;
  Modifier : Longint;
  s:string;
  b:Integer;
  s1:TDateTime;
begin

DM.SDS_Empresa.Active:= True;
DM.SDS_Usuarios.Active:= True;
DM.SDS_CONFIGURACOES.Active:= True;
DM.sds_IdSistema.Active:= True;

if DM.sds_IdSistema.IsEmpty then
begin
dm.sds_IdSistema.Insert;
dm.sds_IdSistemaSEQ.Text := '1';
DM.sds_IdSistemaCNPJ.Text := DM.SDS_EmpresaCNPJ.Text;
DM.sds_IdSistemaCHAVE.Text := edtRegCode2.Text;
dm.sds_IdSistema.Post;
dm.sds_IdSistema.ApplyUpdates(0);
end;

begin
  edtRegCode2.Text := DM.sds_IdSistemaCHAVE.Text;

  btnVerifyClick(sender);

  Key := EncryptionKey;
  Modifier := StringHashELF(edtUserName2.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then
  begin
    if IsRegCodeExpired(Key, Code) then
    begin
      edtStatus.Text := 'Expirada';
      GroupBox2.Visible :=  True;
    end else
     if edtStatus.Text = 'Valida' then
      if  edtStatus.Text = 'Valida' then
      begin
        GroupBox2.Visible := False;
        //SpeedButton1.Click;


       end;
  end else
  begin
    edtStatus.Text := 'Não é Valida';
    GroupBox2.Visible :=  True;
  end;

   s:= DateToStr(OnGuard.GetExpirationDate(Key,Code));
   s1:= OnGuard.GetExpirationDate(Key,Code);
   b:= DaysBetween(Date, s1);

   label1.Caption := '';
   Label1.Caption := 'VENCIMENTO DO REGISTRO'+ #13;
   Label1.Caption := Label1.Caption + 'Data Vecto: ' + s + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(b);

  { label1.Caption := '';
   Label1.Caption := 'ID da instalação : '+ IntToStr(L.IDInstalacao) + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(L.Dias_RestantesU) + #13;
   Label1.Caption := Label1.Caption + 'Data Vencimento : ' + l.Data_VencimentoU + #13;
 //  Label1.Caption := Label1.Caption + 'Chave : ' + l.Chave_RegistradaU + #13;
   Label1.Caption := Label1.Caption + 'E-mail do cliente : ' + l.Email_ClienteU + #13;
   Label1.Caption := Label1.Caption + 'Versão : ' + IntToStr(l.Versao_Sistema) + #13;
   if L.Sistema_DemoU then
         Label1.Caption := Label1.Caption + 'DEMO'
   else
         Label1.Caption := Label1.Caption + 'REGISTRADO';  }

   {dados.Clear;
   dados.Lines.Add(  l.Cliente_Nome );
   dados.Lines.Add(  l.Cliente_CPF );
   dados.Lines.Add(  l.Cliente_Endereco );
   dados.Lines.Add(  l.Cliente_Cidade );
   dados.Lines.Add(  l.Cliente_Estado );
   dados.Lines.Add(  l.Cliente_Telefone ); }
Edit11.SetFocus;
end;
end;

procedure TForm_Usuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then
Application.Terminate;
end;

procedure TForm_Usuario.Edit2Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);

    // RxHints.SetHintStyle(hsRoundRect, 5, true, taLeftJustify ); // Forma de Balão
    // Application.HintHidePause := 100000 ;
    // edit2.Hint := 'Digite a Senha do Usuario do Sistema';
    // edit2.ShowHint := True ;
end;

procedure TForm_Usuario.Edit2Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TForm_Usuario.FormCreate(Sender: TObject);
begin
//HintDesign1.Delay := 20;
//Edit11.SetFocus;
L.executar;
end;

procedure TForm_Usuario.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
      Edit2.SetFocus;
end;
end;

procedure TForm_Usuario.suiButton3Click(Sender: TObject);

begin
  GroupBox2.Visible := True;
{   l.renovar;
   label1.Caption := '';
   Label1.Caption := 'ID da instalação : '+ IntToStr(L.IDInstalacao) + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(L.Dias_RestantesU) + #13;
   Label1.Caption := Label1.Caption + 'Data Vencimento : ' + l.Data_VencimentoU + #13;
  // Label1.Caption := Label1.Caption + 'Chave : ' + l.Chave_RegistradaU + #13;
   Label1.Caption := Label1.Caption + 'E-mail do cliente : ' + l.Email_ClienteU + #13;
   Label1.Caption := Label1.Caption + 'Versão : ' + IntToStr(l.Versao_Sistema )+ #13;   if L.Sistema_DemoU then
         Label1.Caption := Label1.Caption + 'DEMO'
   else
         Label1.Caption := Label1.Caption + 'REGISTRADO'   }


end;

procedure TForm_Usuario.btnVerifyClick(Sender: TObject);
var
  Key : TKey;
  Code : TCode;
  Modifier : Longint;
  s : string;
  b:Integer;
  s1:TDateTime;
begin
  S := '';
  Key := EncryptionKey;
  Modifier := StringHashELF(edtUserName2.Text);
  ApplyModifierToKeyPrim(Modifier, Key, SizeOf(Key));
  HexToBuffer(edtRegCode2.Text, Code, SizeOf(Code));
  if IsRegCodeValid(Key, Code) then begin
    if IsRegCodeExpired(Key, Code) then
      edtStatus.Text := 'Expirada'
    else
      edtStatus.Text := 'Valida';

      if  edtStatus.Text = 'Valida' then
      begin
        dm.sds_IdSistema.edit;
        DM.sds_IdSistemaCHAVE.Text := edtRegCode2.Text;
        dm.sds_IdSistema.Post;
        dm.sds_IdSistema.ApplyUpdates(0);
        GroupBox2.Visible := False;
        end;
   s:= DateToStr(OnGuard.GetExpirationDate(Key,Code));
   s1:= OnGuard.GetExpirationDate(Key,Code);
   b:= DaysBetween(Date, s1);
   label1.Caption := '';
   Label1.Caption := 'VENCIMENTO DO REGISTRO'+ #13;
   Label1.Caption := Label1.Caption + 'Data Vecto: ' + s + #13;
   Label1.Caption := Label1.Caption + 'Dias Restantes : ' + IntToStr(b);
  end else
    edtStatus.Text := 'Chave Não Valida';
end;

procedure TForm_Usuario.SpeedButton1Click(Sender: TObject);
begin
GroupBox2.Visible := False;
end;

procedure TForm_Usuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If GetStateK (VK_LMENU) And (Key = VK_F4) Then

fecha := False;

If (Key = VK_F2) Then
begin
l.renovar;
end;
end;

procedure TForm_Usuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
If Not fecha Then

Action := caNone
Else

Action := caFree;
end;

end.

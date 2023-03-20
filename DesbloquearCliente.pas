unit DesbloquearCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, SUIDBCtrls, ExtCtrls, SUIButton, RXCtrls,
  Mask, ToolEdit,  SUIImagePanel, SUIGroupBox, SUIRadioGroup, DB, DBTables,
  SUIDlg, RXDBCtrl, DBXpress;

type
  TFormDesbloquearCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboEdit1: TComboEdit;
    RxLabel1: TRxLabel;
    suiButton2: TsuiButton;
    Bevel1: TBevel;
    RxLabel2: TRxLabel;
    suiDBRadioGroup11: TsuiDBRadioGroup;
    MessageCanClose: TsuiMessageDialog;
    Panel3: TPanel;
    RxLabel3: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    RxLabel4: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    RxLabel5: TRxLabel;
    suiDBEdit3: TsuiDBEdit;
    ErroGravacao: TsuiMessageDialog;
    MessageCli: TsuiMessageDialog;
    MessageLocCli: TsuiMessageDialog;
    DBMemo2: TDBMemo;
    Panel4: TPanel;
    suiButton5: TsuiButton;
    suiButton4: TsuiButton;
    suiDBRadioGroup2: TsuiDBRadioGroup;
    suiDBRadioGroup3: TsuiDBRadioGroup;
    RxLabel6: TRxLabel;
    suiDBEdit4: TsuiDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure suiDBRadioGroup11Enter(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure suiDBRadioGroup11Exit(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDesbloquearCliente: TFormDesbloquearCliente;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Z_RotinasGerais, ConsClientes, Principal;

{$R *.dfm}

procedure TFormDesbloquearCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormDesbloquearCliente:=nil;
end;

procedure TFormDesbloquearCliente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Cli.State in [dsInsert, dsEdit, dsSetKey] then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormDesbloquearCliente.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormDesbloquearCliente.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
//ComboEdit1.Text := DM.SDS_ClientesCODIGO.Text;
DM.SDS_Cli.Active := FALSE;
DM.SDS_Cli.Active := True;

SuiButton2.Enabled:= False;
suiButton4.Enabled:= False;
suiButton5.Enabled:= False;

If DM.SDS_Cli.locate('CODIGO',ComboEdit1.Text,[])= True then
begin
      SuiButton2.Enabled:= True;
      SuiButton2.SetFocus;
      suiButton2Click(Sender);
end;
end;

procedure TFormDesbloquearCliente.suiDBRadioGroup11Enter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormDesbloquearCliente.ComboEdit1Enter(Sender: TObject);
begin
     CorEntrada(Sender);
end;

procedure TFormDesbloquearCliente.ComboEdit1Exit(Sender: TObject);
begin
     CorSaida(Sender);
      If DM.SDS_Cli.locate('CODIGO',ComboEdit1.Text,[])= True then
begin
      SuiButton2.Enabled:= True;
      SuiButton2.SetFocus;
end;

end;

procedure TFormDesbloquearCliente.suiDBRadioGroup11Exit(Sender: TObject);
begin
     CorSaida(Sender);
end;

procedure TFormDesbloquearCliente.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      ComboEdit1.Text:= DM.SDS_ClientesCODIGO.Text;
      SuiButton2.Enabled:= True;
      SuiButton2.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Clientes!!');
end;
end;

procedure TFormDesbloquearCliente.suiButton2Click(Sender: TObject);
begin
Try
DM.SDS_Cli.Edit;
SuiButton2.Enabled:= False;
suiButton4.Enabled:= True;
suiButton5.Enabled:= True;
ComboEdit1.Enabled:= False;
Panel2.Enabled:= True;
DBMemo2.Color:= clWindow;
suiDBEdit4.Color:= clWindow;
   Except
     ErroGravacao.ShowModal;
   end; 
end;

procedure TFormDesbloquearCliente.suiButton5Click(Sender: TObject);
begin
Try
DM.SDS_Cli.Cancel;
SuiButton2.Enabled:= True;
suiButton4.Enabled:= False;
suiButton5.Enabled:= False;
ComboEdit1.Enabled:= True;
Panel2.Enabled:= True;
DBMemo2.Color:= $00E8E8E8;
ComboEdit1.SetFocus;
   Except
     ErroGravacao.ShowModal;
   end;
end;

procedure TFormDesbloquearCliente.DBMemo2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormDesbloquearCliente.DBMemo2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormDesbloquearCliente.suiButton4Click(Sender: TObject);
begin
{TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD); }
 Try
      begin
          DM.SDS_Cli.Post;
          DM.SDS_Cli.ApplyUpdates(0);
         // DM.SQLC.Commit(TD);
SuiButton2.Enabled:= True;
Panel2.Enabled:= True;
DBMemo2.Color:= $00E8E8E8;
suiDBEdit4.Color:= $00E8E8E8;
suiButton4.Enabled:= False;
suiButton5.Enabled:= False;
ComboEdit1.Enabled:= True;
ComboEdit1.SetFocus;
      end;
     DM.SDS_Clientes.Refresh;
     Except
     ErroGravacao.ShowModal;
    end;
end;


procedure TFormDesbloquearCliente.ComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;

If  ComboEdit1.Text= '' then
    Begin
    Messagecli.ShowModal;
    ComboEdit1.SetFocus;
    end else
If  ComboEdit1.Text <> '' then
    Begin
//DM.SDS_Clientes.Active:= True;
If DM.SDS_Cli.locate('CODIGO',ComboEdit1.Text,[])= True then
begin
      SuiButton2.Enabled:= True;
      SuiButton2.SetFocus;
end
else
begin
    ComboEdit1.color:= clWhite;
    MessageLocCli.ShowModal;
    if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      ComboEdit1.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
    If DM.SDS_Cli.locate('CODIGO',ComboEdit1.Text,[])= True then
begin
      SuiButton2.Enabled:= True;
      SuiButton2.SetFocus;
end;
end;
end;
end;
end;

procedure TFormDesbloquearCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.

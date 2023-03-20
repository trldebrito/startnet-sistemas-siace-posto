unit Contrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBXpress, db, SUIButton, StdCtrls, SUIMemo, SUIDlg,
  SUIDBCtrls, DBCtrls, Mask;

type
  TFormContrato = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    btnLocalizar: TsuiButton;
    ErroGravacao: TsuiMessageDialog;
    MsgErro: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    DBNavigator: TsuiDBNavigator;
    suiDBMemo1: TsuiDBMemo;
    suiDBEdit1: TsuiDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure AtualizaManutencao;
    procedure HabilitaNovo;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure suiDBMemo1Enter(Sender: TObject);
    procedure suiDBMemo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
  Cod:Integer;
    { Public declarations }
  end;

var
  FormContrato: TFormContrato;
  TD:TTransactionDesc;

implementation

uses ModulodeDados, Principal, Z_RotinasGerais;

{$R *.dfm}

procedure TFormContrato.HabilitaPanel;
begin
panel1.Enabled:= True;
end;

procedure TFormContrato.DesabilitaPanel;
begin
panel1.Enabled:= False;

end;

Procedure TFormContrato.AtualizaManutencao;
begin
DBNavigator.Enabled:= (dm.sds_contrato.State = dsBrowse);
BTNNOVO.Enabled:= (dm.sds_contrato.State = dsBrowse);
BTNEXCLUIR.Enabled:= (dm.sds_contrato.State = dsBrowse);
BTNLOCALIZAR.Enabled:= (dm.sds_contrato.State = dsBrowse);
BTNSALVAR.Enabled:= (dm.sds_contrato.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (dm.sds_contrato.State in [dsInsert, dsEdit]);
BTNEDITAR.Enabled:= (dm.sds_contrato.State = dsBrowse);
end;

procedure TFormContrato.HabilitaNovo;
begin
BTNNOVO.Enabled:=TRUE;
BTNEDITAR.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BTNSALVAR.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BTNLOCALIZAR.Enabled:= False;
end;

procedure TFormContrato.btnNovoClick(Sender: TObject);
begin
If FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   //DM.Spc_lyBancos.ExecProc;
   //Cod:= (DM.Spc_lybancos.ParamByName('new').AsInteger);
   dm.sds_contrato.Insert;
   suiDBEDIT1.TEXT:=IntTostr(Cod);
  // Label27.Caption:= dm.sds_lybancosCODIGO_BOLETO.TEXT;
   DM.sds_contratoCOD_EMPRESA.Text := dm.SDS_EmpresaCodigo.text;
   dm.sds_contratoUSERCAD.Text := FormPrincipal.UserLogado;
   dm.sds_contratoDATACAD.Text := datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
   suiDBmemo1.Color:= clwhite;
   suiDBmemo1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormContrato.btnEditarClick(Sender: TObject);
begin
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
   dm.sds_contrato.Edit;
   AtualizaManutencao;
   HabilitaPanel;
   suiDBmemo1.Color:= clwhite;
   suiDBmemo1.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
   end;
end;

procedure TFormContrato.btnCancelarClick(Sender: TObject);
begin
Try
     dm.sds_contrato.Cancel;
 if dm.sds_contrato.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
    DesabilitaPanel;
    suidbmemo1.Color:= $00E8E8E8;
    Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormContrato.btnSalvarClick(Sender: TObject);
begin
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
 Try
   begin
   DM.SDS_contrato.Post;
   DM.SDS_contrato.ApplyUpdates(0);
   DM.SQLC.Commit(TD);
   AtualizaManutencao;
   DesabilitaPanel;
   suidbmemo1.Color:= $00E8E8E8;
      end;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormContrato.btnExcluirClick(Sender: TObject);
begin
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
TD.TransactionID := 1;
TD.IsolationLevel := XILReadCommitted;
DM.SQLC.StartTransaction(TD);
Try
 Begin
    DM.SDS_contrato.Delete;
    DM.SDS_contrato.ApplyUpdates(0);
    DM.SQLC.Commit(TD);
 end;
 if DM.SDS_contrato.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      DM.SQLC.Rollback(TD);
            MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormContrato.btnLocalizarClick(Sender: TObject);
begin
close;
end;

procedure TFormContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormContrato:=nil;
end;

procedure TFormContrato.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_contrato.State in [dsInsert, dsEdit, dsSetKey] then
  begin
    MsgInformacao.Text:= 'Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!';
     MsgInformacao.ShowModal;
   CanClose := False;
end;
end;

procedure TFormContrato.FormShow(Sender: TObject);
begin
DM.SDS_Contrato.Active := FALSE;
DM.SDS_Contrato.Active := TRUE;
dm.SDS_Empresa.ACTIVE := FALSE;
dm.SDS_Empresa.ACTIVE := TRUE;
suidbmemo1.Color:= $00E8E8E8;
DesabilitaPanel;
end;

procedure TFormContrato.suiDBMemo1Enter(Sender: TObject);
begin
// CorEntrada(Sender);
end;

procedure TFormContrato.suiDBMemo1Exit(Sender: TObject);
begin
// Corsaida(sender);
end;

end.

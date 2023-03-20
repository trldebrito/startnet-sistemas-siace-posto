unit LancamentosCaixaSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sUIButton, StdCtrls, Mylabel, CurrEdit,
  SUIEdit, Mask, ToolEdit, RXCtrls, FMTBcd, DB, SqlExpr, SUIDlg, ACBrBase,
  IBCustomDataSet, IBQuery;
  
type
  TFormLancamentosCaixaSaida = class(TForm)
    Panel1: TPanel;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    myLabel3d1: TmyLabel3d;
    DateEdit1: TDateEdit;
    Edit1: TsuiEdit;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    BTNSALVAR: TsuiButton;
    BTNCANCELAR: TsuiButton;
    suiButton1: TsuiButton;
    MessageCanClose: TsuiMessageDialog;
    MSGErro: TsuiMessageDialog;
    SPC_MovimentoBancario: TSQLStoredProc;
    MSG: TsuiMessageDialog;
    Label34: TLabel;
    codigo_plano: TComboEdit;
    RxLabel1: TRxLabel;
    plano_desc: TEdit;
    aux: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure BTNSALVARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DateEdit1Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure CurrencyEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure codigo_planoButtonClick(Sender: TObject);
    procedure codigo_planoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancamentosCaixaSaida: TFormLancamentosCaixaSaida;

implementation

uses Acesso, ModulodeDados, Z_RotinasGerais, Principal, ConsPlanoContas;

{$R *.dfm}

procedure TFormLancamentosCaixaSaida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormLancamentosCaixaSaida:=nil;
end;

procedure TFormLancamentosCaixaSaida.suiButton1Click(Sender: TObject);
begin
Edit1.Enabled:= True;
CurrencyEdit1.Enabled:= True;
BTNSALVAR.Enabled:= True;
BTNCANCELAR.Enabled:= True;
suiButton1.Enabled:= False;
DateEdit1.Date:= Date;
codigo_plano.Enabled := True;
plano_desc.Enabled:= True;
Edit1.SetFocus;
end;

procedure TFormLancamentosCaixaSaida.FormShow(Sender: TObject);
begin
DateEdit1.Enabled:= False;
Edit1.Enabled:= False;
CurrencyEdit1.Enabled:= False;
BTNSALVAR.Enabled:= False;
BTNCANCELAR.Enabled:= False;
suiButton1.Enabled:= True;

codigo_plano.Enabled := False;
plano_desc.Enabled:= False;
DM.SDS_PlContas.Active:= False;
DM.SDS_PlContas.Active:= True;
end;

procedure TFormLancamentosCaixaSaida.BTNCANCELARClick(Sender: TObject);
begin
DateEdit1.Clear;
Edit1.Clear;
CurrencyEdit1.Clear;
Edit1.Enabled:= False;
CurrencyEdit1.Enabled:= False;
BTNSALVAR.Enabled:= False;
BTNCANCELAR.Enabled:= False;
suiButton1.Enabled:= True;
end;

procedure TFormLancamentosCaixaSaida.BTNSALVARClick(Sender: TObject);
begin
If Edit1.Text = '' then
begin
MSG.Text:= 'Entre com o Histórico do Lançamento';
MSG.ShowModal;
Edit1.SetFocus;
end else
Try
{SPC_MovimentoBancario.Params[1].AsDate:= DATEEdit1.Date;
SPC_MovimentoBancario.Params[2].AsString:= Edit1.Text;
SPC_MovimentoBancario.Params[3].AsString:= FormPrincipal.UserLogado;
SPC_MovimentoBancario.Params[4].AsString:= 'C';
SPC_MovimentoBancario.Params[5].Value:= 0;
SPC_MovimentoBancario.Params[6].Value:= CurrencyEdit1.Text;
SPC_MovimentoBancario.Params[7].Value:= NULL;
SPC_MovimentoBancario.Params[8].Value:= NULL;
SPC_MovimentoBancario.Params[9].Value:= NULL;
SPC_MovimentoBancario.Params[10].Value:= 'AVU';
SPC_MovimentoBancario.Execproc; }
try
    if dm.IBTransaction.InTransaction then
      dm.IBTransaction.Commit;
    dm.IBTransaction.StartTransaction;
    aux.Close;
    aux.SQL.Text :=
      'insert into MOVIMENTO_DIARIO(DATA, HISTORICO, USUARIO, TIPO,  VALOR_ENTRADA,'+
      ' VALOR_SAIDA, ORIGEM, COD_EMPRESA, HORA, DB_CR, COD_PLANO) values(' +
      ':DATA, :MOTIVO, :USUARIO, :TP, :ENTRADA, :SAIDA, :ORIGEM, :COD_EMP, current_time, :DC, :PLANO)';
    aux.ParamByName('DATA').AsDate := DateEdit1.Date;
    aux.ParamByName('MOTIVO').AsString := Edit1.Text;
    aux.ParamByName('USUARIO').AsString := FormPrincipal.UserLogado;
    aux.ParamByName('TP').AsString := 'C';
    aux.ParamByName('ENTRADA').AsCurrency  := 0;
    aux.ParamByName('SAIDA').AsCurrency := StrToCurr(CurrencyEdit1.Text);
    aux.ParamByName('ORIGEM').AsString := 'AVU';
    aux.ParamByName('COD_EMP').AsInteger := DM.SDS_EmpresaCODIGO.AsInteger;
    aux.ParamByName('DC').AsString := 'D';
    IF codigo_plano.Text > '' THEN
    aux.ParamByName('PLANO').AsInteger := StrToInt(codigo_plano.TEXT)
    else
    aux.ParamByName('PLANO').Value := Null;
    aux.ExecSQL;
    dm.IBTransaction.Commit;
    except
    Application.MessageBox('Erro ao inserir movimento!', 'Siace - Aviso',
      MB_ICONERROR + MB_OK);
    dm.IBTransaction.Rollback;
  end;



DateEdit1.Clear;
Edit1.Clear;
CurrencyEdit1.Clear;
Edit1.Enabled:= False;
CurrencyEdit1.Enabled:= False;
BTNSALVAR.Enabled:= False;
BTNCANCELAR.Enabled:= False;
suiButton1.Enabled:= True;
codigo_plano.Clear;
plano_desc.Clear;
codigo_plano.Enabled := False;
plano_desc.Enabled:= False;

Except
     MSGErro.ShowModal;
     CurrencyEdit1.SetFocus;
   end;
end;

procedure TFormLancamentosCaixaSaida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if BTNSALVAR.Enabled = TRUE then
  begin
   MessageCanClose.ShowModal;
    CanClose := False;
  end;
end;

procedure TFormLancamentosCaixaSaida.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormLancamentosCaixaSaida.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormLancamentosCaixaSaida.CurrencyEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormLancamentosCaixaSaida.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormLancamentosCaixaSaida.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormLancamentosCaixaSaida.CurrencyEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormLancamentosCaixaSaida.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormLancamentosCaixaSaida.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
      if (Key=VK_F11) then
      begin
       DateEdit1.Enabled := true;
      end;
end;

procedure TFormLancamentosCaixaSaida.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if (Key=VK_F12) then
      begin
       DateEdit1.Enabled := true;
      end;
end;

procedure TFormLancamentosCaixaSaida.codigo_planoButtonClick(
  Sender: TObject);
begin
if FormConsPlanoContas=nil   then
    begin
    FormConsPlanoContas:=TFormConsPlanoContas.Create(self);
      FormConsPlanoContas.ShowModal;
      codigo_plano.Text := dm.SDS_PlContasCODIGO.Text;
      plano_desc.Text := dm.SDS_PlContasNOME.Text;
      end;
end;

procedure TFormLancamentosCaixaSaida.codigo_planoExit(Sender: TObject);
begin
IF codigo_plano.Text > '' THEN
begin
DM.SDS_PlContas.Active:= False;
DM.SDS_PlContas.Active:= True;
If (DM.SDS_PlContas.Locate('CODIGO',VarArrayOf([codigo_plano.Text]),[])) then
begin
plano_desc.Text:= DM.SDS_PlContasNome.Text;
BTNSALVAR.SetFocus;
end;
end;
end;

end.

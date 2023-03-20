unit chequesTroco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ToolEdit, RXDBCtrl, Mask, jpeg, ExtCtrls,
  SUIDBCtrls, SUIButton, Mylabel, Grids, DBGrids, CurrEdit, RXCtrls,
  AdvGlowButton, DB, IBCustomDataSet, IBQuery, IBDatabase;

type
  TFormCheques_troco = class(TForm)
    Panel3: TPanel;
    DBGrid1: TsuiDBGrid;
    Panel5: TPanel;
    myLabel3d1: TmyLabel3d;
    Panel1: TPanel;
    myLabel3d2: TmyLabel3d;
    suiDBNavigator2: TsuiDBNavigator;
    edTVALOR: TEdit;
    Panel2: TPanel;
    RxLabel4: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    suiDBGrid1: TsuiDBGrid;
    Panel4: TPanel;
    RxLabel1: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel6: TPanel;
    Label2: TLabel;
    conta: TComboEdit;
    Label3: TLabel;
    Edit1: TEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Label1: TLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    IBTRAce: TIBTransaction;
    QBuscaItens: TIBQuery;
    DSQBuscaItens: TDataSource;
    Panel7: TPanel;
    Edit2: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    btnNovo: TAdvGlowButton;
    BtnGravar: TAdvGlowButton;
    BtnExcluir: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    DelItem: TIBQuery;
    QInsCheque: TIBQuery;
    Edit6: TEdit;
    CurrencyEdit3: TCurrencyEdit;
    Label4: TLabel;
    BTBaixaParcial: TsuiButton;
    QBuscaItensCOD_CHEQUE: TIntegerField;
    QBuscaItensVALOR: TIBBCDField;
    QBuscaItensDATA_EMISSAO: TDateField;
    QBuscaItensDATA_VENCIMENTO: TDateField;
    QBuscaItensPAGO: TIBStringField;
    QBuscaItensORIGEM: TIBStringField;
    QBuscaItensDOCUMENTO_ORIGEM: TIntegerField;
    QBuscaItensCOD_CONTA: TIntegerField;
    QBuscaItensCOMP_NA_INCLUSAO: TIBStringField;
    QBuscaItensDATA_COMPENSACAO: TDateField;
    QBuscaItensHISTORICO: TIBStringField;
    QBuscaItensNUMERO_CHEQUE: TIntegerField;
    QBuscaItensCOD_USUARIO: TIntegerField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensTROCO: TIBStringField;
    QBuscaItensFAVORECIDO: TIBStringField;
    QBuscaItensCOD_VENDA: TIntegerField;
    QBuscaItensCOD_COMPRA: TIntegerField;
    procedure gr(Sender: TObject);
    procedure contaButtonClick(Sender: TObject);
    procedure contaExit(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BuscaItens;
    procedure LimpaItens;
    procedure BtnGravarClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTBaixaParcialClick(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
    A: Real;
  end;

var
  FormCheques_troco: TFormCheques_troco;
   texto : string;
   
implementation

uses ModulodeDados, Estenso, Ubibli1, ModulodeDadosBaixas, Vendas, ConsContaBancariapas,
  Utroco;

{$R *.dfm}

procedure TFormCheques_troco.LimpaItens;
begin
   EdIT2.Clear;
   CONTA.Clear;
   //Edit1.Clear;
   Edit4.Clear;
   Edit5.Clear;
   CurrencyEdit3.Clear;
   edTVALOR.SetFocus;
   DateEdit1.Clear;
   DateEdit2.Clear;
end;

procedure TFormCheques_troco.gr(Sender: TObject);
Var X: Real;
dtven : string;
begin
Dtven:= datetostr(DATE);

DMB.SDS_BaixarCheque.Active:= False;
DMB.SDS_BaixarCheque.Active:= True;

DMB.SDS_BaixarCheque.Filtered := false;
DMB.SDS_BaixarCheque.Filter := 'DATA_CADASTRO ='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((Dtven))));
DMB.SDS_BaixarCheque.Filtered := True;



IF DMB.SDS_BaixarCheque.RecordCount = 0 THEN
BEGIN
BTBaixaParcial.Enabled:= FALSE;
DBGRID1.Enabled:= FALSE;
end;
{DMB.SDS_BaixarCheque.First;
X:= X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
DMB.SDS_BaixarCheque.Next;
EdtTotalGeral.value:= X;
While not DMB.SDS_BaixarCheque.Eof do
begin
X:= X + DMB.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
DMB.SDS_BaixarCheque.Next;
EdtTotalGeral.value:= X;
end;
DMB.SDS_BaixarCheque.First;  }
BTNNOVO.SetFocus;
end;

procedure TFormCheques_troco.BtnSairClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFormCheques_troco.btnNovoClick(Sender: TObject);
begin
DM.SDS_conta_bancaria.Close;
DM.SDS_conta_bancaria.Open;

  if IBTRAce.Active then
     IBTRAce.Commit;
  QBuscaItens.Close;

  panel6.Enabled     := True;

  DateEdit1.Date       := date;
  DateEdit2.Date       := date;
  btngravar.Enabled   := True;
  btnexcluir.Enabled  := false;


//  edtcodmot.Enabled  := true;
//  BtnConsMot.Enabled := true;
//  BtnAddMot.Enabled  := true;



 // LimpaItens;
  conta.SetFocus;
  CurrencyEdit3.Value :=  FORMTROCO.CHEQUE;
  Edit6.Text:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));

end;

procedure TFormCheques_troco.BtnExcluirClick(Sender: TObject);
var iOrdem : integer;
begin
  inherited;
  iOrdem:= QBuscaItensCOD_CHEQUE.AsInteger;
  if Application.MessageBox('Confirma a Exclusão do Cheque?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
     begin
        try
          try
            with DelItem do
               begin
                  close;
                  Parambyname('cod_cheque').AsInteger  := StrToInt(Edit6.Text);
                  ExecSQL;
               end;
            IBTRAce.Commit;
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Excluir o cheque');
          end;
        finally
          DelItem.Close;
          LimpaItens;
          BuscaItens;
        end;
     end;
end;

procedure TFormCheques_troco.BuscaItens;
begin
   if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('cod_cheque').AsInteger:= strtoint(Edit6.Text);
         open;
        // Last;
      end;
   IBTRAce.CommitRetaining;
 //  dmb.SDS_BaixarCheque.Refresh;

QBuscaItens.First;
A:= 0;
if QBuscaItensVALOR.VALUE > 0 then
A:= A + QBuscaItensVALOR.AsFloat;
QBuscaItens.Next;
CurrencyEdit1.Text:= FloatToStr(A);
While not QBuscaItens.Eof do
begin
if QBuscaItensVALOR.VALUE > 0 then
A:= A + QBuscaItensVALOR.AsFloat;
QBuscaItens.next;
CurrencyEdit1.Text:= FloatToStr(A);
end;
QBuscaItens.first;
//QBuscaItens.Refresh;
end;

procedure TFormCheques_troco.BtnGravarClick(Sender: TObject);
begin
if IBTRAce.Active then
     IBTRAce.Commit;
  IBTRAce.StartTransaction;
  if BtnGravar.Enabled = true then
     begin
        try
         try
            with QInsCheque do
               begin
                  close;
                  Parambyname('cod_cheque').AsInteger     := strtoint(Edit6.Text);
                  Parambyname('valor').Value              := CurrencyEdit3.Value;
                  Parambyname('data_emissao').AsDate      := DateEdit1.Date;
                  Parambyname('data_Vencimento').AsDate   := DateEdit2.Date;
                  Parambyname('pago').AsString            := 'F';
                  Parambyname('origem').AsString            := 'VD';
                  Parambyname('documento_origem').Asinteger  := StrToInt(formvendas.N_venda.text);
                  Parambyname('Cod_conta').AsInteger         := StrToInt(conta.Text);
                  Parambyname('comp_na_inclusao').Asstring     := 'F';
                  Parambyname('data_compensacao').AsDate      := DATE;
                  Parambyname('historico').Asstring           := 'Troco em cheque ref a Venda nº '+ formvendas.N_venda.text;
                  Parambyname('numero_cheque').AsInteger      := StrToInt(Edit2.Text);
                  Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
                  Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
                  Parambyname('Troco').AsString               := 'T';
                  Parambyname('Favorecido').Asstring          := Edit4.Text;
                  Parambyname('cod_venda').Asinteger          := StrToInt(formvendas.N_venda.text);
                  Parambyname('cod_compra').VALUE             := null;
                  Parambyname('observacao').AsString          := trim(Edit5.Text);
                  ExecSQL;
                 // panel5.Enabled:= false;
                  panel6.Enabled:= false;
               end;
            IBTRAce.Commit;
           // Botoes('G');
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Gravar o Cheque');
           // panel5.Enabled:= false;
            panel6.Enabled:= true;
          end;
        finally
          QInsCheque.Close;
          btngravar.Enabled   := true;
          btnexcluir.Enabled  := False;
        end;
     end;
 { else
     begin
        try
          try
            with QUpdAce do
               begin
                  close;
                  Parambyname('codace').AsInteger  := strtoint(cod_ace.Text);
                  Parambyname('dataace').AsDate    := EdtData.Date;
                  Parambyname('obs').AsString      := trim(MemoOBS.Text);
                  ExecSQL;
               end;
            IBTRAce.Commit;
            panel6.Enabled:= false;
           // panel6.Enabled:= true;
           // Botoes('G');
          except
            IBTRAce.Rollback;
            showmessage('Erro ao Gravar o cheque');
          end;
        finally
          QUpdAce.Close;
          btngrava.Enabled := true;
          btnexclui.Enabled:= true;
        end;
     end; }
  BuscaItens;
 // LimpaItens;
end;

procedure TFormCheques_troco.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormCheques_troco.DBGrid1CellClick(Column: TColumn);
begin
dmb.SDS_BaixarCheque.Edit;
if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
dmb.SDS_BaixarChequeCHEK_BOX.AsString := ''
else dmb.SDS_BaixarChequeCHEK_BOX.AsString := 'X';
dmb.SDS_BaixarCheque.Post;
dmb.SDS_BaixarCheque.ApplyUpdates(0);


dmb.SDS_BaixarCheque.Refresh;
dmb.SDS_BaixarCheque.First;
A:= 0;
if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
A:= A + dmb.SDS_BaixarChequeVALOr_CHEQUE.AsFloat;
dmb.SDS_BaixarCheque.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not dmb.SDS_BaixarCheque.Eof do
begin
if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
A:= A + dmb.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
dmb.SDS_BaixarCheque.next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
dmb.SDS_BaixarCheque.first;
dmb.SDS_BaixarCheque.Refresh;
end;

procedure TFormCheques_troco.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 Var
    Check: Integer;
    R: TRect;
    DtVen: TDateTime;
begin
  if not odd(dmb.SDS_BaixarCheque.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FDE2BD;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;

  DtVen:= dmb.SDS_BaixarChequeDATA_DEPOSITO.Value;
  If DtVen < Date then // condição
  Dbgrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

//Desenha um checkbox no dbgrid
if column.FieldName = 'CHEK_BOX' then begin
DBGrid1.Canvas.FillRect(Rect);
Check := 0;
if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;
end;


procedure TFormCheques_troco.contaButtonClick(Sender: TObject);
begin
      FormConsContaBancaria:=TFormConsContaBancaria.Create(self);
     // FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsContaBancaria.ShowModal;
      if not DM.SDS_conta_bancaria.Eof then
      begin
       conta.Text := dm.SDS_Conta_BancariaCODIGO.Text;
       Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
      end;
end;


procedure TFormCheques_troco.contaExit(Sender: TObject);
begin
if DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
Edit1.Text := DM.SDS_Conta_BancariaCONTA.Text +'-'+ DM.strngfldSDS_Conta_BancariaDIGITO.Text;
end else
if not DM.SDS_Conta_Bancaria.locate('CODIGO', (conta.Text),[])= True then
begin
  ShowMessage('Conta não Localizada');
end;
end;

procedure TFormCheques_troco.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_SPACE then
  begin
    dmb.SDS_BaixarCheque.Edit;
  if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
  dmb.SDS_BaixarChequeCHEK_BOX.AsString := ''
  else dmb.SDS_BaixarChequeCHEK_BOX.AsString := 'X';
  dmb.SDS_BaixarCheque.Post;
  dmb.SDS_BaixarCheque.ApplyUpdates(0);


  dmb.SDS_BaixarCheque.Refresh;
  dmb.SDS_BaixarCheque.First;
  A:= 0;

  if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
  A:= A + dmb.SDS_BaixarChequeVALOr_CHEQUE.AsFloat;
   dmb.SDS_BaixarCheque.Next;
  CurrencyEdit2.Text:= FloatToStr(A);
  While not dmb.SDS_BaixarCheque.Eof do
  begin
  if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
  A:= A + dmb.SDS_BaixarChequeVALOR_CHEQUE.AsFloat;
  dmb.SDS_BaixarCheque.next;
  CurrencyEdit2.Text:= FloatToStr(A);
  end;
  dmb.SDS_BaixarCheque.first;
  dmb.SDS_BaixarCheque.Refresh;
  end;
end;

procedure TFormCheques_troco.BTBaixaParcialClick(Sender: TObject);
begin
Close;
end;

procedure TFormCheques_troco.CurrencyEdit3Exit(Sender: TObject);
begin
Texto := FloatToStr(CurrencyEdit3.Value);
edTVALOR.Text := NumeroParaExtenso(StrToFloat(texto));
end;

procedure TFormCheques_troco.FormKeyPress(Sender: TObject; var Key: Char);
begin
if  not (ActiveControl is TCustomGrid) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormCheques_troco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Action:= caFree;
//FormCheques_troco := nil;
end;

end.

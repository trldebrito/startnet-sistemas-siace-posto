unit LancCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, Mask, DBCtrls, SUIDBCtrls, StdCtrls, jpeg, ExtCtrls,
  ToolEdit, RXDBCtrl, FMTBcd, DB, SqlExpr, Grids, DBGrids, AdvGlowButton,
  CurrEdit, RXCtrls;

type
  TFormCheques = class(TForm)
    Image1: TImage;
    edFavorecido: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    DBComboBox1: TDBComboBox;
    SPC_MOV_DIARIO: TSQLStoredProc;
    Panel3: TPanel;
    DBGrid1: TsuiDBGrid;
    btnNovo: TAdvGlowButton;
    BtnExcluir: TAdvGlowButton;
    BtnGravar: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    Panel1: TPanel;
    Panel2: TPanel;
    RxLabel4: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    CurrencyEdit3: TCurrencyEdit;
    DBEdit11: TDBEdit;
    btnCancelar: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure suiButton1Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit6Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheques: TFormCheques;
  CodigoCheque: Integer;
   texto : string;

implementation

uses Principal, Vendas, Ubibli1, Estenso, ModulodeDados;

{$R *.dfm}

function WordsCount( s : string ) : integer;
var 
ps: PChar; 
nSpaces,n,o : integer; 
begin 
//total de palavras 
n := 0; 
//total de letras 
o := 0; 
s := s + #0; 
ps := @s[ 1 ];
while( #0 <> ps^ ) do 
begin
while((' ' = ps^)and(#0 <> ps^)) do
begin
inc( ps );
//conta total de letras
inc(o);
end;
nSpaces := 0;
while((' ' <> ps^)and(#0 <> ps^))do
begin
inc(nSpaces);
inc(ps); 
//conta total de letras 
inc(o); 
end;
if ( nSpaces > 0 ) then 
begin 
inc( n );
end;
end; 
//recebe o total de letras contadas incluindo os espacos 
Result := o; 
end;

procedure TFormCheques.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
   DM.Sds_vendas.Active := false;
   dm.QRY_vendas.close;
   dm.QRY_vendas.SQL.Clear;
   dm.QRY_vendas.SQL.add('select * from PEDIDOS where codigo ='+ formvendas.n_venda.text+'');
   DM.qry_vendas.Open;
   DM.Sds_vendas.Active := True;

DM.Sds_Cheques.Active := False;
//DM.Sds_Cheques.DataSet.CommandText := ('select *  from CHEQUES where codigo_compra ='+ formvendas.n_venda.text +'order by CODIGO asc');
DM.Sds_Cheques.Active := True;
//DM.Sds_Cheques.Edit;
//DBEdit7.Text := dm.sds_clientesNome_rs.text;
DBGrid1.SetFocus;
Panel2.Enabled := False;
CurrencyEdit3.Value := CurrencyEdit2.value - CurrencyEdit1.Value;
end;

procedure TFormCheques.suiButton1Click(Sender: TObject);
var
  a: Currency;
begin
           DM.Sds_Cheques.Edit;
           DM.Sds_Chequesqnt.text := '1';
           DM.Sds_Chequescliente.text := formvendas.sds_pedidosNome_cliente.Text;
           DM.Sds_Chequesretornardo.text := 'NAO';
           DM.Sds_Chequesretornado_pago.text:= 'NAO';
           DM.Sds_ChequesData_cadastro.asDateTime := formvendas.sds_pedidosData_pedido.asdatetime;
          // SPC_CHEQUE.Params[7].AsDate:= ClientDataset1.FieldByname('DataVencimento').Value;
           DM.Sds_Chequesusuario_cadastro.text:= Formprincipal.userlogado;
           DM.Sds_ChequesCompensado.text:= 'N';
           DM.Sds_ChequesCod_cliente.text := formvendas.sds_pedidosCodigo_cliente.Text;

DM.Sds_Cheques.Post;
DM.Sds_Cheques.ApplyUpdates(0);
//DM.Sds_Cheques.Next;
//DM.Sds_Cheques.Edit;
 {begin
          SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
          SPC_MOV_DIARIO.Params[2].AsString:= 'Pagto da Vda'+ DM.SDS_ChequesCODIGO_COMPRA.Text +'Em Cheque Nº '+ DM.SDS_ChequesN_CHEQUE.Text+' parc. ' + DM.SDS_ChequesQNT.Text + ' - ' + DM.SDS_ChequesTITULAR.Text;
          SPC_MOV_DIARIO.Params[3].AsString:= FormPrincipal.UserLogado;
          SPC_MOV_DIARIO.Params[4].AsString:= 'C';
          SPC_MOV_DIARIO.Params[5].Value:= DM.SDS_ChequesVALOR_CHEQUE.AsFloat;
          SPC_MOV_DIARIO.Params[6].Value:= 0;
          SPC_MOV_DIARIO.Params[7].Value:= NULL;
          SPC_MOV_DIARIO.Params[8].Value:= NULL;
          SPC_MOV_DIARIO.Params[9].Value:= DM.SDS_ChequesCODIGO_COMPRA.Value;
          SPC_MOV_DIARIO.Params[10].Value:= 'VEN';
          SPC_MOV_DIARIO.ExecProc;
          end; }
//dmb.SDS_BaixarCheque.Refresh;
DM.Sds_Cheques.First;
A:= 0;
if DM.Sds_Chequesvalor_cheque.AsFloat > 0 then
A:= A + DM.Sds_ChequesVALOr_CHEQUE.AsFloat;
DM.Sds_Cheques.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not DM.Sds_Cheques.Eof do
begin
if DM.Sds_ChequesVALOR_CHEQUE.AsFloat > 0 then
A:= A + DM.Sds_ChequesVALOR_CHEQUE.AsFloat;
DM.Sds_Cheques.next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
DM.Sds_Cheques.first;
CurrencyEdit3.Value := CurrencyEdit2.value - CurrencyEdit1.Value;
//dmb.SDS_BaixarCheque.Refresh;

           BtnGravar.Enabled := false;
           BtnExcluir.Enabled := True;
           btnNovo.Enabled := True;
           btnEditar.Enabled := True;
           btnCancelar.Enabled := False;
           Panel2.Enabled := False;

end;

procedure TFormCheques.suiButton2Click(Sender: TObject);
begin
close;
end;

procedure TFormCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormCheques := nil;
end;

procedure TFormCheques.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
       IF KEY=#13 then
       begin
       DM.Sds_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       dbEdit1.Text    := (Copy(dbEdit4.Text, 01, 03));
       dbedit2.text    := (Copy(dbEdit4.Text, 04, 04));
       dbedit5.text    := (Copy(dbEdit4.Text, 12, 06));
       dbedit10.text   := (Copy(dbEdit4.Text, 09, 03));
       DBEdit3.text    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));
       btnNovo.SetFocus;
end;
end;

procedure TFormCheques.DBEdit4Enter(Sender: TObject);
begin
DM.Sds_Cheques.Edit;
end;

procedure TFormCheques.DBEdit7Change(Sender: TObject);
begin
if dm.SDS_ChequesVALOR_CHEQUE.AsFloat > 0 then
begin
Texto := FloatToStr(DM.Sds_ChequesVALOR_CHEQUE.AsFloat);
edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;
end;

procedure TFormCheques.suiButton1Exit(Sender: TObject);
begin
DBEDIT4.SetFocus;
end;

procedure TFormCheques.DBEdit7Enter(Sender: TObject);
begin
DM.Sds_Cheques.Edit;
end;

procedure TFormCheques.suiButton3Click(Sender: TObject);
begin
DM.Sds_Cheques.Edit;
           BtnGravar.Enabled := True;
           BtnExcluir.Enabled := False;
           btnNovo.Enabled := False;
           btnEditar.Enabled := False;
           Panel2.Enabled := True;
end;

procedure TFormCheques.DBEdit4Change(Sender: TObject);
begin
//Texto := FloatToStr(DM.Sds_ChequesVALOR_CHEQUE.AsFloat);
//edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;

procedure TFormCheques.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End; 
end;

procedure TFormCheques.DBEdit4Exit(Sender: TObject);
begin
       if DBEdit4.text > '' then
       begin
       DM.Sds_Cheques.Edit;
       CodigoCheque := WordsCount(dbEdit4.Text); // Conta digitos
       DBEdit1.Clear;
       dbEdit1.Text    := (Copy(dbEdit4.Text, 01, 03));
       dbedit2.text    := (Copy(dbEdit4.Text, 04, 04));
       dbedit5.text    := (Copy(dbEdit4.Text, 12, 06));
       dbedit10.text   := (Copy(dbEdit4.Text, 09, 03));
       DBEdit3.text    := (Copy(dbEdit4.Text, 20, 09)) +'-'+ (Copy(dbEdit4.Text, 29, 01));
     //  suiButton1.SetFocus;
end;
end;

procedure TFormCheques.btnNovoClick(Sender: TObject);
begin
           DM.Sds_Cheques.open;
           DM.Sds_Cheques.Insert;
           dbEdit11.Text:= inttostr(prxcod('CHEQUES', 'codigo', dm.IBTransaction, dm.ibsqlcod));
           DM.Sds_Chequescodigo.asinteger := strtoint(dbEdit11.Text);
            DM.Sds_ChequesCodigo_Compra.asinteger := strtoint(FormVendas.n_venda.Text);
           DM.Sds_Chequescod_empresa.asinteger:= DM.SDS_EmpresaCODIGO.Value;
            DM.SDS_ChequesVALOR_CHEQUE.AsFloat := CurrencyEdit1.Value;
           DM.Sds_Cheques.post;
           BtnGravar.Enabled := True;
           BtnExcluir.Enabled := False;
           btnNovo.Enabled := False;
           btnEditar.Enabled := False;
           btnCancelar.Enabled := True;
           Panel2.Enabled := True;

           DBEdit4.SetFocus;
end;

procedure TFormCheques.BtnExcluirClick(Sender: TObject);
begin
DM.Sds_Cheques.delete;
DM.Sds_Cheques.applyupdates(0);
end;

procedure TFormCheques.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DM.SDS_Produtos.State in [dsInsert, dsEdit, dsSetKey] then
  begin
  ShowMessage('Antes de Sair Você Deve Salvar ou Cancelar o Registro !!!');
  CanClose := False;
  end;

  if dm.SDS_Cheques.Eof = True then
begin
 ShowMessage('      Deve ser lancado algum cheque!');
 CanClose := False;
end;

if CurrencyEdit3.Value > 0 then
begin
 ShowMessage('Valor dos Cheques esta diferente do lançado na venda!');
 CanClose := False;
 end;
if CurrencyEdit3.Value < 0 then
begin
 ShowMessage('Valor dos Cheques esta diferente do lançado na venda!');
  CanClose := False;
end;
end;

procedure TFormCheques.DBEdit6Exit(Sender: TObject);
begin
if dm.SDS_ChequesVALOR_CHEQUE.AsFloat > 0 then
begin
Texto := FloatToStr(DM.Sds_ChequesVALOR_CHEQUE.AsFloat);
edFavorecido.Text := NumeroParaExtenso(StrToFloat(texto));
end;
end;

end.

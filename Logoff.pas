unit Logoff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  SUIButton, StdCtrls, jpeg, Mylabel, RXCtrls,
  SUIDlg, DB, DBTABLES, Mask, ToolEdit, ACBrBase;

type
  TFormLogoff = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    suiButton3: TsuiButton;
    suiButton4: TsuiButton;
    Image1: TImage;
    myLabel3d1: TmyLabel3d;
    Bevel1: TBevel;
    Informacao4: TsuiMessageDialog;
    Informacao3: TsuiMessageDialog;
    Informacao2: TsuiMessageDialog;
    informacao: TsuiMessageDialog;
    Edit1: TComboEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1ButtonClick(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
  VLD: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogoff: TFormLogoff;

implementation

uses ModulodeDados, Principal, Z_CriptDecript, Z_RotinasGerais,
  ConsUsuarios;

{$R *.dfm}

procedure TFormLogoff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormLogoff:=nil;
end;

procedure TFormLogoff.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormLogoff.suiButton4Click(Sender: TObject);
begin
Close;
end;

procedure TFormLogoff.suiButton3Click(Sender: TObject);
var
USER,PASS: String;
begin
Try
 USER:=(Edit3.Text);
 PASS:= Wcriptografar(Edit4.Text,5);
  if USER='' then
  begin
    Informacao4.ShowModal;
    edit3.SetFocus;
    end
    else
    if PASS ='' then
    begin
    Informacao2.ShowModal;
    edit4.SetFocus;
    end
    else
 if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,PASS]),[locaseInsensitive])then
 begin
 FormPrincipal.StatusBar1.Panels[1].Text:= USER;
 FormPrincipal.Label1.Caption:=  DM.SDS_UsuariosEXCLUIR.Text;
 FormPrincipal.Label2.Caption:=  DM.SDS_UsuariosEDITAR.Text;
 FormPrincipal.Label3.Caption:=  DM.SDS_UsuariosINSERIR.Text;
 FormPrincipal.UserLogado:= USER;
//////////////////////////////////////////////////////////////////
{FormPrincipal.CProdutos        := DM.SDS_Usuarios.FieldByname('S01').AsString;
FormPrincipal.CSubGrupos       := DM.SDS_Usuarios.FieldByname('S02').AsString;
FormPrincipal.CMarcas          := DM.SDS_Usuarios.FieldByname('S03').AsString;
FormPrincipal.CFornecedores    := DM.SDS_Usuarios.FieldByname('S04').AsString;
FormPrincipal.CUnidades        := DM.SDS_Usuarios.FieldByname('S05').AsString;
FormPrincipal.CGrupos          := DM.SDS_Usuarios.FieldByname('S06').AsString;
FormPrincipal.CAgencias        := DM.SDS_Usuarios.FieldByname('S07').AsString;
FormPrincipal.CContaBancaria   := DM.SDS_Usuarios.FieldByname('S08').AsString;
FormPrincipal.CBancos          := DM.SDS_Usuarios.FieldByname('S09').AsString;
FormPrincipal.CMotivoRetorno   := DM.SDS_Usuarios.FieldByname('S10').AsString;
FormPrincipal.CClientes        := DM.SDS_Usuarios.FieldByname('S11').AsString;
FormPrincipal.CUsuarios        := DM.SDS_Usuarios.FieldByname('S12').AsString;
FormPrincipal.CPlanoContas     := DM.SDS_Usuarios.FieldByname('S13').AsString;

//////////////////////////////////////////////////////////////////
FormPrincipal.FLancCP          := DM.SDS_Usuarios.FieldByname('S14').AsString;
FormPrincipal.FBaixaCP         := DM.SDS_Usuarios.FieldByname('S15').AsString;
FormPrincipal.FAutCP           := DM.SDS_Usuarios.FieldByname('S16').AsString;
FormPrincipal.FBaixaCred       := DM.SDS_Usuarios.FieldByname('S17').AsString;
FormPrincipal.FBaixaCheques    := DM.SDS_Usuarios.FieldByname('S18').AsString;
FormPrincipal.FEntradas        := DM.SDS_Usuarios.FieldByname('S19').AsString;
FormPrincipal.FOrcamentos      := DM.SDS_Usuarios.FieldByname('S20').AsString;
FormPrincipal.FPedidoDireto    := DM.SDS_Usuarios.FieldByname('S21').AsString;
FormPrincipal.FRegPedidos      := DM.SDS_Usuarios.FieldByname('S22').AsString;
FormPrincipal.FPagDevPedidos   := DM.SDS_Usuarios.FieldByname('S23').AsString;
FormPrincipal.FDevolPedidos    := DM.SDS_Usuarios.FieldByname('S24').AsString;
FormPrincipal.FCaixaReg        := DM.SDS_Usuarios.FieldByname('S25').AsString;
FormPrincipal.FBaixaChequesRet := DM.SDS_Usuarios.FieldByname('S26').AsString;
FormPrincipal.FRetCheques      := DM.SDS_Usuarios.FieldByname('S27').AsString;
FormPrincipal.FSaques          := DM.SDS_Usuarios.FieldByname('S28').AsString;
FormPrincipal.FDepositos       := DM.SDS_Usuarios.FieldByname('S29').AsString;
FormPrincipal.FEntradaCapital  := DM.SDS_Usuarios.FieldByname('S30').AsString;
FormPrincipal.FSaidaCapital    := DM.SDS_Usuarios.FieldByname('S31').AsString;
FormPrincipal.FAEntregaPedido  := DM.SDS_Usuarios.FieldByname('S32').AsString;
//////////////////////////////////////////////////////////////////
FormPrincipal.PBancoAnalitico  := DM.SDS_Usuarios.FieldByname('S33').AsString;
FormPrincipal.PBancoEspecifico := DM.SDS_Usuarios.FieldByname('S34').AsString;
FormPrincipal.PCaixaAnalitico  := DM.SDS_Usuarios.FieldByname('S35').AsString;
FormPrincipal.PCaixaEspecifico := DM.SDS_Usuarios.FieldByname('S36').AsString;
FormPrincipal.PChequesBaixar   := DM.SDS_Usuarios.FieldByname('S37').AsString;
FormPrincipal.PChequesBaixados := DM.SDS_Usuarios.FieldByname('S38').AsString;
FormPrincipal.PChequesRetornados := DM.SDS_Usuarios.FieldByname('S39').AsString;
FormPrincipal.PContasPagarGeral  := DM.SDS_Usuarios.FieldByname('S40').AsString;
FormPrincipal.PCrediario       := DM.SDS_Usuarios.FieldByname('S41').AsString;
FormPrincipal.PProdutos        := DM.SDS_Usuarios.FieldByname('S42').AsString;
FormPrincipal.POrcamentos      := DM.SDS_Usuarios.FieldByname('S43').AsString;
FormPrincipal.PPedidoDireto    := DM.SDS_Usuarios.FieldByname('S44').AsString;
FormPrincipal.PRegPedidos      := DM.SDS_Usuarios.FieldByname('S45').AsString;
FormPrincipal.PCancelados      := DM.SDS_Usuarios.FieldByname('S46').AsString;
FormPrincipal.PContasPagarFor  := DM.SDS_Usuarios.FieldByname('S47').AsString;
FormPrincipal.PContasPagarPlC  := DM.SDS_Usuarios.FieldByname('S48').AsString;
FormPrincipal.PComissPDireto   := DM.SDS_Usuarios.FieldByname('S49').AsString;
FormPrincipal.PExtComissao     := DM.SDS_Usuarios.FieldByname('S50').AsString;
FormPrincipal.PCheQuesExtornados := DM.SDS_Usuarios.FieldByname('S51').AsString;
///////////////////////////////////////////////////////////////////
FormPrincipal.RBancos          := DM.SDS_Usuarios.FieldByname('S52').AsString;
FormPrincipal.RCaixa           := DM.SDS_Usuarios.FieldByname('S53').AsString;
FormPrincipal.RCheques         := DM.SDS_Usuarios.FieldByname('S54').AsString;
FormPrincipal.RCompras         := DM.SDS_Usuarios.FieldByname('S55').AsString;
FormPrincipal.REstoque         := DM.SDS_Usuarios.FieldByname('S56').AsString;
FormPrincipal.RVendas          := DM.SDS_Usuarios.FieldByname('S57').AsString;
FormPrincipal.RContasPagar     := DM.SDS_Usuarios.FieldByname('S58').AsString;
FormPrincipal.RContasReceber   := DM.SDS_Usuarios.FieldByname('S59').AsString;
FormPrincipal.RComissoes       := DM.SDS_Usuarios.FieldByname('S60').AsString;
///////////////////////////////////////////////////////////////////
FormPrincipal.RotInfoEmpresa     := DM.SDS_Usuarios.FieldByname('S61').AsString;
FormPrincipal.RotConfSistema     := DM.SDS_Usuarios.FieldByname('S62').AsString;
FormPrincipal.RotRelFiscal       := DM.SDS_Usuarios.FieldByname('S63').AsString;
FormPrincipal.RotInicialiazacao  := DM.SDS_Usuarios.FieldByname('S64').AsString;
FormPrincipal.RotLeituraMemFiscal:= DM.SDS_Usuarios.FieldByname('S65').AsString;
FormPrincipal.RotInfoImpressora  := DM.SDS_Usuarios.FieldByname('S66').AsString;
FormPrincipal.RotOutrasRotinas   := DM.SDS_Usuarios.FieldByname('S67').AsString;
FormPrincipal.RotReeOrcamentos   := DM.SDS_Usuarios.FieldByname('S68').AsString;
FormPrincipal.RotReePedidoS      := DM.SDS_Usuarios.FieldByname('S69').AsString;
FormPrincipal.RotReeDuplicatas   := DM.SDS_Usuarios.FieldByname('S70').AsString;
FormPrincipal.RotHistCliente     := DM.SDS_Usuarios.FieldByname('S71').AsString;
FormPrincipal.RotAutCrediario    := DM.SDS_Usuarios.FieldByname('S72').AsString;
FormPrincipal.RotLibAcesso       := DM.SDS_Usuarios.FieldByname('S73').AsString;
////////////////////////////////////////////////////////////////////
FormPrincipal.OrotRemJurosCre       := DM.SDS_Usuarios.FieldByname('S74').AsString;
///////////////////////////////////////////////////
FormPrincipal.CCondPagamento   := DM.SDS_Usuarios.FieldByname('S75').AsString;
//////////////////////////////////////////////////


If DM.SDS_UsuariosS01.Text = 'S' THEN
BEGIN
FormPrincipal.B_produtos.Enabled := TRUE;
FormPrincipal.Produtos1.Enabled := TRUE;
end else
If DM.SDS_UsuariosS01.Text = 'N' THEN
begin
FormPrincipal.B_produtos.Enabled := False;
FormPrincipal.Produtos1.Enabled:= False;
end;


If FormPrincipal.CFornecedores = 'S' THEN
BEGIN
FormPrincipal.Fornecedor1.Enabled:= TRUE;
end else
If FormPrincipal.CFornecedores = 'N' THEN
begin
FormPrincipal.Fornecedor1.Enabled:= False;
end;

If FormPrincipal.CGrupos = 'S' THEN
BEGIN
FormPrincipal.Grupo1.Enabled:= TRUE;
end else
If FormPrincipal.CGrupos = 'N' THEN
begin
FormPrincipal.Grupo1.Enabled:= False;
end;

If FormPrincipal.CSubGrupos = 'S' THEN
BEGIN
FormPrincipal.SubGrupos1.Enabled:= TRUE;
end else
If FormPrincipal.CSubGrupos = 'N' THEN
begin
FormPrincipal.SubGrupos1.Enabled:= False;
end;

If FormPrincipal.Cmarcas = 'S' THEN
BEGIN
FormPrincipal.Marca1.Enabled:= TRUE;
end else
If FormPrincipal.Cmarcas = 'N' THEN
begin
FormPrincipal.Marca1.Enabled:= False;
end;

If FormPrincipal.CUnidades = 'S' THEN
BEGIN
FormPrincipal.Unidades1.Enabled:= TRUE;
end else
begin
FormPrincipal.Unidades1.Enabled:= False;
end;

If FormPrincipal.CClientes = 'S' THEN
BEGIN
FormPrincipal.Clientes1.Enabled:= TRUE;
FormPrincipal.B_clientes.Enabled:= TRUE;
end else
begin
FormPrincipal.Clientes1.Enabled:= False;
FormPrincipal.B_clientes.Enabled:= false;
end;

If FormPrincipal.CAgencias = 'S' THEN
BEGIN
FormPrincipal.Agncias1.Enabled:= TRUE;
end else
begin
FormPrincipal.Agncias1.Enabled:= False;
end;

If FormPrincipal.CBancos = 'S' THEN
BEGIN
FormPrincipal.Bancos1.Enabled:= TRUE;
end else
begin
FormPrincipal.Bancos1.Enabled:= False;
end;

If FormPrincipal.CContaBancaria = 'S' THEN
BEGIN
FormPrincipal.ContaCorrente1.Enabled:= TRUE;
end else
begin
FormPrincipal.ContaCorrente1.Enabled:= False;
end;

If FormPrincipal.CMotivoRetorno = 'S' THEN
BEGIN
FormPrincipal.MotivoRetorno1.Enabled:= TRUE;
end else
begin
FormPrincipal.MotivoRetorno1.Enabled:= False;
end;

If FormPrincipal.CUsuarios = 'S' THEN
BEGIN
FormPrincipal.Usurios1.Enabled:= TRUE;
end else
begin
FormPrincipal.Usurios1.Enabled:= False;
end;

If FormPrincipal.CPlanoContas = 'S' THEN
BEGIN
FormPrincipal.PlanodeContas1.Enabled:= TRUE;
end else
begin
FormPrincipal.PlanodeContas1.Enabled:= False;
end;

If FormPrincipal.CCondPagamento = 'S' THEN
BEGIN
FormPrincipal.CondiodePagamento1.Enabled:= TRUE;
end else
begin
FormPrincipal.CondiodePagamento1.Enabled:= False;
end;

//////////////////////////////////////////
//////////////////////////////////////////



If FormPrincipal.FEntradaCapital = 'S' THEN
BEGIN
FormPrincipal.Lanamentos2.Enabled:= TRUE;
end else
begin
FormPrincipal.Lanamentos2.Enabled:= False;
end;

If FormPrincipal.FSaidaCapital = 'S' THEN
BEGIN
FormPrincipal.LanamentosSaidadeCapital1.Enabled:= TRUE;
end else
begin
FormPrincipal.LanamentosSaidadeCapital1.Enabled:= False;
end;

If FormPrincipal.FDepositos = 'S' THEN
BEGIN
FormPrincipal.DepositoemConta1.Enabled:= TRUE;
end else
begin
FormPrincipal.DepositoemConta1.Enabled:= False;
end;

If FormPrincipal.FSaques = 'S' THEN
BEGIN
FormPrincipal.SaqueemConta1.Enabled:= TRUE;
end else
begin
FormPrincipal.SaqueemConta1.Enabled:= False;
end;

If FormPrincipal.FRetCheques = 'S' THEN
BEGIN
FormPrincipal.RetornodeCheques1.Enabled:= TRUE;
end else
begin
FormPrincipal.RetornodeCheques1.Enabled:= False;
end;

If FormPrincipal.FBaixaChequesRet = 'S' THEN
BEGIN
FormPrincipal.BaixadeChequesRetornados1.Enabled:= TRUE;
end else
begin
FormPrincipal.BaixadeChequesRetornados1.Enabled:= False;
end;

If FormPrincipal.FBaixaCheques = 'S' THEN
BEGIN
FormPrincipal.Cheques1.Enabled:= TRUE;
FormPrincipal.BaixadeCheques1.Enabled:= TRUE;
end else
begin
FormPrincipal.Cheques1.Enabled:= False;
FormPrincipal.BaixadeCheques1.Enabled:= FALSE;
end;

If FormPrincipal.FBaixaCred = 'S' THEN
BEGIN
FormPrincipal.Credirio1.Enabled:= TRUE;
end else
begin
FormPrincipal.Credirio1.Enabled:= False;
end;

If FormPrincipal.FLancCP = 'S' THEN
BEGIN
FormPrincipal.Lanamentos1.Enabled:= TRUE;
end else
begin
FormPrincipal.Lanamentos1.Enabled:= False;
end;

If FormPrincipal.FBaixaCP = 'S' THEN
BEGIN
FormPrincipal.BaixadeContasaPagar1.Enabled:= TRUE;
end else
begin
FormPrincipal.BaixadeContasaPagar1.Enabled:= False;
end;

If FormPrincipal.FAutCP = 'S' THEN
BEGIN
FormPrincipal.AutorizaodePagamento1.Enabled:= TRUE;
end else
begin
FormPrincipal.AutorizaodePagamento1.Enabled:= False;
end;

If FormPrincipal.FEntradas = 'S' THEN
BEGIN
FormPrincipal.EntradadeNotasFiscaiseAtualizaodeEstoque1.Enabled:= TRUE;
end else
begin
FormPrincipal.EntradadeNotasFiscaiseAtualizaodeEstoque1.Enabled:= False;
end;

If FormPrincipal.FCaixaReg = 'S' THEN
BEGIN
FormPrincipal.FaturamentoCaixaRegistradora1.Enabled:= TRUE;
end else
begin
FormPrincipal.FaturamentoCaixaRegistradora1.Enabled:= False;
end;

{If FormPrincipal.FOrcamentos = 'S' THEN
BEGIN
FormPrincipal.Oramentos3.Enabled:= TRUE;
end else
begin
FormPrincipal.Oramentos3.Enabled:= False;
end;}

{If FormPrincipal.FAEntregaPedido = 'S' THEN
BEGIN
FormPrincipal.EntregadePedidoProposta1.Enabled:= TRUE;
end else
begin
FormPrincipal.EntregadePedidoProposta1.Enabled:= False;
end;

{If FormPrincipal.FPedidoDireto = 'S' THEN
BEGIN
FormPrincipal.PedidoProposta2.Enabled:= TRUE;
end else
begin
FormPrincipal.PedidoProposta2.Enabled:= False;
end; }

{If FormPrincipal.FRegPedidos = 'S' THEN
BEGIN
FormPrincipal.bV_frente.Enabled:= TRUE;
FormPrincipal.s22.Enabled:= True;
end else
begin
FormPrincipal.bV_frente.Enabled:= False;
FormPrincipal.s22.Enabled:= False;
end;

If FormPrincipal.FPagDevPedidos = 'S' THEN
BEGIN
FormPrincipal.DevoluoTrocadeProdutosPedidos1.Enabled:= TRUE;
end else
begin
FormPrincipal.DevoluoTrocadeProdutosPedidos1.Enabled:= False;
end;

If FormPrincipal.FDevolPedidos = 'S' THEN
BEGIN
FormPrincipal.DevoluoParcialdePedidoProposta1.Enabled:= TRUE;
end else
begin
FormPrincipal.DevoluoParcialdePedidoProposta1.Enabled:= False;
end;

///////////////////////////////////////////////////
///////////////////////////////////////////////////

If FormPrincipal.PCaixaAnalitico = 'S' THEN
BEGIN
FormPrincipal.CaixaAnaltico1.Enabled:= TRUE;
end else
begin
FormPrincipal.CaixaAnaltico1.Enabled:= False;
end;

If FormPrincipal.PCaixaEspecifico = 'S' THEN
BEGIN
FormPrincipal.CaixaGeral1.Enabled:= TRUE;
end else
begin
FormPrincipal.CaixaGeral1.Enabled:= False;
end;

If FormPrincipal.PBancoAnalitico = 'S' THEN
BEGIN
FormPrincipal.ContaCorrente2.Enabled:= TRUE;
end else
begin
FormPrincipal.ContaCorrente2.Enabled:= False;
end;

If FormPrincipal.PBancoEspecifico = 'S' THEN
BEGIN
FormPrincipal.ControleEspecfico1.Enabled:= TRUE;
end else
begin
FormPrincipal.ControleEspecfico1.Enabled:= False;
end;

If FormPrincipal.PChequesBaixar = 'S' THEN
BEGIN
FormPrincipal.ChequesaBaixar1.Enabled:= TRUE;
FormPrincipal.ChequesPrDatados1.Enabled:= TRUE;
end else
begin
FormPrincipal.ChequesaBaixar1.Enabled:= False;
FormPrincipal.ChequesPrDatados1.Enabled:= False;
end;

If FormPrincipal.PChequesBaixados = 'S' THEN
BEGIN
FormPrincipal.ChequesBaixadosporPerdo1.Enabled:= TRUE;
end else
begin
FormPrincipal.ChequesBaixadosporPerdo1.Enabled:= False;
end;

If FormPrincipal.PChequesRetornados = 'S' THEN
BEGIN
FormPrincipal.ChequesRetornadosaBaixar1.Enabled:= TRUE;
end else
begin
FormPrincipal.ChequesRetornadosaBaixar1.Enabled:= False;
end;

If FormPrincipal.PComissPDireto = 'S' THEN
BEGIN
FormPrincipal.PedidoDireto1.Enabled:= TRUE;
end else
begin
FormPrincipal.PedidoDireto1.Enabled:= False;
end;

If FormPrincipal.PContasPagarGeral = 'S' THEN
BEGIN
FormPrincipal.ContasaPagar2.Enabled:= TRUE;
end else
begin
FormPrincipal.ContasaPagar2.Enabled:= False;
end;

If FormPrincipal.PCrediario = 'S' THEN
BEGIN
FormPrincipal.B_Receber.Enabled:= TRUE;
FormPrincipal.Credirio2.Enabled:= TRUE;
FormPrincipal.CredirioporPerdo1.Enabled:= TRUE;
FormPrincipal.CredirioRecebidoporCliente1.Enabled:= TRUE;
FormPrincipal.CredirioRecebidoporPerodo1.Enabled:= TRUE;
end else
begin
FormPrincipal.B_Receber.Enabled:= false;
FormPrincipal.Credirio2.Enabled:= False;
FormPrincipal.CredirioporPerdo1.Enabled:= False;
FormPrincipal.CredirioRecebidoporCliente1.Enabled:= False;
FormPrincipal.CredirioRecebidoporPerodo1.Enabled:= False;
end;

If FormPrincipal.PProdutos = 'S' THEN
BEGIN
FormPrincipal.Produtos2.Enabled:= TRUE;
end else
begin
FormPrincipal.Produtos2.Enabled:= False;
end;

If FormPrincipal.POrcamentos = 'S' THEN
BEGIN
FormPrincipal.Oramentos1.Enabled:= TRUE;
end else
begin
FormPrincipal.Oramentos1.Enabled:= False;
end;

If FormPrincipal.PPedidoDireto = 'S' THEN
BEGIN
FormPrincipal.PedidoDireto2.Enabled:= TRUE;
end else
begin
FormPrincipal.PedidoDireto2.Enabled:= False;
end;

If FormPrincipal.PRegPedidos = 'S' THEN
BEGIN
FormPrincipal.RegistrodeVendas1.Enabled:= TRUE;
end else
begin
FormPrincipal.RegistrodeVendas1.Enabled:= False;
end;

If FormPrincipal.PCancelados = 'S' THEN
BEGIN
FormPrincipal.PedidoDiretoCancelado1.Enabled:= TRUE;
end else
begin
FormPrincipal.PedidoDiretoCancelado1.Enabled:= False;
end;

If FormPrincipal.PContasPagarFor = 'S' THEN
BEGIN
FormPrincipal.ContasPagarFornecedores1.Enabled:= TRUE;
end else
begin
FormPrincipal.ContasPagarFornecedores1.Enabled:= False;
end;

If FormPrincipal.PContasPagarPlc = 'S' THEN
BEGIN
FormPrincipal.PlanodeConta1.Enabled:= TRUE;
end else
begin
FormPrincipal.PlanodeConta1.Enabled:= False;
end;

If FormPrincipal.PExtComissao = 'S' THEN
BEGIN
FormPrincipal.ExtornodeComissodeDevolues1.Enabled:= TRUE;
end else
begin
FormPrincipal.ExtornodeComissodeDevolues1.Enabled:= False;
end;

If FormPrincipal.PChequesExtornados = 'S' THEN
BEGIN
FormPrincipal.ChequesUtilizadosparaPagamento1.Enabled:= TRUE;
end else
begin
FormPrincipal.ChequesUtilizadosparaPagamento1.Enabled:= False;
end;
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////


If FormPrincipal.RBancos = 'S' THEN
BEGIN
FormPrincipal.RelatriosdeBanco1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatriosdeBanco1.Enabled:= False;
end;

If FormPrincipal.RCaixa = 'S' THEN
BEGIN
FormPrincipal.RelatriosdeCaixa1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatriosdeCaixa1.Enabled:= False;
end;

If FormPrincipal.RCheques = 'S' THEN
BEGIN
FormPrincipal.RelatriodeCheques1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatriodeCheques1.Enabled:= False;
end;

If FormPrincipal.RComissoes = 'S' THEN
BEGIN
FormPrincipal.RelatoriodeComisses1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatoriodeComisses1.Enabled:= False;
end;

If FormPrincipal.RCompras = 'S' THEN
BEGIN
FormPrincipal.RelatoriodeCompras1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatoriodeCompras1.Enabled:= False;
end;

If FormPrincipal.RContasPagar = 'S' THEN
BEGIN
FormPrincipal.RelatriosdeContasaPagar1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatriosdeContasaPagar1.Enabled:= False;
end;

If FormPrincipal.RContasReceber = 'S' THEN
BEGIN
FormPrincipal.RelatriosdeCredirio1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatriosdeCredirio1.Enabled:= False;
end;

If FormPrincipal.REstoque = 'S' THEN
BEGIN
FormPrincipal.RelatriosdeEstoque1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatriosdeEstoque1.Enabled:= False;
end;

If FormPrincipal.RVendas = 'S' THEN
BEGIN
FormPrincipal.RelatriosdeVendas1.Enabled:= TRUE;
end else
begin
FormPrincipal.RelatriosdeVendas1.Enabled:= False;
end;

///////////////////////////////////////////////
/////////////////////////////////////////////// 


If FormPrincipal.RotInfoEmpresa = 'S' THEN
BEGIN
FormPrincipal.DadosdaEmpresa1.Enabled:= TRUE;
end else
begin
FormPrincipal.DadosdaEmpresa1.Enabled:= False;
end;

If FormPrincipal.RotConfSistema = 'S' THEN
BEGIN
FormPrincipal.ConfiguraesdoSistema1.Enabled:= TRUE;
end else
begin
FormPrincipal.ConfiguraesdoSistema1.Enabled:= False;
end;

If FormPrincipal.RotHistCliente = 'S' THEN
BEGIN
FormPrincipal.HistricodoCliente1.Enabled:= TRUE;
end else
begin
FormPrincipal.HistricodoCliente1.Enabled:= False;
end;

If FormPrincipal.RotReeorcamentos = 'S' THEN
BEGIN
FormPrincipal.Oramentos2.Enabled:= TRUE;
end else
begin
FormPrincipal.Oramentos2.Enabled:= False;
end;

If FormPrincipal.RotReePedidos = 'S' THEN
BEGIN
FormPrincipal.PedidoProposta1.Enabled:= TRUE;
end else
begin
FormPrincipal.PedidoProposta1.Enabled:= False;
end;

If FormPrincipal.RotReeDuplicatas = 'S' THEN
BEGIN
FormPrincipal.Duplicatas1.Enabled:= TRUE;
end else
begin
FormPrincipal.Duplicatas1.Enabled:= False;
end;


If FormPrincipal.RotAutCrediario = 'S' THEN
BEGIN
FormPrincipal.AutorizaopVendanoCredirio1.Enabled:= TRUE;
end else
begin
FormPrincipal.AutorizaopVendanoCredirio1.Enabled:= False;
end;

If FormPrincipal.RotLibAcesso = 'S' THEN
BEGIN
FormPrincipal.LiberaodosMdulos1.Enabled:= TRUE;
end else
begin
FormPrincipal.LiberaodosMdulos1.Enabled:= False;
end;

// daki pra baixo
If DM.SDS_UsuariosS20.Text = 'S' THEN
BEGIN
FormPrincipal.s20.Enabled:= TRUE;
FormPrincipal.B_Vendas.Enabled:= TRUE;
end else
begin
FormPrincipal.s20.Enabled:= False;
FormPrincipal.b_vendas.Enabled:= false;
end;

If DM.SDS_UsuariosS63.Text = 'S' THEN
BEGIN
FormPrincipal.s63.Enabled:= TRUE;
end else
begin
FormPrincipal.s63.Enabled:= False;
end;

If DM.SDS_UsuariosS64.Text = 'S' THEN
BEGIN
FormPrincipal.s64.Enabled:= TRUE;
end else
begin
FormPrincipal.s64.Enabled:= False;
end;

If DM.SDS_UsuariosS65.Text = 'S' THEN
BEGIN
FormPrincipal.s65.Enabled:= TRUE;
end else
begin
FormPrincipal.s65.Enabled:= False;
end;

If DM.SDS_UsuariosS66.Text = 'S' THEN
BEGIN
FormPrincipal.s66.Enabled:= TRUE;
end else
begin
FormPrincipal.s66.Enabled:= False;
end;

If DM.SDS_UsuariosS67.Text = 'S' THEN
BEGIN
FormPrincipal.s67.Enabled:= TRUE;
end else
begin
FormPrincipal.s67.Enabled:= False;
end;


If DM.SDS_UsuariosS76.Text = 'S' THEN
BEGIN
FormPrincipal.s76.Enabled:= TRUE;
end else
begin
FormPrincipal.s76.Enabled:= False;
end;

If DM.SDS_UsuariosS77.Text = 'S' THEN
BEGIN
FormPrincipal.s77.Enabled:= TRUE;
end else
begin
FormPrincipal.s77.Enabled:= False;
end;


If DM.SDS_UsuariosS78.Text = 'S' THEN
BEGIN
FormPrincipal.s78.Enabled:= TRUE;
end else
begin
FormPrincipal.s78.Enabled:= False;
end;

If DM.SDS_UsuariosS79.Text = 'S' THEN
BEGIN
FormPrincipal.s79.Enabled:= TRUE;
end else
begin
FormPrincipal.s79.Enabled:= False;
end;


If DM.SDS_UsuariosS80.Text = 'S' THEN
BEGIN
FormPrincipal.s80.Enabled:= TRUE;
end else
begin
FormPrincipal.s80.Enabled:= False;
end;

If DM.SDS_UsuariosS81.Text = 'S' THEN
BEGIN
FormPrincipal.s81.Enabled:= TRUE;
end else
begin
FormPrincipal.s81.Enabled:= False;
end;


If DM.SDS_UsuariosS82.Text = 'S' THEN
BEGIN
FormPrincipal.s82.Enabled:= TRUE;
end else
begin
FormPrincipal.s82.Enabled:= False;
end;

If DM.SDS_UsuariosS83.Text = 'S' THEN
BEGIN
FormPrincipal.s83.Enabled:= TRUE;
end else
begin
FormPrincipal.s83.Enabled:= False;
end;

If DM.SDS_UsuariosS84.Text = 'S' THEN
BEGIN
FormPrincipal.s84.Enabled:= TRUE;
end else
begin
FormPrincipal.s84.Enabled:= False;
end;

If DM.SDS_UsuariosS85.Text = 'S' THEN
BEGIN
FormPrincipal.s85.Enabled:= TRUE;
end else
begin
FormPrincipal.s85.Enabled:= False;
end;

If DM.SDS_UsuariosS86.Text = 'S' THEN
BEGIN
FormPrincipal.s86.Enabled:= TRUE;
end else
begin
FormPrincipal.s86.Enabled:= False;
end;


If DM.SDS_UsuariosS87.Text = 'S' THEN
BEGIN
FormPrincipal.s87.Enabled:= TRUE;
end else
begin
FormPrincipal.s87.Enabled:= False;
end;

If DM.SDS_UsuariosS88.Text = 'S' THEN
BEGIN
FormPrincipal.s88.Enabled:= TRUE;
end else
begin
FormPrincipal.s88.Enabled:= False;
end;

If DM.SDS_UsuariosS89.Text = 'S' THEN
BEGIN
FormPrincipal.s89.Enabled:= TRUE;
end else
begin
FormPrincipal.s89.Enabled:= False;
end;

If DM.SDS_UsuariosS90.Text = 'S' THEN
BEGIN
FormPrincipal.s90.Enabled:= TRUE;
end else
begin
FormPrincipal.s90.Enabled:= False;
end;


If DM.SDS_UsuariosS91.Text = 'S' THEN
BEGIN
FormPrincipal.s91.Enabled:= TRUE;
end else
begin
FormPrincipal.s91.Enabled:= False;
end;

If DM.SDS_UsuariosS92.Text = 'S' THEN
BEGIN
FormPrincipal.s92.Enabled:= TRUE;
end else
begin
FormPrincipal.s92.Enabled:= False;
end;

If DM.SDS_UsuariosS93.Text = 'S' THEN
BEGIN
FormPrincipal.s93.Enabled:= TRUE;
end else
begin
FormPrincipal.s93.Enabled:= False;
end;

If DM.SDS_UsuariosS94.Text = 'S' THEN
BEGIN
FormPrincipal.s94.Enabled:= TRUE;
end else
begin
FormPrincipal.s94.Enabled:= False;
end;

If DM.SDS_UsuariosS95.Text = 'S' THEN
BEGIN
FormPrincipal.s95.Enabled:= TRUE;
end else
begin
FormPrincipal.s95.Enabled:= False;
end;

If DM.SDS_UsuariosS96.Text = 'S' THEN
BEGIN
FormPrincipal.s96.Enabled:= TRUE;
end else
begin
FormPrincipal.s96.Enabled:= False;
end;

If DM.SDS_UsuariosS97.Text = 'S' THEN
BEGIN
FormPrincipal.s97.Enabled:= TRUE;
end else
begin
FormPrincipal.s97.Enabled:= False;
end;

If DM.SDS_UsuariosS98.Text = 'S' THEN
BEGIN
FormPrincipal.s98.Enabled:= TRUE;
end else
begin
FormPrincipal.s98.Enabled:= False;
end;

If DM.SDS_UsuariosS99.Text = 'S' THEN
BEGIN
FormPrincipal.s99.Enabled:= TRUE;
end else
begin
FormPrincipal.s99.Enabled:= False;
end;

If DM.SDS_UsuariosS100.Text = 'S' THEN
BEGIN
FormPrincipal.b_cobranca.Enabled:= TRUE;
FormPrincipal.s100.Enabled:= TRUE;
end else
begin
FormPrincipal.b_cobranca.Enabled:= False;
FormPrincipal.s100.Enabled:= False;
end;

If DM.SDS_UsuariosS102.Text = 'S' THEN
BEGIN
FormPrincipal.s101.Enabled:= TRUE;
end else
begin
FormPrincipal.s101.Enabled:= False;
end;

If DM.SDS_UsuariosS102.Text = 'S' THEN
BEGIN
FormPrincipal.s102.Enabled:= TRUE;
end else
begin
FormPrincipal.s102.Enabled:= False;
end;

If DM.SDS_UsuariosS103.Text = 'S' THEN
BEGIN
FormPrincipal.s103.Enabled:= TRUE;
end else
begin
FormPrincipal.s103.Enabled:= False;
end;

If DM.SDS_UsuariosS104.Text = 'S' THEN
BEGIN
FormPrincipal.s104.Enabled:= TRUE;
end else
begin
FormPrincipal.s104.Enabled:= False;
end;

If DM.SDS_UsuariosS105.Text = 'S' THEN
BEGIN
FormPrincipal.s105.Enabled:= TRUE;
end else
begin
FormPrincipal.s105.Enabled:= False;
end;

If DM.SDS_UsuariosS106.Text = 'S' THEN
BEGIN
FormPrincipal.s106.Enabled:= TRUE;
end else
begin
FormPrincipal.s106.Enabled:= False;
end;

If DM.SDS_UsuariosS107.Text = 'S' THEN
BEGIN
FormPrincipal.s107.Enabled:= TRUE;
end else
begin
FormPrincipal.s107.Enabled:= False;
end;

If DM.SDS_UsuariosS108.Text = 'S' THEN
BEGIN
FormPrincipal.s108.Enabled:= TRUE;
end else
begin
FormPrincipal.s108.Enabled:= False;
end;


If DM.SDS_UsuariosS109.Text = 'S' THEN
BEGIN
FormPrincipal.s109.Enabled:= TRUE;
end else
begin
FormPrincipal.s109.Enabled:= False;
end;

If DM.SDS_UsuariosS110.Text = 'S' THEN
BEGIN
FormPrincipal.s110.Enabled:= TRUE;
end else
begin
FormPrincipal.s110.Enabled:= False;
end;

If DM.SDS_UsuariosS111.Text = 'S' THEN
BEGIN
FormPrincipal.s111.Enabled:= TRUE;
end else
begin
FormPrincipal.s111.Enabled:= False;
end;

If DM.SDS_UsuariosS112.Text = 'S' THEN
BEGIN
FormPrincipal.s112.Enabled:= TRUE;
end else
begin
FormPrincipal.s112.Enabled:= False;
end;

If DM.SDS_UsuariosS113.Text = 'S' THEN
BEGIN
FormPrincipal.s113.Enabled:= TRUE;
end else
begin
FormPrincipal.s113.Enabled:= False;
end;


If DM.SDS_UsuariosS113.Text = 'S' THEN
BEGIN
FormPrincipal.s114.Enabled:= TRUE;
end else
begin
FormPrincipal.s114.Enabled:= False;
end;

If DM.SDS_UsuariosS115.Text = 'S' THEN
BEGIN
FormPrincipal.s115.Enabled:= TRUE;
end else
begin
FormPrincipal.s115.Enabled:= False;
end;

If DM.SDS_UsuariosS115.Text = 'S' THEN
BEGIN
FormPrincipal.s116.Enabled:= TRUE;
end else
begin
FormPrincipal.s116.Enabled:= False;
end;

If DM.SDS_UsuariosS117.Text = 'S' THEN
BEGIN
FormPrincipal.s117.Enabled:= TRUE;
end else
begin
FormPrincipal.s117.Enabled:= False;
end;

If DM.SDS_UsuariosS118.Text = 'S' THEN
BEGIN
FormPrincipal.s118.Enabled:= TRUE;
end else
begin
FormPrincipal.s118.Enabled:= False;
end;

If DM.SDS_UsuariosS119.Text = 'S' THEN
BEGIN
FormPrincipal.s119.Enabled:= TRUE;
end else
begin
FormPrincipal.s119.Enabled:= False;
end;

If DM.SDS_UsuariosS120.Text = 'S' THEN
BEGIN
FormPrincipal.s120.Enabled:= TRUE;
FormPrincipal.B_os.Enabled:= TRUE;
end else
begin
FormPrincipal.s120.Enabled:= False;
FormPrincipal.B_os.Enabled:= False;
end;


If DM.SDS_UsuariosS121.Text = 'S' THEN
BEGIN
FormPrincipal.s121.Enabled:= TRUE;
FormPrincipal.B_monitor_os.Enabled:= TRUE;
end else
begin
FormPrincipal.s121.Enabled:= False;
FormPrincipal.B_monitor_os.Enabled:= False;
end;

If DM.SDS_UsuariosS122.Text = 'S' THEN
BEGIN
FormPrincipal.s122.Enabled:= TRUE;
end else
begin
FormPrincipal.s122.Enabled:= False;
end;

If DM.SDS_UsuariosS123.Text = 'S' THEN
BEGIN
FormPrincipal.s123.Enabled:= TRUE;
end else
begin
FormPrincipal.s123.Enabled:= False;
end;

If DM.SDS_UsuariosS124.Text = 'S' THEN
BEGIN
FormPrincipal.s124.Enabled:= TRUE;
end else
begin
FormPrincipal.s124.Enabled:= False;
end;

If DM.SDS_UsuariosS125.Text = 'S' THEN
BEGIN
FormPrincipal.s125.Enabled:= TRUE;
end else
begin
FormPrincipal.s125.Enabled:= False;
end;

If DM.SDS_UsuariosS126.Text = 'S' THEN
BEGIN
FormPrincipal.s126.Enabled:= TRUE;
end else
begin
FormPrincipal.s126.Enabled:= False;
end;

If DM.SDS_UsuariosS127.Text = 'S' THEN
BEGIN
FormPrincipal.s127.Enabled:= TRUE;
end else
begin
FormPrincipal.s127.Enabled:= False;
end;

If DM.SDS_UsuariosS128.Text = 'S' THEN
BEGIN
FormPrincipal.s128.Enabled:= TRUE;
end else
begin
FormPrincipal.s128.Enabled:= False;
end;

If DM.SDS_UsuariosS129.Text = 'S' THEN
BEGIN
FormPrincipal.s129.Enabled:= TRUE;
end else
begin
FormPrincipal.s129.Enabled:= False;
end;

If DM.SDS_UsuariosS130.Text = 'S' THEN
BEGIN
FormPrincipal.s130.Enabled:= TRUE;
end else
begin
FormPrincipal.s130.Enabled:= False;
end;

If DM.SDS_UsuariosS131.Text = 'S' THEN
BEGIN
FormPrincipal.s131.Enabled:= TRUE;
end else
begin
FormPrincipal.s131.Enabled:= False;
end;

If DM.SDS_UsuariosS132.Text = 'S' THEN
BEGIN
FormPrincipal.s132.Enabled:= TRUE;
end else
begin
FormPrincipal.s132.Enabled:= False;
end;

If DM.SDS_UsuariosS133.Text = 'S' THEN
BEGIN
FormPrincipal.s133.Enabled:= TRUE;
end else
begin
FormPrincipal.s133.Enabled:= False;
end;


If DM.SDS_UsuariosS134.Text = 'S' THEN
BEGIN
FormPrincipal.s134.Enabled:= TRUE;
end else
begin
FormPrincipal.s134.Enabled:= False;
end;

If DM.SDS_UsuariosS135.Text = 'S' THEN
BEGIN
FormPrincipal.s135.Enabled:= TRUE;
end else
begin
FormPrincipal.s135.Enabled:= False;
end;


If DM.SDS_UsuariosS136.Text = 'S' THEN
BEGIN
FormPrincipal.s136.Enabled:= TRUE;
end else
begin
FormPrincipal.s136.Enabled:= False;
end;

If DM.SDS_UsuariosS137.Text = 'S' THEN
BEGIN
FormPrincipal.s137.Enabled:= TRUE;
end else
begin
FormPrincipal.s137.Enabled:= False;
end;

If DM.SDS_UsuariosS138.Text = 'S' THEN
BEGIN
FormPrincipal.s138.Enabled:= TRUE;
end else
begin
FormPrincipal.s138.Enabled:= False;
end;

If DM.SDS_UsuariosS139.Text = 'S' THEN
BEGIN
FormPrincipal.s139.Enabled:= TRUE;
end else
begin
FormPrincipal.s139.Enabled:= False;
end;

If DM.SDS_UsuariosS140.Text = 'S' THEN
BEGIN
FormPrincipal.s140.Enabled:= TRUE;
end else
begin
FormPrincipal.s140.Enabled:= False;
end;     }

//////////////////////////////////////////////

 VLD:= 'S';
 Close;
 end
 else
   begin
    Informacao.ShowModal;
    edit3.SetFocus;
    end;
except
       Informacao3.ShowModal;
end;
end;

procedure TFormLogoff.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

   If VLD = 'S' THEN
BEGIN
Close;
end else
   Application.Terminate;
end;

procedure TFormLogoff.Edit3Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormLogoff.Edit4Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormLogoff.Edit3Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);

end;

procedure TFormLogoff.Edit4Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
end;

procedure TFormLogoff.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormLogoff.Edit1Enter(Sender: TObject);
begin
   inherited;
     CorEntrada(Sender);
end;

procedure TFormLogoff.Edit1Exit(Sender: TObject);
begin
    if DM.SDS_Usuarios.locate('Codigo',Edit1.Text,[locaseInsensitive])then
     begin
     Edit3.Text := DM.SDS_UsuariosUSUARIO.Text;
     Edit4.SetFocus;
     end else
     if not DM.SDS_Usuarios.locate('Codigo',Edit1.Text,[locaseInsensitive])then
     begin
     ShowMessage('Usuario não localizado');
     Edit1.SetFocus;
     end;

end;

procedure TFormLogoff.Edit1ButtonClick(Sender: TObject);
begin
      FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      edit3.Text:=DM.SDS_usuarios.Fieldbyname('USUARIO').AsString;
      edit1.Text:=DM.SDS_Usuarios.Fieldbyname('CODIGO').AsString;
end;

procedure TFormLogoff.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
      end;
      suiButton3.Default := True;
end;

procedure TFormLogoff.FormShow(Sender: TObject);
begin
Edit1.text := dm.SDS_UsuariosCODIGO.Text;
Edit3.Text := DM.SDS_UsuariosUSUARIO.Text;
end;

end.

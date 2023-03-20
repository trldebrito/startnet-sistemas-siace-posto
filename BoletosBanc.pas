unit BoletosBanc;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FormPadrai, Grids, DBGrids, SUIDBCtrls, SUIDlg,
  SUIButton, ExtCtrls, StdCtrls, Mylabel, Mask, ToolEdit, RXCtrls,
  SUIImagePanel, SUIEdit, Menus,  ImgList, DB, DBTables, DBCtrls, SUITabControl,  RXDBCtrl, SUIPageControl,
  ComCtrls, Buttons,DBXpress,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs,
  RLBoleto, RLPreviewForm, RLPrintDialog, RLPDFFilter, RLFilters,
  RLRichFilter, RLHTMLFilter, XDBGrids;

type
  TFormBoletos = class(TFormPadrao)
    Panel3: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    suiButton1: TsuiButton;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Panel4: TPanel;
    myLabel3d1: TmyLabel3d;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    PopupMenu1: TPopupMenu;
    Visualizar1: TMenuItem;
    Imprimir1: TMenuItem;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    gbTitulo1: TRLBTitulo;
    XDBGrid1: TXDBGrid;
    procedure PrepararTitulo;
    procedure suiButton1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletos: TFormBoletos;
  TD:TTransactionDesc;

implementation

uses UDMCob, Z_RotinasGerais, ModulodeDados, ConsClientes,
  Titulos, Principal;

{$R *.dfm}

procedure TFormBoletos.PrepararTitulo;
VAR
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;

{
   Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servirá de apoio para diveras outras rotinas
}
begin

  // dtAux := (DATE);

   if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit1.Text));

    for nI := 1 to nQtdeBoletos do
     {Dados do titulo}
//  DMCOB.cds_titulos.first;
   // repeat


   with gbTitulo1 do
     begin
      NumeroDocumento :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := dmcob.qryCedentesObservacao.Value;
//      InstrucoesBOLETO.Text := dmcob.qryCedentesObservacao.Value;
      LocalPagamento := dmcob.qryCedentesLocal_pagamento.Value;
//      logo.LoadFromFile('C:\SIAC\IMAGENS\logo.jpg');
//      MarcaDagua.LoadFromFile('C:\SIAC\imagens\marca.jpg');


      {Se não localizar o cedente, gera erro}
      if not dmcob.qryCedentes.Locate('Codigo_Boleto', DMCOB.cds_titulosId_portador.Value,[]) then
         Raise Exception.Create('Cedente não localizado');

      {Dados do cedente}
      with Cedente do
      begin
         if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            TipoInscricao := tiPessoaFisica {CPF}
         else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            TipoInscricao := tiPessoaJuridica {CNPJ}
         else
            TipoInscricao := tiOutro;

         NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.Value;
         Nome := dmcob.qryCedentesNomeCedente.Value;
         CodigoCedente := dmcob.qryCedentesCedenteCodigo.Value;
         DigitoCodigoCedente := dmcob.qryCedentesCedenteCodigoDigito.Value;

          {avalista}
         SacadorAvalista := DM.SDS_EmpresaRAZAO_SOCIAL.AsString;
         
         {Endereço do cedente}
         with Endereco do
         begin
            Rua := dmcob.qryCedentesENDERECO.AsString;
            Endereco.Numero := dmcob.qryCedentesNumero.AsString;
            Complemento := dmcob.qryCedentesComplemento.AsString;
            Bairro := dmcob.qryCedentesBairro.AsString;
            Cidade := dmcob.qryCedentesCidade.AsString;
            Estado := dmcob.qryCedentesuf.AsString;
            CEP := dmcob.qryCedentesCEP.AsString;
            Email := dmcob.qryCedentesEMail.AsString;
         end; {with Endereco}

         {Dados bancários do cedente}
         with ContaBancaria do
         begin
            Banco.Codigo := dmcob.qryCedentesBanco_Portador.AsString;
            CodigoAgencia := dmcob.qryCedentesCodigoAgencia.AsString;
            DigitoAgencia := dmcob.qryCedentesDigitoAgencia.AsString;
            NumeroConta := dmcob.qryCedentesNumeroConta.AsString;
            DigitoConta := dmcob.qryCedentesDigitoConta.AsString;
         end; {with Banco}
      end; {with Cedente}

      {Se não localizar o sacado, gera erro}
      if not dm.Sds_Clientes.Locate('Codigo', DMCOB.cds_titulosCodigo_Cliente.Value,[]) then
         Raise Exception.Create('Cliente (sacado) não localizado');

      {Dados do sacado do título}
      with Sacado do
      begin
         if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
            TipoInscricao :=  tiPessoaFisica
         else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
            TipoInscricao := tiPessoaJuridica
         else
            TipoInscricao := tiOutro;
         NumeroCPFCGC := dm.Sds_clientesCPF_cnpj.AsString;
         Nome := dm.Sds_clientesNome_rs.AsString;

         {Endereço do sacado do título}
         with Endereco do
         begin
            Rua := dm.Sds_clientesEndereco.AsString;
            Numero := dm.Sds_clientesNumero.AsString;
            Complemento := dm.Sds_clientesComplemento.AsString;
            Bairro := dm.Sds_clientesBairro.AsString;
            Cidade := dm.Sds_clientesCidade.AsString;
            Estado := dm.Sds_clientesUF.AsString;
            CEP := dm.Sds_clientesCEP.AsString;
            Email := dm.Sds_clientesEMail.AsString;
         end; {with Endereco}

         {Dados bancários do sacado do título}
         with ContaBancaria do
         begin
            Banco.Codigo := '';
            CodigoAgencia := '';
            DigitoAgencia := '';
            NumeroConta := '';
            DigitoConta := '';
         end; {with Banco}
      end; {with Sacado}
   end; {with Titulo}

   GBTitulo1.InsertRecord;

   {DMCOB.cds_titulos.Next;
   until DMCOB.cds_titulos.eof;
   DMCOB.cds_titulos.first;}
   end;
end;



procedure TFormBoletos.suiButton1Click(Sender: TObject);
begin
  inherited;
dmcob.qryTitulos.close;
dmcob.qryTitulos.sql.clear;
DMCOB.cds_titulos.Active := FALSE;
dmcob.qryTitulos.sql.text:='select * from V_CREDIARIO_BOLETOS where CODIGO_COMPRA LIKE :pesquisa';
dmcob.qrytitulos.parambyname('pesquisa').asString:=AnsiUpperCase(Edit2.Text){+'%'};
dmcob.qrytitulos.open;
DMCOB.cds_titulos.Active := TRUE;
end;
//end;

procedure TFormBoletos.btnNovoClick(Sender: TObject);
begin
  inherited;
 //  try
  //  DMCOB.cds_titulos.first;
  //  repeat
     Application.CreateForm(TfrmTitulos, frmTitulos);
     TRY
    //  DMCOB.cds_titulos.Edit;
   //   frmTitulos.editseunumero.text := DMCOB.cds_titulosCODIGO_COMPRA.Text + '-' + DMCOB.cds_titulosParcela.Text;
      frmTitulos.Tag := 2;
      frmTitulos.Showmodal;
//      AtualizarExecute(Sender);
//      frmTitulos.Release;
    EXCEPT
      on E : Exception do
      begin
         frmTitulos.Release;
         MessageDlg('Ocorreu um erro ao tentar alterar uma conta a receber: ' + E.Message,mtError,[mbOk],0);
      end;
      end;
 {     DMCOB.cds_titulos.Next;
   until DMCOB.cds_titulos.eof;
   DMCOB.cds_titulos.first;
   except
   DMCOB.cds_titulos.cancel;  }
end;


procedure TFormBoletos.Visualizar1Click(Sender: TObject);
begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.Text:= 'Por favor gere o boleto antes de Visualiza-lo!!!';
MsgInformacao.Showmodal;
//DBEdit1.SetFocus;
end else
begin
  inherited;
 try
 begin
  inherited;
          PrepararTitulo;

          case ComboBox1.ItemIndex of
           0: gBTitulo1.BoletoLayout := blPadrao;
           1: gBTitulo1.BoletoLayout := blCarne;
           end;


          gbTitulo1.PreviewModal;
          end;
          begin
  //        DMCOB.cds_titulos.Edit;
  //        DMCOB.cds_titulosNumBoleto.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + gbtitulo1.NossoNumero + gbtitulo1.DigitoNossoNumero;
  //        DMCOB.cds_titulos.Post;
  //        DMCOB.cds_titulos.ApplyUpdates(0);
  //         DM.SQLC.Commit(TD);
          end;
          Except
   MsgErro.Text:= 'Ocorreu um Erro ao visualizar o titulo feche a tela e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;


procedure TFormBoletos.Imprimir1Click(Sender: TObject);
begin
If DMCOB.cds_titulosNumBoleto.text = '' then
begin
MsgInformacao.Text:= 'Por favor gere o boleto antes de Imprimi-lo!!!';
MsgInformacao.Showmodal;
//DBEdit1.SetFocus;
end else
begin
  inherited;
// TD.TransactionID := 1;
// TD.IsolationLevel := XILReadCommitted;
// DM.SQLC.StartTransaction(TD);
 try
 begin
  inherited;
          PrepararTitulo;
           case ComboBox1.ItemIndex of
           0: gBTitulo1.BoletoLayout := blPadrao;
           1: gBTitulo1.BoletoLayout := blCarne;
           end;

          gbTitulo1.imprimir;
  //        DMCOB.cds_titulos.Edit;
  //        DMCOB.cds_titulosNumBoleto.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + gbtitulo1.NossoNumero + gbtitulo1.DigitoNossoNumero;
  //        DMCOB.cds_titulos.Post;
  //        DMCOB.cds_titulos.ApplyUpdates(0);
  //        DM.SQLC.Commit(TD);
          end;
          Except
   //       DMCOB.cds_titulos.CancelUpdates;
   //       DM.SQLC.Close;
   MsgErro.Text:= 'Ocorreu um Erro ao Imprimir o titulo feche a tela e tente novamente !!!';
   MsgErro.ShowModal;

   end;
end;
end;

procedure TFormBoletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=CaFree;
FormBoletos:=nil;
end;

procedure TFormBoletos.FormShow(Sender: TObject);
begin
  inherited;
//  SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
  //DMCOB.cds_titulos.Active:= False;
//DMCOB.cds_titulos.Active:= True;
DMCob.SDS_Cedentes.Active:= False;
DMCob.SDS_Cedentes.Active:= True;
//dm.Sds_clientes.Active:= False;
//dm.Sds_clientes.Active:= True;
//IF DM.SDS_Titulos.RecordCount = 0 then AtualizaManutencao;


{if FORMVENDAS.ACTIVE = True then
BEGIN}
//end;

{IF FormPedidoParcelado.Active = True then
begin
EDIT2.Text := FORMPEDIDOPARCELADO.EDIT2.TEXT;
RXLABEL6.Caption := FORMPEDIDOPARCELA.DB_Nome.TEXT;
edit2.SetFocus;
end else}
suiButton1Click(Sender);

end;
procedure TFormBoletos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.

unit Titulos;

interface

uses
  Forms, Controls, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, SUIDlg,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Dialogs, SUIButton,
  SUIDBCtrls, Menus,  ImgList, DB, DBTables,
  RXCtrls, ToolEdit, RXDBCtrl,
  Grids, DBGrids,   ComCtrls, DBXpress,ExtDlgs, SUIGroupBox, Formata_CPF_CNPJ, defs, SUITitleBar, RLBoleto,
  RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter;

type
  TfrmTitulos = class(TForm)
    Panel1: TPanel;
    pnlInformacoes: TPanel;
    Label35: TLabel;
    Label22: TLabel;
    Label18: TLabel;
    EditSeuNumero: TDBEdit;
    Label19: TLabel;
    EditNossoNumero: TDBEdit;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    cboCliente: TDBLookupComboBox;
    lblDataDocumento: TLabel;
    Label1: TLabel;
    lblDataCredito: TLabel;
    lblValorLiquidoRecebido: TLabel;
    lblValorPagoPeloCliente: TLabel;
    lblObservacoes: TLabel;
    butConfirmar: TBitBtn;
    butCancelar: TBitBtn;
    Label2: TLabel;
    DataDocumento: TDBEdit;
    DataVencimento: TDBEdit;
    ValorDocumento: TDBEdit;
    ValorDesconto: TDBEdit;
    ValorAcrescimo: TDBEdit;
    ValorMoraJuros: TDBEdit;
    ValorPagoPeloCliente: TDBEdit;
    ValorLiquidoRecebido: TDBEdit;
    DataRecebimento: TDBEdit;
    MsgErro: TsuiMessageDialog;
    txtDigitoNossoNumero: TEdit;
    Label5: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    Label6: TLabel;
    txtObservacoes: TMemo;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    ComboBox3: TComboBox;
    RLBRemessa1: TRLBRemessa;
    gBTitulo1: TRLBTitulo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    cboCedente: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure butConfirmarClick(Sender: TObject);
    procedure butCancelarClick(Sender: TObject);
    procedure cboCedenteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboCedenteEnter(Sender: TObject);
    procedure cboCedenteExit(Sender: TObject);
    procedure PrepararTitulo;
  private
    { private declarations }
  public
    { public declarations }
      CHAVE :string;
  end;

var
  frmTitulos: TfrmTitulos;
  TD:TTransactionDesc;


implementation

uses ModulodeDados, Udmcob, Principal;


{$R *.DFM}
function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

procedure TfrmTitulos.FormShow(Sender: TObject);
begin
  //SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
   dmcob.qrycedentes.active := false;
   dmcob.qrycedentes.active := true;

   DMCOB.sds_cedentes.active := false;
   DMCOB.sds_cedentes.active := true;

   dmcob.qryTitulos.Open;

   //dmcob.cds_Titulos.Active := false;
   //dmcob.cds_Titulos.Active := true;
   if CHAVE > '' then
   txtObservacoes.text := dmcob.sds_cedentesObservacao.text + #10+#13 + 'Chave de Liberação: '+ CHAVE
   else
   txtObservacoes.text := dmcob.sds_cedentesObservacao.text;
  // editseunumero.text := DMCOB.cds_titulosCODIGO_COMPRA.Text + '-' + DMCOB.cds_titulosParcela.Text;
   cboCedente.SetFocus;
end;

procedure TfrmTitulos.PrepararTitulo;
VAR
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
  dtaux : TDateTime;
{
   Objetivo:
      Preencher as propriedades do componente gbTitulo1 com os dados da conta selecionada.
      Servirá de apoio para diveras outras rotinas
}
begin
    dtAux := (DATE);

   if dmCob.qryCedentes.State = dsInactive then
      dmcob.qryCedentes.Open;

   begin
   nQtdeBoletos := StrToInt(Trim(MaskEdit1.Text));
  { case ComboBox1.ItemIndex of
    0: gbTitulo1.BoletoLayout := blPadrao;
    1: gbTitulo1.BoletoLayout := blCarne;
    end;}
  if tag = 2 then
  begin
   for nI := 1 to nQtdeBoletos do
    {Dados do titulo}
    DMCOB.cds_titulos.first;
    repeat

    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;

   with gbTitulo1 do
     begin
      NumeroDocumento :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataProcessamento :=  Date;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := {dmcob.qryCedentesObservacao.Value;} txtObservacoes.Text ;
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
   DMCOB.cds_titulos.Edit;
   DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);

   DMCOB.cds_titulos.Next;
   until DMCOB.cds_titulos.eof;
   DMCOB.cds_titulos.first;
   end else

  if tag = 1 then
  begin
    for nI := 1 to nQtdeBoletos do
    DMCOB.cds_titulos.Edit;
    DMCOB.cds_titulosbanco_portador.text := edit1.Text;//dmcob.sds_cedentesBANCO_PORTADOR.Text;
    DMCOB.cds_titulosCODIGOCEDENTE.text  := edit2.text;// dmcob.sds_cedentesCEDENTECODIGO.Text;
    DMCOB.cds_titulosID_PORTADOR.Text    := edit3.Text;
    DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
    DMCOB.cds_titulosTIPO.Text := 'BOL';
    DMCOB.cds_titulos.Post;

   with gbTitulo1 do
     begin
      NumeroDocumento :=  DMCOB.cds_titulosCodigo_Compra.AsString + '-' +  DMCOB.cds_titulosParcela.AsString;
      NossoNumero :=  DMCOB.cds_titulosNumboleto1.AsString;
      Carteira := dmcob.qryCedentesCarteira.AsString;
      DataDocumento :=  DMCOB.cds_titulosData_Compra.AsDateTime;
      DataProcessamento :=  Date;
      DataVencimento :=  DMCOB.cds_titulosData_Vencimento.AsDateTime;
      ValorDocumento :=  DMCOB.cds_titulosValor_Compra.AsCurrency;
      Instrucoes.Text := {dmcob.qryCedentesObservacao.Value;} txtObservacoes.Text ;
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

   DMCOB.cds_titulos.Edit;
   DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
   DMCOB.cds_titulos.Post;
   DMCOB.cds_titulos.ApplyUpdates(0);
   end;

 END;

end;

procedure TfrmTitulos.butConfirmarClick(Sender: TObject);
var
dtaux : TDateTime;
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
begin
           dtAux := (DATE);
           if length(cboCedente.text) = 0 then
           begin
            showmessage('Preencha o nome do banco corretamente.');
            abort; // ... você pode usar o conjunto mensagem + abort!
            end;
           Try
          begin
        //  DMCOB.cds_titulos.Refresh;
        {  DMCOB.cds_titulos.Edit;

          DMCOB.cds_titulosbanco_portador.text := dmcob.sds_cedentesBANCO_PORTADOR.Text;
          DMCOB.cds_titulosCODIGOCEDENTE.text  := dmcob.sds_cedentesCEDENTECODIGO.Text;
          DMCOB.cds_titulosCOD_EMPRESA.TEXT    := DM.SDS_EmpresaCODIGO.Text;
          DMCOB.cds_titulosTIPO.Text := 'BOL';
          DMCOB.cds_titulos.Post;  }



           PrepararTitulo;


           case ComboBox3.ItemIndex of
            0: GBTitulo1.BoletoLayout := blPadrao;
            1: GBTitulo1.BoletoLayout := blCarne;
          end;
          {for nI := 1 to nQtdeBoletos do
          begin
            //Dados do Cedente
            RLBTitulo1.DataProcessamento := Date;
            RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := Trim(Copy(dmcob.qryCedentesBanco_Portador.Text,1,3));
            RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := Trim(DMCOB.qryCedentesCODIGOAGENCIA.Text);
            RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := Trim(DMCOB.qryCedentesDIGITOAGENCIA.Text);
            RLBTitulo1.Cedente.ContaBancaria.NumeroConta := Trim(DMCOB.qryCedentesNUMEROCONTA.Text);
            RLBTitulo1.Cedente.ContaBancaria.DigitoConta := Trim(DMCOB.qryCedentesDIGITOCONTA.Text);
            RLBTitulo1.Cedente.CodigoCedente := Trim(DMCOB.qryCedentesCEDENTECODIGO.Text);
            RLBTitulo1.Cedente.DigitoCodigoCedente := Trim(DMCOB.qryCedentesCEDENTECODIGODIGITO.Text);
            RLBTitulo1.Carteira := Trim(dmcob.qryCedentesCarteira.Text);
            RLBTitulo1.Cedente.ContaBancaria.Convenio := Trim(DMCOB.qryCedentesCONVENIO.Text);
            RLBTitulo1.Cedente.ContaBancaria.NomeCliente := Trim(DMCOB.qryCedentesNOMECEDENTE.Text);

            if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'F' then
            RLBTitulo1.Cedente.TipoInscricao := tiPessoaFisica {CPF}{
            else if AnsiUpperCase(dmcob.qryCedentesTipo.Value) = 'J' then
            RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica {CNPJ}{
            else
            RLBTitulo1.Cedente.TipoInscricao := tiOutro;
          //  RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
            RLBTitulo1.Cedente.NumeroCPFCGC := dmcob.qryCedentesCNPJCEDENTE.text;
            RLBTitulo1.Cedente.Nome := Trim(DMCOB.qryCedentesNOMECEDENTE.Text);
            //dados do sacado

            RLBTitulo1.Sacado.Nome := Trim(DM.SDS_ClientesNOME_RS.Text);
            {case ComboBox2.ItemIndex of
              0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
              1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
            end;}
             { if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'F' then
              RLBTitulo1.Sacado.TipoInscricao :=  tiPessoaFisica
               else if AnsiUpperCase(dm.Sds_clientesTipo.AsString) = 'J' then
             RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica
              else
            RLBTitulo1.Sacado.NumeroCPFCGC := Trim(DM.SDS_ClientesCPF_CNPJ.Text);
            RLBTitulo1.Sacado.Endereco.Rua := Trim(DM.SDS_ClientesENDERECO.Text);
            RLBTitulo1.Sacado.Endereco.CEP := Trim(DM.SDS_ClientesCEP.Text);
            RLBTitulo1.Sacado.Endereco.Cidade := Trim(dm.SDS_ClientesCIDADE.Text);
            RLBTitulo1.Sacado.Endereco.Estado := Trim(DM.SDS_ClientesUF.Text);
            //dados da cobranca
            RLBTitulo1.NossoNumero := Trim(DMCOB.cds_titulosNumboleto1.Text);
            RLBTitulo1.ValorDocumento := StrToCurr(DMCOB.cds_titulosVALOR_COMPRA.Text);
            RLBTitulo1.DataDocumento := dmcob.cds_titulosDATA_COMPRA.AsDateTime;
            RLBTitulo1.DataVencimento := dmcob.cds_titulosData_Vencimento.asdateTime;//StrToDate(MaskEdit1.Text);
            RLBTitulo1.NumeroDocumento := Trim(DMCOB.cds_titulosCodigo_Compra.Text + '-' +  DMCOB.cds_titulosParcela.Text);
            RLBTitulo1.Instrucoes.Text := txtObservacoes.Text;

            RLBTitulo1.InsertRecord;}
          {  Edit4.Text     := IntToStr(StrToIntDef(Trim(Edit4.Text),0)+1); //Simulando o nosso numero
            MaskEdit1.Text := DateToStr(IncDay(StrToDate(MaskEdit1.Text)));
            Edit10.Text    := CurrToStr(StrToCurr(Edit10.Text) + 1.23);}
          //end;



          GBTitulo1.PreviewModal;
        
         { DMCOB.cds_titulos.Edit;
          DMCOB.cds_titulosNumBoleto.text :=  FormatDateTime('yy',dtAux) + dmcob.sds_cedentesTp_Cobranca.Value + Formatar(gbtitulo1.NossoNumero,5,False,'0') + gbtitulo1.DigitoNossoNumero;
          DMCOB.cds_titulos.Post;
          DMCOB.cds_titulos.ApplyUpdates(0);   }
         // DM.SQLC.Commit(TD);
          Frmtitulos.Close;
        end;

   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TfrmTitulos.butCancelarClick(Sender: TObject);
begin
   DMCOB.cds_titulos.Cancel;
   DMCOB.cds_titulos.CancelRange;
   DMCOB.cds_titulos.CancelUpdates;
end;

procedure TfrmTitulos.cboCedenteClick(Sender: TObject);
begin
//   with dmCobranca do
//      qryTitulosNumBoleto.Value := CalcularProximoNumero(qryTitulosId_portador.Value);
end;

procedure TfrmTitulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FrmTitulos:=nil;
end;

procedure TfrmTitulos.cboCedenteEnter(Sender: TObject);
begin
   //editnossonumero.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + DMCOB.cds_titulosNUMBOLETO1.AsString;
//   gbTitulo1.Cedente.ContaBancaria.Banco.Codigo := dmcob.sds_cedentesBANCO_PORTADOR.Text;
   //gbTitulo1.NossoNumero := EditNossoNumero.Text;
   //txtDigitoNossoNumero.Text := gbTitulo1.DigitoNossoNumero;
end;

procedure TfrmTitulos.cboCedenteExit(Sender: TObject);
begin
  // editnossonumero.text := dmcob.sds_cedentesAno.text + dmcob.sds_cedentesTp_Cobranca.Value + DMCOB.cds_titulosNUMBOLETO1.AsString;
   edit1.text:= dmcob.sds_cedentesBANCO_PORTADOR.Text;
   edit2.text:= dmcob.sds_cedentesCEDENTECODIGO.Text;
   edit3.text:= DMCOB.sds_cedentesCODIGO_BOLETO.Text;
  // gbTitulo1.NossoNumero := EditNossoNumero.Text;
  // txtDigitoNossoNumero.Text := gbTitulo1.DigitoNossoNumero;
end;

end.

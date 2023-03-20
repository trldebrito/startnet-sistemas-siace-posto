unit ConsultaPedidoDireto;

interface

uses
  Windows, SysUtils, SUIDBCtrls, Mask, ToolEdit, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls, SUIPageControl, SUITabControl,
  Classes, Graphics,  Forms, Dialogs,  FMTBcd, RDprint, DB, SqlExpr,
  SUIDlg, RXCtrls, DBCtrls, ACBrECF, ACBrBase, ACBrDevice, ACBrECFClass, ACBrConsts;

type
  TFormConsultaPedidoDireto = class(TForm)
    pnpesq: TPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TsuiButton;
    Panel4: TPanel;
    Bevel1: TBevel;
    Panel: TPanel;
    BitBtn3: TsuiButton;
    Label2: TLabel;
    Label4: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    suiDBGrid2: TsuiDBGrid;
    Panel10: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Panel11: TPanel;
    Label9: TLabel;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    RxLabel41: TRxLabel;
    suiDBEdit41: TsuiDBEdit;
    l_total: TRxLabel;
    V_Total: TsuiDBEdit;
    RxLabel44: TRxLabel;
    suiDBEdit43: TsuiDBEdit;
    RxLabel45: TRxLabel;
    suiDBEdit44: TsuiDBEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Cliente: TComboEdit;
    RxLabel8: TRxLabel;
    Label5: TLabel;
    Edit3: TEdit;
    suiButton2: TsuiButton;
    suiButton5: TsuiButton;
    suiButton4: TsuiButton;
    L_prazo: TRxLabel;
    L_avista: TRxLabel;
    V_avista: TsuiDBEdit;
    V_prazo: TsuiDBEdit;
    suiButton3: TsuiButton;
    suiButton7: TsuiButton;
    Edit4: TEdit;
    edCod: TEdit;
    mFormas: TMemo;
    SPC_N_CUPOM: TSQLStoredProc;
    excluir: TsuiButton;
    suiButton6: TsuiButton;
    Edit6: TEdit;
    Edit5: TEdit;
    RDprint1: TRDprint;
    suiButton8: TsuiButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton2Click(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure suiDBGrid1Enter(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure suiDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure CarregaFPG;
    procedure excluirClick(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton6Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure ImprimeVenda;
    procedure ImprimeVenda40;
    procedure suiButton8Click(Sender: TObject);

  private
  D : Currency;
  Function Converte( cmd : String) : String;

  
  public
     X : Real;
     TipoCupom : Char ;
          Total, Comissao,EncFinanceiro:Double;
    ValCompra, Dinheiro, Soma,  desct, A, B, C, acresc :Double;
    Cod,Contador, I, NItem, NValor:Integer;
    Pagamento, CPFCNPJ, RGIE, EnderComp: String;
  end;
  const
  //ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;

var
  FormConsultaPedidoDireto: TFormConsultaPedidoDireto;

implementation

uses ModulodeDados, Z_RotinasGerais, ModulodeDadosConsultas3, Principal,
  Vendas, lancNotasFiscais, ConsClientes,
  ModulodeDadosConsultas, ModulodeDadosRelatorios, printPedidos, duplicata,
  ContratoVEnda, ECFTeste1, BoletosBanc, ImpNotafiscal, PEDIDO80COL,
  gerNFE, Z_DeclaracoesBemaFi32, uFarmaciaPopular2;



{$R *.DFM}
function RemoveChar(Const Texto:String):String; 
  // 
  // Remove caracteres de uma string deixando apenas numeros 
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

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


function TFormConsultaPedidoDireto.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if (Ord(cmd[A]) < 32) or (Ord(cmd[A]) > 127) then
        Result := Result + '#' + IntToStr(ord( cmd[A] ))
     else
        Result := Result + cmd[A] ;
  end ;
  end;
procedure TFormConsultaPedidoDireto.CarregaFPG;
Var A : Integer ;
begin
  mFormas.Clear ;
  with FormECF do
  begin
     { Bematech e NaoFiscal permitem cadastrar formas de Pagamento dinamicamente }
     if (FormECF.ACBrECF1.Modelo in [ecfBematech,ecfNaoFiscal])then
        ACBrECF1.CarregaFormasPagamento
     else
        ACBrECF1.AchaFPGIndice('') ;  { força carregar, se ainda nao o fez }

     for A := 0 to formECF.ACBrECF1.FormasPagamento.Count -1 do
     begin
        {mFormas.Lines.Add( ACBrECF1.FormasPagamento[A].Indice+' -> '+
              formECF.ACBrECF1.FormasPagamento[A].Descricao+' - '+IfThen(
              formECF.ACBrECF1.FormasPagamento[A].PermiteVinculado,'v',''));}
     end ;
  end ;
  end;


procedure TFormConsultaPedidoDireto.ImprimeVenda40;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
     total    := 0;
     Traco    := '-------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 55;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := DMC.CDS_PedidosCODIGO_CLIENTE.Text +' - ' + dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,28,RAZAO_EMP,[comp17, Negrito])
        else
           impc(02,28,RAZAO_EMP,[comp12, Negrito]);
        impc(03,28,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12, Negrito]);
        impc(04,28,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12, Negrito]);
        impc(05,28,'Fone ' + tel_emp,[Comp12, Negrito]);
        impf(07,01,'Nº Vda:' + dmc.CDS_PedidosCODIGO.text +
                   ' Data:' + dmc.CDS_PedidosDATA_PEDIDO.Text +
                   ' Op.: ' + DMC.CDS_PedidosUSUARIO.Text,[Comp17, Negrito] );

        // Dados do Cliente...
        imp (08,01,traco);
        impf(09,01,CLI,[Comp12, Negrito]);
        impf(10,01, END_CLI + ',' + NUMERO_CLI,[Comp17, Negrito]);
        impf(11,01,CEP_CLI  + ' - ' +
                   CID_CLI + ' - ' +
                   ESTADO_CLI,[Comp17, Negrito]);

        // Titulo dos Itens...
        imp (12,01,traco);
        impF (13,01,'Qte   Desc. Produtos         UN   Unit Sub-Total', [Comp17, Negrito]);
        imp (14,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 15;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
          sDescricao := Formatar(DMC.SDS_Pedido_ItensDescricao_produto.AsString,23,true,' ');
        with rdprint1 do
           begin
           impval(linha,01,'0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[Comp17, Negrito]);
           impf  (linha,8,''+ sDescricao,[comp20, Negrito]);
           impf  (linha,35,DMC.SDS_Pedido_ItensUNIDADE.AsString, [Comp17, Negrito]);
           impval(linha,37,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[Comp17, Negrito]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,46,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, [Comp17, Negrito]);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        impF   (linha,01,'Total Geral da Venda', [Comp12, Negrito]);
        impval(linha,33,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[Comp12, Negrito]);
        // Desconto Global
        inc (linha);
        impF (linha,01,'(-) Desconto Global',[Comp12, Negrito]);
        impval(linha,33,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[Comp12, Negrito]);
        // Total Liquido...
        inc (linha);
        impf(linha,01,'VALOR A PAGAR R$',[comp12,negrito]);
        impval(linha,33,'###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[comp12,negrito]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        impf(linha,01,'Formas de pagamento',[comp12,negrito]);
        inc   (linha);

        DMC.SDS_COND_PAGTO.First;
        while not DMC.SDS_COND_PAGTO.Eof do
            begin
               if DMC.SDS_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     impf (linha,01, DMC.SDS_COND_PAGTOTIPO_PAGTO.Text, [Comp12, Negrito] );
                     impval(linha,33,'###,###,##0.00',DMC.SDS_COND_PAGTOVALOR.AsFloat,[Comp12, Negrito]);
                     inc   (linha);
                  end;
               DMC.SDS_COND_PAGTO.Next;
            end;
        impf (linha,01, 'Troco', [Comp12, Negrito] );
        impval(linha,33,'###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[Comp12, Negrito]);
        inc   (linha);
        // Final...

        imp (linha,01,traco);
        inc (linha);
        impc(linha,28,'Obrigado pela preferência',[Comp12, Negrito]);
        inc (linha);
        inc (linha);
        impc(linha,28,'VOLTE SEMPRE',[Comp12, Negrito]);
        inc (linha);
        inc (linha);
        impc(linha,28,'***  SEM VALOR FISCAL  ***',[Comp12, Negrito]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
        imp   (linha,01,traco);
        inc   (linha);
        impc(linha,25,'***  ASSINATURA  ***',[Comp12, Negrito]);

        // Avança 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 1;

end;


procedure TFormConsultaPedidoDireto.ImprimeVenda;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
     total    := 0;
     Traco    := '----------------------------------------------------------------------------------------------------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 44;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 160;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;
     RDprint1.Margens.Top:=1;
     RDprint1.Margens.Bottom:=3;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaRAZAO_SOCIAL.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := 'Cód: '+ dmc.CDS_PedidosCODIGO_CLIENTE.Text + '  Nome: '+ dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,70,RAZAO_EMP,[comp17, Negrito])
        else
           impc(02,70,RAZAO_EMP,[comp12, Negrito]);
        impc(03,70,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,70,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,70,'Fone :' + tel_emp,[Comp12]);
       // inc   (linha);
        imp (06,01,traco);
       // inc   (linha);
        impc(07,70,'COMPROVANTE DE VENDA',[comp17, Negrito]);
        //inc   (linha);
        imp (08,01,traco);
        //inc   (linha);
        imp (09,01,'Nº Venda :' + dmc.CDS_PedidosCODIGO.Text +
                   '       Data: ' + dmc.CDS_PedidosDATA_PEDIDO.AsString + '    Hora: '+DMC.CDS_PedidosHORA.Text+
                   '         Vendedor.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (10,01,traco);
        impf(11,01,CLI,[comp12]);
        impf(11,75,'Apel./Fant.: '+ dmc.SDS_ClienteAPELIDO.text,[comp12]);
        impf(12,01, 'End.:' +END_CLI + ',' + 'Nº: ' +NUMERO_CLI,[comp12]);
        impf(12,75,'Cep: '+CEP_CLI  + ' - ' +
                   'Cidade: ' + CID_CLI + ' - ' +
                   'UF: '+ ESTADO_CLI, [comp12]);
        impf(13,01,'CPF/CNPj: '+ dmc.CDS_PedidosCPF_CNPJ.text,[comp12]);
        impf(13,75,'Rg/IE: '+ dmc.CDS_PedidosRG_IE.text,[comp12]);
        // Titulo dos Itens...
        imp (14,01,traco);
        imp (15,01,'Codigo          Descrição dos Produtos                          Marca         Qte        UN        Unitário            Descontos           Sub-Total');
        imp (16,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 17;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
           impf  (linha,01,DMC.SDS_Pedido_ItensCODIGO_PRODUTO.AsString,  []);
           impf  (linha,17,DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,65,DMC.SDS_Pedido_ItensNOME_MARCA.AsString,  []);
           impval(linha,75,'#,##0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,90,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,100,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,120,'##,##0.00', DMC.SDS_Pedido_ItensDESCONTO.AsFloat, []);
           impval(linha,140,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

        // SOMA QUANTIDADE
        DMC.SDS_Pedido_Itens.First;
        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        // RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        While not DMC.SDS_Pedido_Itens.Eof do
        begin

        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        //RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        end;

        // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
        with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,90,'Total Geral da Venda R$');
        impval(linha,135,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);

        // Desconto Global
        inc (linha);
        imp   (linha,35,'Qtde de Itens da Venda R$');
        impval(linha,69,'###,###,##0.000',D,[]);
        imp (linha,90,'(-) Desconto Global');
        impval(linha,135,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
        inc (linha);
        imp (linha,90,'Acréscimos/Financeiro:');
        impval(linha,135,'##,###,##0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...

        inc (linha);
        imp(linha,90,'Valor Liquido da Venda R$');
        impval(linha,135,'###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento     Parcela          Vencimento         Valor Parcela');
        inc   (linha);
        imp   (linha,01,traco);
        inc   (linha);

        DMC.SDS_COND_PAGTO.First;
        while not DMC.SDS_COND_PAGTO.Eof do
            begin
               if DMC.SDS_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.SDS_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,28, DMC.SDS_COND_PAGTOPARCELA.Text );
                     imp (linha,42, DMC.SDS_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,60,'###,###,##0.00',DMC.SDS_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.SDS_COND_PAGTO.Next;
            end;
        //  imp (linha,01, 'Troco' );
        // impval(linha,130,'###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
        // inc   (linha);
        // Final...

        imp (linha,01,'-------------------------------------------------------------------------');
        inc (linha);
        impc(linha,01,'Obs : ' + DMC.CDS_PedidosOBSERVACOES.Text,[comp12]);
        inc (linha);
        inc (linha);
        imp   (linha,105,'_________________________________');
        inc   (linha);
        impc(linha,122,'***  ASSINATURA  ***',[]);

        // Avança 7 linhas em Branco...
        linha := linha+ 2; //linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 44;

end;



procedure TFormConsultaPedidoDireto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//formVendas.Sds_pedidos.Filtered := False;
//formECF.close;
Action:=CaFree;
FormConsultaPedidoDireto:=nil;
formECF :=nil;
end;

procedure TFormConsultaPedidoDireto.DateEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.DateEdit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.DateEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.DateEdit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsultaPedidoDireto.FormShow(Sender: TObject);
begin
    DMC3.SQLD_PedidosGeral.Active:=FALSE;
    DMC3.CDS_PedidosGeral.Active:=FALSE;
    DMC3.SDS_ItensPedidoGeral.Active:=FALSE;
    DMC3.SQLD_PedidosCliente.Active:=FALSE;
    DMC3.CDS_PedidosCliente.Active:=FALSE;
    DMC3.SDS_ItensPedidoCliente.Active:=FALSE;
    DMC3.SQLD_PedidosUsuario.Active:=FALSE;
    DMC3.CDS_PedidosUsuario.Active:=FALSE;
    DMC3.SDS_ItensPedidoUsuario.Active:=FALSE;
    DMC3.SQLD_Pedidos_Pagamento.Active:=False;
    DMC3.CDS_Pedidos_Pagamento.Active:=False;
    DMC3.SDS_ItensPedido_Pagamento.Active:= False;
    DateEdit1.SetFocus;
    DateEdit1.Date := Date;
    DateEdit2.Date := Date;
    suiButton1Click(Sender);
    suiDBGrid1.SetFocus;
   // DM.Sds_Pedidos.Filtered := False;
   if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'N' then
   begin
    l_total.visible := False;
    V_total.visible := False;
    L_avista.visible := False;
    L_prazo.visible := false;
    V_avista.visible := false;
    V_prazo.visible := False;
    end else
   if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'S' then
   begin
    l_total.visible := True;
    L_avista.visible := True;
    L_prazo.visible := True;
    V_total.visible := True;
    V_avista.visible := True;
    V_prazo.visible := True;
    end;

end;

procedure TFormConsultaPedidoDireto.Edit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.Edit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.suiButton1Click(Sender: TObject);
var
  inicio, final, cli, venda, user :string;
begin
   try
   inicio:=datetostr(DATE);
   final:=datetostr(DATE);

   inicio:=dateedit1.TexT;
   final:=dateedit2.TexT;

   cli := cliente.Text;

   Venda := edit2.text;
   user :=   Edit4.text;
   begin
   DM.Sds_vendas.Active := false;
   DM.Sds_Vendas_itens.Active := false;
   dm.QRY_vendas.close;
   dm.QRY_vendas.SQL.Clear;
   dm.QRY_vendas.SQL.add('select * from PEDIDOS where codigo >0'+'');
   if inicio >'  /  /    ' then
   dm.QRY_vendas.SQL.add('and DATA_pedido >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO<='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
   if cli >'' then
   dm.QRY_vendas.SQL.add('and CODIGO_CLIENTE ='+(cli)+'');
   if venda >'' then
   DM.qry_vendas.SQL.add('and codigo ='+(venda)+'');
    if user >'' then
   DM.qry_vendas.SQL.add('and USUARIO ='+(USER)+'');
   DM.qry_vendas.SQL.add('ORDER BY Codigo DESC');
   DM.qry_vendas.Open;
   DM.Sds_vendas.Active := True;
   DM.Sds_Vendas_itens.Active := true;
   end;

   { If  DM.sds_vendas.eoF then
    Begin
       MSG_NR.ShowModal;
    end;}
    Except
     MSG_ERRO.ShowModal;
   end;
end;


procedure TFormConsultaPedidoDireto.TabSheet1Show(Sender: TObject);
begin
//DateEdit3.SetFocus;
end;

procedure TFormConsultaPedidoDireto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsultaPedidoDireto.suiButton2Click(Sender: TObject);
{begin
  Try
  //if FormReemissaoPP=nil   then
    begin
    FormReemissaoPP:=TFormReemissaoPP.Create(self);
      FormReemissaoPP.EDIT1.Text :=dm.Sds_vendasCODIGO.Text;
      FormReemissaoPP.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;}
var
Endercomp, Cli, cpf_cnpj, prod: String;
   Resp : TModalResult ;
   Percent, EncFin, PerEnc, EF, VF, VD: Real;

   PG, CD, PAG : String;
   cFormaPgto      : String;
   cAcresDesc      : string;
   cTipoAcresDesc  : string;
   cValorAcresDesc : string;
   cValorPago      : String;
   cMsgPromocional : String;
   cAcresc         : string;
   cValorDesc      : string;
   cAcreDesc,  cTipoAcreDesc, cValorAcreDesc : string;
   NumeroCupom, NumeroCaixa: string;
   iconta, f : Integer;
   Desc : Char ;
   I :Integer;
   Descricao, cupon : String ;
   COO, CodFormaPagamento, CodComprovanteNaoFiscal, SubTotal : String;
   sValor : String ;
   dValor, troco, cValorPago1 : Double ;
   Linha :String;
   FPG : TACBrECFFormaPagamento ;

begin
  if not dm.sds_vendas.eof then
  Begin
    DMC.SDS_Pedido_Itens.Active := False;
    DMC.SQLD_Pedidos.Active := False;
    DMC.CDS_Pedidos.Active := False;
    DMC.SQLD_Pedidos.Params[0].AsString := dm.sds_vendasCODIGO.text;
    DMC.SQLD_Pedidos.Active := True;
    DMC.CDS_Pedidos.Active := True;
    DMC.SDS_Pedido_Itens.Active := True;
    If DMC.CDS_Pedidos.Locate('CODIGO',dm.sds_vendasCODIGO.text,[])= True then
     Begin
    // if Impressao.ShowModal = mryes then
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Pedido?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
     // Exit;
      TRY
        IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
        IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
        BEGIN
        DMC.SDS_Crediario_Contrato.Active :=False;
        DMC.SDS_Pedido_Itens.Active := False;
        DMC.SDS_Cliente.Active := False;
        DMC.SQLD_Pedidos.Active :=False;
        DMC.CDS_Pedidos.Active :=False;
        DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;
        DMC.SQLD_Pedidos.Active :=True;
        
                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;
        DMC.CDS_Pedidos.Active :=True;
        DMC.SDS_Pedido_Itens.Active := True;
        DMC.SDS_Cliente.Active := True;
        DMC.SDS_Crediario_Contrato.Active :=true;
        Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
        + ' - ' + DMC.CDS_PedidosCIDADE.Text);
        Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
        cpf_cnpj:= DMC.CDS_PedidosCpf_cnpj.text + ' Fone: ' + DMC.CDS_PedidosFONE.text;
        prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
        DMR.RvRelatorios.SetParam('Produtor',Prod);
        DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
        DMR.RvRelatorios.SetParam('Ender',Endercomp);
        DMR.RvRelatorios.SetParam('Cliente',Cli);
        DMR.RvRelatorios.SetParam('Produtor',Prod);
       // DMR.RvRelatorios.SelectReport('Rp_PedidoDiretoN',False);
        DMR.RvRelatorios.SelectReport('Rp_PedidoDiretoN',False);
        DMR.RvRelatorios.Execute;
            end else

       IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
       IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
       BEGIN
        DMC.SDS_Crediario_Contrato.Active :=False;
        DMC.SDS_Pedido_Itens.Active := False;
        DMC.SDS_Cliente.Active := False;
        DMC.SQLD_Pedidos.Active :=False;
        DMC.CDS_Pedidos.Active :=False;
        DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;
        DMC.SQLD_Pedidos.Active :=True;
        
                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;
        DMC.CDS_Pedidos.Active :=True;
        DMC.SDS_Pedido_Itens.Active := True;
        DMC.SDS_Cliente.Active := True;
        DMC.SDS_Crediario_Contrato.Active :=true;
        Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
        + ' - ' + DMC.CDS_PedidosCIDADE.Text);
        Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
        cpf_cnpj:= DMC.CDS_PedidosCpf_cnpj.text+ ' Fone: ' + DMC.CDS_PedidosFONE.text;
        prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
        DMR.RvRelatorios.SetParam('Produtor',Prod);
        DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
        DMR.RvRelatorios.SetParam('Ender',Endercomp);
        DMR.RvRelatorios.SetParam('Cliente',Cli);
        DMR.RvRelatorios.SelectReport('Rp_PedidoDireto2',False);
        DMR.RvRelatorios.Execute;
        end;

             IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
               IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    
                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    ImprimirPedidos.RLReport1.DefaultFilter.Destroy;
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                    ImprimirPedidos.RLReport1.PreviewModal;
                END ELSE
                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    
                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(self);
                    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                   // ImprimirPedidos.RLReport1.DefaultFilter.ClassNameIs('RLDraftFilter1');
                    ImprimirPedidos.RLReport1.PreviewModal;
                    end;


                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    
                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.DefaultFilter.Destroy;
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.PreviewModal;
                   END ELSE
                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= dm.sds_vendasCODIGO.text;
                    DMC.SQLD_Pedidos.Active:=True;
                   
                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.PreviewModal;
                    end;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '3' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= dm.sds_vendasCODIGO.text;
                    DMC.SQLD_Pedidos.Active:=True;

                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;   

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    ImprimeVenda;
                    end;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= dm.sds_vendasCODIGO.text;
                    DMC.SQLD_Pedidos.Active:=True;

                    DMC.SDS_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := dm.sds_vendasCODIGO.text;
                      Open;
                    end;
                    DMC.SDS_COND_PAGTO.Active := True;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                    ImprimeVenda40;
                    end;


                    except
                    showmessage('Erro na Impressão do Pedido!');
                    end;
                    end;


        if DMC.CDS_PedidosTP.Text = 'C' then
        IF DM.SDS_CONFIGURACOESDUPLICATA.Value = 'S' THEN
         BEGIN
         // If duplicata.ShowModal = mryes then
         if MESSAGEBOX(Application.Handle, 'Confirma a Impressão da Duplicata?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
        // Exit;
         try
          {begin
          IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
           IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
           BEGIN
           DMC5.SDS_Pedido_Itens.Active:= False;
           DMC5.SDS_Cliente.Active:= False;
           DMC5.SQLD_Pedidos.Active:=False;
           DMC5.CDS_Pedidos.Active:=False;
           DMC5.SQLD_Pedidos.Params[0].AsString:= Edit1.text;
           DMC5.SQLD_Pedidos.Active:=True;
           DMC5.CDS_Pedidos.Active:=True;
           DMC5.SDS_Pedido_Itens.Active:= True;
           DMC5.SDS_Cliente.Active:= True;
           Endercomp:= (Sds_pedidosENDERECO.Text + ' / ' + Sds_pedidosBAIRRO.Text
            + ' - ' + Sds_pedidosCIDADE.Text);
           Cli:= (Sds_pedidosCODIGO_CLIENTE.Text + ' - ' + Sds_pedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
           DMR.RvRelatorios.SetParam('Ender',Endercomp);
           DMR.RvRelatorios.SetParam('Cliente',Cli);
           DMR.RvRelatorios.SelectReport('Rp_DuplicataPedidos',False);
           DMR.RvRelatorios.Execute;
           end
           end;}

          //IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
          IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
          BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:= dm.sds_vendasCODIGO.text;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            formduplicatas := Tformduplicatas.Create(self);
            formduplicatas.RLReport1.DefaultFilter.Destroy;
            formduplicatas.RLReport1.Prepare;
            formduplicatas.RLReport1.PreviewModal;
          END ELSE
           //IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
           IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
           BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:= dm.sds_vendasCODIGO.text;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
            + ' - ' + DMC.CDS_PedidosCIDADE.Text);
            Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
            formduplicatas := Tformduplicatas.Create(self);
            formduplicatas.RLReport1.Prepare;
            formduplicatas.RLReport1.PreviewModal;
           end;
           except
                ShowMessage('Erro na Impressão da duplicata!');
            end;
           end;



            if DMC.CDS_PedidosTP.Text = 'C' then
             IF DM.SDS_CONFIGURACOESCONTRATO.TEXT = 'S' THEN
                 BEGIN
              //  If contrato.ShowModal = mryes then
               if MESSAGEBOX(Application.Handle, 'Confirma a Impressão do Contrato?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 try
                    BEGIN
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsString:= dm.sds_vendasCODIGO.text;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    FormContratoVenda := TFormContratoVenda.Create(self);
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
                     BEGIN
                     FormContratoVenda.RLReport1.DefaultFilter.Destroy;
                     FormContratoVenda.RLReport1.Prepare;
                     FormContratoVenda.RLReport1.Print;
                     END ELSE
                     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
                     BEGIN
                     FormContratoVenda.RLReport1.Prepare;
                     FormContratoVenda.RLReport1.Print;
                     end;
                    end;

                    except
                ShowMessage('Erro na Impressão do Contrato!');
                end;
                end;

   If DM.SDS_CONFIGURACOESCUPOM.Text = 'S' then
    begin
     // If ecfimprimir.ShowModal = mryes then
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Cupom Fiscal?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Begin
        try
           if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
             begin

                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                     //  DM.SDS_CondPagamento.Active:=true;

                     if DMC.CDS_PedidosN_CUPOM.Text = '' then
                     begin
                      iRetorno := Bematech_FI_AbreCupom( pchar( '' ) );
                      FormPrincipal.Analisa_iRetorno();
                      FormPrincipal.Retorno_Impressora();


                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;

                       For I:=1 to Contador do
                       begin

                       CPFCNPJ:= (DMC.cDS_pedidosCPF_CNPJ.AsString);
                       RGIE:= DMC.cDS_pedidosRG_IE.AsString + #13#10+ ' IE Produtor: ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString + #13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString +' - '+DMC.SDS_ClienteUF.text ;

                       // parametros
                       B := StrToFloatDef(DMC.SDS_Pedido_Itens.FieldByname('Quantidade').Text, 0.000);
                       EF := DMC.SDS_Pedido_ItensENC_FINANCEIRO.AsFloat;
                       VF := StrToFloatDef(DMC.SDS_Pedido_Itens.FieldByname('PRECO_UNITARIO').Text,0.00);
                       Desct:= DMC.CDS_Pedidos.FieldByname('VALOR_DESCONTO').Value;
                       ValCompra := DMC.CDS_Pedidos.FieldByname('VALOR_TOTAL').Value;
                       // fim parametros


                       sCodigo        :=  DMC.SDS_Pedido_ItensCodigo_produto.AsString;
                       sDescricao     :=  Formatar(DMC.SDS_Pedido_ItensDescricao_produto.AsString,25,true,' ');

                       edit5.Text  := DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').Text;
                       if Edit6.Text = 'LETRAS' then
                       begin
                       sAliquota      :=  EDIT5.TEXT;
                       END ELSE
                       if Edit6.Text = 'NUMEROS' then
                       begin
                       sAliquota      :=  RemoveChar(DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').TEXT);
                       sAliquota      :=  Formatar(sAliquota,4,False,'0');
                       end;
                       sUnidade       := (DMC.SDS_Pedido_Itens.FieldByname('UNIDADE').AsString);
                       sTipoQtde      := ('F');
                       sQtde          := FormatFloat('##,##0.000',B);
                       sValor         := FormatFloat('##,##0.00',VF);
                       sTipoDesconto  := '$';
                      // cValorDesc     := '0000';
                        IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := FormatFloat('##,##0.00',DMC.SDS_Pedido_ItensDESCONTO.ASFLOAT);
                       END;

                       iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
                       PChar(sTipoQtde), sQtde, 2, sValor, PChar(sTipoDesconto), PChar(cValorDesc));

                       FormPrincipal.Analisa_iRetorno();
                       FormPrincipal.Retorno_Impressora();

                       DMC.SDS_Pedido_Itens.Next;
                       end;

                       begin
                       CD:= DMC.CDS_PedidosTP.AsString;
                       IF CD = 'A' THEN BEGIN
                       //PG:= 'DINHEIRO';
                       PG:= '01';
                       PAG :='DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       //PG:= 'CREDIARIO';
                       PG:= '04';
                       PAG :='PRAZO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       //PG:= 'CHEQUE';
                       PG:= '02';
                       PAG :='CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       //PG:= 'FINANCEIRA';
                       PG:= '03';
                       PAG :='CARTAO';
                       end else
                       IF CD = 'V' THEN BEGIN
                       //PG:= 'VALE';
                       PG:= '05';
                       PAG :='VALE';
                       end;


                          cFormaPgto      := PAG;
                          cValorPago      := FormatFloat('0.00',ValCompra);
                          cMsgPromocional :='Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DMC.CDS_PedidosOBSERVACOES.AsString)+#13+#13+#10'Venda:'+FormVendas.N_Venda.Text+#13+#13+#10'Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;

                          if DMC.CDS_PedidosVALOR_DESCONTO.AsFloat >= 0 then
                          BEGIN
                          cAcreDesc      := 'D';
                          cTipoAcreDesc  := '$';
                          cValorAcreDesc := FormatFloat('0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat);
                          end else
                          if DMC.CDS_PedidosENC_FINANCEIRO.AsFloat >0 then
                          BEGIN
                          cAcreDesc      := 'A';
                          cTipoAcreDesc  := '$';
                          cValorAcreDesc := FormatFloat('0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat);
                          end;
                          iRetorno := Bematech_FI_IniciaFechamentoCupom( pchar( cAcreDesc ), pchar( cTipoAcreDesc ), pchar( cValorAcreDesc ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();

                          iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();

                          iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();


                          suiButton2.Default := True;

                          begin
                          SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(DMC.CDS_PedidosCODIGO.text);
                          for iConta := 1 to 6 do
                          NumeroCupom := NumeroCupom + ' ';
                          iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
                          FormPrincipal.Analisa_iRetorno();
                         // ShowMessage( 'Número do Cupom: ' + NumeroCupom);
                          FormPrincipal.Retorno_Impressora();
                          SPC_N_CUPOM.Params[1].AsInteger  :=  StrToInt(NumeroCupom);
                          for iConta := 1 to 4 do
                          NumeroCaixa := NumeroCaixa + ' ';
                          iRetorno := Bematech_FI_NumeroCaixa( NumeroCaixa );
                          FormPrincipal.Analisa_iRetorno();
                         // ShowMessage( 'Número do Caixa: ' + NumeroCaixa);
                          FormPrincipal.Retorno_Impressora();
                          SPC_N_CUPOM.Params[2].asstring  :=  NumeroCaixa;
                          SPC_N_CUPOM.ExecProc;
                          end;


                        //Desativar1.Click;
                       //  suiButton2Click(Sender);

                       if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                       begin
                       if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                       IF PAG = 'PRAZO' then
                       begin
                     {  COO := FormCupomFiscal.ACBrECF1.NumCupom ;


                       CodFormaPagamento := PAG ;
                       CodComprovanteNaoFiscal := FormCupomFiscal.Edit2.Text;
                       sValor := cValorPago;

                       sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                    ',',DecimalSeparator,[]) ;
                       dValor := StrToFloatDef(sValor,0) ;  }
                        DMC.SDS_COND_PAGTO.Active := False;
                        with DMC.QRY_COND_PAGTO do
                         begin
                          close;
                          Params.Items[0].AsString  := dm.sds_vendasCODIGO.Text;
                          Open;
                        end;
                        DMC.SDS_COND_PAGTO.Active := True;

                       CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.Text;
                       for iConta := 1 to 6 do
                       NumeroCupom := NumeroCupom + ' ';
                       iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );

                       cFormaPgto := PAG;
                       cValorPago := FormatFloat('0.00',DMC.CDS_PedidosVALOR_TOTAL.AsFloat);

                       if Trim(CodComprovanteNaoFiscal) <> '' then
                      { FormCupomFiscal.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                              dValor) }
                       iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPgto), pchar( cValorPago ), pchar( NumeroCupom ) )

                       else
                      // FormCupomFiscal.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                       iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPgto), pchar( cValorPago ), pchar( NumeroCupom ) );
                       Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                  'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                       Linha :=  ('Parcelamento:'+#13+#13+#10);

                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                       linha := ('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela'+#13+#13+#10);
                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );;

                       sValor := formatFloat('0.00',DMC.SDS_COND_PAGTOVALOR.AsFloat);

                       DMC.SDS_COND_PAGTO.First;
                       Contador:= DMC.SDS_COND_PAGTO.RecordCount;
                       For F:=1 to Contador do
                       begin
                       Linha := ((DMC.SDS_COND_PAGTOTITULO.AsString) + '     '+ (DMC.SDS_COND_PAGTOParcela.AsString) + '      ' +(DMC.SDS_COND_PAGTODATA_VENCIMENTO.AsString) + '     '+(sValor))+#13+#13+#10;
                       DMC.SDS_COND_PAGTO.Next;
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );
                       end;

                        linha:= ( '.'+#13+#10+
                                  '.'+#13+#10+
                                  '.'+#13+#10+
                                  '.'+#13+#10+
                                  #13+#13'------------------------------------------'+#13+#10+
                                  'Cliente:'+' '+(DMC.cds_PEDIDOSCodigo_Cliente.Text)+' -'+
                                  (DMC.cds_PEDIDOSNOME_cliente.Text)+#13+#10+
                                  'Cpf/Cnpj:'+' '+DMC.cds_PEDIDOSCPF_CNPJ.text+' - '+
                                  'Rg:'+' '+DMC.CDS_PedidosRG_IE.text+#13+#10+
                                  'Endereço:'+' '+DMC.cds_PEDIDOSENDERECO.text+#13+#13+
                                   DMC.cds_PEDIDOSbairro.text +' - ' + dmc.cds_pedidosCidade.text+'-'+dmc.CDS_PedidosUF.text+#13+#13);
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                        Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                 'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+ dmc.cds_pedidosUSUARIO.text;
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                        iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
                        end;
                        end;
                          end;

                         end else
                         if DMC.CDS_PedidosN_CUPOM.Text > '' then
                         begin
                          ShowMessage('CUPOM JA IMPRESSO PARA ESTA VENDA...');
                         end;



           end else




        IF DM.SDS_CONFIGURACOESMODELO_ECF.TEXT = '2' THEN
        begin
        //  Desc := '%' ;
      //  if Formvendas.RbValor.Checked then
        Desc := '$' ;

                      formECF := nil;
                      formecf := tformECF.Create(self);
                      formECF.Ativcar1Click( Sender );
                      formECF.Desativar1Click(sender);
                      formECF.Ativcar1Click( Sender );

                       // Panel2.Visible := false;
                       // Panel3.Visible := True;

                          if formECF.ACBrECF1.Estado = estRequerZ then
                           begin
                           if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                           'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                            exit ;
                            if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                             exit ;
                            // end ;
                            Resp := MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

                            if Resp = mrYes then
                            formECF.ACBrECF1.ReducaoZ( now )
                            else if Resp = mrNo then
                            formECF.ACBrECF1.ReducaoZ( )
                            else
                            exit ;
                           // mResp.Lines.Add( 'Reduçao Z');
                           // AtualizaMemos ;
                            end;
                    if DMC.CDS_PedidosN_CUPOM.Text = '' then
                    begin

                      begin
                       formEcf.ACBrECF1.AbreCupom();
                       formecf.mResp.Lines.Add( 'AbreCupom' );
                       end;
                       begin
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                       dmc.sds_pagto.Close;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                       dmc.sds_pagto.Open;
                     //  DM.SDS_CondPagamento.Active:=true;

                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;

                       For I:=1 to Contador do
                       begin

                       CPFCNPJ:= (DMC.cDS_pedidosCPF_CNPJ.AsString);
                       RGIE:= (DMC.cDS_pedidosRG_IE.AsString);
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString +#13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString;

                       // parametros
                       B := DMC.SDS_Pedido_ItensQuantidade.AsFloat;
                       A :=StrtoFloat(DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString);
                       //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
                       EF := DMC.SDS_Pedido_ItensENC_FINANCEIRO.AsFloat;
                       VF := {(A + EF)} DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat;
                       Desct:= DMC.CDS_PedidosVALOR_DESCONTO.AsFloat;
                       ValCompra := DMC.CDS_PedidosVALOR_TOTAL.AsFloat;
                       // fim parametros


                       sCodigo        := DMC.SDS_Pedido_ItensCodigo_produto.AsString;
                       sDescricao     := DMC.SDS_Pedido_ItensDescricao_produto.AsString;
                       sAliquota      := (DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').AsString);
                       sUnidade       := (DMC.SDS_Pedido_Itens.FieldByname('UNIDADE').AsString);
                       sTipoQtde      := ('F');
                       sQtde          := DMC.SDS_Pedido_ItensQUANTIDADE.AsString;  //FormatFloat('##.##0.000',B);
                       sValor         := DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString;    //('##.##0.00',VF);

                       sTipoDesconto  := '$';
                      // cValorDesc := '000';//DMc.SDS_Pedido_ItensDESCONTO.AsString; //'0000';

                     //  sValorDesc := vd * (-1);

                      // cValorDesc := FormatFloat('0',CValorDesc);

                        IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := DMC.SDS_Pedido_ItensDESCONTO.Text;
                       END;

                       FormEcf.ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000 ),
                               StrToFloatDef(sValor ,0.00),
                               StrToFloatDef(cValorDesc ,0.00), Sunidade,
                               desc);

                      { mResp.Lines.Add( 'Vende Item: Cod:'+ sCodigo +
                            ' Desc'+ sDescricao +
                            ' Aliq:'+sAliquota +
                            ' Qtd:'+sQtde +
                            ' Preço:'+sValor +
                            ' Desc:'+cValorDesc +
                            ' Un:'+sUnidade +
                            ' Desc:'+desc );   }

                       DMC.SDS_Pedido_Itens.Next;
                       end;

                       begin
                       CD:= DMC.CDS_PedidosTP.AsString;
                       IF CD = 'A' THEN BEGIN
                       //PG:= 'DINHEIRO';
                       PG:= '01';
                       PAG :='DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       //PG:= 'CREDIARIO';
                       PG:= '04';
                       PAG :='PRAZO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       //PG:= 'CHEQUE';
                       PG:= '02';
                       PAG :='CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       //PG:= 'FINANCEIRA';
                       PG:= '03';
                       PAG :='CARTAO';
                       end else
                       IF CD = 'V' THEN BEGIN
                       //PG:= 'VALE';
                       PG:= '05';
                       PAG :='VALE';
                       end;

                        //  Desct := desct * (-1); // converte para valor negativo

                         // acresc := dmc.CDS_PedidosENC_FINANCEIRO.AsFloat;

                          if DMC.CDS_PedidosVALOR_DESCONTO.AsString >'0' then
                          BEGIN
                          desct := (DMC.CDS_PedidosVALOR_DESCONTO.AsFloat *(-1));
                          end else

                          if DMC.CDS_PedidosENC_FINANCEIRO.Text >'0' then
                          BEGIN
                          desct := DMC.CDS_PedidosENC_FINANCEIRO.AsFloat;
                          end;

                          cFormaPgto      := PG;
                        //  cAcresDesc      := 'D';
                        //  cTipoAcresDesc  := '$';

                         // cAcresc         := FormatFloat('0.00',acresc);
                          cValorAcresDesc := FormatFloat('0.00',desct);
                          cValorPago      := FormatFloat('0.00',ValCompra);
                          cMsgPromocional :='Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DMC.CDS_PedidosOBSERVACOES.AsString)+#13+#13+#10'Venda:'+ dmc.CDS_PedidosCODIGO.Text+#13+#13+#10'Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;



                         Descricao := PAG;
                         begin
                          FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                         if FPG = nil then
                         // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                          ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                         edCod.Text := FPG.Indice ;
                         cFormaPgto      := edCod.Text;
                         { Bematech permite cadastrar formas de Pagamento dinamicamente }
                         if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                         (pos( FPG.Descricao, mFormas.Text ) = 0) then
                         CarregaFPG ;
                         end ;

                           BEGIN
                          formecf.ACBrECF1.Subtotal;
                          formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(cValorAcresDesc));
                       //   formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                        //  formecf.ACBrECF1.Subtotal;
                         // formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                           formEcf.mResp.Lines.Add( 'Subtotaliza Cupom: '+cValorAcresDesc);
                          end;

                         { begin
                          if TipoCupom <> 'N' then
                          // formECF.ACBrECF1.EfetuaPagamento(formECF.ACBrECF1.FormasPagamento[0].Indice,
                          (formECF.ACBrECF1.Subtotal - formECF.ACBrECF1.TotalPago), 'ZERANDO SALDO A PAGAR RESTANTE');

                          FormEcf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                           FormEcf.mResp.Lines.Add( 'Efetua Pagamento: '+cFormaPgto +
                          ' Valor: '+cValorPago );
                          end;  }





                           dmc.sds_pagto.First;
                           While not dmc.sds_pagto.Eof do
                           begin
                             if dmc.sds_pagtoTIPO.text = 'A'  then
                             BEGIN
                             PAG :='DINHEIRO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;

                            // cFormaPgto := pag;
                             cValorPago  :=  FloatToStr(dmc.sds_pagtoValor.AsFloat);
                             formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;

                             if dmc.sds_pagtotipo.text = 'H'  then
                             BEGIN
                             PAG :='CHEQUE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.asfloat);
                             formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;
                           

                             if dmc.sds_pagtotipo.text = 'F'  then
                             BEGIN
                             PAG :='CARTAO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                              formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text = 'C'  then
                             BEGIN
                             PAG :='PRAZO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                              formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text ='V'  then
                             BEGIN
                             PAG :='VALE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             dmc.sds_pagto.next;
                          // end;
                            end; 

                          begin
                          formecf.ACBrECF1.FechaCupom(cMsgPromocional);
                          formEcf.mResp.Lines.Add( 'Fecha Cupom: '+ cMsgPromocional );
                          end;


                          if (FormECF.ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
                          ecfQuattro])then
                          begin
                          SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(dm.sds_vendasCODIGO.text);
                          SPC_N_CUPOM.Params[1].AsInteger  := StrToInt(formECF.ACBrECF1.NumCupom);
                          SPC_N_CUPOM.Params[2].AsString  :=  formECF.ACBrECF1.NumECF;
                          SPC_N_CUPOM.ExecProc;
                          end;
                          end;

                            // inicio da emissao do copon vinculado
                           if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                           begin
                           IF PAG = 'PRAZO' then
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           begin
                           COO := FormECF.ACBrECF1.NumCupom ;

                           cValorPago := dmc.CDS_PedidosVALOR_TOTAL.Text;

                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.TEXT;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                           FormECF.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                           FormECF.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                      'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


                           FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Parcelamento:'+#13+#13+#10);

                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                            linha := ('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela');
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );


                            DMC.SDS_COND_PAGTO.Active := False;
                            with DMC.QRY_COND_PAGTO do
                             begin
                              close;
                              Params.Items[0].AsString  := dm.sds_vendasCODIGO.Text;
                              Open;
                            end;
                            DMC.SDS_COND_PAGTO.Active := True;

                           DMC.SDS_COND_PAGTO.First;
                           Contador:= DMC.SDS_COND_PAGTO.RecordCount;
                           For F:=1 to Contador do
                           begin
                           sValor := formatFloat('0.00',DMC.SDS_COND_PAGTOVALOR.AsFloat);
                           Linha := ((DMC.SDS_COND_PAGTOTITULO.AsString) + '     '+ (DMC.SDS_COND_PAGTOParcela.AsString) + '      ' +(DMC.SDS_COND_PAGTODATA_VENCIMENTO.AsString) + '    '+(sValor));
                           DMC.SDS_COND_PAGTO.Next;
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );
                           end;

                            linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(DMC.CDS_PEDIDOSCodigo_CliENTE.Text)+' -'+
                                      (DMC.CDS_PEDIDOSNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+DMC.CDS_PEDIDOSCPF_CNPJ.TEXT+' - '+
                                      'Rg:'+' '+DMC.CDS_PEDIDOSRG_IE.TEXT+#13+#10+
                                      'Endereço:'+' '+DMC.CDS_PEDIDOSENDERECO.TEXT+#13+#13+ DMC.CDS_PedidosBAIRRO.TEXT+ '-' + DMC.CDS_PedidosCIDADE.TEXT+ '-'+ DMC.CDS_PedidosUF.Text+#13+#13);
                             FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                            Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
                             FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                             FormECF.ACBrECF1.FechaRelatorio;

                           end else

                           IF Edit1.Text = 'VALE' then
                           begin
                           IF troco > 0 THEN
                           BEGIN
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           COO :=  FormECF.ACBrECF1.NumCupom ;
                           cValorPago := dm.sds_vendasVALOR_PAGO.Text;
                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.Text;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                            FormECF.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                            FormECF.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Valor da Compra: '+#13+#10+ cValorPago);


                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Valor Vale:'+#13+#13+#10+ FloatToStr(troco));

                            FormECF.aCBrECF1.LinhaCupomVinculado( Linha );


                           linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(dmc.CDS_PedidosCODIGO_CLIENTE.Text)+' -'+
                                      (dmc.CDS_PedidosNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+dmc.CDS_PedidosCPF_CNPJ.Text+' - '+
                                      'Rg:'+' '+dmc.CDS_PedidosRG_IE.text+#13+#10+
                                      'Endereço:'+' '+dmc.CDS_PedidosENDEReCO.text +#13+#13+
                                      dmc.CDS_PedidosBAIRRO.Text +'-'+ dmc.CDS_PedidosCIDADE.Text + '-'+ dmc.CDS_PedidosUF.text+#13+#13);
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+dmc.cds_pedidosUSUARIO.text;
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                            FormECF.ACBrECF1.FechaRelatorio;

                           end;
                           end;
                           end;
                         end;
                         end;

                        END ELSE
                        if DMC.CDS_PedidosN_CUPOM.Text > '' then
                        begin
                          ShowMessage('CUPOM JA IMPRESSO PARA ESTA VENDA...');
                        end;

                          except
                           //MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
                          ShowMessage('Erro ao Tentar emitir o cupom, Estado: '+ Estados[ formECF.ACBrECF1.Estado ] + '...');
                          end;
                          end;
                          end;



                     if DMC.CDS_PedidosTP.Text = 'C' then
                     If DM.SDS_CONFIGURACOESBOLETO.Text = 'S' then
                     begin
                   //  If boleto.ShowModal = mryes then
                    if MESSAGEBOX(Application.Handle, 'Confirma a Emissão do Boleto?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                     try
                      begin
                      If FormBoletos=nil then
                      begin
                      FormBoletos:=TFormBoletos.Create(self);
                      FormBoletos.EDIT2.Text := DM.sds_vendasCODIGO.TEXT;
                      FormBoletos.RXLABEL6.Caption := DM.sds_vendasNOME_CLIENTE.TEXT;
                      FormBoletos.ShowModal;
                      end;
                      end;
                       except
                      ShowMessage('Erro na Emissão do Boleto');
                      end;
                      end;


                   IF DM.SDS_CONFIGURACOESIMP_NOTA.Text ='S' THEN
                    BEGIN
                   // If NOTA.ShowModal = mryes then
                    if MESSAGEBOX(Application.Handle, 'Confirma a Impressão da Nota?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                    try
                    begin
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsString:=dm.sds_vendasCODIGO.text;;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    FormImpNotaFiscal := TFormImpNotaFiscal.Create(self);
                    FormImpNotaFiscal.RLReport1.Prepare;
                    FormImpNotaFiscal.RLReport1.PreviewModal;
                    end;
                     except
                      ShowMessage('Erro na Emissão da Nota Fiscal');
                    end;
                    end;

   end;

END;

procedure TFormConsultaPedidoDireto.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1DblClick(Sender: TObject);
begin
selectnext(activecontrol,True,True);
Close;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1Enter(Sender: TObject);
begin
 {  X:=0;
   DM.Sds_Pedidos.first;
   if DM.Sds_Pedidostp.AsString = 'A' then
   begin
   X:= X + DM.Sds_PedidosVALOR_TOTAL.AsFloat;
   DM.Sds_Pedidos.Next;
   CurrencyEdit5.Value := X;
   end;
   While not DM.Sds_Pedidos.Eof do
   begin
   if DM.Sds_Pedidostp.asstring = 'A' then
   begin
   X:= X + DM.Sds_PedidosVALOR_TOTAL.AsFloat;
   DM.Sds_Pedidos.Next;
   CurrencyEdit5.Value := X;
   end;
end;   }
end;

procedure TFormConsultaPedidoDireto.suiButton5Click(Sender: TObject);
begin
                      try
                       If FormLancNotasFiscais=nil then
                         begin
                          FormLancNotasFiscais:=TFormLancNotasFiscais.Create(self);
                          FormLancNotasFiscais.ShowModal;
                          end;
                          except
                            ShowMessage('Houve um erro no lançamento da nota fiscal de vacinas');
                          end;
end;

procedure TFormConsultaPedidoDireto.ClienteExit(Sender: TObject);
begin
 DM.SDS_Clientes.Filtered := False;

 if edit3.Text='LETRAS' THEN

  BEGIN
  ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  IF ACHOU=TRUE THEN
  begin
  edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF Cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente.Text := '';
 Cliente.SetFocus;
end else

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end else
 IF ACHOU=TRUE THEN
  begin
  Edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
end;
end;


procedure TFormConsultaPedidoDireto.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TFormConsultaPedidoDireto.ClienteButtonClick(Sender: TObject);
begin
 dm.SDS_Clientes.Filtered := false;
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.ShowModal;
       edit1.text   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormConsultaPedidoDireto.suiButton4Click(Sender: TObject);
var
contador, e : Integer;
pedido : string;
begin
if dm.sds_vendasNUM_NOTA.AsInteger > 0 then
begin
Application.MESSAGEBOX('Já emitida uma nota para esta Venda, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
end else
if dm.sds_vendasN_CUPOM.Text > '' then
begin
Application.MESSAGEBOX('Já emitido um Cupom Fiscal para esta Venda, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
end else


if Application.MESSAGEBOX('Confirma a exportação da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin

   { while not formvendas.Sds_pedidos_itens.EOF do
    begin
     formvendas.Sds_pedidos_itens.Delete;
      formvendas.Sds_pedidos_itens.ClearFields;
    end;

    while not formvendas.Sds_pedidos.EOF do
    begin
      formvendas.Sds_pedidos.Delete;
      formvendas.Sds_pedidos.ClearFields;
      end;    }



formVendas.Sds_pedidos.Insert;
formVendas.Sds_pedidos.EDIT;
//SPC_Codigo.ExecProc;
//N:= (formVendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formVendas.Sds_pedidosCODIGO.Text := dm.sds_vendasCODIGO.Text;//IntTostr(N);
//N_venda.Text          := IntToStr(N);
formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime  := dm.sds_vendasDATA_PEDIDO.AsDateTime;
formvendas.Sds_pedidosDATA_ENTREGA.AsDateTime := dm.sds_vendasDATA_ENTREGA.AsDateTime;
formvendas.Sds_pedidosVALOR_ITENS.Text       := Dm.Sds_vendasVALOR_ITENS.Text;
formvendas.Sds_pedidosVALOR_DESCONTO.Text    := Dm.Sds_vendasVALOR_DESCONTO.Text;
formvendas.Sds_pedidosVALOR_TOTAL.Text       := Dm.Sds_vendasVALOR_TOTAL.Text;
formvendas.Sds_pedidosCODIGO_CLIENTE.Text    := Dm.Sds_vendasCODIGO_CLIENTE.Text;
formvendas.DBComboCliente.Text               := Dm.Sds_vendasCODIGO_CLIENTE.Text;
formvendas.Sds_pedidosNOME_CLIENTE.Text      := Dm.Sds_vendasNOME_CLIENTE.Text;
formvendas.Sds_pedidosENC_FINANCEIRO.Text    := Dm.Sds_vendasENC_FINANCEIRO.Text;
formvendas.Sds_pedidosCOD_PAGTO.Text         := Dm.Sds_vendasCOD_PAGTO.Text;
formvendas.Sds_pedidosPAGAMENTO.Text         := Dm.Sds_vendasPAGAMENTO.Text;
formvendas.Sds_pedidosOBSERVACOES.text       := Dm.Sds_vendasOBSERVACOES.text;
formvendas.Sds_pedidosCOD_VENDEDOR.text      := Dm.Sds_vendasCOD_VENDEDOR.text;
formvendas.Sds_pedidosUSUARIO.Text           := Dm.Sds_vendasUSUARIO.Text;
formvendas.Sds_pedidosCOD_EMPRESA.Text       := Dm.Sds_vendasCOD_EMPRESA.Text;
formvendas.Sds_pedidosENDERECO.Text           := dm.sds_vendasENDERECO.Text;
formvendas.sds_pedidosCIDADE.text             := dm.sds_vendasCIDADE.Text;
formvendas.Sds_pedidosBAIRRO.Text             := DM.sds_vendasBAIRRO.Text;
formVendas.Sds_pedidosNUMERO.Text             := DM.sds_vendasNUMERO.Text;
formvendas.Sds_pedidosFONE.Text               := DM.sds_vendasFONE.Text;
formvendas.Sds_pedidosSTATUS.Text             := DM.sds_vendasSTATUS.Text;
formvendas.Sds_pedidosTP.text                 := DM.sds_vendasTP.Text;
formVendas.Sds_pedidosN_CUPOM.Text            := DM.sds_vendasN_CUPOM.Text;
formvendas.Sds_pedidosN_ECF.text              := DM.sds_vendasN_ECF.Text;
formvendas.Sds_pedidosCOD_ORCAMENTO.text      := DM.sds_vendasCOD_ORCAMENTO.Text;
formvendas.Sds_pedidosCOD_OS.Text             := DM.sds_vendasCOD_OS.Text;
formvendas.Sds_pedidosNUM_NOTA.text           := dm.sds_vendasNUM_NOTA.Text;
formvendas.Sds_pedidosSERIE_NOTA.Text         := dm.sds_vendasSERIE_NOTA.Text;
formvendas.Sds_pedidosCPF_CNPJ.Text           := dm.sds_vendasCPF_CNPJ.text;
formvendas.Sds_pedidosRG_IE.text              := dm.sds_vendasRG_IE.Text;
formvendas.Sds_pedidosN_PARTIDA.Text          := dm.sds_vendasN_PARTIDA.Text;
formvendas.Sds_pedidosPROPRIEDADE.Text        := dm.sds_vendasPROPRIEDADE.Text;
formvendas.Sds_pedidosQUANT_VENDIDA.Text      := dm.sds_vendasQUANT_VENDIDA.Text;
formvendas.Sds_pedidosSALDO_VENDIDO.Text      := dm.sds_vendasSALDO_VENDIDO.Text;
formvendas.Sds_pedidosMED_VETERINARIO.Text    := dm.sds_vendasMED_VETERINARIO.Text;
formvendas.Sds_pedidosDATA_VACINA.Text        := dm.sds_vendasDATA_VACINA.Text;
formvendas.Sds_pedidosVALOR_AVISTA.Text       := dm.sds_vendasVALOR_AVISTA.Text;
formVendas.Sds_pedidosVALOR_PRAZO.Text        := dm.sds_vendasVALOR_PRAZO.Text;
formVendas.Sds_pedidosUF.Text                 := DM.sds_vendasUF.Text;
formVendas.Sds_pedidosCEP.Text                := dm.sds_vendasCEP.Text;
formVendas.Sds_pedidosCOD_IBGE.Text           := dm.sds_vendasCOD_IBGE.Text;
formVendas.Sds_pedidosVALOR_PAGO.Text         := dm.sds_vendasVALOR_PAGO.Text;
formVendas.Sds_pedidosVALOR_TROCO.Text        := dm.sds_vendasVALOR_TROCO.Text;
formVendas.Sds_pedidosTIPO.Text               := dm.sds_vendasTIPO.Text;
formVendas.Sds_pedidosREFERENCIA.Text         := dm.sds_vendasREFERENCIA.Text;
formVendas.sds_pedidoscelular.text            := dm.sds_vendasCELULAR.Text;
formVendas.Sds_pedidosprod_rural.text         := dm.sds_vendasPROD_RURAL.Text;
formVendas.Sds_pedidosie_produtor.text        := dm.sds_vendasIE_PRODUTOR.Text;
formVendas.Sds_pedidoskm.text                 := DM.sds_vendasKM.Text;
formvendas.Sds_pedidos.Post;

Dm.Sds_vendas_itens.First;
Contador := Dm.Sds_vendas_itens.RecordCount;
For E:=1 to Contador do
 begin
formvendas.Sds_pedidos_itens.Insert;
formvendas.Sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
formvendas.Sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
formvendas.Sds_pedidos_itensCODIGO_ID.Text            := dm.sds_vendasCODIGO.Text;
formvendas.Sds_pedidos_itensCODIGO_PROD.Text          := Dm.Sds_vendas_itensCODIGO_PROD.Text;
formvendas.Sds_pedidos_itensCODIGO_PRODUTO.Text       := Dm.Sds_vendas_itensCODIGO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCRICAO_PRODUTO.Text    := Dm.Sds_vendas_itensDESCRICAO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCONTO.TEXT             := Dm.Sds_vendas_itensDESCONTO.Text;
formvendas.Sds_pedidos_itensQUANTIDADE.Text           := Dm.Sds_vendas_itensQUANTIDADE.Text;
formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text       := Dm.Sds_vendas_itensPRECO_UNITARIO.Text;
formvendas.Sds_pedidos_itensPRECO_TOTAL.Text          := Dm.Sds_vendas_itensPRECO_TOTAL.Text;
formvendas.Sds_pedidos_itensVENDEDOR.Text             := Dm.Sds_vendas_itensVENDEDOR.Text;
formvendas.Sds_pedidos_itensUNIDADE.Text              := Dm.Sds_vendas_itensUNIDADE.Text;
formvendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text       := Dm.Sds_vendas_itensSIT_TRIBUTARIA.Text;
formvendas.Sds_pedidos_itensENC_FINANCEIRO.TEXT       := Dm.Sds_vendas_itensENC_FINANCEIRO.Text;
formvendas.Sds_pedidos_itensFRACAO.text               := Dm.Sds_vendas_itensFRACAO.Text;
formvendas.Sds_pedidos_itensCOD_NCM.Text              := Dm.Sds_vendas_itensCOD_NCM.Text;
formvendas.Sds_pedidos_itensPROD_SERV.Text            := Dm.Sds_vendas_itensPROD_SERV.TEXT;
formvendas.Sds_pedidos_itensITEN.Text                 := Dm.Sds_vendas_itensITEN.Text;
formvendas.sds_pedidos_itensCODIGO_BICO.Text          := DM.Sds_Vendas_itensID_BICO.TEXT;
formvendas.sds_pedidos_itensBOMBA.Text                := DM.Sds_Vendas_itensID_BOMBA.Text;
Formvendas.sds_pedidos_itensTANQUE.Text               := DM.Sds_Vendas_itensID_TANQUE.Text;
formvendas.sds_pedidos_itens.Post;
Dm.Sds_vendas_itens.Next;
end;



//formvendas.Tvendas.Visible := True;
formvendas.Tvendas.PageIndex := 1;
formvendas.Inserir.Enabled:= False;
formvendas.pesquisar.Enabled := False;
//formvendas.reimprimir.Enabled := False;
formvendas.confirmar.Enabled := True;
//Navegador.Enabled := False;
formvendas.GroupBox1.Enabled := True;
formvendas.GroupBox2.Enabled := True;
formvendas.groupbox3.Enabled := True;
//formvendas.Alterar.Enabled:=false;
formvendas.cancelar.Enabled:=False;

formvendas.Edit60.Visible := true;
formvendas.E_desconto.Visible := true;
formvendas.Edit62.Visible := true;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  formvendas.RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  formvendas.RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := True;
  end;

    pedido := dm.sds_vendasCODIGO.text;

            {  IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'N' then
              BEGIN
              DM.Sds_Vendas_itens.First;
              Contador:=DM.Sds_Vendas_itens.RecordCount;
              For E:=1 to Contador do
              begin
              formVendas.SPC_Excluir_pedido.ParamByname('CODIGO').AsInteger := DM.Sds_vendas_itens.FieldByname('CODIGO_PROD').AsInteger;
              formVendas.SPC_Excluir_pedido.ParamByname('Quant').Value :=  DM.Sds_vendas_itens.FieldByname('QUANTIDADE').Value;
              formVendas.SPC_Excluir_pedido.ExecProc;
              formVendas.Sds_pedidos_itens.Next;
              end;
              end ELSE
              IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'S' then
              begin
              DM.Sds_Vendas_itens.First;
              Contador:=DM.Sds_Vendas_itens.RecordCount;
              For E:=1 to Contador do
              begin
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('CODIGO').AsInteger := DM.Sds_vendas_itens.FieldByname('CODIGO_PROD').AsInteger;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('Quant').Value :=  DM.Sds_vendas_itens.FieldByname('QUANTIDADE').Value;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('FRACAO').Value :=  DM.Sds_vendas_itens.FieldByname('FRACAO').Value;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ExecProc;
              DM.Sds_vendas_itens.Next;
              end;
              end;  }


             { if Sds_pedidos_itens.RecordCount = 0 then
              begin
              Sds_pedidos_itens.Cancel;
              end else
              begin
              with Sds_pedidos_itens do
              while Sds_pedidos_itens.RecordCount > 0 do
              Sds_pedidos_itens.Delete;
              Sds_pedidos_itens.ApplyUpdates(0);
              end;  }


       //      DM.sds_vendas.Delete;
       //      DM.Sds_vendas.ApplyUpdates(0);
            { if Sds_pedidos.RecordCount = 0 then
             begin
             Sds_pedidos.CancelRange;
             end; }

 exportada := True;

      formVendas.Sds_pedidos_itens.last;
      IF formVendas.sds_pedidos_itens.RecordCount > 0 then
      begin
      formvendas.NValor:=1;
      formvendas.NItem:=formvendas.NItem+formvendas.NValor;
      formvendas.Sds_pedidos_itens.Insert;
      formvendas.Sds_pedidos_itensCODIGO.AsInteger:=(formvendas.NItem);
      formvendas.Sds_pedidos_itensITEN.AsInteger :=(formvendas.NItem);
      formvendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      formvendas.Sds_pedidos_itensCODIGO_ID.Text := formvendas.N_venda.Text;
      formvendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      formvendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      formvendas.Sds_pedidos_itensFRACAO.Text := '1';
      end;


    //  formvendas.Sds_pedidos_itens.Insert;


      formVendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
      formVendas.Sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;

Close;
end;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(DM.Sds_vendas.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
    end;

  If DM.sds_vendasNUM_NOTA.AsInteger > 0 then
  SuiDbgrid1.Canvas.Font.Color:= clRed;
  If DM.sds_vendasN_CUPOM.text > '' then
  SuiDbgrid1.Canvas.Font.Color:= clRed;
  suiDbgrid1.DefaultDrawDataCell(Rect, suidbgrid1.columns[datacol].field, State);


end;

procedure TFormConsultaPedidoDireto.suiDBGrid2DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(DM.Sds_vendas_itens.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid2.Canvas.Brush.Color := $00FDE2BD;
    suiDBGrid2.Canvas.FillRect(Rect);
    suiDBGrid2.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

procedure TFormConsultaPedidoDireto.suiButton3Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaPedidoDireto.suiButton7Click(Sender: TObject);
begin
Cliente.Clear;
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
Edit4.Clear;
end;

procedure TFormConsultaPedidoDireto.excluirClick(Sender: TObject);
var
  pedido :string;
  E:Integer;
begin
if dm.sds_vendasNUM_NOTA.AsInteger > 0 then
begin
Application.MESSAGEBOX('Já emitida uma nota para esta Venda, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
end else
if dm.sds_vendasN_CUPOM.Text > '' then
begin
Application.MESSAGEBOX('Já emitido um Cupom Fiscal para esta Venda, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
end else

if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin

 if Application.MESSAGEBOX('Confirma a Exclusão da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
  Exit;
Try
 Begin

              pedido := dm.sds_vendasCODIGO.Text;

              {IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'N' then
              BEGIN
              DM.Sds_Vendas_itens.First;
              Contador:=DM.Sds_Vendas_itens.RecordCount;
              For E:=1 to Contador do
              begin
              formVendas.SPC_Excluir_pedido.ParamByname('CODIGO').AsInteger := DM.Sds_Vendas_itens.FieldByname('CODIGO_PROD').AsInteger;
              formVendas.SPC_Excluir_pedido.ParamByname('Quant').Value :=  DM.Sds_Vendas_itens.FieldByname('QUANTIDADE').Value;
              formvendas.SPC_Excluir_pedido.ExecProc;
              DM.Sds_Vendas_itens.Next;
              end;
              end ELSE
              IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'S' then
              begin
              DM.Sds_Vendas_itens.First;
              Contador:=DM.Sds_Vendas_itens.RecordCount;
              For E:=1 to Contador do
              begin
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('CODIGO').AsInteger := DM.Sds_Vendas_itens.FieldByname('CODIGO_PROD').AsInteger;
              formvendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('Quant').Value :=  DM.Sds_Vendas_itens.FieldByname('QUANTIDADE').Value;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('FRACAO').Value :=  DM.Sds_Vendas_itens.FieldByname('FRACAO').Value;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ExecProc;
              DM.Sds_Vendas_itens.Next;
              end;
              end; }


              if DM.Sds_Vendas_itens.RecordCount = 0 then
              begin
              DM.Sds_Vendas_itens.Cancel;
              end else
              begin
              with DM.Sds_Vendas_itens do
              while DM.Sds_Vendas_itens.RecordCount > 0 do
              DM.Sds_Vendas_itens.Delete;
              DM.Sds_Vendas_itens.ApplyUpdates(0);
              end;

             DM.sds_vendas.Delete;
             DM.sds_vendas.ApplyUpdates(0);
             if DM.sds_vendas.RecordCount = 0 then
             begin
             DM.sds_vendas.CancelRange;
             end;



            end;

            //  Sds_pedidos.Active := false;
            //  Sds_pedidos.Active := true;
              dm.Sds_vendas.First;

     Except
      ShowMessage('Ocorreu um Erro. Reinicie o Sistema e Tente Novamente !!!');
end;
end;
end;


procedure TFormConsultaPedidoDireto.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormConsultaPedidoDireto.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormConsultaPedidoDireto.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['A'..'Z', #8, #32]) then
          key := #0;
end;

procedure TFormConsultaPedidoDireto.suiButton6Click(Sender: TObject);
begin

                If DM.SDS_CONFIGURACOESUTILIZA_NFE.Text = 'S' then
                 if Application.MESSAGEBOX('Confirma Geração e Emissão da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin
                       try
                        If FormGefaNFe=nil then
                         begin
                          FormGefaNFe:=TFormGefaNFe.Create(self);
                          FormGefaNFe.combobox2.itemIndex := 2;
                          FormGefaNFe.combobox2.Enabled := False;
                          DM.SDS_CFOP.Active := False;
                          DM.SDS_CFOP.DataSet.CommandText:='select * from CFOP where codigo_cfop >=4000';
                          DM.SDS_CFOP.Active := true;
                          FormGefaNFe.ShowModal;
                         // Application.ProcessMessages;
                          end;
                          except
                            ShowMessage('Houve um erro na emissão da NF-e');
                          end;
                       end;

end;

procedure TFormConsultaPedidoDireto.Edit5Change(Sender: TObject);
begin
IF (Edit5.Text>='A') AND (Edit5.Text<='Z') THEN
EDIT6.Text:='LETRAS';

IF (EDIT5.Text>='0') AND (Edit5.Text<='9') THEN
EDIT6.Text:='NUMEROS';

IF EDIT5.Text='' THEN
EDIT6.Text:=''
end;

procedure TFormConsultaPedidoDireto.suiButton8Click(Sender: TObject);
begin
                   if DM.SDS_CONFIGURACOESUSA_FP.Text = 'S' then
                   BEGIN

                       if DM.sds_vendasCHAVE_FP_CANCEL.Text > '' then
                       begin
                         ShowMessage('Venda Já cancelada no Farmacia Popular');
                       end else
                       if dm.sds_vendasCHAVE_FP.Text > '' then
                        try
                       // If frmFarmaciaPopular=nil then
                         begin
                          frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                       //   frmFarmaciaPopular.EDTCHAVE.TEXT := DM.sds_vendasCHAVE_FP.Text;
                          frmFarmaciaPopular.Tag := 1;
                          frmFarmaciaPopular.ShowModal;
                          suiButton1.Click;
                          end;
                          except
                            ShowMessage('Houve um erro ao Criar o Formulario de Cancelamento da Farmácia Popular');
                          end;
                    end;
end;

end.

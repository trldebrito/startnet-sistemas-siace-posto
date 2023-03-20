unit VendasParcelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, SUIDlg, DB, DBClient, SUIButton, Grids,
  DBGrids, SUIDBCtrls, DBCtrls, ToolEdit, CurrEdit, StdCtrls, Mask,
  Mylabel, DBXpress, RXCtrls, ExtCtrls, RXDBCtrl, Provider, 
  ACBrBase, IniFiles, ACBrECF, ACBrDevice, ACBrECFClass, ACBrConsts,
  RDprint, Buttons, XDBGrids, SimpleDS, ActiveX, IBSQL, IBCustomDataSet,
  IBQuery, IBDatabase;

type
  TFormParcelamento = class(TForm)
    pnldados: TPanel;
    RxLabel4: TRxLabel;
    RxLabel13: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel10: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    Panel2: TPanel;
    RxLabel7: TRxLabel;
    RxLabel9: TRxLabel;
    suiDBNavigator1: TsuiDBNavigator;
    CurrencyEdit2: TCurrencyEdit;
    Panel1: TPanel;
    DBGrid1: TsuiDBGrid;
    Panel3: TPanel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    suiButton3: TsuiButton;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CodigoCliente: TIntegerField;
    ClientDataSet1CodigoCompra: TIntegerField;
    ClientDataSet1Vendedor: TStringField;
    ClientDataSet1Historico: TStringField;
    ClientDataSet1DataCompra: TDateField;
    ClientDataSet1Parcela: TStringField;
    ClientDataSet1DataVencimento: TDateField;
    ErroGravacao: TsuiMessageDialog;
    MSGA: TsuiMessageDialog;
    SPC_CREDIARIO: TSQLStoredProc;
    Impressao: TsuiMessageDialog;
    boleto: TsuiMessageDialog;
    Contrato: TsuiMessageDialog;
    SPC_MOV_DIARIO: TSQLStoredProc;
    ecfimprimir: TsuiMessageDialog;
    RxLabel12: TRxLabel;
    CurrencyEdit5: TCurrencyEdit;
    Desc_cond_pagto: TDBEdit;
    CurrencyEdit6: TCurrencyEdit;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    QryPedidos: TSQLQuery;
    QryPedidosCODIGO: TIntegerField;
    QryPedidosVALOR_ITENS: TFMTBCDField;
    QryPedidosVALOR_DESCONTO: TFMTBCDField;
    QryPedidosVALOR_TOTAL: TFMTBCDField;
    QryPedidosVALOR_COMISSAO: TFMTBCDField;
    QryPedidosUSUARIO: TStringField;
    QryPedidosDATA_PEDIDO: TDateField;
    QryPedidosDATA_ENTREGA: TDateField;
    QryPedidosCODIGO_CLIENTE: TIntegerField;
    QryPedidosNOME_CLIENTE: TStringField;
    QryPedidosPAGAMENTO: TStringField;
    QryPedidosSTATUS: TStringField;
    QryPedidosSITUACAO: TStringField;
    QryPedidosUSUARIO_ENTREGA: TStringField;
    QryPedidosENC_FINANCEIRO: TFMTBCDField;
    QryPedidosTP: TStringField;
    QryPedidosOBSERVACOES: TStringField;
    QryPedidosCOD_VENDEDOR: TIntegerField;
    QryPedidosCOD_PAGTO: TIntegerField;
    QryPedidosN_CUPOM: TStringField;
    QryPedidosN_ECF: TStringField;
    QryPedidosCOD_EMPRESA: TIntegerField;
    QryPedidosHORA: TTimeField;
    QryPedidosVALOR_ACRESCIMOS: TFMTBCDField;
    QryPedidosCOD_ORCAMENTO: TIntegerField;
    QryPedidosCOD_PEDIDO: TIntegerField;
    QryPedidosCOD_OS: TSmallintField;
    QryPedidosNUM_NOTA: TIntegerField;
    QryPedidosSERIE_NOTA: TStringField;
    cds_pedidos: TClientDataSet;
    Dsp_pedidos: TDataSetProvider;
    Dts_pedidos: TDataSource;
    cds_pedidosCODIGO: TIntegerField;
    cds_pedidosVALOR_ITENS: TFMTBCDField;
    cds_pedidosVALOR_DESCONTO: TFMTBCDField;
    cds_pedidosVALOR_TOTAL: TFMTBCDField;
    cds_pedidosVALOR_COMISSAO: TFMTBCDField;
    cds_pedidosUSUARIO: TStringField;
    cds_pedidosDATA_PEDIDO: TDateField;
    cds_pedidosDATA_ENTREGA: TDateField;
    cds_pedidosCODIGO_CLIENTE: TIntegerField;
    cds_pedidosNOME_CLIENTE: TStringField;
    cds_pedidosPAGAMENTO: TStringField;
    cds_pedidosSTATUS: TStringField;
    cds_pedidosSITUACAO: TStringField;
    cds_pedidosUSUARIO_ENTREGA: TStringField;
    cds_pedidosENC_FINANCEIRO: TFMTBCDField;
    cds_pedidosTP: TStringField;
    cds_pedidosOBSERVACOES: TStringField;
    cds_pedidosCOD_VENDEDOR: TIntegerField;
    cds_pedidosCOD_PAGTO: TIntegerField;
    cds_pedidosN_CUPOM: TStringField;
    cds_pedidosN_ECF: TStringField;
    cds_pedidosCOD_EMPRESA: TIntegerField;
    cds_pedidosHORA: TTimeField;
    cds_pedidosVALOR_ACRESCIMOS: TFMTBCDField;
    cds_pedidosCOD_ORCAMENTO: TIntegerField;
    cds_pedidosCOD_PEDIDO: TIntegerField;
    cds_pedidosCOD_OS: TSmallintField;
    cds_pedidosNUM_NOTA: TIntegerField;
    cds_pedidosSERIE_NOTA: TStringField;
    MSGI: TsuiMessageDialog;
    suiButton4: TsuiButton;
    MSG_CD: TsuiMessageDialog;
    SPC_CHEQUE: TSQLStoredProc;
    CurrencyEdit7: TCurrencyEdit;
    RxLabel15: TRxLabel;
    RbPercentual: TRadioButton;
    RbValor: TRadioButton;
    Shape1: TShape;
    RxLabel16: TRxLabel;
    DBComboPgto: TComboEdit;
    ClientDataSet1Comissao: TCurrencyField;
    RxLabel17: TRxLabel;
    CurrencyEdit8: TCurrencyEdit;
    RxLabel18: TRxLabel;
    Edit20: TEdit;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape7: TShape;
    ACBrECF1: TACBrECF;
    SPC_N_CUPOM: TSQLStoredProc;
    edCod: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    mFormas: TMemo;
    cbxModelo: TComboBox;
    Button3: TButton;
    RDprint1: TRDprint;
    EDIT62: TCurrencyEdit;
    PanelDesconto: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdtPercentualDesconto: TCurrencyEdit;
    EdtValorDesconto: TCurrencyEdit;
    EdtSubTotal: TCurrencyEdit;
    EdtTotalLiquido: TCurrencyEdit;
    Panel4: TPanel;
    PanelOK: TPanel;
    Panel8: TPanel;
    Label13: TLabel;
    edtDiferenca: TCurrencyEdit;
    Panel5: TPanel;
    XDBGrid1: TXDBGrid;
    DBGridFormas: TXDBGrid;
    qFormas: TSimpleDataSet;
    qFormasCOD_FORMA: TIntegerField;
    qFormasDESCRICAO: TStringField;
    qFormasTIPO_PAGTO: TStringField;
    RxLabel3: TRxLabel;
    Shape8: TShape;
    EdtTroco: TCurrencyEdit;
    qPGTO: TSQLQuery;
    qPGTOCODIGO: TIntegerField;
    qPGTONUMERO_PAR: TIntegerField;
    qPGTOVARIACAO_DIAS: TIntegerField;
    qPGTOPIMEIRA_PAR: TIntegerField;
    qPGTOJUROS_DIA: TFMTBCDField;
    qPGTOMEDIA_DIAS: TIntegerField;
    qPGTOJUROS_BASE: TFMTBCDField;
    qPGTOTIPO_PAGAMENTO: TStringField;
    qPGTOSTATUS: TStringField;
    qPGTOUSUARIO: TStringField;
    qPGTODATA: TDateField;
    qPGTODESCRICAO: TStringField;
    qPGTOPG_ECF: TStringField;
    DTS_PAGTO: TDataSource;
    DSP_PAGTO: TDataSetProvider;
    CDS_PAGTO: TClientDataSet;
    RxLabel11: TRxLabel;
    RxLabel2: TRxLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel6: TRxLabel;
    RxLabel14: TRxLabel;
    Shape9: TShape;
    EdtTotalGeral: TCurrencyEdit;
    CDS_PAGTOCODIGO: TIntegerField;
    CDS_PAGTONUMERO_PAR: TIntegerField;
    CDS_PAGTOVARIACAO_DIAS: TIntegerField;
    CDS_PAGTOPIMEIRA_PAR: TIntegerField;
    CDS_PAGTOJUROS_DIA: TFMTBCDField;
    CDS_PAGTOMEDIA_DIAS: TIntegerField;
    CDS_PAGTOJUROS_BASE: TFMTBCDField;
    CDS_PAGTOTIPO_PAGAMENTO: TStringField;
    CDS_PAGTOSTATUS: TStringField;
    CDS_PAGTOUSUARIO: TStringField;
    CDS_PAGTODATA: TDateField;
    CDS_PAGTODESCRICAO: TStringField;
    CDS_PAGTOPG_ECF: TStringField;
    qFormasMOSTRA_VENDA: TStringField;
    qFormasTELA_TROCO: TStringField;
    ClientDataSet1ValorParcela: TFMTBCDField;
    Edit3: TEdit;
    Label3: TLabel;
    DBComboCliente: TComboEdit;
    Desc_cliente: TDBEdit;
    Edit2: TEdit;
    Panel9: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    EDTJUROS: TCurrencyEdit;
    RxLabel19: TRxLabel;
    qrcaixa_mov: TIBQuery;
    IBTRAce: TIBTransaction;
    QBuscaItens: TIBQuery;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TIBStringField;
    QBuscaItensDESCRICAO_PRODUTO: TIBStringField;
    QBuscaItensDESCONTO: TIBBCDField;
    QBuscaItensQUANTIDADE: TIBBCDField;
    QBuscaItensPRECO_TOTAL: TIBBCDField;
    QBuscaItensCOMISSAO: TIBBCDField;
    QBuscaItensDEV: TIBStringField;
    QBuscaItensQNT_DEV: TIBBCDField;
    QBuscaItensVAL_DEV: TIBBCDField;
    QBuscaItensENC_FINANCEIRO: TIBBCDField;
    QBuscaItensUNIDADE: TIBStringField;
    QBuscaItensSIT_TRIBUTARIA: TIBStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TIBStringField;
    QBuscaItensPROD_SERV: TIBStringField;
    QBuscaItensPERC_ISS: TIBBCDField;
    QBuscaItensBASE_ISS: TIBBCDField;
    QBuscaItensVL_ISS: TIBBCDField;
    QBuscaItensPERC_ICM: TIBBCDField;
    QBuscaItensBASE_ICMS: TIBBCDField;
    QBuscaItensVL_ICM: TIBBCDField;
    QBuscaItensPERC_IPI: TIBBCDField;
    QBuscaItensBASE_IPI: TIBBCDField;
    QBuscaItensVL_IPI: TIBBCDField;
    QBuscaItensPERC_COFINS: TIBBCDField;
    QBuscaItensBASE_COFINS: TIBBCDField;
    QBuscaItensVL_COFINS: TIBBCDField;
    QBuscaItensPERC_ICMS_SUBST: TIBBCDField;
    QBuscaItensBASE_ICMS_SUBST: TIBBCDField;
    QBuscaItensVL_ICMS_SUBST: TIBBCDField;
    QBuscaItensPERC_PIS: TIBBCDField;
    QBuscaItensBASE_PIS: TIBBCDField;
    QBuscaItensVL_PIS: TIBBCDField;
    QBuscaItensIMPRIME: TIBStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensICMS: TIBBCDField;
    QBuscaItensIPI_IRPJ: TIBBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItensFLAG_PIS_COFINS: TIBStringField;
    QBuscaItensCFOP_EST_VENDA: TIBStringField;
    QBuscaItensCST_VENDA: TIBStringField;
    QBuscaItensNCM_SH: TIBStringField;
    QBuscaItensNCM_SH1: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TIBStringField;
    QBuscaItensCST_IPI_SAIDA: TIBStringField;
    QBuscaItensCFOP_INTER_VENDA: TIBStringField;
    QBuscaItensCST_VENDA_INTER: TIBStringField;
    QBuscaItensCOD_ANP: TIBStringField;
    QBuscaItensCOMBUSTIVEL: TIBStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TIBStringField;
    QBuscaItensML_QUANT_BEB: TIBBCDField;
    QBuscaItensPERC_TRIBU: TIBBCDField;
    QBuscaItensFONTE: TIBStringField;
    QBuscaItensALIC_NAC: TIBBCDField;
    QBuscaItensALIC_IMP: TIBBCDField;
    QBuscaItensVEICULO: TIBStringField;
    QBuscaItensCHASSI: TIBStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TIBStringField;
    QBuscaItensN_MOTOR: TIBStringField;
    QBuscaItensANO_FAB: TIBStringField;
    QBuscaItensANO_MOD_FAB: TIBStringField;
    QBuscaItensTIPO_VEIC: TIBStringField;
    QBuscaItensN_SERIE: TIBStringField;
    QBuscaItensCOD_MODELO: TIBStringField;
    QBuscaItensESPECIE_VEICULO: TIBStringField;
    QBuscaItensCOD_COR_DENATRAN: TIBStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TIBStringField;
    QBuscaItensPESOBRUTO: TIBBCDField;
    QBuscaItensPESOLIQUIDO: TIBBCDField;
    QBuscaItensAPLICACAO: TIBStringField;
    DSQBuscaItens: TDataSource;
    SPC_N_NFE: TSQLStoredProc;
    Memo1: TMemo;
    QBuscaItensPRECO_UNITARIO: TFloatField;
    QBuscaItensID_BICO: TIntegerField;
    QBuscaItensID_TANQUE: TIBStringField;
    QBuscaItensID_BOMBA: TIBStringField;
    QBuscaItensBICO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboPgtoButtonClick(Sender: TObject);
    procedure CurrencyEdit4Enter(Sender: TObject);
    procedure DBComboPgtoEnter(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RbValorExit(Sender: TObject);
    procedure RbPercentualExit(Sender: TObject);
    procedure DBComboPgtoKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboPgtoExit(Sender: TObject);
    procedure Edit20Exit(Sender: TObject);
    procedure CurrencyEdit8Exit(Sender: TObject);
    procedure CurrencyEdit7Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure MostraErros(Sender: Tobject;
    E: Exception);
    procedure Button3Click(Sender: TObject);
    procedure LerINIecf;
    procedure CarregaFPG;
    procedure cbxModeloChange(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure ImprimeVenda40;
    procedure ImprimeVenda;
    function  TotalizaFormaPagamento(const sTipo : string) : currency;
    procedure t(Sender: TObject);
    procedure EdtValorDescontoExit(Sender: TObject);
    procedure DBGridFormasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridFormasColEnter(Sender: TObject);
    procedure DBGridFormasEnter(Sender: TObject);
    procedure DBGridFormasKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridFormasTotalsUpdated(Sender: TObject);
    procedure DBGridFormasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TXColumn;
      State: TGridDrawState);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   procedure GeraParcelas;
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure EdtTotalLiquidoExit(Sender: TObject);
    procedure DBComboClienteButtonClick(Sender: TObject);
    procedure DBComboClienteChange(Sender: TObject);
    procedure DBComboClienteEnter(Sender: TObject);
    procedure DBComboClienteExit(Sender: TObject);
    procedure DBComboClienteKeyPress(Sender: TObject; var Key: Char);
    procedure EdtValorDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtTotalLiquidoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtPercentualDescontoKeyPress(Sender: TObject;
      var Key: Char);
    procedure DBGridFormasExit(Sender: TObject);
    procedure DBGridFormasRowSelect(Sender: TObject;
      Action: TSelectAction);
    procedure DBGridFormasColExit(Sender: TObject);
    procedure ImprimeDUPLICATA;

  private
    Cod,Cod1,Contador:Integer;
    Tipo: String;
    Libera_Insert : Boolean;
    VP, VR, X, D : Real; 
    vlrVenda : real;
    Total1 : real;
    entrada : Real;
    Parcela : integer;
    valor, Encargos, enc, juros, venda, total_venda, troco: Real;

    desc, desconto2, parcelado_total :Real;
    desconto : real;
    desc_M : real;


    Function Converte( cmd : String) : String;

  public
    { Public declarations }
    Total, Comissao,EncFinanceiro:Double;
    ValCompra, Dinheiro, Soma,  desct,A, B, C, acresc :Double;
    I, NItem, NValor:Integer;
    Pagamento, CPFCNPJ, RGIE, EnderComp, PAG, valor_desc : String;
    TipoCupom : Char ;
    cTotalForma : currency;
    AVISTA, cheque, VALE, CARTAO, prazo, REQUISICAO : Double;
    Limite, Credito : Currency;
    cSomaFormas : Real;

  end;

  const
  //ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;


var
  FormParcelamento: TFormParcelamento;
  TD:TTransactionDesc;
  AUTORIZOU : Boolean;
  
implementation

uses Vendas, ModulodeDados, ConsCondPagamento, Z_RotinasGerais, Principal,
  ModulodeDadosConsultas, ModulodeDadosRelatorios, printPedidos,
  ModulodeDadosConsultas5, duplicata, ContratoVEnda, EmiteEcf, BoletosBanc,
  Udmcob, DesbloquearCliente, LancCheques, ImpNotafiscal, Libera_Venda,
  lancNotasFiscais, PEDIDO80COL, gerNFE, libera_desconto, ModuleDados1, Z_DeclaracoesBemaFi32,
  RelValeTroco, consvaletroco, Ubibli1, UDadosAdm, Utroco,
  uFarmaciaPopular2, ConsClientes, debitos, gerNFce, DUPLICATA80COL;

 var
    sSql : string;
    iEmp :Integer;

    cTotalVenda     : real;
    cDescMaximo     : Real;
    cDescontoVenda  : Real;
    iFormaPagamento : integer;

    iCodigoNF   : integer;
    iNumeroNF   : integer;
    iSerieNF    : integer;
    sSerieNF    : string;

{$R *.dfm}

function TFormParcelamento.TotalizaFormaPagamento(const sTipo : string) : currency;
begin
   cTotalForma:= 0;

   with formVendas.CDSFormas do
      begin
         First;
         while not eof do
            begin
               if trim(formVendas.CdsFormasTIPO.AsString) = trim(sTipo) then
                  cTotalForma:= cTotalForma + formVendas.CDSFormasVALOR.AsCurrency;
               next;
            end;
      end;
   result:= ExatoCurrency(cTotalForma,2);
end;

procedure TFormParcelamento.ImprimeDUPLICATA;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
    Conf := 'S';

     total    := 0;
     Traco    := '------------------------------------------------';
     // Parametros para o CUPOM FISCAL
    // RDprint1.Impressora := Bobina;
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 55;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := S20cpp; // Fonte Comprimido em 20 cpp
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
           impc(02,25,RAZAO_EMP,[comp17, normal])
        else
           impc(02,25,RAZAO_EMP,[comp17, normal]);
        impc(03,25,ENDERECO_EMP + ',' + NUMERO_EMP ,[comp17, normal]);
        impc(04,25,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[comp17, normal]);
        impc(05,25,'Fone ' + tel_emp,[comp17, normal]);
        imp (07,01,'Nº ' + DMC.CDS_PedidosCODIGO.Text +
                   '   ' + datetimetostr(now) +
                   '    Op.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        impf(09,01,CLI,[comp17]);
        impf(10,01, END_CLI + ',' + NUMERO_CLI,[comp17]);
        impf(11,01,CEP_CLI  + ' - ' +
                   CID_CLI + ' - ' +
                   ESTADO_CLI, [comp17]);
        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'                D U P L I C A T A               ');
        imp (14,01,traco);

        imp (15,01,'Estou  Ciente que  pagarei  a  Quantia  Conforme');
        imp (16,01,'parcelas abaixo em seus respectivos vencimentos:');
         end;            // Imprime itens do pedido...
       linha := 17;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...

        imp(linha,01,'Formas de pagamento');
        inc   (linha);
        imp(linha,01,'Descricao:       ' + '   Data Vecto ' + '    Valor Parcela');
        inc   (linha);

        DMC.SDS_COND_PAGTO.First;
        while not DMC.SDS_COND_PAGTO.Eof do
            begin
               if DMC.SDS_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.SDS_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,20, DMC.SDS_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,35,'###,###,##0.00',DMC.SDS_COND_PAGTOVALOR.AsFloat + DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.SDS_COND_PAGTO.Next;
            end;

        imp (linha,01,traco);
        inc (linha);
        impc(linha,25,'Obrigado pela preferência',[]);
        inc (linha);
        inc (linha);
        impc(linha,25,'VOLTE SEMPRE',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        imp   (linha,01,traco);
        inc   (linha);
        impc(linha,25,'***   ASSINATURA   ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
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

procedure TFormParcelamento.ImprimeVenda40;
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
        impc(03,28,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,28,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,28,'Fone ' + tel_emp,[Comp12]);
        imp (07,01,'Nº ' + FOrmVendaS.N_venda.Text +
                   '   ' + datetimetostr(now) +
                   '    Op.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        impf(09,01,CLI,[comp12]);
        impf(10,01, END_CLI + ',' + NUMERO_CLI,[comp12]);
        impf(11,01,CEP_CLI  + ' - ' +
                   CID_CLI + ' - ' +
                   ESTADO_CLI, [comp12]);

        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'Qte    Descrição dos Produtos     UN Unitário Sub-Total');
        imp (14,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 15;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
           impval(linha,01,'0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,8,''+DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,35,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,38,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,47,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
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
        imp   (linha,01,'Total Geral da Venda');
        impval(linha,42,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);
        // Desconto Global
        inc (linha);
        imp (linha,01,'(-) Desconto Global');
        impval(linha,42,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
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
                     imp (linha,01, DMC.SDS_COND_PAGTOTIPO_PAGTO.Text );
                     impval(linha,42,'###,###,##0.00',DMC.SDS_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.SDS_COND_PAGTO.Next;
            end;
        imp (linha,01, 'Troco' );
        impval(linha,42,'###,###,##0.00',edit62.Value,[]);
        inc   (linha);
        // Final...

        imp (linha,01,traco);
        inc (linha);
        impc(linha,28,'Obrigado pela preferência',[comp12]);
        inc (linha);
        inc (linha);
        impc(linha,28,'VOLTE SEMPRE',[Normal]);
        inc (linha);
        inc (linha);
        impc(linha,28,'***  SEM VALOR FISCAL  ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
        imp   (linha,01,traco);
        inc   (linha);
        impc(linha,25,'***   ASSINATURA   ***',[]);

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

procedure TFormParcelamento.ImprimeVenda;
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

procedure TFormParcelamento.LerINIecf;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     cbxModelo.ItemIndex := INI.ReadInteger('ECF','Modelo',cbxModelo.ItemIndex);
     cbxModeloChange(nil);
     ACBrECF1.porta  := INI.ReadString('ECF','Porta',ACBrECF1.Porta);
    { seTimeOut.Value := INI.ReadInteger('ECF','TimeOut',seTimeOut.Value);
     seIntervaloAposComando.Value := INI.ReadInteger('ECF','IntervaloAposComando',seIntervaloAposComando.Value);
     chTentar.Checked := INI.ReadBool('ECF','TentarNovamente',chTentar.Checked);
     chBloqueia.Checked := INI.ReadBool('ECF','BloqueiaMouseTeclado',chBloqueia.Checked);
     chExibeMsg.Checked := INI.ReadBool('ECF','ExibeMsgAguarde',chExibeMsg.Checked);
     chArredondaPorQtd.Checked := INI.ReadBool('ECF','ArredondaPorQtd',chArredondaPorQtd.Checked);
     chDescricaoGrande.Checked := INI.ReadBool('ECF','DescricaoGrande',chDescricaoGrande.Checked);
     chGavetaSinalInvertido.Checked := INI.ReadBool('ECF','GavetaSinalInvertido',chGavetaSinalInvertido.Checked);
     mMsg.Text := StringReplace(INI.ReadString('ECF','MensagemAguarde',mMsg.Text),'|',sLineBreak,[rfReplaceAll]);
     edLog.Text := INI.ReadString('ECF','ArqLog',edLog.Text); }
     ACBrECF1.Device.ParamsString := INI.ReadString('ECF','SerialParams','');
    // edOperador.Text := INI.ReadString('ECF','Operador','');

  finally
     INI.Free ;
  end ;
end;

procedure TFormParcelamento.CarregaFPG;
Var A : Integer ;
begin
  mFormas.Clear ;
 // with FormECF do
  begin
     { Bematech e NaoFiscal permitem cadastrar formas de Pagamento dinamicamente }
     if (ACBrECF1.Modelo in [ecfBematech,ecfNaoFiscal])then
        ACBrECF1.CarregaFormasPagamento
     else
        ACBrECF1.AchaFPGIndice('') ;  { força carregar, se ainda nao o fez }

     for A := 0 to ACBrECF1.FormasPagamento.Count -1 do
     begin
        {mFormas.Lines.Add( ACBrECF1.FormasPagamento[A].Indice+' -> '+
              ACBrECF1.FormasPagamento[A].Descricao+' - '+IfThen(
              ACBrECF1.FormasPagamento[A].PermiteVinculado,'v',''));}
     end ;
  end ;
  end;



function TFormParcelamento.Converte(cmd: String): String;
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


//IMPLEMENTAÇÃO DA PROCEDURE MOSTRAERROS
procedure TFormParcelamento.MostraErros(Sender: Tobject;
  E: Exception);
var
msg : string;
I, X: integer;
begin          //Verifica se o erro apresentado ocorre na base de dados
  If E is EdatabaseError then
  begin        //For para varrer o tamanho da mensagem
      for I := 1 To Length(e.Message) Do
          begin    //if para verificar o fim da mensagem definido pelo caracter '|'
            if (e.Message[I] = '|') then       //gravando posição do caracter indicativo
                  X := I;
          END;
              msg := copy(e.Message, 0, 1);
              //APRESENTANDO A MENSAGEM AO USUARIO
       MessageBox(Application.Handle, PChar(Msg), 'Erro', MB_OK + MB_ICONERROR);
   end

   //APRESENTANDO ERRO SEM FORMATÇÃO SE NÃO FOR ERRO DA BASE DE DADOS
   ELSE
   MessageBox(Application.Handle, PChar(e.Message), 'Erro', MB_OK + MB_ICONERROR);
 end;


procedure TFormParcelamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm1.QConsValeTroco.SQL.Clear;
      dm1.QConsValeTroco.SQL.Text := sSql;
      dm1.QConsValeTroco.Close;

      CDS_PAGTO.Close;

      Action:=CaFree;
      FormParcelamento:=nil;
end;

procedure TFormParcelamento.FormCreate(Sender: TObject);
begin

  if FileExists('C:\SIACE\PARCELADO.xml') then
  begin
     DeleteFile('C:\SIACE\PARCELADO.xml');
  end;

  with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'PARCELADO.xml';
  if not FileExists(filename) then
  createdataset;
  clientDataset1.IndexFieldNames:= 'DataVencimento';
  open;
  end;

end;

procedure TFormParcelamento.FormShow(Sender: TObject);
 Var
tvenda: Real;
 Z :Integer;
 TP : string;
//Parcela:Integer;
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);

  formVendas.Sds_Pedidos.Edit;

 DM.SDS_CONFIGURACOES.Active := False;
 DM.SDS_CONFIGURACOES.Active:= True;

 {
  IF DM.SDS_CONFIGURACOESTP_DESCONTO.Text ='P' then
  begin
  RbPercentual.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESTP_DESCONTO.Text ='R' then
  begin
  RbValor.Checked := True;
  end;

 // formVendas.Sds_Pedidos.Active :=false;
 //formVendas.Sds_Pedidos.Active :=true;
 DM.SDS_CondPagamento.Active:= False;
 DM.SDS_CondPagamento.Active:= True;


CurrencyEdit1.Text:= FloatToStr(formVendas.Edit62.Value);
CurrencyEdit3.Text:= FloatToStr(formVendas.Edit62.Value);
Tvenda:=CurrencyEdit1.value;
//Parcela:= DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
//VP:= (Total/Parcela);
//CurrencyEdit4.SetFocus;
 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
// ClientDataset1.Delete; DBComboPgto.Text := '1';
 DB_CODIGO.Clear;
 db_nome.Clear;
//M.SDS_Clientes.Open;}

{ If DM.SDS_Clientes.locate('CODIGO',formVendas.DBComboCliente.Text,[])=True then
 begin
 DB_CODIGO.Text := DM.SDS_ClientesCODIGO.AsString;
 db_nome.Text   :=DM.SDS_ClientesNOME_RS.AsString;
 end;  }




  { if formVendas.DBComboCliente.Text > '1'then
   begin
   DBComboPgto.Text := DM.SDS_CONFIGURACOESCOD_PAGTO_PADRAO.TEXT;
   if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
   begin
   Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
    DBComboPgto.SetFocus;
   // DBComboPgtoExit(Sender);

end;
end;}
        if formVendas.sds_pedidos_itens.RecordCount = 1 then
        begin
        if formprincipal.combustivel = True then
        begin
        formVendas.Sds_pedidos.Edit;
        if FormPrincipal.V_total < formVendas.Edit62.Value then
        begin
          formVendas.Sds_pedidosVALOR_DESCONTO.AsFloat := FormPrincipal.V_total - formVendas.Edit62.Value;
          EdtValorDesconto.Value := FormPrincipal.V_total - formVendas.Edit62.Value;
        end;

        if FormPrincipal.V_total > formVendas.Edit62.Value then
        begin
          formVendas.Sds_pedidosVALOR_ACRESCIMOS.AsFloat := FormPrincipal.V_total - formVendas.Edit62.Value;
          EDTJUROS.Value := FormPrincipal.V_total - formVendas.Edit62.Value;
        end;
          formVendas.Sds_pedidosVALOR_TOTAL.AsFloat := (formVendas.edit62.value +  formVendas.Sds_pedidosVALOR_ACRESCIMOS.AsFloat -  formVendas.Sds_pedidosVALOR_DESCONTO.AsFloat);
          end;
        end;
 suiButton1.Default:= False;
 suiButton2.Default:= False;

 sSql := dm1.QConsValeTroco.SQL.Text;
 iEmp := dm.sds_empresacodigo.asinteger;

 DBComboCliente.Text  :=    formVendas.DBComboCliente.Text;
 Desc_cond_pagto.Text :=    formVendas.Desc_cond_pagto.Text;
 
 // nova tela parcelamentos
 EdtSubTotal.Text:= FloatToStr(formVendas.Edit62.Value );
 EdtTotalLiquido.Text:= FloatToStr(formVendas.Edit62.Value  );
 cTotalVenda := formVendas.Edit62.Value  ;

  qFormas.Close;
  qFormas.Open;

   formVendas.cdsformas.Close;
   formVendas.CDSFormas.CreateDataSet;
   formVendas.CDSFormas.IndexFieldNames:= 'codigo';
   formVendas.CDSFormas.Open;

   qFormas.First;
   TP:='S';
   qFormas.Filtered := False;
   qFormas.Filter := 'MOSTRA_VENDA ='+QuotedStr(TP);
   qFormas.Filtered := True;
   Contador := 0;
   Contador:=qFormas.RecordCount;
   Z:=0;
   For Z:= 1 to Contador do
   begin
   formVendas.CDSFormas.insert;
   formVendas.CDSFormasCODIGO.Text    := qFormasCOD_FORMA.Text;
   formVendas.CDSFormasDESCRICAO.Text := qFormasDESCRICAO.Text;
   formVendas.CDSFormasTIPO.Text      := qFormasTIPO_PAGTO.Text;
   formVendas.CDSFormasVALOR.Value    := 0;
   formVendas.CDSFormas.Post;
   qFormas.Next;
   end;

 if formVendas.DBComboCliente.Text = DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text then
 begin
 //  DBComboPgto.Text := '1';
  { if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
   begin
    Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString; }
    // DBComboPgto.SetFocus;
   // DBComboPgtoExit(Sender);

   formVendas.CDSFormas.First;
   end;
    IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
  BEGIN
  EdtPercentualDesconto.Enabled := True;
  EdtValorDesconto.Enabled := True;
  EdtPercentualDesconto.SetFocus;
  END ELSE
  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
  BEGIN
  EdtPercentualDesconto.Enabled := FALSE;
  EdtValorDesconto.Enabled := False;
  if strtocurr(EdtPercentualDesconto.Text) < 0 then
      begin
         showmessage('Valor do Desconto não pode ser negativo');
         EdtPercentualDesconto.SetFocus;
         exit;
         abort;
      end;
   if strtocurr(EdtPercentualDesconto.Text) > 0 then
      begin
         cDescontoVenda        := strtocurr(currtostrf((strtocurr(EdtSubTotal.Text) * strtocurr(EdtPercentualDesconto.text)) / 100, ffFixed, 2));
         EdtValorDesconto.Text := currtostr(cDescontoVenda);
         if cDescontoVenda > 0 then
            begin
               if formprincipal.combustivel = True then
               EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontoVenda - EDTJUROS.value)
               else
               EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontoVenda);
              // FormasComDesconto;
               cTotalVenda:= EdtTotalLiquido.Value;
            end;
         EdtTroco.Text := '0';
         EdtTotalLiquido.Value := cTotalVenda;
         EdtTotalGeral.Value := EdtTotalLiquido.Value;
      end
   else
      begin
         EdtValorDesconto.Clear;
         cDescontoVenda:= 0;
         //FormasPagamento;
         EdtTotalLiquido.Value := EdtSubTotal.Value;
         EdtTotalGeral.Value := EdtTotalLiquido.Value;

      end;


  DBGridFormas.SetFocus;
  END;
end;


procedure TFormParcelamento.DBComboPgtoButtonClick(Sender: TObject);
var
  CD, PG : String;
begin
{     formVendas.Sds_PedidosCod_pagto.text := '';
     DBComboPgto.Clear;
     FormConsCondPagamento:=NIL;
     FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;

     if DM.SDS_CondPagamento.RecordCount = 0 then
     begin
     MSGA.Text:= 'Não Existe Condição de Pagamento Cadastrada! Você Deve Cadastrar Uma Condição de Pagamento Para Continuar Com o Pedido!';
     MSGA.ShowModal;
     Close;
     end else

       begin

       IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        MSGA.Text:= 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
        MSGA.ShowModal;
        end else
        begin
        Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        DBComboPgto.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;

                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

                       edit1.Text := PG;
        end;
    DBComboPgto.SetFocus;
end; }
end;

procedure TFormParcelamento.CurrencyEdit4Enter(Sender: TObject);
begin
//CurrencyEdit7.Clear;
corentrada(sender);
//KeyPreview := False;
end;

procedure TFormParcelamento.DBComboPgtoEnter(Sender: TObject);
begin
// formVendas.Sds_Pedidos.Edit;
 CorEntrada(sender);
end;

procedure TFormParcelamento.suiButton3Click(Sender: TObject);
Var
DT: TDateTime;
Days: Extended;
Y: Byte;
tp : string;
begin
Try
DBGrid1.Enabled:= TRUE;
Days:= CDS_PAGTOVARIACAO_DIAS.AsInteger;
DT:= (formVendas.dt_venda.Date + CDS_PAGTOPIMEIRA_PAR.AsInteger) - Days;
Libera_Insert := True;
//DBGrid1.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
Y:=0;
for Y := 1 to StrToInt(CDS_PAGTONUMERO_PAR.Text) do
begin
if ClientDataSet1.RecordCount < Y then
ClientDataSet1.Insert
else
ClientDataSet1.Edit;
     DT:= DT +Days;
     ClientDataset1.FieldByname('CodigoCliente').AsInteger:= formVendas.Sds_pedidosCODIGO_CLIENTE.AsInteger;
     ClientDataset1.FieldByname('CodigoCompra').AsInteger:= STrToInt(formVendas.N_venda.Text);
     ClientDataset1.FieldByname('Vendedor').AsString:=FormPrincipal.UserLogado;
     ClientDataset1.FieldByname('Historico').AsString:= 'Crediário Referente a Venda Nº '+' '+ FormVendas.N_venda.Text+' - '+ Desc_cond_pagto.Text;
     ClientDataset1.FieldByname('DataCompra').AsDateTime:= formVendas.dt_venda.Date;
     ClientDataset1.FieldByname('ValorParcela').Value:= VP;
     ClientDataset1.FieldByname('Parcela').AsString:=(IntToStr(Y)+'/'+DBEdit3.Text);
     ClientDataset1.FieldByname('DataVencimento').Value:= DT;
     ClientDataSet1.FieldByName('Comissao').Value := VR;
     ClientDataSet1.Post;
     ClientDataSet1.Next;
     ClientDataSet1.Last;
     end;
     Libera_Insert := False;
     ClientDataSet1.First;
     //suiButton3.Enabled:= False;
     suiButton2.Enabled:= True;
    // suiButton2.SetFocus;

     xdbgrid1.SetFocus;

if TotalizaFormaPagamento('C') > 0 then
begin
TP :='C';
if formVendas.cDSFormas.Locate('TIPO',TP,[]) = True then;
begin
//CDSFormas.Edit;
total := formVendas.CDSFormasVALOR.AsFloat + Encargos;
//CDSFormas.Next;
//CDSFormas.Prior;
end;
end ELSE
if TotalizaFormaPagamento('H') > 0 then
begin
TP :='H';
if formVendas.cDSFormas.Locate('TIPO',TP,[]) = True then;
begin
//CDSFormas.Edit;
total := formVendas.CDSFormasVALOR.AsFloat + Encargos;
//CDSFormas.Next;
//CDSFormas.Prior;
end;
end ELSE
 if TotalizaFormaPagamento('F') > 0 then
begin
TP :='F';
if formVendas.cDSFormas.Locate('TIPO',TP,[]) = True then;
begin
//CDSFormas.Edit;
total := formVendas.CDSFormasVALOR.AsFloat + Encargos;
//CDSFormas.Next;
//CDSFormas.Prior;
end;
end;

CurrencyEdit2.Value  := total;

         // ACHA RESTO DA DIVISÃO
          ClientDataSet1.First;
          Total1 := 0;
          X:= 0;
          X:= X + ClientDataSet1ValorParcela.AsFloat;
          ClientDataSet1.Next;
          TOTAL1 := X;
          While not ClientDataSet1.Eof do
          begin
          X:= X + ClientDataSet1ValorParcela.AsFloat;
          ClientDataSet1.Next;
          Total1:= X;
          end;
          ClientDataSet1.First;
         // ClientDataSet1.last;

          total_venda := (TOTAL - Total1);

          // CurrencyEdit9.Value := total_venda;

          IF TOTAL1 > Total then
          begin
           ClientDataSet1.Edit;
           ClientDataSet1ValorParcela.AsFloat := ClientDataSet1ValorParcela.AsFloat - total_venda;
           ClientDataSet1.Post;
          end ELSE

          IF TOTAL1 < TOTAL then
          begin
           ClientDataSet1.Edit;
           ClientDataSet1ValorParcela.AsFloat := ClientDataSet1ValorParcela.AsFloat + total_venda;
           ClientDataSet1.Post;
          end;  

except
        ErroGravacao.ShowModal;
        Close;
end;
end;

procedure TFormParcelamento.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
ClientDataSet1.First;
A:= 0;
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not ClientDataSet1.Eof do
begin
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
ClientDataSet1.First;
end;

procedure TFormParcelamento.suiButton1Click(Sender: TObject);
begin
{//formVendas.cancelar.Enabled := True;
formVendas.confirmar.Enabled := True;
formVendas.alterar.enabled := False;
formVendas.excluir.Enabled := False; }

  formVendas.Edit60.Visible := true;
  formVendas.E_desconto.Visible := true;
  formVendas.Edit62.Visible := true;
  formVendas.GroupBox1.Enabled:= True;
  formVendas.GroupBox2.Enabled:= true;
  formVendas.GroupBox3.Enabled:= true;

//formVendas.Sds_Pedidos.Edit;
//formVendas.Sds_Pedidos_itens.Edit;
      {formVendas.Sds_pedidos_itens.last;
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
      end; }

formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
formVendas.Sds_Pedidos_itens.Edit;
formVendas.ComboEdit1.Visible := True;
formVendas.ComboEdit1.SetFocus; 
Close;
end;


procedure TFormParcelamento.suiButton2Click(Sender: TObject);
var
   I,C, E, Z, F:Integer;
   Endercomp, Cli, cpfrg, cpf_cnpj, pedido, prod : String;
   dtaux : TDateTime;

   Resp : TModalResult ;
   Percent, EncFin, PerEnc, EF, VF, VD: Real;

   PG, CD : String;
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
   iconta : Integer;
   Desc : Char ;
   Descricao : String ;
   COO, CodFormaPagamento, CodComprovanteNaoFiscal, SubTotal : String;
   sValor, tp : String ;
   dValor, troco, cValorPago1 : Double ;
   Linha :String;
   FPG : TACBrECFFormaPagamento ;  { Necessita de uses ACBrECF }
   TAM : Integer;
   bPagou, bErroFormas : boolean;
   cSomaFormas, credit: currency;
     y,xa, za, bx,By,bz,b_pis, pis, b_cofins, cofins, icm, ipi, iss, b_icm,b_ipi,b_iss :Double;
     Pag, cabecalho, pagamento,meio, itens: string;
begin

     suiButton2.Enabled := False;

 // SE A VENDA FOR EXPORTADA DA TELA DE CONSULTA
  if exportada = True then
  begin

   dm.sds_vendas.Open;
   dm.QRY_vendas.close;
   dm.QRY_vendas.SQL.Clear;
   dm.QRY_vendas.sql.add('select * from PEDIDOS where codigo ='+ formVendas.N_venda.Text +'');
   dm.QRY_vendas.Open;
   dm.sds_vendas.Open;

   formprincipal.log(codigo_usuario,'VENDA',formVendas.N_venda.Text,'ALTEROU','ALTERAÇÃO DA VENDA Nº '+formVendas.N_venda.Text+'Cliente: '+ DM.sds_vendasCODIGO_CLIENTE.Text+' - '+DM.sds_vendasNOME_CLIENTE.text);

    Dm.Sds_vendas_itens.First;
    Contador := Dm.Sds_vendas_itens.RecordCount;
    For I:=1 to Contador do
    begin
           //LOG ESTOQUE
       if DM.IBTransaction.Active then
         DM.IBTransaction.Commit;
      DM.IBTransaction.StartTransaction;
      try
         contador:=0;
         e:=0;

          // BUSCA ESTOQUE
           if dm.IBTransaction.Active then
             dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;

            try
              with dm.Consulta do
                 begin
                    close;
                    sql.Clear;
                    sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                    Parambyname('CODPRO').AsInteger:= dm.Sds_vendas_itensCodigo_prod.AsInteger;
                    ExecQuery;
                    estoque:= fieldbyname('ESTOQUE').AsCurrency;
                 end;
              dm.IBTransaction.Commit;
            except
              dm.IBTransaction.rollback;
              showmessage('Erro ao buscar o custo do produto');
            end;
         try
          with DM.logEst do
             begin
                close;
                parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                parambyname('ID_AJUSTE').AsInteger      := 1;//DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                Parambyname('ID_PRODUTO').AsInteger     := dm.Sds_vendas_itensCodigo_prod.AsInteger;
                Parambyname('ID_LOTE').Value            := null;
                Parambyname('ID_PRODUTO_SERIE').Value   := null;
                Parambyname('DATA').AsDateTime          := date;
                Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                parambyname('ID_MOVIMENTO').AsInteger   :=  dm.Sds_vendascodigo.asinteger;
                Parambyname('FRACAO').Asfloat           := dm.Sds_vendas_itensFRACAO.AsINTEGER;
                Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
                Parambyname('QUANTIDADE').Asfloat       :=  dm.Sds_vendas_itensQUANTIDADE.AsFloat;
                Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE + dm.Sds_vendas_itensQUANTIDADE.AsFloat;
                Parambyname('SITUACAO_ESTOQUE').ASINTEGER    := 7; //ALTERAÇÃO DA VENDA
                Parambyname('OPERACAO').TEXT             := '+';
                Parambyname('ACAO_BD').TEXT               := 'U';
                Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                parambyname('COD_VENDA').AsInteger      :=  dm.sds_vendasCODIGO.asinteger;
                parambyname('COD_COMPRA').VALUE         :=  null;
                Parambyname('HISTORICO').TEXT           := copy('Alteração da Venda No. '+formVendas.N_venda.Text+' - '+dm.sds_vendasNOME_CLIENTE.Text,1,60);
                Parambyname('HORA').AsString            := TimeToStr(Time);
                ExecSQL;
              end;
              DM.IBTransaction.Commit;

           except
          DM.IBTransaction.Rollback;
          showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                      'Verifique que já foi lançado');
          end;
        finally
       dm.logEst.Close;
       end;
      DM.Sds_Vendas_itens.next;
      end;
      Application.ProcessMessages;
    end;

  ///.... SE ESTIVER ALGUM RESQUICIO NA ALTERAÇÃO EXCLUI DAS TABELAS VINCULADAS ......////
     if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from crediario where crediario.codigo_compra =:venda');
         ParamByName('venda').AsString := formVendas.N_venda.TEXT;
         ExecQuery;
     end;
     DM.IBTransaction.CommitRetaining;


  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from movimento_diario where movimento_diario.codigo_venda =:venda');
         ParamByName('venda').AsString := formVendas.N_venda.TEXT;
         ExecQuery;
     end;
     DM.IBTransaction.CommitRetaining;

  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from cheques where cheques.codigo_compra =:venda');
         ParamByName('venda').AsString :=formVendas.N_venda.TEXT;
         ExecQuery;
     end;
     DM.IBTransaction.CommitRetaining;


       if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from PEDIDOS_ITENS where codigo_ID =:venda');
         ParamByName('venda').AsString :=formVendas.N_venda.TEXT;
         ExecQuery;
     end;
     DM.IBTransaction.CommitRetaining;

   if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from PEDIDOS where codigo =:venda');
         ParamByName('venda').AsString :=formVendas.N_venda.TEXT;
         ExecQuery;
     end;
     DM.IBTransaction.CommitRetaining;



 Application.ProcessMessages;


    with formVendas.CDSFormas do
      begin
         First;
         while not eof do
            begin
               cSomaFormas:= cSomaFormas+ formVendas.CDSFormasVALOR.AsCurrency;
               next;
            end;
      end;

      if cSomaFormas - EdtTotalGeral.VALUE  > 0.01 then
      begin
      EdtTroco.text :=  currtostr(cSomaFormas - EdtTotalGeral.VALUE);
      edtDiferenca.Value :=0;

      end else
      if cSomaFormas - EdtTotalGeral.VALUE  < 0.01 then
      begin
      edtDiferenca.text :=  currtostr(cSomaFormas - EdtTotalGeral.VALUE);
      EdtTroco.Value :=0;
      end;

  Application.ProcessMessages;

 with formVendas.CDSFormas do
      begin
         first;
         while not eof do
            begin
            if formVendas.CDSFormasvalor.AsString = '' then
            begin
            formVendas.CDSFormas.Edit;
            formVendas.CDSFormasvalor.AsFloat := 0;
            end ;
           if formVendas.CDSFormasvalor.AsFloat > 99999999 then
           begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
          if formVendas.CDSFormasvalor.AsFloat < 0  then
         begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
            Next;
         end;
         end;


   bPagou       := false;
   bErroFormas  := false;
   cSomaFormas  := 0;
   formVendas.Sds_pedidos.Edit;
   formVendas.Sds_pedidossaldo_troco.AsFloat := 0;
   formVendas.Sds_pedidossaldo_troco.AsFloat := EdtTroco.Value;
   formVendas.Sds_pedidos.Post;

  { Verifica Formas de Pagamento }
  with formVendas.CDSFormas do
      begin
         first;
         while not eof do
            begin
               if formVendas.CDSFormasVALOR.AsCurrency > 0 then
                  begin
                     if bPagou then
                        bErroFormas:= true
                     else
                        begin
                           bErroFormas:= false;
                           cSomaFormas:= ExatoCurrency(cSomaFormas,2) + ExatoCurrency(formVendas.CDSFormasVALOR.AsCurrency,2);
                           if cSomaFormas >= (ExatoCurrency(EdtTotalGeral.Value,2) - ExatoCurrency(Encargos,2)) then
                              bPagou:= true;
                        end;
                  end;
               next;
            end;
      end;

      if (bErroFormas) or (not bPagou) then
      begin
         showmessage('Verifique as formas de pagamento');
         formVendas.CDSFormas.First;
         DBGridFormas.SetFocus;
        formVendas. CDSFormas.Edit;
         exit;
      end;


              if TotalizaFormaPagamento('A') > 0 then
              begin
              AVISTA := cTotalForma;
              formVendas.Sds_pedidos.Edit;
              formVendas.Sds_pedidosTP.Text :='A';
              formVendas.Sds_pedidos.Post;
              end;

              if TotalizaFormaPagamento('C') > 0 then
              begin
              formVendas.Sds_pedidos.Edit;
              formVendas.Sds_pedidosTP.Text :='C';
              formVendas.Sds_pedidos.Post;

              Credit := cTotalForma;

              if ClientDataSet1.RecordCount = 0 then
              begin
               MSGI.Text:= 'Favor Gerar as parcelas antes de finalizar a venda!';
               MSGI.ShowModal;
               suiButton1.Enabled:= True;
               suiButton1.Enabled:= True;
               suiButton3.Enabled:= True;
               exit;
               Abort;
              end;

               IF DM.SDS_ClientesPG_CREDIARIO.Value = 'N' THEN
               BEGIN
               MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
               MSGI.ShowModal;
               suiButton1.Enabled:= True;
               suiButton1.Enabled:= True;
               suiButton3.Enabled:= True;
               exit;
               Abort;
               end else

               prazo := ExatoCurrency(CurrencyEdit2.Value,2);

               If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
               BEGIN
                 libera_cliente := False;
               DMC.SQLD_LIMITE.Active := False;
               DMC.CDS_LIMITE.Active := False;
               DMC.SQLD_LIMITE.Params[0].AsString := formVendas.DBComboCliente.Text;;
               DMC.SQLD_LIMITE.Active := True;
               DMC.CDS_LIMITE.Active := True;
               Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - prazo);
               Credito := 0;
               Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat + DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
               IF Limite < 0 THEN
               begin
               if DM.SDS_ClientesTESTA_LIMITE.Text = 'S' THEN
               begin
               formliberaVenda :=nil;
               FormLiberaVenda:=TFormLiberaVenda.Create(self);
               FormLiberaVenda.tag := 0;
               FormLiberaVenda.ShowModal;
               if libera_cliente = false then
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                exit;
                Abort;
                end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;
               end;
               end else
               IF Credito > 0 THEN
               begin
               if DM.SDS_ClientesTESTA_CREDITO.Text = 'S' then
               begin
               formliberaVenda :=nil;
               FormLiberaVenda:=TFormLiberaVenda.Create(self);
               FormLiberaVenda.tag := 0;
               FormLiberaVenda.ShowModal;
                if libera_cliente = false then
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                exit;
                Abort;
                end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;
               end;
               end;
               end;
              end;

              if TotalizaFormaPagamento('V') > 0 then
              begin

              VALE := cTotalForma;

              dm1.Sds_valeTroco.close;
              dm1.Sds_valeTroco.Open;
              dm1.Sds_valeTroco.Filtered := false;
              dm1.Sds_valeTroco.Filter:='SALDO_ATUAL > 0';
              dm1.Sds_valeTroco.Filtered := True;

              FormConsValeTroco:=TFormConsValeTroco.Create(self);
              FormConsValeTroco.ShowModal;
              Edit3.TEXT := dm1.Sds_valeTrocoCODIGO.Text;


              total_venda := 0;
              total_venda := ExatoCurrency(vale,2);
              Total1 := ExatoCurrency(DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat,2);

              IF total_venda > TOTAL1 THEN
              begin
              MSGI.Text:= 'Saldo do Vale insuficiente para cobrir o valor da  venda!';
              MSGI.ShowModal;
             //DBComboPgto.SetFocus;
              exit;
              abort;
              DBGridFormas.SetFocus;
              end ;

              end;

              if TotalizaFormaPagamento('R') > 0 then
              begin
              formVendas.Sds_pedidos.Edit;
              formVendas.Sds_pedidosTP.Text :='F';
              formVendas.Sds_pedidos.Post;
              REQUISICAO := cTotalForma;
              end;

              if TotalizaFormaPagamento('H') > 0 then
              begin
              formVendas.Sds_pedidos.Edit;
              formVendas.Sds_pedidosTP.Text :='H';
              formVendas.Sds_pedidos.Post;

              cheque := cTotalForma;
              If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
               BEGIN
               DMC.SQLD_LIMITE.Active := False;
               DMC.CDS_LIMITE.Active := False;
               DMC.SQLD_LIMITE.Params[0].AsString := formVendas.DBComboCliente.Text;;
               DMC.SQLD_LIMITE.Active := True;
               DMC.CDS_LIMITE.Active := True;
               Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - cheque);
               Credito := 0;
               Credito := (DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat + DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat );
               IF Limite < 0 THEN
               begin
               if DM.SDS_ClientesTESTA_LIMITE.Text = 'S' THEN
               begin
               formliberaVenda :=nil;
               FormLiberaVenda:=TFormLiberaVenda.Create(self);
                FormLiberaVenda.tag := 0;
               FormLiberaVenda.ShowModal;
                if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);

                exit;
                Abort;
                 end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;

               end;
               end else
               IF Credito > 0 THEN
               begin
               if DM.SDS_ClientesTESTA_CREDITO.Text = 'S' then
               begin
               formliberaVenda :=nil;
               FormLiberaVenda:=TFormLiberaVenda.Create(self);
               FormLiberaVenda.tag := 0;
               FormLiberaVenda.ShowModal;
                if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                exit;
                Abort;
                 end else
                begin
                 DMC.sds_libera.Filtered := False;
                 DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
                 DMC.sds_libera.Filtered := TRUE;
                 DMC.sds_libera.Delete;
                 DMC.sds_libera.ApplyUpdates(0);
                end;
               
               end;
               end;
               end;
               end;

              if TotalizaFormaPagamento('F') > 0 then
              begin
              cartao:=0;
              CARTAO := ExatoCurrency(cTotalForma,2);
              formVendas.Sds_pedidos.Edit;
              formVendas.Sds_pedidosTP.Text :='F';
              formVendas.Sds_pedidos.Post;


             sValor := FloatToStr(CARTAO);//  FormatFloat(CurrencyEdit2.Text,0.00);

             {verifica se o total dos Cartões é maior que o total da venda }
          {   if TotalizaFormaPagamento('F') < CARTAO then
             begin
             showmessage('Verifique o total dos cartões');
             CDSFormas.First;
             DBGridFormas.SetFocus;
             exit;
             abort;
             end; }
             end;
             
             Total1:= ExatoCurrency(CurrencyEdit2.Value,2);
             //prazo

             if prazo > total1 then
             begin
             showmessage('Verifique o total do Crediario');
             formVendas.CDSFormas.First;
             DBGridFormas.SetFocus;
             exit;
             abort;
             end;


              suiButton2.Enabled := False;
              dtAux := (StrToDate (FormVendas.Dt_venda.Text));
              pedido := FormVendas.N_venda.Text;

              formVendas.Sds_Pedidos.Edit;

              // EdtSubTotal.value = DBGridFormas.Columns.Items[1].TotalFooter.Value

              if FormVendas.E_desconto.Text ='' then
              begin
              formVendas.Sds_PedidosVALOR_DESCONTO.Text := '0,00';
              end else
              formVendas.Sds_PedidosVALOR_DESCONTO.TEXT       := FormVendas.E_DESCONTO.Text;
              begin
              formVendas.Sds_PedidosVALOR_ITENS.AsFloat       := EdtSubTotal.value;
              formVendas.Sds_PedidosVALOR_TOTAL.AsFloat       := EdtTotalGeral.value;
              formVendas.Sds_PedidosCod_EMPRESA.asfloat       := DM.SDS_EmpresaCODIGO.AsInteger;
              formVendas.Sds_PedidosSITUACAO.Text             := 'N';
              formVendas.Sds_PedidosVALOR_AVISTA.AsFloat      := AVISTA;
              formVendas.Sds_PedidosVALOR_PRAZO.AsFloat       :=  CurrencyEdit2.value;
              formVendas.Sds_pedidosVALOR_PAGO.ASFLOAT        := AVISTA;
              formVendas.Sds_pedidosVALOR_TROCO.AsFloat       := EdtTroco.Value;
              formVendas.Sds_PedidosSERIE_NOTA.Text           := '001';
              formVendas.Sds_PedidosHORA.text                 := TimeToStr(Time);
              end;
       
              IF DM.SDS_CONFIGURACOESREGISTRADORA.Text ='S' THEN
              BEGIN
              formVendas.Sds_PedidosSTATUS.Text            := 'C';
              end else
              begin
              formVendas.Sds_PedidosSTATUS.Text            := 'A';
              end;

          formVendas.Sds_Pedidos.Edit;
          formVendas.Sds_PedidosTP.Value := CDS_PAGTOTIPO_PAGAMENTO.AsString;
          formVendas.Sds_PedidosValor_total.asCurrency  := EdtTotalGeral.Value;;
          formVendas.Sds_PedidosVALOR_DESCONTO.Asfloat := EdtValorDesconto.Value;
          formVendas.Sds_PedidosENC_FINANCEIRO.AsFloat := EDTJUROS.Value;
          formVendas.Sds_PedidosPAGAMENTO.AsString := '';//Desc_cond_pagto.Text;
          formVendas.Sds_PedidosCOD_PAGTO.AsInteger := 1; //DBComboPgto.Text;
          formVendas.Sds_Pedidos.post;
          //formVendas.Sds_Pedidos.ApplyUpdates(0);


          // DESCONTOS
          IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
          BEGIN
          formVendas.Sds_Pedidos_itens.First;
          Contador := 0;
          Contador:=formVendas.Sds_Pedidos_itens.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          formVendas.Sds_Pedidos_itens.Edit;
        //  TOTAL1:= (EdtValorDesconto.Value / Contador);
          desconto := formVendas.sds_pedidos_itenspreco_total.Value * EdtPercentualDesconto.Value / 100;
          formVendas.sds_pedidos_itensDESCONTO.value := ExatoCurrency(desconto,2);
          formVendas.Sds_Pedidos_itens.post;
          formVendas.Sds_Pedidos_itens.Next;
          end;

          // ACHA RESTO DA DIVISÃO
          formVendas.Sds_Pedidos_itens.First;
          Total1 := 0;
          X:= 0;
          X:= X + ExatoCurrency(formVendas.sds_pedidos_itensDESCONTO.AsCurrency,2);
          formVendas.Sds_Pedidos_itens.Next;
          TOTAL1 := ExatoCurrency(X,2);
          While not formVendas.Sds_Pedidos_itens.Eof do
          begin
          X:= X + ExatoCurrency(formVendas.sds_pedidos_itensDESCONTO.AsCurrency,2);
          formVendas.Sds_Pedidos_itens.Next;
          Total1:= ExatoCurrency(X,2);
          end;

          valor_desc := FloatToStr(formVendas.sds_pedidos_itensDESCONTO.MaxValue);
          formVendas.sds_pedidos_itens.Locate('DESCONTO',valor_desc,[loPartialKey, loCaseInsensitive]);

         // total_venda := (Total1 - EdtValorDesconto.Value);
          total_venda := ExatoCurrency((EdtValorDesconto.Value - Total1),2);
         // CurrencyEdit9.Value := total_venda;
          formVendas.sds_pedidos_itens.Edit;
          
          IF TOTAL1 > EdtValorDesconto.Value then
          begin
           formVendas.sds_pedidos_itens.Edit;
           formVendas.sds_pedidos_itensDESCONTO.Value := Abs(formVendas.sds_pedidos_itensDESCONTO.Value - total_venda);
           formVendas.sds_pedidos_itens.Post;
          end ELSE

          IF TOTAL1 < EdtValorDesconto.Value then
          begin
           formVendas.sds_pedidos_itens.Edit;
           formVendas.sds_pedidos_itensDESCONTO.Value := Abs(formVendas.sds_pedidos_itensDESCONTO.VALUE + total_venda);
           formVendas.sds_pedidos_itens.Post;
          end;
          end;

   if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
   // try
     with formVendas.SPC_VENDA do
        begin
           close;
           sql.Clear;
           //if bGrava then
             //begin
                 sql.Add('INSERT INTO PEDIDOS (CODIGO, VALOR_ITENS, ENC_FINANCEIRO, VALOR_DESCONTO, VALOR_TOTAL,'+
                         'VALOR_COMISSAO, USUARIO, DATA_PEDIDO, DATA_ENTREGA, CODIGO_CLIENTE,  NOME_CLIENTE,  PAGAMENTO,'+
                         'STATUS, SITUACAO, USUARIO_ENTREGA, TP, OBSERVACOES, COD_VENDEDOR, COD_PAGTO, N_CUPOM, N_ECF,'+
                         'COD_EMPRESA, HORA, VALOR_ACRESCIMOS, COD_ORCAMENTO, COD_PEDIDO, COD_OS, NUM_NOTA, SERIE_NOTA,'+
                         'ENDERECO, CPF_CNPJ, RG_IE, FONE, CIDADE, BAIRRO, N_PARTIDA, PROPRIEDADE, QUANT_VENDIDA, SALDO_VENDIDO,'+
                         'MED_VETERINARIO, DATA_VACINA, VALOR_AVISTA, VALOR_PRAZO, UF, COD_IBGE, CEP, NUMERO, TIPO,'+
                         'VALOR_PAGO, VALOR_TROCO, ENTREGADOR, TIPO_PEDIDO, FECHADO, MESA, REFERENCIA, CELULAR,'+
                         'PROD_RURAL, IE_PRODUTOR, VLR_PIS, VLR_COFINS, KM, CHAVE_FP, CHAVE_FP_CANCEL, CUPON_CANCELADO, CRZ, ANO, MODELO_NF, CFOP_NF)'+
                         'VALUES (:CODIGO, :VALOR_ITENS, :ENC_FINANCEIRO, :VALOR_DESCONTO, :VALOR_TOTAL, :VALOR_COMISSAO,'+
                         ':USUARIO, :DATA_PEDIDO, :DATA_ENTREGA, :CODIGO_CLIENTE, :NOME_CLIENTE, :PAGAMENTO, :STATUS, :SITUACAO,'+
                         ':USUARIO_ENTREGA, :TP, :OBSERVACOES, :COD_VENDEDOR, :COD_PAGTO, :N_CUPOM, :N_ECF, :COD_EMPRESA, :HORA,'+
                         ':VALOR_ACRESCIMOS, :COD_ORCAMENTO, :COD_PEDIDO, :COD_OS, :NUM_NOTA,:SERIE_NOTA, :ENDERECO, :CPF_CNPJ,'+
                         ':RG_IE, :FONE, :CIDADE, :BAIRRO, :N_PARTIDA, :PROPRIEDADE, :QUANT_VENDIDA, :SALDO_VENDIDO,'+
                         ':MED_VETERINARIO, :DATA_VACINA, :VALOR_AVISTA, :VALOR_PRAZO, :UF, :COD_IBGE, :CEP, :NUMERO,'+
                         ':TIPO, :VALOR_PAGO, :VALOR_TROCO, :ENTREGADOR, :TIPO_PEDIDO, :FECHADO, :MESA, :REFERENCIA, :CELULAR,'+
                         ':PROD_RURAL,  :IE_PRODUTOR, :VLR_PIS, :VLR_COFINS, :KM, :CHAVE_FP, :CHAVE_FP_CANCEL,:CUPON_CANCELADO, :CRZ, :ANO, :MODELO_NF, :CFOP_NF)');

           Parambyname('CODIGO').AsInteger        := formVendas.Sds_pedidosCODIGO.AsInteger;
           Parambyname('VALOR_ITENS').AsFloat     := StrToFloatDef(formVendas.Sds_pedidosVALOR_ITENS.Text,0.00);//// formVendas.Total;
           Parambyname('ENC_FINANCEIRO').AsFloat  := StrToFloatDef(formVendas.Sds_pedidosENC_FINANCEIRO.Text,0.00);//// formVendas.Total;
           Parambyname('VALOR_DESCONTO').AsFloat  := StrToFloatDef(formVendas.Sds_pedidosVALOR_DESCONTO.Text,0.00);//(formVendas.Total - formVendas.ValCompra);
           Parambyname('VALOR_TOTAL').AsFloat     := StrToFloatDef(formVendas.Sds_pedidosVALOR_TOTAL.Text,0.00);// formVendas.ValCompra;
           Parambyname('VALOR_COMISSAO').AsFloat  := StrToFloatDef(formVendas.Sds_pedidosVALOR_COMISSAO.Text,0.00); //Comissao;
           Parambyname('USUARIO').Asstring        := formVendas.Sds_pedidosUSUARIO.asstring;
           Parambyname('DATA_PEDIDO').AsDate      := formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
           Parambyname('DATA_ENTREGA').AsDate     := Date; //formVendas.Sds_pedidosDATA_ENTREGA.AsDateTime;
           Parambyname('CODIGO_CLIENTE').asinteger:= formVendas.Sds_pedidosCODIGO_CLIENTE.asinteger;
           Parambyname('NOME_CLIENTE').aSSTRING   := formVendas.Sds_pedidosNOME_CLIENTE.ASSTRING;
           Parambyname('PAGAMENTO').AsString      := formVendas.Sds_pedidosPAGAMENTO.AsString;
           Parambyname('STATUS').AsString         := formVendas.Sds_pedidosSTATUS.AsString;
           Parambyname('SITUACAO').AsString       := formVendas.Sds_pedidosSITUACAO.ASSTRING;
           Parambyname('USUARIO_ENTREGA').Value   := null;
           Parambyname('TP').AsString             := formVendas.Sds_pedidosTP.AsString;
           Parambyname('OBSERVACOES').AsString    := formVendas.Sds_pedidosOBSERVACOES.AsString;
           Parambyname('COD_VENDEDOR').AsInteger  := formVendas.Sds_pedidosCOD_VENDEDOR.AsInteger;
           Parambyname('COD_PAGTO').Value         := null;
           Parambyname('N_CUPOM').value           := null;
           Parambyname('N_ECF').Value             := null;
           Parambyname('COD_EMPRESA').AsInteger   := DM.SDS_EmpresaCODIGO.AsInteger;
           Parambyname('HORA').AsString           := TimeToStr(Time);
           Parambyname('VALOR_ACRESCIMOS ').AsFloat  := StrToFloatDef(formVendas.Sds_pedidosVALOR_ACRESCIMOS.Text,0.00);

           if trim(formVendas.Sds_pedidosCOD_ORCAMENTO.Text) = '' then
           Parambyname('COD_ORCAMENTO').Value       := Null
           else
           Parambyname('COD_ORCAMENTO').AsInteger       := formVendas.Sds_pedidosCOD_ORCAMENTO.AsInteger;

           Parambyname('COD_PEDIDO').Value       := Null;

           if trim(formVendas.Sds_pedidosCOD_OS.Text) = '' then
           Parambyname('COD_OS').Value       := Null
           else
           Parambyname('COD_OS').AsInteger       :=  formVendas.Sds_pedidosCOD_OS.AsInteger;

           Parambyname('NUM_NOTA').value           := null;
           Parambyname('SERIE_NOTA').Value         := null;

           Parambyname('ENDERECO').AsString        := formVendas.Sds_pedidosENDERECO.Text;
           Parambyname('CPF_CNPJ').AsString        := formVendas.Sds_pedidosCPF_CNPJ.Text;
           Parambyname('RG_IE').AsString           := formVendas.Sds_pedidosRG_IE.Text;
           Parambyname('FONE').AsString            := formVendas.Sds_pedidosFONE.Text;
           Parambyname('CIDADE').AsString          := formVendas.Sds_pedidosCIDADE.text;
           Parambyname('BAIRRO').AsString          := formVendas.Sds_pedidosBAIRRO.Text;
           Parambyname('N_PARTIDA').ASSTRING       := formVendas.Sds_pedidosN_PARTIDA.text;
           Parambyname('PROPRIEDADE').AsString     := formVendas.Sds_pedidosPROPRIEDADE.text;
           Parambyname('QUANT_VENDIDA').AsFloat    := StrToFloatDef(formVendas.Sds_pedidosQUANT_VENDIDA.Text,0.00);
           Parambyname('SALDO_VENDIDO').AsFloat    := StrToFloatDef(formVendas.Sds_pedidosSALDO_VENDIDO.Text,0.00);
           Parambyname('MED_VETERINARIO').AsString := formVendas.Sds_pedidosMED_VETERINARIO.text;
           Parambyname('DATA_VACINA').AsDate       := formVendas.Sds_pedidosDATA_VACINA.AsDateTime;
           Parambyname('VALOR_AVISTA').AsFloat     := StrToFloatDef(formVendas.Sds_pedidosVALOR_AVISTA.text,0.00);
           Parambyname('VALOR_PRAZO').AsFloat      := StrToFloatDef(formVendas.Sds_pedidosVALOR_PRAZO.text,0.00);
           Parambyname('UF').AsString              := formVendas.Sds_pedidosUF.text;
           Parambyname('COD_IBGE').AsString        := formVendas.Sds_pedidosCOD_IBGE.text;
           Parambyname('CEP').AsString             := formVendas.Sds_pedidosCEP.text;
           Parambyname('NUMERO').AsString          := formVendas.Sds_pedidosnumero.text;
           Parambyname('TIPO').AsString            := formVendas.Sds_pedidosTIPO.text;
           Parambyname('VALOR_PAGO').AsFloat       := StrToFloatDef(formVendas.Sds_pedidosVALOR_PAGO.text,0.00);
           Parambyname('VALOR_TROCO').ASFLOAT      := StrToFloatDef(formVendas.Sds_pedidosVALOR_TROCO.text,0.00);
           Parambyname('ENTREGADOR').AsString      := formVendas.Sds_pedidosENTREGADOR.text;
           Parambyname('TIPO_PEDIDO').AsString     := formVendas.Sds_pedidosTIPO_PEDIDO.text;
           Parambyname('FECHADO').AsString         := formVendas.Sds_pedidosFECHADO.text;
           Parambyname('MESA').AsString            := formVendas.Sds_pedidosMESA.text;
           Parambyname('REFERENCIA').AsString      := formVendas.Sds_pedidosREFERENCIA.text;
           Parambyname('CELULAR').asstring         := formVendas.Sds_pedidosCELULAR.text;
           Parambyname('PROD_RURAL').AsString      := formVendas.Sds_pedidosPROD_RURAL.text;
           Parambyname('IE_PRODUTOR').AsString     := formVendas.Sds_pedidosIE_PRODUTOR.text;
           Parambyname('VLR_PIS').AsFloat        := StrToFloatDef(formVendas.Sds_pedidosVLR_PIS.text,0.00);
           Parambyname('VLR_COFINS').ASFLOAT     := StrToFloatDef(formVendas.Sds_pedidosVLR_COFINS.text,0.00);
           Parambyname('KM').ASSTRING              := formVendas.Sds_pedidoskm.Text;
           Parambyname('CHAVE_FP').AsString        := formVendas.Sds_pedidosCHAVE_FP.Text;
           Parambyname('CHAVE_FP_CANCEL').Value    := formVendas.Sds_pedidosCHAVE_FP_CANCEL.Text;
           Parambyname('CUPON_CANCELADO').value    := null;
           Parambyname('CRZ').Value                := null;
           Parambyname('ANO').ASSTRING             := FormatDateTime('yyyy',dtAux);
           Parambyname('MODELO_NF').ASSTRING       := formVendas.Sds_pedidosMODELO_NF.TEXT;
           Parambyname('CFOP_NF').ASSTRING         :=formVendas.Sds_pedidosCFOP.TEXT;

          ExecQuery;
        end;
        DM.IBTransaction.Commit;
  {  except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar a Venda');
    end;   }
  finally
    formVendas.SPC_VENDA.Close;
  end;
  
          formprincipal.log(codigo_usuario,'VENDA',formVendas.N_venda.Text,'INCLUIU','INCLUSAO DA VENDA Nº '+formVendas.N_venda.Text+' Cliente: '+ formVendas.DBComboCliente.text+' - '+formvendas.Desc_cliente.text);


          formVendas.Sds_Pedidos_itens.First;

          formVendas.Sds_Pedidos_itens.Filtered := False;
          formVendas.Sds_Pedidos_itens.Filter := 'CODIGO_BICO >= 0';
          formVendas.Sds_Pedidos_itens.Filtered := True;

        formVendas.Sds_Pedidos_itens.First;
        Contador := formvendas.Sds_Pedidos_itens.RecordCount;
        For E:=1 to Contador do
        begin
              if formVendas.IBTRAce.Active then
              formVendas.IBTRAce.Commit;
              formVendas.IBTRAce.StartTransaction;
              with formVendas.QBuscaItens1 do
              begin
                 close;
                 Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
                 Parambyname('COD_VEN').AsInteger:= strtoint(formvendas.Sds_PedidosCODIGO.Text);
                 open;
                 Last;
                 estoque := formVendas.QBuscaItens1ESTOQUE.AsFloat;
              formVendas.IBTRAce.CommitRetaining;
              end;
         formVendas.Sds_Pedidos_itens.Next;

        END;
        

  Contador:=formVendas.Sds_Pedidos_itens.RecordCount;
  For I:=1 to Contador do
  begin
  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
     if formVendas.sds_pedidos_itensCODIGO_BICO.Text > '' then
     begin
     with dm.IBSQL do
        begin
           close;
           sql.Clear;
           SQL.Add('INSERT INTO MOVIMENTACAO_COMBUSTIVEL (CODIGO, COD_NOTA_ENT, TAN_NUM_FIS, BOM_NUM_FIS,'+
                   ' BIC_NUM_LOG, ENC_ABT, ENC_FCT, COD_CLIENTE, COD_VENDEDOR, DATA, CODPRODUTO, UNITARIO,'+
                   'UNIDADE, QTDE, TOTAL, ICMS_ALIQUOTA, ICMS_BASE, ICMS_VALOR, CREDITO_ICMS, IPI_ALIQUOTA,'+
                   'IPI_BASE, IPI_VALOR, PIS_ALIQUOTA, PIS_BASE, PIS_VALOR, COFINS_ALIQUOTA, COFINS_BASE,  '+
                   'COFINS_VALOR, CFOP, NUMERO_VDA, DESCONTO, ACRESCIMO, MOVIMENTO, BASE_CALCULO, SITUACAO,'+
                   'CUPOM_NUMERO, MODELO, ITEM, CST, MOVIMENTO_ESTOQUE, COD_USUARIO,  LANCADO)  VALUES (   '+
                   ':CODIGO, :COD_NOTA_ENT, :TAN_NUM_FIS, :BOM_NUM_FIS, :BIC_NUM_LOG, :ENC_ABT,  :ENC_FCT, '+
                   ':COD_CLIENTE, :COD_VENDEDOR, :DATA, :CODPRODUTO, :UNITARIO, :UNIDADE, :QTDE, :TOTAL,   '+
                   ':ICMS_ALIQUOTA, :ICMS_BASE, :ICMS_VALOR, :CREDITO_ICMS, :IPI_ALIQUOTA, :IPI_BASE,:IPI_VALOR,'+
                   ':PIS_ALIQUOTA, :PIS_BASE, :PIS_VALOR,:COFINS_ALIQUOTA, :COFINS_BASE,:COFINS_VALOR,     '+
                   ':CFOP, :NUMERO_VDA, :DESCONTO, :ACRESCIMO, :MOVIMENTO, :BASE_CALCULO, :SITUACAO, :CUPOM_NUMERO,'+
                   ':MODELO, :ITEM, :CST, :MOVIMENTO_ESTOQUE, :COD_USUARIO, :LANCADO)');

                  { dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTACAO_COMBUSTIVEL');
                   DM.ProxCod.Open; }

                   parambyname('CODIGO').AsInteger             := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;
                   parambyname('COD_NOTA_ENT').value           := null;
                   parambyname('TAN_NUM_FIS').AsString         := tanque;
                   parambyname('BOM_NUM_FIS').AsString         := bomba;
                   parambyname('BIC_NUM_LOG').AsString         := bico;
                   parambyname('ENC_ABT').AsFloat              := estoque + FormPrincipal.cds_abastecidasENC_LITROS.AsFloat;
                   parambyname('ENC_FCT').AsFloat              := estoque;
                   parambyname('COD_CLIENTE').AsInteger        := formVendas.Sds_pedidosCODIGO_CLIENTE.AsInteger;
                   parambyname('COD_VENDEDOR').AsInteger       := formVendas.sds_pedidos_itensVENDEDOR.AsInteger;
                   parambyname('DATA').AsDate                  := formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                   parambyname('CODPRODUTO').AsInteger         := formVendas.sds_pedidos_itensCODIGO_PROD.AsInteger;
                   parambyname('UNITARIO').AsFloat             := formVendas.sds_pedidos_itensPRECO_UNITARIO.AsFloat;
                   parambyname('UNIDADE').AsString             := formVendas.sds_pedidos_itensUNIDADE.AsString;
                   parambyname('QTDE').AsFloat                 := formVendas.sds_pedidos_itensQUANTIDADE.AsFloat;
                   parambyname('TOTAL').AsFloat                := formVendas.sds_pedidos_itenspreco_total.AsFloat;
                   parambyname('ICMS_ALIQUOTA').AsFloat        := formVendas.sds_pedidos_itensPERC_ICM.AsFloat;
                   parambyname('ICMS_BASE').AsFloat            := formVendas.sds_pedidos_itensBASE_ICMS.AsFloat;
                   parambyname('ICMS_VALOR').AsFloat           := formVendas.sds_pedidos_itensVL_ICM.AsFloat;
                   parambyname('CREDITO_ICMS').AsFloat         := 0;
                   parambyname('IPI_ALIQUOTA').AsFloat         := formVendas.sds_pedidos_itensPERC_IPI.AsFloat;
                   parambyname('IPI_BASE').AsFloat             := formVendas.sds_pedidos_itensBASE_IPI.AsFloat;
                   parambyname('IPI_VALOR').AsFloat            := formVendas.sds_pedidos_itensBASE_IPI.AsFloat;
                   parambyname('PIS_ALIQUOTA').AsFloat         := formVendas.sds_pedidos_itensPERC_PIS.AsFloat;
                   parambyname('PIS_BASE').AsFloat             := formVendas.sds_pedidos_itensBASE_PIS.AsFloat;
                   parambyname('PIS_VALOR').AsFloat            := formVendas.sds_pedidos_itensVL_PIS.AsFloat;
                   parambyname('COFINS_ALIQUOTA').AsFloat      := formVendas.sds_pedidos_itensPERC_COFINS.AsFloat;
                   parambyname('COFINS_BASE').AsFloat          := formVendas.sds_pedidos_itensBASE_COFINS.AsFloat;
                   parambyname('COFINS_VALOR').AsFloat         := formVendas.sds_pedidos_itensVL_COFINS.AsFloat;
                   parambyname('CFOP').AsString                := formVendas.QBuscaItens1CFOP_EST_VENDA.AsString;
                   parambyname('NUMERO_VDA').AsString          := formVendas.N_venda.Text;
                   parambyname('DESCONTO').AsFloat             := formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                   parambyname('ACRESCIMO').AsFloat            := formVendas.sds_pedidos_itensENC_FINANCEIRO.AsFloat;
                   parambyname('MOVIMENTO').AsInteger          := 2;
                   parambyname('BASE_CALCULO').AsFloat         := formVendas.sds_pedidos_itenspreco_total.AsFloat;
                   parambyname('SITUACAO').AsInteger           := 1;
                   parambyname('CUPOM_NUMERO').AsString        := dmc.CDS_PedidosN_CUPOM.Text;
                   parambyname('MODELO').AsString              := dmc.CDS_PedidosN_ECF.Text;
                   parambyname('ITEM').AsString                := formVendas.sds_pedidos_itensITEN.AsString;
                   parambyname('CST').AsString                 := formVendas.QBuscaItens1CST_VENDA.AsString;
                   parambyname('MOVIMENTO_ESTOQUE').AsFloat    := formVendas.sds_pedidos_itensQUANTIDADE.AsFloat;
                   parambyname('COD_USUARIO').AsString         := formVendas.Sds_pedidosCOD_VENDEDOR.AsString;
                   parambyname('LANCADO').AsInteger           := 1;
                   ExecQuery;
           formVendas.Sds_Pedidos_itens.Next;
        end;
      end;
        DM.IBTransaction.Commit;
    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o movimento de Combustíveis');
    end;
  finally
   dm.IBSQL.Close;
  end;

 end;

          TP :='C';
          if formVendas.cDSFormas.Locate('TIPO',TP,[]) = True then;
          begin
              //CDSFormas.Edit;
          total := formVendas.CDSFormasVALOR.AsFloat + Encargos;
              //CDSFormas.Next;
              //CDSFormas.Prior;
          end;


      {gravar formas de pagto na tabela pedidos formas}
      formVendas.sds_pagto.Close;
      formVendas.sds_pagto.open;
      with formVendas.CDSFormas do
      begin
         first;
         while not eof do
            begin
                 if formVendas.CDSFormasVALOR.AsCurrency > 0 then
                 begin
                   formVendas.sds_pagto.Insert;
                   formVendas.sds_pagtoCOD_VENDA.AsInteger  := StrToInt(formVendas.N_venda.Text);
                   formVendas.sds_pagtoCOD_FORMA.AsInteger  := StrToInt(formVendas.CDSFormasCODIGO.Text);
                   formVendas.sds_pagtoDESC_FORMA.Text      := formVendas.CDSFormasDESCRICAO.Text;
                   formVendas.sds_pagtoTIPO.Text            := formVendas.CDSFormasTIPO.Text;
                   if formVendas.CDSFormasTIPO.Text = 'C' then
                   begin
                   formVendas.sds_pagtoVALOR.AsFloat        := formVendas.CDSFormasVALOR.AsFloat + Encargos;
                   end else
                   if formVendas.CDSFormasTIPO.Text = 'A' then
                   begin
                   formVendas.sds_pagtoVALOR.AsFloat        := formVendas.CDSFormasVALOR.AsFloat - EdtTroco.Value;
                   end else
                   if formVendas.CDSFormasTIPO.Text = 'H' then
                   begin
                   formVendas.sds_pagtoVALOR.AsFloat        := formVendas.CDSFormasVALOR.AsFloat + Encargos - EdtTroco.Value;
                   end else
                   if formVendas.CDSFormasTIPO.Text = 'F' then
                   begin
                   formVendas.sds_pagtoVALOR.AsFloat        := formVendas.CDSFormasVALOR.AsFloat + Encargos;
                   end else
                   if formVendas.CDSFormasTIPO.Text = 'V' then
                   begin
                   formVendas.sds_pagtoVALOR.AsFloat        := formVendas.CDSFormasVALOR.AsFloat;
                   end;

                   formVendas.sds_pagto.Post;
                   formVendas.sds_pagto.ApplyUpdates(0);
                 end;
                 next;
            end;
       end;


  
  //LOG ESTOQUE
   if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
   try
     contador:=0;
     e:=0;
     formVendas.Sds_Pedidos_itens.First;
     Contador:=formVendas.Sds_Pedidos_itens.RecordCount;
     For E:=1 to Contador do
      begin
        { dm.ProxCod.Close;
         dm.ProxCod.SQL.Clear;
         dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
         DM.ProxCod.Open;}


              // BUSCA ESTOQUE
       if dm.IBTransaction.Active then
         dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;

        try
          with dm.Consulta do
             begin
                close;
                sql.Clear;
                sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                Parambyname('CODPRO').AsInteger:= formVendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
                ExecQuery;
                estoque:= fieldbyname('ESTOQUE').AsCurrency;
             end;
          dm.IBTransaction.Commit;
        except
          dm.IBTransaction.StartTransaction;
          showmessage('Erro ao buscar o custo do produto');
        end;

      with DM.logEst do
         begin
            close;
            parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
            parambyname('ID_AJUSTE').AsInteger      := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;;
            Parambyname('ID_PRODUTO').AsInteger     := formVendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
            Parambyname('ID_LOTE').Value            := null;
            Parambyname('ID_PRODUTO_SERIE').Value   := null;
            Parambyname('DATA').AsDateTime          := date;
            Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
            parambyname('ID_MOVIMENTO').AsInteger   :=  strtoint(formVendas.N_venda.Text);
            Parambyname('FRACAO').Asfloat           := formVendas.Sds_Pedidos_itensFRACAO.AsINTEGER;
            Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
            Parambyname('QUANTIDADE').Asfloat       :=  formVendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
            Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE - formVendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
            Parambyname('SITUACAO_ESTOQUE').ASINTEGER := 2; // VENDA
            Parambyname('OPERACAO').TEXT              := '-';
            Parambyname('ACAO_BD').TEXT               := 'I';
            Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
            parambyname('COD_VENDA').AsInteger      :=  strtoint(formVendas.N_venda.Text);
            parambyname('COD_COMPRA').VALUE         :=  null;
            Parambyname('HISTORICO').TEXT           := copy('Venda No. '+formvendas.N_venda.Text+' - '+formvendas.Desc_cliente.Text,1,60);
            Parambyname('HORA').AsString           := TimeToStr(Time);
            ExecSQL;
          end;
          DM.IBTransaction.Commit;

          formVendas.Sds_Pedidos_itens.next;
      end;
       except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                  'Verifique que já foi lançado');
    end;
  finally
   dm.logEst.Close;
   end;


  formVendas.Sds_Pedidos_itens.Filtered := False;
  

  formVendas.Sds_Pedidos_itens.First;
  Contador:=formVendas.Sds_Pedidos_itens.RecordCount;
  For I:=1 to Contador do
  begin
  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
//  try
 //   try
     with formVendas.Spc_itensV do
        begin
           close;
           sql.Clear;
           sql.Add('INSERT INTO PEDIDOS_ITENS (CODIGO, CODIGO_ID, ITEN, CODIGO_PROD, CODIGO_PRODUTO, DESCRICAO_PRODUTO,'+
                    'PRECO_UNITARIO, DESCONTO, QUANTIDADE, PRECO_TOTAL, COMISSAO, DEV, QNT_DEV, VAL_DEV, ENC_FINANCEIRO,'+
                    'UNIDADE, SIT_TRIBUTARIA, VENDEDOR, FRACAO, COD_NCM, PROD_SERV, PERC_ISS, BASE_ISS, VL_ISS, PERC_ICM,'+
                    'BASE_ICMS, VL_ICM, PERC_IPI, BASE_IPI, VL_IPI, PERC_COFINS, BASE_COFINS, VL_COFINS, PERC_ICMS_SUBST,'+
                    'BASE_ICMS_SUBST, VL_ICMS_SUBST, PERC_PIS, BASE_PIS, VL_PIS, IMPRIME, COD_EMPRESA, ID_BICO, ID_BOMBA, ID_TANQUE, BICO)'+
                    'VALUES (:CODIGO, :CODIGO_ID, :ITEN, :CODIGO_PROD, :CODIGO_PRODUTO,:DESCRICAO_PRODUTO, :PRECO_UNITARIO,'+
                    ':DESCONTO, :QUANTIDADE, :PRECO_TOTAL, :COMISSAO, :DEV, :QNT_DEV, :VAL_DEV,:ENC_FINANCEIRO, :UNIDADE,'+
                    ':SIT_TRIBUTARIA, :VENDEDOR, :FRACAO, :COD_NCM, :PROD_SERV, :PERC_ISS, :BASE_ISS, :VL_ISS, :PERC_ICM,'+
                    ':BASE_ICMS, :VL_ICM, :PERC_IPI, :BASE_IPI, :VL_IPI, :PERC_COFINS, :BASE_COFINS, :VL_COFINS, :PERC_ICMS_SUBST,'+
                    ':BASE_ICMS_SUBST, :VL_ICMS_SUBST, :PERC_PIS, :BASE_PIS, :VL_PIS, :IMPRIME, :COD_EMPRESA, :ID_BICO, :ID_BOMBA, :ID_TANQUE, :BICO)');

               {   dm.ProxCod.Close;
                  dm.ProxCod.SQL.Clear;
                  dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM PEDIDOS_ITENS');
                  DM.ProxCod.Open;   }

              parambyname('CODIGO').AsInteger             := 1; // DM.ProxCodN_CODIGO.ASINTEGER + 1;
              Parambyname('CODIGO_ID').AsInteger          := StrToInt(formVendas.N_venda.Text);
              Parambyname('ITEN').AsInteger               := formVendas.Sds_Pedidos_itensIten.AsInteger;
              Parambyname('CODIGO_PROD').AsInteger        := formVendas.Sds_Pedidos_itensCodigo_prod.AsInteger;
              Parambyname('CODIGO_PRODUTO').AsString      := formVendas.Sds_Pedidos_itensCodigo_Produto.AsString;
              Parambyname('DESCRICAO_PRODUTO').AsString   := formVendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.AsString;
              Parambyname('PRECO_UNITARIO').AsCurrency      := formVendas.Sds_Pedidos_itensPreco_unitario.AsFloat;
              Parambyname('DESCONTO').AsCurrency          := formVendas.Sds_Pedidos_itensDesconto.AsFloat;
              Parambyname('QUANTIDADE').AsFloat           := formVendas.Sds_Pedidos_itensQuantidade.AsFloat;
              Parambyname('PRECO_TOTAL').AsCurrency       := StrToCurrDef(formVendas.Sds_Pedidos_itensPreco_total.text,0.00);
              Parambyname('COMISSAO').AsCurrency          := StrToCurrDef(formVendas.Sds_Pedidos_itensComissao.text,0.00);
              Parambyname('DEV').Value                    := null;
              Parambyname('QNT_DEV').Value                := NULL;
              Parambyname('VAL_DEV').Value                := null;
              Parambyname('ENC_FINANCEIRO').AsCurrency        := StrToCurrDef(formVendas.Sds_Pedidos_itensENC_FINANCEIRO.text,0.00);
              Parambyname('UNIDADE').AsString             := formVendas.Sds_Pedidos_itensunidade.AsString;
              Parambyname('SIT_TRIBUTARIA').AsString      := formVendas.Sds_Pedidos_itensSit_tributaria.AsString;
              Parambyname('VENDEDOR').AsInteger           := formVendas.Sds_Pedidos_itensVENDEDOR.AsInteger;
              Parambyname('FRACAO').AsInteger             := formVendas.Sds_Pedidos_itensfracao.AsInteger;
              Parambyname('COD_NCM').AsString             := formVendas.Sds_Pedidos_itenscod_ncm.text;
              Parambyname('PROD_SERV').AsString           := formVendas.Sds_Pedidos_itensPROD_SERV.text;
              Parambyname('PERC_ISS').AsCurrency            := StrToCurrDef(formVendas.Sds_Pedidos_itensPERC_ISS.text,0.00);
              Parambyname('BASE_ISS').AsCurrency              := StrToCurrDef(formVendas.Sds_Pedidos_itensBASE_ISS.text,0.00);
              Parambyname('VL_ISS').AsCurrency                := StrToCurrDef(formVendas.Sds_Pedidos_itensVL_ISS.text,0.00);
              Parambyname('PERC_ICM').AsCurrency            := StrToCurrDef(formVendas.Sds_Pedidos_itensPERC_ICM.text,0.00);
              Parambyname('BASE_ICMS').AsCurrency             := StrToCurrDef(formVendas.Sds_Pedidos_itensBASE_ICMS.text,0.00);
              Parambyname('VL_ICM').AsCurrency                := StrToCurrDef(formVendas.Sds_Pedidos_itensVL_ICM.text,0.00);
              Parambyname('PERC_IPI').AsCurrency              := StrToCurrDef(formVendas.Sds_Pedidos_itensPERC_IPI.text,0.00);
              Parambyname('BASE_IPI').AsCurrency              := StrToCurrDef(formVendas.Sds_Pedidos_itensBASE_IPI.text,0.00);
              Parambyname('VL_IPI').AsCurrency                := StrToCurrDef(formVendas.Sds_Pedidos_itensVL_IPI.text,0.00);
              Parambyname('PERC_COFINS').AsCurrency           := StrToCurrDef(formVendas.Sds_Pedidos_itensPERC_COFINS.text,0.00);
              Parambyname('BASE_COFINS').AsCurrency           := StrToCurrDef(formVendas.Sds_Pedidos_itensBASE_COFINS.text,0.00);
              Parambyname('VL_COFINS').AsCurrency             := StrToCurrDef(formVendas.Sds_Pedidos_itensVL_COFINS.text,0.00);
              Parambyname('PERC_ICMS_SUBST').AsCurrency       := StrToCurrDef(formVendas.Sds_Pedidos_itensPERC_ICMS_SUBST.text,0.00);
              Parambyname('BASE_ICMS_SUBST').AsCurrency       := StrToCurrDef(formVendas.Sds_Pedidos_itensBASE_ICMS_SUBST.text,0.00);
              Parambyname('VL_ICMS_SUBST').AsCurrency         := StrToCurrDef(formVendas.Sds_Pedidos_itensVL_ICMS_SUBST.Text,0.00);
              Parambyname('PERC_PIS').AsCurrency              := StrToCurrDef(formVendas.Sds_Pedidos_itensPERC_PIS.text,0.00);
              Parambyname('BASE_PIS').AsCurrency              := StrToCurrDef(formVendas.Sds_Pedidos_itensBASE_PIS.text,0.00);
              Parambyname('VL_PIS').AsCurrency                := StrToCurrDef(formVendas.Sds_Pedidos_itensVL_PIS.text,0.00);
              Parambyname('IMPRIME').Value                    := null;
              Parambyname('COD_EMPRESA').AsInteger            := DM.SDS_EmpresaCODIGO.AsInteger;
              Parambyname('ID_BICO').AsString                 := formVendas.sds_pedidos_itensCODIGO_BICO.text;
              Parambyname('ID_BOMBA').AsString                := formVendas.sds_pedidos_itensBOMBA.text;
              Parambyname('ID_TANQUE').AsString               := formVendas.sds_pedidos_itensTANQUE.text;
              Parambyname('BICO').AsString                    := formVendas.sds_pedidos_itensBICO.text;

              ExecQuery;
              formVendas.Sds_Pedidos_itens.Next;
        end;
        DM.IBTransaction.Commit;
 end;


        DM.SDS_Usuarios.Locate('USUARIO', Formprincipal.userlogado,[]);
        formprincipal.usuario_temp := DM.SDS_UsuariosCODIGO.TEXT;

        if TotalizaFormaPagamento('A') > 0 then
        begin

            if avista > 0 then
               begin

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := avista  - EdtTroco.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := avista  - EdtTroco.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+formvendas.N_venda.Text+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VEN';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := FormVendas.N_venda.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                  end;


             { if formVendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.showmodal;
               end;}
         end;


         //venda no cartao....

        if TotalizaFormaPagamento('F') > 0 then
        BEGIN

         Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
         FrmDadosAdm.EdtValor.Text:= CurrToStr(TotalizaFormaPagamento('F'));
         FrmDadosAdm.EdtParcelamento.Text:= '1';
         FrmDadosAdm.Edtvalor.Value:= CARTAO;
         FrmDadosAdm.EdtVenda.Text := formVendas.N_venda.Text;
         FrmDadosAdm.dt_venda.Date := formVendas.dt_venda.Date;
         FrmDadosAdm.EdtCli.Text  := formVendas.DBComboCliente.Text;
         FrmDadosAdm.EdtCli1.Text  := formVendas.Desc_cliente.Text;
         FrmDadosAdm.showmodal;
         end;

         if TotalizaFormaPagamento('V') > 0 then
         BEGIN
            saldo :=0;
            Total :=0;
            Total := DM1.Sds_valeTrocoVALOR_UTILIZADO.AsFloat + VALE;
            saldo := DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat - VALE;

            dm1.sds_valeTroco_pagto.Active := False;
            dm1.sds_valeTroco_pagto.Active := True;
            dm1.sds_valeTroco_pagto.Insert;
            dm1.sds_valeTroco_pagtoCOD_VALE.AsInteger := DM1.Sds_valeTrocoCODIGO.AsInteger;
            dm1.sds_valeTroco_pagtoDATA.AsDateTime    := Date;
            dm1.sds_valeTroco_pagtoSALDO_ANTERIOR.AsFloat := DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat;
            dm1.sds_valeTroco_pagtoVALOR_PAGO.AsFloat     := VALE;
            DM1.sds_valeTroco_pagtoSALDO_ATUAL.AsFloat    := saldo;
            dm1.sds_valeTroco_pagto.Post;
            dm1.sds_valeTroco_pagto.ApplyUpdates(0);

            if DM1.Sds_valeTroco.Locate('CODIGO',Edit3.Text,[]) = True then
            BEGIN
            dm1.Sds_valeTroco.Edit;
            DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat     := saldo;
            DM1.Sds_valeTrocoVALOR_UTILIZADO.AsFloat := total;
            dm1.Sds_valeTroco.Post;
            dm1.Sds_valeTroco.ApplyUpdates(0);
            end;

           if VALE > 0 then
           BEGIN

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := VALE;
                    qrcaixa_mov.parambyname('valor').asfloat := VALE;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 43; // VALE
                    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+formvendas.N_venda.Text+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VAL';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := FormVendas.N_venda.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
            end;


            if  DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat > 0 then
            begin
              if Application.MESSAGEBOX('Deseja Emitir o Vale Troco com o Saldo Atualizado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
              begin

              if dm.IBTransaction.Active then
                dm.IBTransaction.Commit;
              dm.IBTransaction.StartTransaction;
              with dm1.QConsValeTroco do
                begin
                   close;
                   sql.Clear;
                   sql.Text:= sSql;
                      begin
                         if DM1.Sds_valeTrocoCODIGO.Text > '' then
                            begin
                                begin
                                     sql.Add(' WHERE V.CODIGO = :COD_VALE AND V.COD_EMPRESA = :CODEMP');
                                     Parambyname('COD_VALE').AsInteger:= StrToInt(DM1.Sds_valeTrocoCODIGO.Text);
                                     Parambyname('codemp').AsInteger:= iEmp;
                                 end;
                         open;
                         end;

                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormRelValeTroco:=TFormrELValetroco.Create(self);
                    FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                    FormRelValeTroco.RLReport1.Prepare;
                    FormRelValeTroco.RLReport1.PreviewModal;
                    end else
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelValeTroco:=TFormrELValetroco.Create(self);
                    //FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                    FormRelValeTroco.RLReport1.Prepare;
                    FormRelValeTroco.RLReport1.PreviewModal;
                    end;
                    end;
                end;
               end;
              end;

           end;

 
        // PRAZO
        if TotalizaFormaPagamento('C') > 0 then
        try
        BEGIN

         if ClientDataSet1.RecordCount >0 then
          begin
           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For I:=1 to Contador do
           begin
           SPC_CREDIARIO.Params[0].Value       :=  StrToInt(FormVendas.n_venda.Text);
           SPC_CREDIARIO.Params[1].Value       :=  StrToInt(formVendas.DBComboCliente.Text);
           SPC_CREDIARIO.Params[2].AsDate      :=  formVendas.dt_venda.Date;
           SPC_CREDIARIO.Params[3].AsDate      :=  ClientDataset1.FieldByname('DataVencimento').AsDateTime;
           SPC_CREDIARIO.Params[4].AsString    :=  'Venda Nº'+' '+FormVendas.n_venda.Text+' / '+ Desc_cond_pagto.Text;
           SPC_CREDIARIO.Params[5].AsString    :=  Formprincipal.userlogado;
           SPC_CREDIARIO.Params[6].AsString    :=  'A';
           SPC_CREDIARIO.Params[7].Value       :=  ClientDataset1.FieldByname('ValorParcela').Text;
           SPC_CREDIARIO.Params[8].Value       :=  0;
           SPC_CREDIARIO.Params[9].Value       :=  0;
           SPC_CREDIARIO.Params[10].Value      :=  0;
           SPC_CREDIARIO.Params[11].Value      :=  0;
           SPC_CREDIARIO.Params[12].AsString   := ClientDataset1.FieldByname('Parcela').text;
           SPC_CREDIARIO.Params[13].AsInteger  := DM.SDS_EmpresaCODIGO.AsInteger;
           SPC_CREDIARIO.Params[14].AsString   := 'DPL';
           SPC_CREDIARIO.Params[15].AsString   := FormVendas.Desc_cliente.Text;
           SPC_CREDIARIO.Params[16].AsString   := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString   := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE      := NULL;
           SPC_CREDIARIO.Params[19].VALUE      := ClientDataSet1Comissao.Text;
           SPC_CREDIARIO.Params[20].ASSTRING   := Edit2.Text;
           SPC_CREDIARIO.ExecProc;
           ClientDataset1.Next;
           end;
           end;



                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := CurrencyEdit2.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AP').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 4; // VENDA PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+formvendas.N_venda.Text+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'P';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PRZ';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := FormVendas.N_venda.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
           end;

         except
            // ShowMessage('Erro ao Gravar as Parcelas');
               on E: EDatabaseError do
                ShowMessage(E.Message);
        end;



        if TotalizaFormaPagamento('H') > 0 then
        BEGIN

            begin

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := cheque;
                    qrcaixa_mov.parambyname('valor').asfloat := cheque;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 6; // CHEQUE PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+formvendas.N_venda.Text+' - '+formvendas.Desc_cliente.Text,1,60);
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := FormVendas.N_venda.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
               end;
            If FormCheques=nil then
             begin
              FormCheques:=TFormCheques.Create(self);
              FormCheques.CurrencyEdit1.Value := cheque;
              FormCheques.ShowModal;
             end;

             if formVendas.Sds_pedidossaldo_troco.AsFloat > 0 then
              begin
                 FormTroco := TFormTroco.create(Self);
                 FormTroco.showmodal;
              END;

           end;

 
         //--- Exclui abastecimentos em aberto

             if DM.IBTransaction.Active then
                DM.IBTransaction.Commit;
                DM.IBTransaction.StartTransaction;
             try
             try
             formVendas.Sds_Pedidos_itens.First;
             formVendas.Sds_Pedidos_itens.Filtered := False;
             formVendas.Sds_Pedidos_itens.Filter := 'CODIGO_BICO >= 0';
             formVendas.Sds_Pedidos_itens.Filtered := True;

             formVendas.Sds_Pedidos_itens.First;
             while not formVendas.Sds_Pedidos_itens.Eof  do
             begin
             //   if FormPrincipal.xDBGrid1.SelectedRows.CurrentRowSelected = true then
              //begin
              if formVendas.sds_pedidos_itensCODIGO_BICO.Text > '' then
              begin
              formVendas.SQLVendas.Close;
              formVendas.SQLVendas.SQL.Clear;
              formVendas.SQLVendas.SQL.Add('delete from BICOENC_TEMP where COD_BICOENC_TEMP =:COD');
              formVendas.SQLVendas.Params.ByName('COD').AsString := formVendas.sds_pedidos_itensCODIGO_BICO.Text;
              formVendas.SQLVendas.Prepare;
              formVendas.SQLVendas.ExecQuery;

              end;
              formVendas.Sds_Pedidos_itens.Next;
              end;

           DM.IBTransaction.Commit;
          except
          DM.IBTransaction.Rollback;
          showmessage('Erro ao excluir os dados das leituras de bombas');
          end;
        finally
         formVendas.SQLVendas.Close;
        end;

        formVendas.Sds_Pedidos_itens.Filtered := False;


        formVendas.concluida := true;


               If DM.SDS_CONFIGURACOESCUPOM.Text = 'S' then
               if Application.MESSAGEBOX('Confirma Imprimir o Cupom Fiscal?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
               begin
                       panel9.Visible := true;
                      {try
                         FormemEcf:=nil;
                         begin
                          FormemEcf:=TFormemEcf.Create(self);
                          FormemEcf.edit1.Text := formVendas.N_venda.Text;
                          FormemEcf.ShowModal;
                          end;
                         except
                           ShowMessage('Houve um erro na emissão do Cupom Fiscal');
                          end; }

                  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
                  begin
                      iRetorno := Bematech_FI_AbreCupom( pchar( '' ) );
                      FormPrincipal.Analisa_iRetorno();
                      FormPrincipal.Retorno_Impressora();

                    begin
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=FORMVENDAS.N_venda.Text;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;

                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;
                       I:=0;
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
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := FormatFloat('##,##0.00',DMC.SDS_Pedido_ItensDESCONTO.ASFLOAT);
                       END;

                       iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
                       PChar(sTipoQtde), sQtde, 2, sValor, PChar(sTipoDesconto), (cValorDesc));


                       FormPrincipal.Analisa_iRetorno();
                       FormPrincipal.Retorno_Impressora();

                       DMC.SDS_Pedido_Itens.Next;
                       end;

                       begin

                       //CD:= DMC.CDS_PedidosTP.AsString;
                       //IF CD = 'A' THEN BEGIN
                       if TotalizaFormaPagamento('A') > 0 then  BEGIN
                       //PG:= 'DINHEIRO';
                       PG:= '01';
                       PAG :='DINHEIRO';
                       cd := 'A';
                       end else
                       //IF CD = 'C' THEN BEGIN
                       if TotalizaFormaPagamento('C') > 0 then BEGIN
                       //PG:= 'CREDIARIO';
                       PG:= '04';
                       PAG :='PRAZO';
                       CD:= 'C';
                       end else
                       //IF CD = 'H' THEN BEGIN
                       if TotalizaFormaPagamento('H') > 0 then BEGIN
                       //PG:= 'CHEQUE';
                       PG:= '02';
                       PAG :='CHEQUE';
                       CD := 'H';
                       end else
                       //IF CD = 'F' THEN BEGIN
                       if TotalizaFormaPagamento('F') > 0 then BEGIN
                       //PG:= 'FINANCEIRA';
                       PG:= '03';
                       PAG :='CARTAO';
                       CD := 'F';
                       end else
                       //IF CD = 'V' THEN BEGIN
                       if TotalizaFormaPagamento('V') > 0 then BEGIN
                       //PG:= 'VALE';
                       PG:= '05';
                       PAG :='VALE';
                       CD :='V';
                       end;

                         //ValCompra := EdtTotalGeral.Value;

                          cFormaPgto      := PAG;
                          cValorPago      := FormatFloat('0.00', DBGridFormas.Columns.Items[1].TotalFooter.Value );
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

                           if pag = 'DINHEIRO' then
                              begin
                             if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
                               begin
                                iRetorno := Bematech_FI_AcionaGaveta();
                                Formprincipal.Analisa_iRetorno();
                                Formprincipal.Retorno_Impressora();
                               end;
                            end;
                          //suiButton2.Default := True;
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
                        // suiButton2Click(Sender);
                         // SE USAR FARMACIA POPULAR
                         if DM.SDS_CONFIGURACOESUSA_FP.Text = 'S' then
                         BEGIN
                         if Application.MESSAGEBOX('Venda da Farmacia Popular?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          begin
                             DM.Sds_vendas.Active := false;
                             DM.Sds_Vendas_itens.Active := false;
                             dm.QRY_vendas.close;
                             dm.QRY_vendas.SQL.Clear;
                             dm.QRY_vendas.SQL.add('select * from PEDIDOS where codigo >0'+'');
                             DM.qry_vendas.SQL.add('and codigo ='+QuotedStr(FORMVENDAS.Sds_pedidosCODIGO.Text)+'');
                             DM.qry_vendas.SQL.add('ORDER BY Codigo DESC');
                             DM.qry_vendas.Open;
                             DM.Sds_vendas.Active := True;
                             DM.Sds_Vendas_itens.Active := true;
                            try
                           //  If frmFarmaciaPopular=nil then
                               begin
                              //  CoInitialize(nil);
                                frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                                //frmFarmaciaPopular.VENDA := FORMVENDAS.Sds_pedidosCODIGO.Text;
                                  frmFarmaciaPopular.Tag := 0;
                                   frmFarmaciaPopular.ShowModal;
                                //    CoUninitialize;
                                end;
                                except
                                  ShowMessage('Houve um erro ao Criar o Formulario  da Farmácia Popular');
                                end;
                          end;
                          END;

                       if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                       begin
                       IF PAG = 'PRAZO' then
                       if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
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
                          Params.Items[0].AsString  := formVendas.n_venda.Text;;
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

                        if dm.SDS_CONFIGURACOESUSA_GERENCIAL.Text = 'S' then
                        begin
                        if formvendas.Sds_pedidosVALOR_TOTAL.AsFloat > dm.SDS_CONFIGURACOESVALOR_GERENCIAL.AsFloat then
                        begin
                         if Application.MESSAGEBOX('Confirma a Emissão do Relatorio Gerencial?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                         begin

                        iRetorno := Bematech_FI_RelatorioGerencial( pchar(#10+#13+#13+ #27 + #86+ dm.SDS_CONFIGURACOESTEXTO_GERENCIAL.text +#10+#13+#13+#13+#13+
                                                                          #10+#13+#13+ #27 + #86+ dm.SDS_CONFIGURACOESTEXTO_GERENCIAL1.text +#10+#13+#13+#13+#13+
                                                                          #10+#13+#13+ #27 + #86+ dm.SDS_CONFIGURACOESTEXTO_GERENCIAL2.text +#10+#13+#13+#13+#13+
                                                                          #27 + #86 + dm.SDS_CONFIGURACOESTEXTO_GERENCIAL4.text));
                        Formprincipal.Analisa_iRetorno();
                         Formprincipal.Retorno_Impressora();

                         iRetorno := Bematech_FI_FechaRelatorioGerencial();
                         Formprincipal.Analisa_iRetorno();
                         Formprincipal.Retorno_Impressora();
                         end;
                         end;
                         end;
                         end;
                       end;
                   end else



                  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
                  begin
                  LerINIecf;
                  ACBrECF1.Ativar;

                    if FileExists('ECF.ini') then
                    ACBrECF1.MemoParams.LoadFromFile('ECF.ini');



                      //  Desc := '%' ;
                      //  if Formvendas.RbValor.Checked then
                      Desc := '$' ;
                      // formECF := nil;
                      //formecf := tformECF.Create(self);
                      //formECF.Ativcar1Click( Sender );
                      //formECF.Desativar1Click(sender);
                      //ACBrECF1.Ativar; //.Ativcar1Click( Sender );

                      if ACBrECF1.Ativo = False then
                        begin
                         ACBrECF1.Ativar;
                        end;

                      if ACBrECF1.Estado = estRequerZ then
                           begin
                           if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                           'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                            exit ;
                            if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                             exit ;
                            // end ;
                            Resp := MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

                            if Resp = mrYes then
                            BEGIN
                            Button3Click(Sender);
                            ACBrECF1.ReducaoZ( now );
                            end ELSE
                            if Resp = mrNo then
                            BEGIN
                            Button3Click(Sender);
                            ACBrECF1.ReducaoZ( );
                            END ELSE
                            exit ;
                          //  mResp.Lines.Add( 'Reduçao Z');
                          //  AtualizaMemos ;
                            end;

                    try
                      begin
                       ACBrECF1.AbreCupom();
                      // formecf.mResp.Lines.Add( 'AbreCupom' );
                       end;
                       begin
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                        dmc.sds_pagto.Close;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=FORMVENDAS.N_venda.Text;
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
                       RGIE:= DMC.cDS_pedidosRG_IE.AsString + #13#10+ ' IE Produtor: ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString + #13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString +' - '+DMC.SDS_ClienteUF.text ;

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
                       //cValorDesc := '0'; //DMc.SDS_Pedido_ItensDESCONTO.AsString; //'0000';
                        IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := DMC.SDS_Pedido_ItensDESCONTO.Text;
                       END;
                     //  sValorDesc := vd * (-1);

                      // cValorDesc := FormatFloat('0',CValorDesc);


                       ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000 ),
                               StrToFloatDef(sValor ,0.00),
                               StrToFloatDef(cValorDesc ,0.00), Sunidade,
                               desc);

                       {mResp.Lines.Add( 'Vende Item: Cod:'+ sCodigo +
                            ' Desc'+ sDescricao +
                            ' Aliq:'+sAliquota +
                            ' Qtd:'+sQtde +
                            ' Preço:'+sValor +
                            ' Desc:'+cValorDesc +
                            ' Un:'+sUnidade +
                            ' Desc:'+desc );}

                       DMC.SDS_Pedido_Itens.Next;
                       end;

                       begin



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
                          cMsgPromocional :='Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DMC.CDS_PedidosOBSERVACOES.AsString)+#13+#13+#10'Venda:'+FormVendas.N_Venda.Text+#13+#13+#10'Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10+#13+#10+#13+#10+#13+#10+#13+#10;



                         Descricao := PAG;
                         begin
                         FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                         if FPG = nil then
                         // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                          ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                         edCod.Text := FPG.Indice ;
                         cFormaPgto      := edCod.Text;
                         { Bematech permite cadastrar formas de Pagamento dinamicamente }
                         if (ACBrECF1.ModeloStr = 'Bematech') and
                         (pos( FPG.Descricao, mFormas.Text ) = 0) then
                         CarregaFPG ;
                         end ;

                           BEGIN
                          ACBrECF1.Subtotal;
                          ACBrECF1.SubtotalizaCupom (StrToFloat(cValorAcresDesc));
                          //   ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                          //  ACBrECF1.Subtotal;
                          // ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                          // formEcf.mResp.Lines.Add( 'Subtotaliza Cupom: '+cValorAcresDesc);
                          end;

                          begin
                        //  if TipoCupom <> 'N' then
                          { ACBrECF1.EfetuaPagamento(ACBrECF1.FormasPagamento[0].Indice,
                          (ACBrECF1.Subtotal - ACBrECF1.TotalPago), 'ZERANDO SALDO A PAGAR RESTANTE');}

                          // ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                          { FormEcf.mResp.Lines.Add( 'Efetua Pagamento: '+cFormaPgto +
                          ' Valor: '+cValorPago );}

                           dmc.sds_pagto.First;
                           While not dmc.sds_pagto.Eof do
                           begin
                             if dmc.sds_pagtoTIPO.text = 'A'  then
                             BEGIN
                             PAG :='DINHEIRO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;

                            // cFormaPgto := pag;
                             cValorPago  :=  FloatToStr(DMC.CDS_PedidosVALOR_AVISTA.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;

                             if dmc.sds_pagtotipo.text = 'H'  then
                             BEGIN
                             PAG :='CHEQUE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.asfloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text = 'F'  then
                             BEGIN
                             PAG :='CARTAO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text = 'C'  then
                             BEGIN
                             PAG :='PRAZO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text ='V'  then
                             BEGIN
                             PAG :='VALE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;

                             dmc.sds_pagto.next;
                          // end;
                            end;

                            begin
                            ACBrECF1.FechaCupom(cMsgPromocional);
                            // formEcf.mResp.Lines.Add( 'Fecha Cupom: '+ cMsgPromocional );
                            end;

                             if pag = 'DINHEIRO' then
                             begin
                             if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
                             begin
                             ACBrECF1.AbreGaveta;
                             end;
                             end;


                          end;


                          if (ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
                          ecfQuattro])then
                          begin
                          SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(formVendas.N_venda.text);
                          SPC_N_CUPOM.Params[1].AsInteger  := StrToInt(ACBrECF1.NumCupom);
                          SPC_N_CUPOM.Params[2].AsString  :=  ACBrECF1.NumECF;
                          SPC_N_CUPOM.ExecProc;
                          end;

                         // SE USAR FARMACIA POPULAR
                         if DM.SDS_CONFIGURACOESUSA_FP.Text = 'S' then
                         BEGIN
                         if Application.MESSAGEBOX('Venda da Farmacia Popular?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          begin
                             DM.Sds_vendas.Active := false;
                             DM.Sds_Vendas_itens.Active := false;
                             dm.QRY_vendas.close;
                             dm.QRY_vendas.SQL.Clear;
                             dm.QRY_vendas.SQL.add('select * from PEDIDOS where codigo >0'+'');
                             DM.qry_vendas.SQL.add('and codigo ='+QuotedStr(FORMVENDAS.Sds_pedidosCODIGO.Text)+'');
                             DM.qry_vendas.SQL.add('ORDER BY Codigo DESC');
                             DM.qry_vendas.Open;
                             DM.Sds_vendas.Active := True;
                             DM.Sds_Vendas_itens.Active := true;
                            try
                            // If frmFarmaciaPopular=nil then
                               begin
                              //  CoInitialize(nil);
                                frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                                //frmFarmaciaPopular.VENDA := FORMVENDAS.Sds_pedidosCODIGO.Text;
                                  frmFarmaciaPopular.Tag := 0;
                                   frmFarmaciaPopular.ShowModal;
                                //    CoUninitialize;
                                end;
                                except
                                  ShowMessage('Houve um erro ao Criar o Formulario  da Farmácia Popular');
                                end;
                          end;
                          END;

                         // inicio da emissao do copon vinculado
                           if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                           begin
                           IF PAG = 'PRAZO' then
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           begin
                           COO := ACBrECF1.NumCupom ;

                           cValorPago := DMC.CDS_PedidosVALOR_TOTAL.TEXT;

                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.TEXT;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                           ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                           ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                      'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


                           ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Parcelamento:'+#13+#13+#10);

                           ACBrECF1.LinhaCupomVinculado( Linha );

                            linha := ('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela');
                           ACBrECF1.LinhaCupomVinculado( Linha );


                            DMC.SDS_COND_PAGTO.Active := False;
                            with DMC.QRY_COND_PAGTO do
                             begin
                              close;
                              Params.Items[0].AsString  := formVendas.n_venda.Text;;
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
                           ACBrECF1.LinhaCupomVinculado( Linha );
                           end;

                            linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(DMC.CDS_PEDIDOSCodigo_CliENTE.Text)+' -'+
                                      (DMC.CDS_PEDIDOSNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+DMC.CDS_PEDIDOSCPF_CNPJ.TEXT+' - '+
                                      'Rg:'+' '+DMC.CDS_PEDIDOSRG_IE.TEXT+#13+#10+
                                      'Endereço:'+' '+DMC.CDS_PEDIDOSENDERECO.TEXT+#13+#13+ DMC.CDS_PedidosBAIRRO.TEXT+ '-' + DMC.CDS_PedidosCIDADE.TEXT+ '-'+ DMC.CDS_PedidosUF.Text+#13+#13);
                            ACBrECF1.LinhaCupomVinculado( Linha );

                            Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
                            ACBrECF1.LinhaCupomVinculado( Linha );

                            ACBrECF1.FechaRelatorio;

                           end;

                           {IF pag = 'VALE' then
                           begin
                           IF troco > 0 THEN
                           BEGIN
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           COO := ACBrECF1.NumCupom ;
                           cValorPago := CurrencyEdit4.Text;
                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.Text;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                           ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                           ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Valor da Compra: '+#13+#10+ cValorPago);


                           ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Valor Vale:'+#13+#13+#10+ FloatToStr(troco));

                           aCBrECF1.LinhaCupomVinculado( Linha );


                           linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(dmc.CDS_PedidosCODIGO_CLIENTE.Text)+' -'+
                                      (dmc.CDS_PedidosNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+dmc.CDS_PedidosCPF_CNPJ.Text+' - '+
                                      'Rg:'+' '+dmc.CDS_PedidosRG_IE.text+#13+#10+
                                      'Endereço:'+' '+dmc.CDS_PedidosENDEReCO.text +#13+#13+
                                      dmc.CDS_PedidosBAIRRO.Text +'-'+ dmc.CDS_PedidosCIDADE.Text + '-'+ dmc.CDS_PedidosUF.text+#13+#13);
                           ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+dmc.cds_pedidosUSUARIO.text;
                           ACBrECF1.LinhaCupomVinculado( Linha );

                           ACBrECF1.FechaRelatorio;

                           end;
                           end;  }
                           end;

                        if dm.SDS_CONFIGURACOESUSA_GERENCIAL.Text = 'S' then
                        begin
                        if formvendas.Sds_pedidosVALOR_TOTAL.AsFloat > dm.SDS_CONFIGURACOESVALOR_GERENCIAL.AsFloat then
                        begin
                         if Application.MESSAGEBOX('Confirma a Emissão do Relatorio Gerencial?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                         begin

                         iRetorno := Bematech_FI_RelatorioGerencial( pchar(#10+#13+#13+ #27 + #86+ dm.SDS_CONFIGURACOESTEXTO_GERENCIAL.text +#10+#13+#13+#13+#13+
                                                                          #10+#13+#13+ #27 + #86+ dm.SDS_CONFIGURACOESTEXTO_GERENCIAL1.text +#10+#13+#13+#13+#13+
                                                                          #10+#13+#13+ #27 + #86+ dm.SDS_CONFIGURACOESTEXTO_GERENCIAL2.text +#10+#13+#13+#13+#13+
                                                                          #27 + #86 + dm.SDS_CONFIGURACOESTEXTO_GERENCIAL4.text));
                         Formprincipal.Analisa_iRetorno();
                         Formprincipal.Retorno_Impressora();

                         iRetorno := Bematech_FI_FechaRelatorioGerencial();
                         Formprincipal.Analisa_iRetorno();
                         Formprincipal.Retorno_Impressora();
                         end;
                         end;
                         end;

                         end;

                         end;
                       except
                        //MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
                        ShowMessage('Erro ao Tentar emitir o cupom, Estado: '+ Estados[ ACBrECF1.Estado ] + '...');
                       end;

                   end;
                   panel9.Visible := false;
                  end;


                     //  formVendas.Sds_Pedidos.Edit;
                    //  formVendas.Sds_Pedidos.post;



                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=FORMVENDAS.N_venda.Text;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;

     {    if DM.IBTransaction.Active then
                DM.IBTransaction.Commit;
                DM.IBTransaction.StartTransaction;
         try
          try
           FormVendas.SQLVendas.Close;
           FormVendas.SQLVendas.SQL.Clear;
           FormVendas.SQLVendas.SQL.Add(' Update TANQUE set litros_atual = litros_atual - :EST_ATUAL, TANQUE.litros = litros - :LIT_ATUAL WHERE COD_TANQUE =:TANQUE AND COD_PRODUTOS =:COD_PRO');
           FormVendas.SQLVendas.Params.ByName('EST_ATUAL').AsFloat := FormPrincipal.cds_abastecidasENC_LITROS.AsFloat;
           FormVendas.SQLVendas.Params.ByName('LIT_ATUAL').AsFloat := FormPrincipal.cds_abastecidasENC_LITROS.AsFloat;
           FormVendas.SQLVendas.Params.ByName('TANQUE').AsInteger :=  FormPrincipal.cds_abastecidasID_TANQUE.AsInteger;
           FormVendas.SQLVendas.Params.ByName('COD_PRO').AsInteger := FormPrincipal.cds_abastecidasID_PRODUTOS.AsInteger;
           FormVendas.SQLVendas.Prepare;
           FormVendas.SQLVendas.ExecQuery;
           DM.IBTransaction.Commit;
          except
          DM.IBTransaction.Rollback;
          showmessage('Erro ao Atualizar o estoque do Tanque');
          end;
        finally
        FormVendas.SQLVendas.Close;
        end;  }


                    

            Close;

END;


procedure TFormParcelamento.suiButton4Click(Sender: TObject);
begin
Try
if FormDesbloquearCliente=nil   then
    begin
     FormDesbloquearCliente:=TFormDesbloquearCliente.Create(self);
      FormDesbloquearCliente.ComboEdit1.Text := formVendas.DBComboCliente.Text;
      FormDesbloquearCliente.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormParcelamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key=VK_F2) then
      begin
      EdtTotalLiquido.SetFocus;
      end;

      if (Key=VK_F9) then
      begin
      DBComboCliente.SetFocus;
      end;
      
      if (Key=VK_F4) then
      begin
      EdtPercentualDesconto.SetFocus;
      end;

      if (Key=VK_F6) then
      begin
      EdtvalorDesconto.SetFocus;
      end;

      if (Key=VK_F5) then
      begin
      IF  suiButton1.Enabled = TRUE THEN
      BEGIN
      suiButton1Click(Sender);
      end;
      end;

   if (Key=VK_F10) then
      begin
      IF  suiButton2.Enabled = TRUE THEN
      BEGIN
      suiButton2Click(Sender);
      end;
     end;

    if (Key=VK_F3) then
      begin
      IF  suiButton3.Enabled = TRUE THEN
      BEGIN
      suiButton3Click(Sender);
      end;
     end;
end;

procedure TFormParcelamento.RbValorExit(Sender: TObject);
begin
CurrencyEdit7.Clear;
CurrencyEdit7.SetFocus;
end;

procedure TFormParcelamento.RbPercentualExit(Sender: TObject);
begin
CurrencyEdit7.Clear;
CurrencyEdit7.SetFocus;
end;

procedure TFormParcelamento.DBComboPgtoKeyPress(Sender: TObject;
  var Key: Char);
var
CD, PG : String;
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;


if Key=#13 then
 begin
{ CurrencyEdit7.Clear;

 IF DBComboPgto.Text = '' then
begin
 ShowMessage('Condição de pagamento nao pode estar zerada favor preencher');
 DBComboPgto.SetFocus;
end ELSE

 begin
 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
 end;
 
  if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
  begin
  Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;

                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

                       edit1.Text := PG;

DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.Text;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.Text;

total_venda := CurrencyEdit1.Value;

if Edit1.Text = 'DINHEIRO' then
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end Else

if Edit1.Text = 'VALE' then
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end Else

if Edit1.Text = 'FINANCEIRA' then
begin
    begin
      CurrencyEdit7.Enabled := true;
      avista := total_venda;
      // EdtTotalGeral.value := 0;
      suiButton3.Enabled := False;
      CurrencyEdit7.SetFocus;
    end;
end else

if Edit1.Text = 'CREDIARIO' then
begin
  begin
 if DM.SDS_CondPagamentoJUROS_BASE.Text = '0' then
 begin
// suiButton3.Enabled :=True;
 CurrencyEdit7.Enabled := true;
 avista := 0;
 CurrencyEdit7.SetFocus;
 end else
   if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
   BEGIN
   CurrencyEdit7.Clear;
   CurrencyEdit7.Enabled := False;
   avista := 0;
   CurrencyEdit4.SetFocus;
   end;
  end;
 end else

 if Edit1.Text = 'CHEQUE' then
 begin
       begin
       suiButton3.Enabled :=True;
       CurrencyEdit7.Enabled := true;
       avista := 0;
       CurrencyEdit7.SetFocus;
       if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
       BEGIN
       CurrencyEdit7.Clear;
       CurrencyEdit7.Enabled := False;
       CurrencyEdit4.SetFocus;
       end;
       end;
   end;


     {  CD:= DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
       IF CD = 'C' THEN BEGIN
      { IF DM.SDS_CLIENTESPG_CREDIARIO.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Próprio!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       DBComboPgto.SetFocus;
       end; }

      { If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := formVendas.DBComboCliente.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Limite < 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       end else
       IF Credito > 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end else  }

    //  IF CD = 'H' THEN BEGIN
      { IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Cheque!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
        DBComboPgto.SetFocus;
       end; }
      { If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := formVendas.DBComboCliente.Text;;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
       Credito := 0;
       Credito := (DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
       IF Limite < 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       end else
       IF Credito > 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end else }

     {  IF CD = 'F' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
        DBComboPgto.SetFocus;
       end;
       end; }

 { end ELSE

 if not DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[loCaseinSensitive]) then
 begin
   MessageDlg('Condição de Pagamento não Cadastrada', mtError, [mbAbort],0);
   DBComboPgto.SetFocus;
 end;
 end;        }
end;
end;

procedure TFormParcelamento.DBComboPgtoExit(Sender: TObject);
var
  CD, PG :string;
  begin
{  CurrencyEdit7.Clear;

 IF DBComboPgto.Text = '' then
begin
 //ShowMessage('Condição de pagamento nao pode estar zerada favor preencher');
 MessageDlg('Condição de pagamento nao pode estar zerada favor preencher', mtError, [mbAbort],0);
 DBComboPgto.SetFocus;
end ELSE

 begin
 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
 end;

  if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
  begin
      Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
      
                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

edit1.Text := PG;

DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.Text;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.Text;


total_venda := CurrencyEdit1.Value;

if Edit1.Text = 'DINHEIRO' then
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end Else

if Edit1.Text = 'VALE' then
begin
 dm1.Sds_valeTroco.close;
 dm1.Sds_valeTroco.Open;
 dm1.Sds_valeTroco.Filtered := false;
 dm1.Sds_valeTroco.Filter:='SALDO_ATUAL > 0';
 dm1.Sds_valeTroco.Filtered := True;

 FormConsValeTroco:=TFormConsValeTroco.Create(self);
  FormConsValeTroco.ShowModal;

  IF total_venda > DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat THEN
  begin
  MSGI.Text:= 'Saldo do Vale insuficiente para cobrir o valor da  venda!';
  MSGI.ShowModal;
  DBComboPgto.SetFocus;
end else
begin
CurrencyEdit7.Enabled := true;
avista := total_venda;
suiButton3.Enabled := False;
CurrencyEdit7.SetFocus;
end;
end Else



      IF PG = 'CHEQUE' THEN
        BEGIN
         IF DM.SDS_ClientesPG_CHEQUE.Value = 'N' THEN
         BEGIN
         MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
         MSGI.ShowModal;
         suiButton1.Enabled:= True;
         suiButton3.Enabled:= FALSE;
         DBComboPgto.SETFOCUS;
         end else

       begin
       suiButton3.Enabled :=True;
       CurrencyEdit7.Enabled := true;
       avista := 0;
       CurrencyEdit7.SetFocus;
       if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
       BEGIN
       CurrencyEdit7.Clear;
       CurrencyEdit7.Enabled := False;
       CurrencyEdit4.SetFocus;
       end;
       end;


       begin
       If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := formVendas.DBComboCliente.Text;;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
       Credito := 0;
       Credito := (DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
       IF Limite < 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       CurrencyEdit4.SetFocus;
       end else
       IF Credito > 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       CurrencyEdit4.SetFocus;
       end;
       end;
       end;
       end else

      if PG = 'FINANCEIRA' THEN
        BEGIN
        IF DM.SDS_ClientesPG_FINANCEIRA.Value = 'N' THEN
        BEGIN
        MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
        MSGI.ShowModal;
        suiButton1.Enabled:= True;
        suiButton3.Enabled:= FALSE;
        DBComboPgto.SETFOCUS;
        end ELSE
        begin
        CurrencyEdit7.Enabled := true;
        avista := total_venda;
        // EdtTotalGeral.value := 0;
        suiButton3.Enabled := False;
        CurrencyEdit7.SetFocus;
        end;
        end else

        IF PG = 'CREDIARIO' then
        BEGIN
         IF DM.SDS_ClientesPG_CREDIARIO.Value = 'N' THEN
         BEGIN
          MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
          MSGI.ShowModal;
         suiButton1.Enabled:= True;
         suiButton3.Enabled:= FALSE;
         DBComboPgto.SETFOCUS;
         end else
           begin
         if DM.SDS_CondPagamentoJUROS_BASE.Text = '0' then
           begin
          // suiButton3.Enabled :=True;
           CurrencyEdit7.Enabled := true;
           avista := 0;
           CurrencyEdit7.SetFocus;
          end else
           if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
           BEGIN
           CurrencyEdit7.Clear;
           CurrencyEdit7.Enabled := False;
           avista := 0;
           CurrencyEdit4.SetFocus;
           end;
           begin
           If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
           BEGIN
           DMC.SQLD_LIMITE.Active := False;
           DMC.CDS_LIMITE.Active := False;
           DMC.SQLD_LIMITE.Params[0].AsString := formVendas.DBComboCliente.Text;
           DMC.SQLD_LIMITE.Active := True;
           DMC.CDS_LIMITE.Active := True;
           Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
           Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
           IF Limite < 0 THEN
           begin
           formliberaVenda :=nil;
           FormLiberaVenda:=TFormLiberaVenda.Create(self);
           FormLiberaVenda.ShowModal;
           CurrencyEdit4.SetFocus;
           end else
           IF Credito > 0 THEN
           begin
           formliberaVenda :=nil;
           FormLiberaVenda:=TFormLiberaVenda.Create(self);
           FormLiberaVenda.ShowModal;
           suiButton1.Enabled:= True;
           suiButton3.Enabled:= FALSE;
           CurrencyEdit4.SetFocus;
           end;
           end;
          end;
          end;

end;

   IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
  BEGIN
  CurrencyEdit7.Enabled := True;
  END ELSE
  IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
  BEGIN
   CurrencyEdit7.Enabled := False;
   CurrencyEdit4.SetFocus;
  END;
  
end else
 if not DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[loCaseinSensitive]) then
 begin
   MessageDlg('Condição de Pagamento não Cadastrada', mtError, [mbAbort],0);
   DBComboPgto.SetFocus;
 end;
 end;}
end;

procedure TFormParcelamento.Edit20Exit(Sender: TObject);
begin
suiButton3.Enabled := True;
suiButton3.SetFocus;
end;

procedure TFormParcelamento.CurrencyEdit8Exit(Sender: TObject);
begin
VR := ((VP * CurrencyEdit8.Value) / 100);
suiButton3.Enabled := False;
suiButton2.Enabled := False;
Edit2.SetFocus;
end;

procedure TFormParcelamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
if not (ActiveControl is TDBLookupComboBox) and  // você deve usar AND
     not (ActiveControl is TCustomGrid) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormParcelamento.CurrencyEdit4Exit(Sender: TObject);
VAr
  desconto :Real;
  DESCONT : string;
begin
{valor := 0;
venda := 0;
troco := 0;
juros := 0;
ENC   := 0;
Encargos :=0;
DESCONT := '0';

//calculo dejuros
 valor := 0;
DESCONT := FormatCurr('0.00', EdtValorDesconto.Value);
DESCONTO := StrToFloatDef(DESCONT,0.00);

valor := (currencyEdit1.Value - desconto);
venda := valor;

juros :=  DM.SDS_CondPagamentoJUROS_BASE.AsCurrency;

if avista >= CurrencyEdit1.Value then
begin
Enc :=  (juros * venda);
Encargos := (Enc /100) - venda;
CurrencyEdit5.Value := Encargos + venda;
total_venda := (venda + Encargos);
CurrencyEdit6.Value := total_venda;
troco := (avista + desconto - CurrencyEdit1.Value);
EdtTotalGeral.value := (VALOR);
  end else

if avista < CurrencyEdit1.Value then
begin
troco:= 0;
enc := 0;
total_venda := 0;
Enc :=  (juros * venda);
Encargos := (Enc /100) - venda ;
CurrencyEdit5.Value := Encargos + venda;
total_venda := (venda + Encargos + venda);

CurrencyEdit6.Value := (total_venda - avista);

EdtTotalGeral.value := (total_venda);
end;

EdtTroco.Value := troco;

entrada  := avista;
vlrvenda :=currencyEdit6.Value;
//EdtTotalGeral.value := (VlrVenda-entrada);
total := currencyedit6.Value;
Parcela := DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
VP:= (Total/Parcela);

ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;

if Edit1.Text = 'DINHEIRO' then
 begin
 if CurrencyEdit4.Text = '' then
  begin
  Application.MESSAGEBOX('Valor da Venda avista deve ser informado...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
  avista := (CurrencyEdit1.Value - EdtValorDesconto.Value);
  CurrencyEdit6.Value :=0;
  CurrencyEdit4.SetFocus;
  end else

   IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
   BEGIN
   valor := (StrToFloatDef(CurrencyEdit1.Text,0.00) - StrToFloatDef(CurrencyEdit7.Text,0.00));
   if avista < EdtTotalGeral.value  then
   begin
    Application.MESSAGEBOX('Valor da Venda avista nao pode Ser menor que o total da venda - descontos...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
   avista := (CurrencyEdit1.Value - EdtValorDesconto.Value);
   CurrencyEdit6.Value :=0;
   CurrencyEdit4.SetFocus;
   suiButton2.Enabled := False;
   end;
   end;

   if avista < CurrencyEdit1.Value then
   begin
    EdtValorDesconto.Value := (CurrencyEdit1.Value - avista);

   if rbValor.Checked then
   begin
    desconto  := (EdtValorDesconto.Value * 100 / CurrencyEdit1.VALUE);
   //desc := FormatFloat('##,##0.00',desconto);
    desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
    IF desconto > desconto2 then
    begin
    //Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
     if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      FormLiberaDesconto := TFormLiberaDesconto.create(self);
      FormLiberaDesconto.showmodal;
      CurrencyEdit5.Value := 0;
      CurrencyEdit6.Value := 0;
      EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);
      suiButton3.Enabled := False;
      suiButton2.Enabled := True;
      suiButton2.SetFocus;
     end else
     begin
     EdtValorDesconto.Value := 0;
     CurrencyEdit4.SetFocus;
     end;
    end ELSE

    begin

    CurrencyEdit5.Value := 0;

    CurrencyEdit6.Value := 0;

    EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);


    suiButton3.Enabled := False;
    suiButton2.Enabled := True;
    suiButton2.SetFocus;
     end;
    end ELSE

    if RbPercentual.Checked then
    begin
    desc := (EdtValorDesconto.Value * 100 / CurrencyEdit1.VALUE);//EdtValorDesconto.Value; //StrToInt(CurrencyEdit7.Text);
    desc_m := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsCurrency;
    IF desc > desc_m then
     begin
    // Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
      if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
      FormLiberaDesconto := TFormLiberaDesconto.create(self);
      FormLiberaDesconto.showmodal;
      CurrencyEdit5.Value := 0;
      CurrencyEdit6.Value := 0;
      EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);
      suiButton3.Enabled := False;
      suiButton2.Enabled := True;
      suiButton2.SetFocus;
      end else
      begin
      EdtValorDesconto.Value := 0;
      CurrencyEdit4.SetFocus;
      end;
      end else
      begin

      CurrencyEdit5.Value := 0;

      CurrencyEdit6.Value := 0;

      EdtTotalGeral.value := (CurrencyEdit1.Value - EdtValorDesconto.Value);


      suiButton3.Enabled := False;
      suiButton2.Enabled := True;
      suiButton2.SetFocus;
    end;
    end;
     end else
     if avista >= CurrencyEdit1.Value then
     begin
    suiButton3.Enabled := False;
    suiButton2.Enabled := True;
    suiButton2.SetFocus;
    end;
end;


  if Edit1.Text ='VALE' then
begin
  suiButton3.Enabled := False;
  suiButton2.Enabled := True;
  suiButton2.SetFocus;
  end else

 if Edit1.Text = 'CREDIARIO' then
begin
  suiButton3.Enabled := True;
  suiButton2.Enabled := False;
  suiButton3.Default := True;
  //CurrencyEdit8.SetFocus;

  suiButton3.SetFocus;
  end else

if Edit1.Text = 'CHEQUE' then
  begin
  suiButton3.Enabled := True;
  suiButton2.Enabled := False;
  suiButton3.Default := True;
  suiButton3.SetFocus;
  end else

  if Edit1.Text = 'FINANCEIRA' then
begin
  suiButton3.Enabled := False;
  suiButton2.Enabled := True;
  suiButton2.SetFocus;
end; }
end;


procedure TFormParcelamento.CurrencyEdit7Exit(Sender: TObject);
begin
 { valor := 0;
  venda := 0;
  troco := 0;
  juros := 0;
  ENC   := 0;
  Encargos :=0;

  if CurrencyEdit7.text >'' then
  begin

 if rbValor.Checked then
 begin
  desconto  := (EdtValorDesconto.Value * 100 / CurrencyEdit1.VALUE);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
  IF desconto > desconto2 then
  begin
  //Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
  if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    FormLiberaDesconto := TFormLiberaDesconto.create(self);
    FormLiberaDesconto.showmodal;
    total_venda:= 0;
    total_venda := CurrencyEdit1.Value - EdtValorDesconto.Value;
    avista := total_venda;
    CurrencyEdit6.Value := total_venda;
    EdtTotalGeral.value := total_venda;
    CurrencyEdit4.SetFocus;
    CurrencyEdit4.SelectAll;
  end else
  begin
    EdtValorDesconto.Value := 0;
    CurrencyEdit7.SetFocus;
    end;
  end else

  begin
  total_venda:= 0;
  total_venda := CurrencyEdit1.Value - EdtValorDesconto.Value;
  avista := total_venda;
  CurrencyEdit6.Value := total_venda;
  EdtTotalGeral.value := total_venda;
  CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;
  end;

  IF Edit1.Text = 'CREDIARIO' then
  begin
  avista := 0;
  CurrencyEdit4.SetFocus;
  end ELSE

  IF Edit1.Text = 'CHEQUE' then
  begin
  avista := 0;
  end;

  //CurrencyEdit4.SetFocus;
 end else

  if RbPercentual.Checked then
  begin
  desc := EdtValorDesconto.Value;//StrToInt(CurrencyEdit7.Text);
  desc_m := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsCurrency;
  IF desc > desc_m then
  begin
  //if Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1) = idYes;
   if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    FormLiberaDesconto := TFormLiberaDesconto.create(self);
    FormLiberaDesconto.showmodal;
    VENDA:=0;
    total_venda:=0;
    venda := CurrencyEdit1.Value * EdtValorDesconto.Value /100;
    EdtValorDesconto.Value := venda;
    total_venda := CurrencyEdit1.Value - venda;
    avista := total_venda;
    CurrencyEdit6.Value := total_venda;
    EdtTotalGeral.value := total_venda;
    CurrencyEdit4.SetFocus;
    CurrencyEdit4.SelectAll;
  end else
  begin
    EdtValorDesconto.Value := 0;
    CurrencyEdit7.SetFocus;
    end;
  end else

  begin
  VENDA:=0;
  total_venda:=0;
  venda := CurrencyEdit1.Value * EdtValorDesconto.Value /100;
  EdtValorDesconto.Value := venda;
  total_venda := CurrencyEdit1.Value - venda;
  avista := total_venda;
  CurrencyEdit6.Value := total_venda;
  EdtTotalGeral.value := total_venda;
  CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;

  IF Edit1.Text = 'CREDIARIO' then
  begin
  avista := 0;
   CurrencyEdit4.SetFocus;
  end ELSE

  IF Edit1.Text = 'CHEQUE' then
  begin
  avista := 0;
  CurrencyEdit4.SetFocus;
  end;

  end;
  end;
  end;
 // CurrencyEdit4.SetFocus;
   }

end;

procedure TFormParcelamento.Button3Click(Sender: TObject);
var
   I: Integer;
begin
   ACBrECF1.DadosReducaoZ;
    if (ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
     ecfQuattro])then
     begin
     dm1.Sds_ecf.Active := False;
     dm1.Sds_ecf.Active := true;
     dm1.Sds_ecf.insert;
     dm1.Sds_ecfCOD_MOD.TEXT:= '2D';
     dm1.Sds_ecfECF_CX.text :=  ACBrECF1.DadosReducaoZClass.NumeroDoECF;
     DM1.Sds_ecfECF_FAB.text := ACBrECF1.DadosReducaoZClass.NumeroDeSerie;
     dm1.Sds_ecfECF_MOD.text := ACBrECF1.ModeloStr;
     dm1.sds_ecf.Post;
     dm1.sds_ecf.ApplyUpdates(0);
       // gera dados pro sped

     dm1.Sds_Red_Z.Active := False;
     dm1.Sds_Red_Z.Active := true;
     dm1.Sds_Red_Z.Insert;
     dm1.Sds_Red_ZDT_COD.AsDateTime  := ACBrECF1.DadosReducaoZClass.DataDoMovimento;
     dm1.Sds_Red_ZECF_CX.text        := ACBrECF1.DadosReducaoZClass.NumeroDoECF;
     dm1.Sds_Red_ZCOO.value          := ACBrECF1.DadosReducaoZClass.COO;
     dm1.Sds_Red_ZCRZ.value          := ACBrECF1.DadosReducaoZClass.CRZ;
     dm1.Sds_Red_ZCrO.value          := ACBrECF1.DadosReducaoZClass.CrO;
     dm1.Sds_Red_ZGT_FIN.AsFloat     := ACBrECF1.DadosReducaoZClass.ValorGrandeTotal;
     dm1.Sds_Red_ZVL_BRT.AsFloat     := ACBrECF1.DadosReducaoZClass.ValorVendaBruta;
     dm1.Sds_Red_Z.Post;
     dm1.Sds_Red_Z.ApplyUpdates(0);


     dm1.SDS_TOTAL_Z.Active := False;
     dm1.Sds_TOTAL_Z.Active := true;

with ACBrECF1.DadosReducaoZClass do
     begin
     for I := 0 to ICMS.Count -1 do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF; //(ICMS[I].Indice );
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento; //( 'Tipo      : ' + ICMS[I].Tipo );
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ICMS[I].Tipo )+ removechar(FormatFloat('00.00',ICMS[I].Aliquota));
       dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('0.00', ICMS[I].Total);
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ICMS[I].Indice);
       dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Icms';
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text := FormatFloat('0.00',ICMS[I].Aliquota) ;
       DM1.SDS_TOTAL_Z.Post;
       DM1.SDS_TOTAL_Z.Next;
       DM1.SDS_TOTAL_Z.Last;
       end;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'DT';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',DescontoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'Can-T';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',CancelamentoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'I1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('0.00',IsentoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'AT';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',AcrescimoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'F1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',SubstituicaoTributariaICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Icms';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'N1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',NaoTributadoICMS);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

     for I := 0 to ISSQN.Count -1 do
     begin
        DM1.SDS_TOTAL_Z.Insert;
        DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF; // + ISSQN[I].Indice );
        DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
        DM1.SDS_TOTAL_ZTOTALIZADOR_Z.Text := (ISSQN[I].Tipo + RemoveChar(FormatFloat('00.00', ISSQN[I].Aliquota)));
        dm1.SDS_TOTAL_ZVALOR_TOTALIZADOR.text := FormatFloat('###,##0.00', ISSQN[I].Total);
        DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := (ISSQN[I].Indice );
        dm1.SDS_TOTAL_ZDESCRICAO.Text := 'ISSQN';
        DM1.SDS_TOTAL_Z.Post;
        DM1.SDS_TOTAL_Z.Next;
        DM1.SDS_TOTAL_Z.Last;
     end;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;
       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'DS';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',DescontoISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;
     //dm1.SDS_TOTAL_Z.post;

     with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;

       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'Can-S';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',CancelamentoISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;

      with ACBrECF1.DadosReducaoZClass do
     begin
       DM1.SDS_TOTAL_Z.Insert;
       DM1.SDS_TOTAL_ZECF_CX.TEXT := NumeroDoECF;

       DM1.SDS_TOTAL_ZDATA.AsDateTime := DataDoMovimento;
      // dm1.SDS_TOTAL_ZDESCRICAO.Text := 'Desc. Issqn';
       DM1.SDS_TOTAL_ZTOTALIZADOR_Z.TEXT := 'FS1';
       DM1.SDS_TOTAL_ZVALOR_TOTALIZADOR.Text := FormatFloat('0.00',SubstituicaoTributariaISSQN);
       dm1.SDS_TOTAL_ZT_SIT_TRIB.Text  := '';
       DM1.SDS_TOTAL_ZN_TOTALIZADOR.TEXT := '';
       dm1.SDS_TOTAL_ZDESCRICAO.Text := '';
       DM1.SDS_TOTAL_Z.Post;
     END;
     
     //dm1.SDS_TOTAL_Z.post;
     DM1.sds_total_z.ApplyUpdates(0);
    end;
    end;
end;

procedure TFormParcelamento.cbxModeloChange(Sender: TObject);
begin
try
     ACBrECF1.Modelo := TACBrECFModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrECF1.Modelo ) ;
     raise ;
  end ;

end;

procedure TFormParcelamento.Edit5Change(Sender: TObject);
begin
IF (Edit5.Text>='A') AND (Edit5.Text<='Z') THEN
EDIT6.Text:='LETRAS';

IF (EDIT5.Text>='0') AND (Edit5.Text<='9') THEN
EDIT6.Text:='NUMEROS';

IF EDIT5.Text='' THEN
EDIT6.Text:=''
end;

procedure TFormParcelamento.t(Sender: TObject);
begin
  if strtocurr(EdtPercentualDesconto.Text) < 0 then
      begin
         showmessage('Valor do Desconto não pode ser negativo');
         EdtPercentualDesconto.SetFocus;
         exit;
         abort;
      end;
   if strtocurr(EdtPercentualDesconto.Text) > 0 then
      begin
         cDescontoVenda        := strtocurr(currtostrf((strtocurr(EdtSubTotal.Text) * strtocurr(EdtPercentualDesconto.text)) / 100, ffFixed, 2));
         EdtValorDesconto.Text := currtostr(cDescontoVenda);
         if cDescontoVenda > 0 then
            begin
               if FormPrincipal.combustivel = True then
               EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontoVenda + EDTJUROS.Value)
               else
               EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontoVenda );              // FormasComDesconto;

               cTotalVenda:= EdtTotalLiquido.Value;
            end;
         EdtTroco.Text := '0';
         EdtTotalLiquido.Value := cTotalVenda;
         EdtTotalGeral.Value := EdtTotalLiquido.Value;
      end
   else
      begin
         EdtValorDesconto.Clear;
         cDescontoVenda:= 0;
         //FormasPagamento;
         EdtTotalLiquido.Value := EdtSubTotal.Value;
         EdtTotalGeral.Value := EdtTotalLiquido.Value;
      end;
 
end;

procedure TFormParcelamento.EdtValorDescontoExit(Sender: TObject);
begin
   if strtocurr(EdtValorDesconto.Text) < 0 then
      begin
         showmessage('Valor do Desconto não pode ser negativo');
         EdtValorDesconto.SetFocus;
         exit;
         abort;
      end;

   cDescontoVenda:= strtocurr(EdtValorDesconto.Text);
   if cDescontoVenda >= 0 then
      begin
         if FormPrincipal.combustivel = True then
         EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontoVenda + EDTJUROS.value)
         else
         EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontoVenda);
               //  FormasComDesconto;
        cTotalVenda:= EdtTotalLiquido.Value;
        EdtTotalLiquido.Value := cTotalVenda;
        EdtTotalGeral.Value := EdtTotalLiquido.Value;
        EdtPercentualDesconto.Value := EdtValorDesconto.Value * 100 / EdtSubTotal.Value;
      end
   else
      begin
         EdtPercentualDesconto.Clear;
        // FormasPagamento;
      end;
   EdtTroco.Text:= '0';
   EdtTotalGeral.Value := EdtTotalLiquido.Value;
   DBGridFormas.SetFocus;

  desconto  := (cDescontoVenda * 100 / EdtSubTotal.Value);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;

  IF desconto > desconto2 then
  begin
  if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    FormLiberaDesconto := TFormLiberaDesconto.create(self);
    FormLiberaDesconto.showmodal;
    if AUTORIZOU = False then
    BEGIN
    EdtPercentualDesconto.Value := 0;
    EdtValorDesconto.Value := 0;
    EdtPercentualDesconto.SetFocus;
    end else
    begin
      DBGridFormas.SetFocus;
    end;

  end else
  EdtPercentualDesconto.SetFocus;
  EdtPercentualDesconto.Clear;
  end;


end;

procedure TFormParcelamento.DBGridFormasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  VAR
    TOTAL1 :Real;
begin
  { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;

   Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);

   if Key = vk_space then
   begin
   formVendas.CDSFormas.Edit;
   formVendas.CDSFormasVALOR.Value :=0;

   
   Total1 := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...
   formVendas.CDSFormas.Edit;
   formVendas.CDSFormasVALOR.AsFloat := EdtTotalLiquido.Value - TOTAL1;
  // EdtTotalGeral.Value  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...
   if formVendas.CDSFormasvalor.AsString = '' then
            begin
            formVendas.CDSFormas.Edit;
            formVendas.CDSFormasvalor.AsFloat := 0;
            end ;
             if formVendas.CDSFormasvalor.AsFloat > 99999999 then
           begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
          if formVendas.CDSFormasvalor.AsFloat < 0  then
         begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
   formVendas.CDSFormas.Next;
   formVendas.CDSFormas.Prior;


   end;
end;

procedure TFormParcelamento.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;
   Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);
end;

procedure TFormParcelamento.DBGridFormasColEnter(Sender: TObject);
begin
   if DBGridFormas.SelectedIndex = 0 then
      DBGridFormas.SelectedIndex:= 1;
end;

procedure TFormParcelamento.DBGridFormasEnter(Sender: TObject);
begin
   formVendas.CDSFormas.First;
   DBGridFormas.SelectedIndex:= 1;
   if formVendas.CDSFormasvalor.AsFloat > 99999999 then
   begin
     formVendas.CDSFormas.Edit;
     formVendas.CDSFormasvalor.AsFloat := 0;
   end;
end;

procedure TFormParcelamento.DBGridFormasKeyPress(Sender: TObject;
  var Key: Char);
  var bPagou, bErroFormas : boolean;
    cSomaFormas : Real;
    TIPO : string;
begin

  if not (key in ['0'..'9', #13, #8, #9,',']) then
     key:= #0;

  if Key =#8 then
  begin
    formVendas.CDSFormas.Edit;
    formVendas.CDSFormasVALOR.AsFloat := 0;
    formVendas.CDSFormasVALOR.AsFloat := 0;
  end;

 
   if Key =#9 then
   Begin
     with formVendas.CDSFormas do
      begin
         first;
         while not eof do
            begin
            if formVendas.CDSFormasvalor.AsString = '' then
            begin
            formVendas.CDSFormas.Edit;
            formVendas.CDSFormasvalor.AsFloat := 0;
            end ;
           if formVendas.CDSFormasvalor.AsFloat > 99999999 then
           begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
          if formVendas.CDSFormasvalor.AsFloat < 0  then
         begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
            Next;
         end;
         end;
  end;
   { Verifica Formas de Pagamento }

   if Key =#13 then
   Begin
   if formVendas.CDSFormasvalor.asstring ='' then
   begin
     formVendas.CDSFormas.Edit;
    formVendas.CDSFormasvalor.AsFloat := 0;
   end;

   if formVendas.CDSFormasvalor.AsFloat > 99999999 then
   begin
     formVendas.CDSFormas.Edit;
     formVendas.CDSFormasvalor.AsFloat := 0;
   end;
    if formVendas.CDSFormasvalor.AsFloat < 0  then
   begin
     formVendas.CDSFormas.Edit;
     formVendas.CDSFormasvalor.AsFloat := 0;
   end;
   
   DBGridFormasTotalsUpdated(Sender);
   //CDSFormas.Next;
   if formVendas.CDSFormasTIPO.Text = 'A' then
   begin
   IF formVendas.CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;
   end;
   if formVendas.CDSFormasTIPO.Text = 'V' then
   begin
   IF formVendas.CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;
   end;

   if formVendas.CDSFormasTIPO.Text = 'C' then
   begin
   Total := ExatoCurrency(formVendas.CDSFormasVALOR.Value,2);
   Total1 :=ExatoCurrency(EdtTotalLiquido.Value,2);
   IF total > total1 then
   BEGIN
     showmessage('Valor total do Crediario não pode ser maior que a venda');
     formVendas.CDSFormas.Edit;
     formVendas.CDSFormasVALOR.AsFloat := EdtTotalLiquido.Value;
     DBGridFormas.SetFocus;
     suiButton3.Enabled := false;
     suiButton2.Enabled := false;
     exit;
     abort;
   end;

   TIPO := 'C';
   IF formVendas.CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   suiButton3.Enabled := false;
    suiButton2.Enabled := false;
   ClientDataset1.First;
   while not clientDataset1.EOF do
   begin
   ClientDataset1.Delete;
   end;
   end else
   IF formVendas.CDSFormasVALOR.AsFloat > 0.01 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   QPGTO.SQL.CLEAR;
   QPGTO.SQL.Add('select * FROM CONDICAO_PAGAMENTO WHERE TIPO_PAGAMENTO ='+ QuotedStr(TIPO)+'');
   QPGTO.SQL.Add('ORDER BY DESCRICAO ASC');
   qPGTO.Open;
   CDS_PAGTO.Open;
   suiButton3.Enabled := True;
   suiButton2.Enabled := false;
   XDBGrid1.SetFocus;
   end;
   end;
   //   CDSFormas.Next;
   //   CDSFormas.Prior;
    //   EdtTotalGeral.Value  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...

   if formVendas.CDSFormasTIPO.Text = 'H' then
   begin
   TIPO := 'H';
   IF formVendas.CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   suiButton3.Enabled := false;
   ClientDataset1.First;
   while not clientDataset1.EOF do
   begin
   ClientDataset1.Delete;
   end;
   {end else
   IF CDSFormasVALOR.AsFloat > 0.01 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   QPGTO.SQL.CLEAR;
   QPGTO.SQL.Add('select * FROM CONDICAO_PAGAMENTO WHERE TIPO_PAGAMENTO ='+ QuotedStr(TIPO)+'');
   QPGTO.SQL.Add('ORDER BY DESCRICAO ASC');
   qPGTO.Open;
   CDS_PAGTO.Open;
   suiButton3.Enabled := True;
   XDBGrid1.SetFocus; }
   suiButton2.Enabled := True;
   end;
   IF formVendas.CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   suiButton2.Enabled := True;
   end;
   end;

   if formVendas.CDSFormasTIPO.Text = 'F' then
   begin
   Total := ExatoCurrency(formVendas.CDSFormasVALOR.Value,2);
   Total1 :=ExatoCurrency(EdtTotalLiquido.Value,2);
   IF total > total1 then
   BEGIN
     showmessage('Valor total da venda no Cartão não pode ser maior que a venda');
     formVendas.CDSFormas.Edit;
     formVendas.CDSFormasVALOR.AsFloat := EdtTotalLiquido.Value;
     DBGridFormas.SetFocus;
     suiButton3.Enabled := false;
     suiButton2.Enabled := false;
     exit;
     abort;
   end;
   TIPO := 'F';
   IF formVendas.CDSFormasVALOR.AsFloat = 0 then
   BEGIN
   CDS_PAGTO.Close;
   QPGTO.Close;
   suiButton3.Enabled := false;
   ClientDataset1.First;
   while not clientDataset1.EOF do
   begin
   ClientDataset1.Delete;
   end;
   end else
   IF formVendas.CDSFormasVALOR.AsFloat > 0.01 then
   BEGIN
  { CDS_PAGTO.Close;
   QPGTO.Close;
   QPGTO.SQL.CLEAR;
   QPGTO.SQL.Add('select * FROM CONDICAO_PAGAMENTO WHERE TIPO_PAGAMENTO ='+ QuotedStr(TIPO)+'');
   QPGTO.SQL.Add('ORDER BY DESCRICAO ASC');
   qPGTO.Open;
   CDS_PAGTO.Open;
   suiButton3.Enabled := False;
   XDBGrid1.SetFocus;         }
   suiButton2.Enabled := True;
   end;
   end;
   
    with formVendas.CDSFormas do
  begin
      Next;
      Prior;
      Next;
    end;
     // CDSFormas.Prior;
    //EdtTotalGeral.Value  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...

  end;
end;


procedure TFormParcelamento.DBGridFormasTotalsUpdated(Sender: TObject);
  var bPagou, bErroFormas : boolean;

begin
     //E_desconto.Text := DBGrid.Columns.Items[4].TotalFooter.Value;
     //edit60.Text  := DBGrid.Columns.Items[5].TotalFooter.Value; // pega o valor total da coluna somada...
      cSomaFormas  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...

      if cSomaFormas - EdtTotalGeral.VALUE  > 0.01 then
      begin
      EdtTroco.text :=  currtostr(cSomaFormas - EdtTotalGeral.VALUE);
      edtDiferenca.Value :=0;

      end else
      if cSomaFormas - EdtTotalGeral.VALUE  < 0.01 then
      begin
      edtDiferenca.text :=  currtostr(cSomaFormas - EdtTotalGeral.VALUE);
      EdtTroco.Value :=0;
      end;       
end;

procedure TFormParcelamento.DBGridFormasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
  if not odd(formVendas.CDSFormas.RecNo) then
  if not (gdselected in State) then
    begin
    DBGridFormas.Canvas.Brush.Color := $00FDE2BD;
    DBGridFormas.Canvas.FillRect(Rect);
    DBGridFormas.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

procedure TFormParcelamento.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
{ if not odd(CDS_PAGTO.RecNo) then
  if not (gdselected in State) then
    begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    XDBGrid1.Canvas.FillRect(Rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end; }
end;

procedure TFormParcelamento.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME; 
   Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);
   if Key = Vk_return then
   begin
     GeraParcelas;
   end;
   if Key = Vk_space then
   begin
     GeraParcelas;
   end;
end;

procedure TFormParcelamento.GeraParcelas;
 VAr
  desconto, PARCELADO :Real;
  DESCONT, TP : string;
begin
if  xDBGrid1.Columns.Items[0].CheckBox = true then
//if xDBGRID1.COLUMNS[0].CheckBox = True then
begin
DBEdit3.Text := CDS_PAGTONUMERO_PAR.Text;
DBEdit4.Text := CDS_PAGTOVARIACAO_DIAS.Text;

valor := 0;
venda := 0;
troco := 0;
juros := 0;
ENC   := 0;
Encargos :=0;
DESCONT := '0';
entrada := 0;
PARCELADO := 0;
//calculo dejuros
valor := 0;
DESCONT := FormatCurr('0.00', EdtPercentualDesconto.Value);
DESCONTO := StrToFloatDef(DESCONT,0.00);


if TotalizaFormaPagamento('A') > 0 then
begin
entrada  := cTotalForma;
end;

//CDSFormas.Locate('TIPO',TP,[]);
// if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
//PARCELADO  := CDSFormasVALOR.AsFloat;

if TotalizaFormaPagamento('H') > 0 then
begin
PARCELADO  := cTotalForma;
end;

if TotalizaFormaPagamento('C') > 0 then
begin
PARCELADO  := cTotalForma;
end;

if TotalizaFormaPagamento('F') > 0 then
begin
PARCELADO  := cTotalForma;
end;

//valor := (PARCELADO);
venda := PARCELADO;

juros :=  CDS_PAGTOJUROS_BASE.AsCurrency;

{if entrada >= EdtTotalLiquido.Value then
begin
Enc :=  (juros * venda);
Encargos := (Enc /100) - venda;
CurrencyEdit5.Value := Encargos + venda;
total_venda := (venda + Encargos);
CurrencyEdit6.Value := total_venda;
troco := (avista + desconto - CurrencyEdit1.Value);
EdtTotalGeral.value := (VALOR);
  end else }

if entrada < EdtTotalLiquido.Value then
begin
troco:= 0;
enc := 0;
total_venda := 0;
Enc :=  ( venda * juros );
Encargos := venda + (Enc /100) - venda;
//CurrencyEdit5.Value := Encargos + venda;
total_venda := (venda + Encargos);

parcelado_total     := ExatoCurrency(total_venda,2);
EDTJUROS.Value      := ExatoCurrency(Encargos,2);
EdtTotalGeral.Value := EdtTotalLiquido.Value + EDTJUROS.Value ;
//EdtTotalGeral.value := (total_venda);
end;

//EdtTroco.Value := troco;



//entrada  := avista;

//EdtTotalGeral.value := (VlrVenda-entrada);
//sValor := FormatFloat(CurrencyEdit2.Text,0.00);
total     := ExatoCurrency(parcelado_total,2);

vlrvenda  :=ExatoCurrency(EdtTotalGeral.Value,2);

Parcela   := CDS_PAGTONUMERO_PAR.AsInteger;
VP:= (Total/Parcela);

ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;

suiButton3.Click;
end;
end;

procedure TFormParcelamento.XDBGrid1CellClick(Column: TXColumn);
begin
GeraParcelas;
end;

procedure TFormParcelamento.EdtTotalLiquidoExit(Sender: TObject);
begin
 if strtocurr(EdtTotalLiquido.Text) < 0 then
      begin
         showmessage('Valor da Venda não pode ser negativo');
         EdtValorDesconto.SetFocus;
         exit;
         abort;
      end;
   cTotalVenda:= EdtTotalLiquido.Value;



   if cTotalVenda >= 0 then
      begin
        // EdtTotalLiquido.Text:= currtostr(strtocurr(EdtSubTotal.Text) - cDescontoVenda);
      //  EdtTotalLiquido.Value := cTotalVenda;
        EdtTotalGeral.Value := EdtTotalLiquido.Value;
        EdtValorDesconto.Value := EdtSubTotal.Value - cTotalVenda;
        EdtPercentualDesconto.Value := EdtValorDesconto.Value * 100 / EdtSubTotal.Value;
        cDescontoVenda:= strtocurr(EdtValorDesconto.Text);
      end
   else
      begin
         EdtPercentualDesconto.Clear;
        // FormasPagamento;
      end;
   EdtTroco.Text:= '0';
   EdtTotalGeral.Value := EdtTotalLiquido.Value;
   DBGridFormas.SetFocus;

  desconto  := (cDescontoVenda * 100 / EdtSubTotal.Value);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsFloat;

  IF desconto > desconto2 then
  begin
  if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    FormLiberaDesconto := TFormLiberaDesconto.create(self);
    FormLiberaDesconto.showmodal;
  end else
  EdtPercentualDesconto.SetFocus;
  EdtPercentualDesconto.Clear;
  end;

end;

procedure TFormParcelamento.DBComboClienteButtonClick(Sender: TObject);
begin
      formVendas.Sds_pedidos.Edit;
      FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.Edit1.Text := DBComboCliente.Text;
      FormConsClientes.ShowModal;    
      

      if not DM.SDS_Clientes.Eof then
      begin
      DBComboCliente.Text                        := DM.SDS_ClientesCODIGO.text;
      formVendas.Sds_pedidosCODIGO_CLIENTE.Text  := DBComboCliente.Text;
      formVendas.Sds_pedidosNOME_CLIENTE.Text    :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      formVendas.Sds_pedidosCODIGO_CLIENTE.Text  :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      formVendas.Sds_pedidosENDERECO.Text        := DM.SDS_ClientesENDERECO.AsString;
      formVendas.Sds_pedidosCPF_CNPJ.Text        := DM.SDS_ClientesCPF_CNPJ.Text;
      formVendas.Sds_pedidosRG_IE.Text           := DM.SDS_ClientesRG_IE.Text;
      formVendas.Sds_pedidosfone.Text            := DM.SDS_ClientesTELEFONE.Text;
      formVendas.Sds_pedidosCIDADE.Text          := dm.SDS_ClientesCIDADE.AsString;
      formVendas.Sds_pedidosBAIRRO.Text          := DM.Sds_clientesBairro.Text;
      formVendas.Sds_pedidosPROPRIEDADE.Text     := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
      formVendas.Sds_pedidosMED_VETERINARIO.Text :=DM.SDS_ClientesNOME_VETERINARIO.Text;
      formVendas.Sds_pedidosCEP.Text             := removechar(DM.SDS_ClientesCEP.Text);
      formVendas.Sds_pedidosUF.Text              := DM.SDS_ClientesUF.Text;
      formVendas.Sds_pedidosCOD_IBGE.Text        := DM.SDS_ClientesCOD_IBGE.Text;
      formVendas.Sds_pedidosNUMERO.AsInteger     := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
      formVendas.Sds_pedidosTIPO.TEXT            := DM.SDS_ClientesTIPO.Text;
      formVendas.Sds_pedidosIE_PRODUTOR.Text     := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
      formVendas.Sds_pedidosPROD_RURAL.Text      := DM.SDS_ClientesPRODUTOR_RURAL.Text;
      formVendas.DBComboCliente.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
      end else
      begin
      DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
      end;
      
end;

procedure TFormParcelamento.DBComboClienteChange(Sender: TObject);
begin
IF (DBComboCliente.Text>='A') AND (DBComboCliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (DBComboCliente.Text>='0') AND (DBComboCliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF DBComboCliente.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormParcelamento.DBComboClienteEnter(Sender: TObject);
begin
formVendas.Sds_pedidos.Edit;
edit2.Clear;
DBComboClienteChange(Sender);
end;

procedure TFormParcelamento.DBComboClienteExit(Sender: TObject);
begin
formVendas.Sds_pedidos.Edit;
  // DBComboCliente.Text := DM.SDS_ClientesCODIGO.Text;
  {Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  DBComboCliente.Text := DM.SDS_ClientesCODIGO.Text;
  Sds_pedidosCEP.Text := DM.SDS_ClientesCEP.Text;
  Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
        Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;    }
 // Sds_pedidos.post;

 if DBComboCliente.Text = '' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   //Application.MESSAGEBOX('Informe o nome ou Codigo do cliente', 'Atenção', MB_ICONASTERISK + MB_OK + MB_DEFBUTTON2);
   DBComboCliente.SetFocus;
 end else
{ if DBComboCliente.Text = ' ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else
  if DBComboCliente.Text = '  ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else
  if DBComboCliente.Text = '   ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else
  if DBComboCliente.Text = '    ' then
 begin
   DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
   DBComboCliente.SetFocus;
 end else  }
 begin
 // DM.SDS_Clientes.Active := False;

 if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where NOME_RS like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC';
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  DBComboClienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  formVendas.Sds_pedidos.Edit;
  formVendas.Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  formVendas.Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  formVendas.Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  formVendas.Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  formVendas.Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  formVendas.Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  formVendas.Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
  formVendas.Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  formVendas.Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  formVendas.Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  DBComboCliente.Text := DM.SDS_ClientesCODIGO.Text;
  formVendas.Sds_pedidosCEP.Text := removechar(DM.SDS_ClientesCEP.Text);
  formVendas.Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  formVendas.Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  formVendas.Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  formVendas.Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
  formVendas.Sds_pedidosIE_PRODUTOR.Text  := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
  formVendas.Sds_pedidosPROD_RURAL.Text   := DM.SDS_ClientesPRODUTOR_RURAL.Text;
  formVendas.DBComboCliente.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
    end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF DBComboCliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 DBComboCliente.Text := dm.SDS_CONFIGURACOESCLIENTE_PADRAO.text;
 DBComboCliente.SetFocus;
end else

  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where CODIGO like ' + #39 + '%' + DBComboCliente.Text + '%' + #39+'order by NOME_RS ASC';
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);
  DBComboCliente.Text := RemoveChar(DBComboCliente.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
DBComboCliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  formVendas.Sds_pedidos.Edit;
  formVendas.Sds_pedidosNOME_CLIENTE.Text    := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  formVendas.Sds_pedidosCODIGO_CLIENTE.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  formVendas.Sds_pedidosENDERECO.Text        := DM.SDS_ClientesENDERECO.AsString;
  formVendas.Sds_pedidosCPF_CNPJ.Text        := DM.SDS_ClientesCPF_CNPJ.Text;
  formVendas.Sds_pedidosRG_IE.Text           := DM.SDS_ClientesRG_IE.Text;
  formVendas.Sds_pedidosfone.Text            := DM.SDS_ClientesTELEFONE.Text;
  formVendas.Sds_pedidosCIDADE.Text          := dm.SDS_ClientesCIDADE.AsString;
  formVendas.Sds_pedidosBAIRRO.Text          := DM.Sds_clientesBairro.Text;
  formVendas.Sds_pedidosPROPRIEDADE.Text     := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  formVendas.Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  formVendas.Sds_pedidosCEP.text             := removechar(DM.SDS_ClientesCEP.Text);
  formVendas.Sds_pedidosUF.Text              := DM.SDS_ClientesUF.Text;
  formVendas.Sds_pedidosCOD_IBGE.Text        := DM.SDS_ClientesCOD_IBGE.Text;
  formVendas.Sds_pedidosNUMERO.AsInteger     := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  formVendas.Sds_pedidosTIPO.TEXT            := DM.SDS_ClientesTIPO.Text;
  formVendas.Sds_pedidosIE_PRODUTOR.Text     := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
  formVendas.Sds_pedidosPROD_RURAL.Text      := DM.SDS_ClientesPRODUTOR_RURAL.Text;
  formVendas.DBComboCliente.Text  := DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;

 end;
 end;

       if DM.SDS_ClientesTESTA_LIMITE.Text = 'S' then
       begin
       If DM.SDS_CONFIGURACOESDEBITOS_CLIENTE.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DBComboCliente.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
      // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Credito > 0 THEN
       begin
       FormDebitos :=nil;
       FormDebitos:=TFormDebitos.Create(self);
       FormDebitos.ShowModal;
       end;
       end;
       end;
end;

       if DM.SDS_ClientesATIVO.Text = 'I' then
       begin
        // ShowMessage('Cliente Inativo Não é Possivel Efetuar a Venda...!!!');
         Application.MESSAGEBOX('Cliente Inativo Não é Possivel Efetuar a Venda, Favor Escolher um Cliente Ativo', 'Atenção', MB_ICONASTERISK + MB_OK  + MB_DEFBUTTON2);
         DBComboCliente.SetFocus;
       end;

end;

procedure TFormParcelamento.DBComboClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Key in ['a'..'z', 'A'..'Z', '0'..'9', #8, #13, #32])then
begin
ShowMessage(key+ ' é um caracter inválido, digite apenas letras ou números');
key := #0;
DBComboCliente.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;


if DBComboCliente.Text > '9999999' then
begin
DBComboCliente.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
end;
formVendas.Sds_pedidos.edit;

end;

if Key = #13 then
//if Key = #9 then

 BEGIN
formVendas.Sds_pedidos.edit;

//DM.SDS_Clientes.Filtered := False;

{if edit2.Text='LETRAS' THEN
 BEGIN
 ACHOU := DM.SDS_Clientes.locate('nome_rs',DBComboCliente.Text,[loCaseInsensitive]);

 IF ACHOU=FALSE THEN
 DBComboClienteButtonClick(sender);

IF ACHOU=TRUE THEN
  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  DBComboCliente.Text := DM.SDS_ClientesCODIGO.Text;
  Sds_pedidosCEP.Text := DM.SDS_ClientesCEP.Text;
  Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;
  //Sds_pedidos_itens.Edit;
end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
ACHOU:= DM.SDS_Clientes.locate('CODIGO', DBComboCliente.Text,[]);


IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
//DBComboCliente.SetFocus;


IF ACHOU=TRUE THEN

  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  Sds_pedidosCEP.Text := DM.SDS_ClientesCEP.Text;
  Sds_pedidosUF.Text  := DM.SDS_ClientesUF.Text;
  Sds_pedidosCOD_IBGE.Text := DM.SDS_ClientesCOD_IBGE.Text;
  Sds_pedidosNUMERO.AsInteger := StrToIntDef(DM.SDS_ClientesNUMERO.Text,0);
  Sds_pedidosTIPO.TEXT        := DM.SDS_ClientesTIPO.Text;  }
 // Sds_pedidos_itens.Edit;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');

DBComboClienteButtonClick(sender);

IF ACHOU=TRUE THEN
  Sds_pedidosNOME_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Sds_pedidosCODIGO_CLIENTE.Text :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
  Sds_pedidosENDERECO.Text := DM.SDS_ClientesENDERECO.AsString;
  Sds_pedidosCPF_CNPJ.Text := DM.SDS_ClientesCPF_CNPJ.Text;
  Sds_pedidosRG_IE.Text :=    DM.SDS_ClientesRG_IE.Text;
  Sds_pedidosfone.Text :=     DM.SDS_ClientesTELEFONE.Text;
  Sds_pedidosCIDADE.Text :=   dm.SDS_ClientesCIDADE.AsString+'-'+DM.SDS_ClientesUF.AsString;
  Sds_pedidosBAIRRO.Text :=   DM.Sds_clientesBairro.Text;
  Sds_pedidosPROPRIEDADE.Text := DM.SDS_ClientesNOME_PROPRIEDADE.Text;
  Sds_pedidosMED_VETERINARIO.Text := DM.SDS_ClientesNOME_VETERINARIO.Text;
  Sds_pedidos.Post;
  Sds_pedidos_itens.Edit;
  DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
  ComboEdit1.Visible := True;
  ComboEdit1.SetFocus;   }

end;

end;

procedure TFormParcelamento.EdtValorDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8, #9, ',']) then
     key:= #0;
end;

procedure TFormParcelamento.EdtTotalLiquidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8, #9, ',']) then
     key:= #0;
end;

procedure TFormParcelamento.EdtPercentualDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9', #13, #8, #9, ',']) then
     key:= #0;
end;

procedure TFormParcelamento.DBGridFormasExit(Sender: TObject);
begin
    with formVendas.CDSFormas do
      begin
         first;
         while not eof do
            begin
            if formVendas.CDSFormasvalor.AsString = '' then
            begin
            formVendas.CDSFormas.Edit;
            formVendas.CDSFormasvalor.AsFloat := 0;
            end ;

         if formVendas.CDSFormasvalor.AsFloat > 99999999 then
           begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
          if formVendas.CDSFormasvalor.AsFloat < 0  then
         begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;

         Next;
         end;
         end;
end;

procedure TFormParcelamento.DBGridFormasRowSelect(Sender: TObject;
  Action: TSelectAction);
begin
  with formVendas.CDSFormas do
      begin
         first;
         while not eof do
            begin
            if formVendas.CDSFormasvalor.AsString = '' then
            begin
            formVendas.CDSFormas.Edit;
            formVendas.CDSFormasvalor.AsFloat := 0;
            end ;
             if formVendas.CDSFormasvalor.AsFloat > 99999999 then
           begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
          if formVendas.CDSFormasvalor.AsFloat < 0  then
         begin
           formVendas.CDSFormas.Edit;
           formVendas.CDSFormasvalor.AsFloat := 0;
         end;
            Next;
         end;
         end;
end;

procedure TFormParcelamento.DBGridFormasColExit(Sender: TObject);
begin
{    with CDSFormas do
      begin
         first;
         while not eof do
            begin
            if CDSFormasvalor.AsString = '' then
            begin
            CDSFormas.Edit;
            CDSFormasvalor.AsFloat := 0;
            end ;
            Next;
         end;
         end;  }
           Application.ProcessMessages;
          DBGridFormasTotalsUpdated(Sender);
end;

end.



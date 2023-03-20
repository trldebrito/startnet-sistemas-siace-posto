unit HistoricoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIPageControl, SUITabControl, StdCtrls, Mask, ToolEdit,
  Mylabel, RXCtrls, ExtCtrls, grids, DBGrids, SUIDBCtrls, SUIEdit,
  DBCtrls, SUIDlg, DB, DBTables, DBClient, SimpleDS, SUIMemo, CurrEdit,
  ACBrBase;

type
  TFormHistoricoCliente = class(TForm)
    Panel2: TPanel;
    Panel6: TPanel;
    RxLabel5: TRxLabel;
    Panel7: TPanel;
    RxLabel6: TRxLabel;
    Panel8: TPanel;
    RxLabel7: TRxLabel;
    Panel5: TPanel;
    RxLabel1: TRxLabel;
    myLabel3d1: TmyLabel3d;
    Cliente: TComboEdit;
    pc: TsuiPageControl;
    TabSheet1: TsuiTabSheet;
    TabSheet2: TsuiTabSheet;
    TBCPP: TsuiTabSheet;
    suiTabSheet1: TsuiTabSheet;
    RxLabel37: TRxLabel;
    RxLabel38: TRxLabel;
    RxLabel39: TRxLabel;
    Panel9: TPanel;
    DBGrid2: TsuiDBGrid;
    Panel10: TPanel;
    RxLabel4: TRxLabel;
    RxLabel8: TRxLabel;
    Panel11: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    DBGrid1: TsuiDBGrid;
    Panel1: TPanel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    Bevel1: TBevel;
    suiTabSheet2: TsuiTabSheet;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label6: TLabel;
    RxLabel9: TRxLabel;
    dbt_codigo: TsuiDBEdit;
    RxLabel10: TRxLabel;
    RxLabel48: TRxLabel;
    RxLabel11: TRxLabel;
    db_nome: TsuiDBEdit;
    RxLabel12: TRxLabel;
    suiDBEdit4: TsuiDBEdit;
    RxLabel13: TRxLabel;
    suiDBEdit1: TsuiDBEdit;
    RxLabel14: TRxLabel;
    suiDBEdit6: TsuiDBEdit;
    RxLabel15: TRxLabel;
    suiDBEdit2: TsuiDBEdit;
    RxLabel16: TRxLabel;
    suiDBEdit8: TsuiDBEdit;
    RxLabel17: TRxLabel;
    suiDBEdit3: TsuiDBEdit;
    RxLabel18: TRxLabel;
    suiDBEdit7: TsuiDBEdit;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    RxLabel21: TRxLabel;
    suiDBEdit9: TsuiDBEdit;
    RxLabel22: TRxLabel;
    suiDBEdit10: TsuiDBEdit;
    RxLabel23: TRxLabel;
    suiDBEdit11: TsuiDBEdit;
    RxLabel24: TRxLabel;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit13: TsuiDBEdit;
    suiDBEdit14: TsuiDBEdit;
    suiDBEdit15: TsuiDBEdit;
    suiDBEdit12: TsuiDBEdit;
    MessageLocCli: TsuiMessageDialog;
    MessageCli: TsuiMessageDialog;
    suiDBEdit16: TsuiDBEdit;
    SDS_COMPRAS: TSimpleDataSet;
    DTS_COMPRAS: TDataSource;
    SDS_COMPRASCODIGO: TIntegerField;
    SDS_COMPRASVALOR_ITENS: TFMTBCDField;
    SDS_COMPRASVALOR_DESCONTO: TFMTBCDField;
    SDS_COMPRASVALOR_TOTAL: TFMTBCDField;
    SDS_COMPRASUSUARIO: TStringField;
    SDS_COMPRASUSUARIO_ENTREGA: TStringField;
    SDS_COMPRASDATA_PEDIDO: TDateField;
    SDS_COMPRASDATA_ENTREGA: TDateField;
    SDS_COMPRASCODIGO_CLIENTE: TIntegerField;
    SDS_COMPRASPAGAMENTO: TStringField;
    Edit2: TsuiMemo;
    Edit3: TsuiMemo;
    suiMemo2: TsuiMemo;
    suiMemo5: TsuiMemo;
    suiMemo12: TsuiMemo;
    suiMemo14: TsuiMemo;
    suiMemo15: TsuiMemo;
    suiMemo16: TsuiMemo;
    suiMemo17: TsuiMemo;
    suiMemo18: TsuiMemo;
    suiMemo19: TsuiMemo;
    SDS_COMPRASV: TSimpleDataSet;
    DTS_COMPRASV: TDataSource;
    SDS_COMPRASVCODIGO: TIntegerField;
    SDS_COMPRASVVALOR_ITENS: TFMTBCDField;
    SDS_COMPRASVVALOR_DESCONTO: TFMTBCDField;
    SDS_COMPRASVVALOR_TOTAL: TFMTBCDField;
    SDS_COMPRASVVALOR_COMISSAO: TFMTBCDField;
    SDS_COMPRASVUSUARIO: TStringField;
    SDS_COMPRASVUSUARIO_ENTREGA: TStringField;
    SDS_COMPRASVDATA_PEDIDO: TDateField;
    SDS_COMPRASVDATA_ENTREGA: TDateField;
    SDS_COMPRASVCODIGO_CLIENTE: TIntegerField;
    SDS_COMPRASVNOME_CLIENTE: TStringField;
    SDS_DocVencer: TSimpleDataSet;
    DTS_DocVencer: TDataSource;
    SDS_DocVencerCODIGO: TIntegerField;
    SDS_DocVencerCODIGO_CLIENTE: TIntegerField;
    SDS_DocVencerDATA_COMPRA: TDateField;
    SDS_DocVencerDATA_VENCIMENTO: TDateField;
    SDS_DocVencerDATA_BAIXA: TDateField;
    SDS_DocVencerHISTORICO: TStringField;
    SDS_DocVencerUSUARIO_VENDA: TStringField;
    SDS_DocVencerUSUARIO_BAIXA: TStringField;
    SDS_DocVencerSITUACAO: TStringField;
    SDS_DocVencerVALOR_COMPRA: TFMTBCDField;
    SDS_DocVencerVALOR_JUROS: TFMTBCDField;
    SDS_DocVencerVALOR_ACRESCIMO: TFMTBCDField;
    SDS_DocVencerVALOR_DESCONTO: TFMTBCDField;
    SDS_DocVencerVALOR_PAGAR: TFMTBCDField;
    SDS_DocVencerVALOR_PAGO: TFMTBCDField;
    SDS_DocVencerVALOR_TOTAL: TFMTBCDField;
    DTS_DocRecebidos: TDataSource;
    SDS_DocRecebidos: TSimpleDataSet;
    SDS_DocRecebidosCODIGO: TIntegerField;
    SDS_DocRecebidosCODIGO_CLIENTE: TIntegerField;
    SDS_DocRecebidosDATA_COMPRA: TDateField;
    SDS_DocRecebidosDATA_VENCIMENTO: TDateField;
    SDS_DocRecebidosDATA_BAIXA: TDateField;
    SDS_DocRecebidosHISTORICO: TStringField;
    SDS_DocRecebidosUSUARIO_VENDA: TStringField;
    SDS_DocRecebidosUSUARIO_BAIXA: TStringField;
    SDS_DocRecebidosSITUACAO: TStringField;
    SDS_DocRecebidosVALOR_COMPRA: TFMTBCDField;
    SDS_DocRecebidosVALOR_JUROS: TFMTBCDField;
    SDS_DocRecebidosVALOR_ACRESCIMO: TFMTBCDField;
    SDS_DocRecebidosVALOR_DESCONTO: TFMTBCDField;
    SDS_DocRecebidosVALOR_PAGAR: TFMTBCDField;
    SDS_DocRecebidosVALOR_PAGO: TFMTBCDField;
    SDS_DocRecebidosVALOR_TOTAL: TFMTBCDField;
    SDS_ChequesBaixar: TSimpleDataSet;
    DTS_ChequesBaixar: TDataSource;
    SDS_ChequesBaixarCODIGO: TIntegerField;
    SDS_ChequesBaixarCODIGO_COMPRA: TIntegerField;
    SDS_ChequesBaixarBANCO: TStringField;
    SDS_ChequesBaixarAGENCIA: TStringField;
    SDS_ChequesBaixarCONTA_CORRENTE: TStringField;
    SDS_ChequesBaixarCONTA_DESDE: TDateField;
    SDS_ChequesBaixarTITULAR: TStringField;
    SDS_ChequesBaixarTIPO_CHEQUE: TStringField;
    SDS_ChequesBaixarN_CHEQUE: TStringField;
    SDS_ChequesBaixarQNT: TStringField;
    SDS_ChequesBaixarVALOR_CHEQUE: TFMTBCDField;
    SDS_ChequesBaixarCLIENTE: TStringField;
    SDS_ChequesBaixarRETORNARDO: TStringField;
    SDS_ChequesBaixarRETORNADO_PAGO: TStringField;
    SDS_ChequesBaixarMOTIVO_RETORNO: TStringField;
    SDS_ChequesBaixarDATA_CADASTRO: TDateField;
    SDS_ChequesBaixarDATA_DEPOSITO: TDateField;
    SDS_ChequesBaixarDATA_RETORNO: TDateField;
    SDS_ChequesBaixarDATA_BAIXA: TDateField;
    SDS_ChequesBaixarUSUARIO_CADASTRO: TStringField;
    SDS_ChequesBaixarUSUARIO_BAIXA: TStringField;
    SDS_ChequesBaixarCOMPENSADO: TStringField;
    SDS_ChequesBaixarCODIGO_CC: TIntegerField;
    SDS_ChequesBaixarNUMERO_CC: TStringField;
    DTS_ChequesBaixados: TDataSource;
    SDS_ChequesBaixados: TSimpleDataSet;
    SDS_ChequesBaixadosCODIGO: TIntegerField;
    SDS_ChequesBaixadosCODIGO_COMPRA: TIntegerField;
    SDS_ChequesBaixadosBANCO: TStringField;
    SDS_ChequesBaixadosAGENCIA: TStringField;
    SDS_ChequesBaixadosCONTA_CORRENTE: TStringField;
    SDS_ChequesBaixadosCONTA_DESDE: TDateField;
    SDS_ChequesBaixadosTITULAR: TStringField;
    SDS_ChequesBaixadosTIPO_CHEQUE: TStringField;
    SDS_ChequesBaixadosN_CHEQUE: TStringField;
    SDS_ChequesBaixadosQNT: TStringField;
    SDS_ChequesBaixadosVALOR_CHEQUE: TFMTBCDField;
    SDS_ChequesBaixadosCLIENTE: TStringField;
    SDS_ChequesBaixadosRETORNARDO: TStringField;
    SDS_ChequesBaixadosRETORNADO_PAGO: TStringField;
    SDS_ChequesBaixadosMOTIVO_RETORNO: TStringField;
    SDS_ChequesBaixadosDATA_CADASTRO: TDateField;
    SDS_ChequesBaixadosDATA_DEPOSITO: TDateField;
    SDS_ChequesBaixadosDATA_RETORNO: TDateField;
    SDS_ChequesBaixadosDATA_BAIXA: TDateField;
    SDS_ChequesBaixadosUSUARIO_CADASTRO: TStringField;
    SDS_ChequesBaixadosUSUARIO_BAIXA: TStringField;
    SDS_ChequesBaixadosCOMPENSADO: TStringField;
    SDS_ChequesBaixadosCODIGO_CC: TIntegerField;
    SDS_ChequesBaixadosNUMERO_CC: TStringField;
    DTS_ChequesRetornados: TDataSource;
    SDS_ChequesRetornados: TSimpleDataSet;
    SDS_ChequesRetornadosCODIGO: TIntegerField;
    SDS_ChequesRetornadosCODIGO_COMPRA: TIntegerField;
    SDS_ChequesRetornadosBANCO: TStringField;
    SDS_ChequesRetornadosAGENCIA: TStringField;
    SDS_ChequesRetornadosCONTA_CORRENTE: TStringField;
    SDS_ChequesRetornadosCONTA_DESDE: TDateField;
    SDS_ChequesRetornadosTITULAR: TStringField;
    SDS_ChequesRetornadosTIPO_CHEQUE: TStringField;
    SDS_ChequesRetornadosN_CHEQUE: TStringField;
    SDS_ChequesRetornadosQNT: TStringField;
    SDS_ChequesRetornadosVALOR_CHEQUE: TFMTBCDField;
    SDS_ChequesRetornadosCLIENTE: TStringField;
    SDS_ChequesRetornadosRETORNARDO: TStringField;
    SDS_ChequesRetornadosRETORNADO_PAGO: TStringField;
    SDS_ChequesRetornadosMOTIVO_RETORNO: TStringField;
    SDS_ChequesRetornadosDATA_CADASTRO: TDateField;
    SDS_ChequesRetornadosDATA_DEPOSITO: TDateField;
    SDS_ChequesRetornadosDATA_RETORNO: TDateField;
    SDS_ChequesRetornadosDATA_BAIXA: TDateField;
    SDS_ChequesRetornadosUSUARIO_CADASTRO: TStringField;
    SDS_ChequesRetornadosUSUARIO_BAIXA: TStringField;
    SDS_ChequesRetornadosCOMPENSADO: TStringField;
    SDS_ChequesRetornadosCODIGO_CC: TIntegerField;
    SDS_ChequesRetornadosNUMERO_CC: TStringField;
    DTS_ChRetBaixar: TDataSource;
    SDS_ChRetBaixar: TSimpleDataSet;
    DTS_ChRetBaixados: TDataSource;
    SDS_ChRetBaixados: TSimpleDataSet;
    SDS_ChRetBaixarCODIGO: TIntegerField;
    SDS_ChRetBaixarCODIGO_COMPRA: TIntegerField;
    SDS_ChRetBaixarBANCO: TStringField;
    SDS_ChRetBaixarAGENCIA: TStringField;
    SDS_ChRetBaixarCONTA_CORRENTE: TStringField;
    SDS_ChRetBaixarCONTA_DESDE: TDateField;
    SDS_ChRetBaixarTITULAR: TStringField;
    SDS_ChRetBaixarTIPO_CHEQUE: TStringField;
    SDS_ChRetBaixarN_CHEQUE: TStringField;
    SDS_ChRetBaixarQNT: TStringField;
    SDS_ChRetBaixarVALOR_CHEQUE: TFMTBCDField;
    SDS_ChRetBaixarCLIENTE: TStringField;
    SDS_ChRetBaixarRETORNARDO: TStringField;
    SDS_ChRetBaixarRETORNADO_PAGO: TStringField;
    SDS_ChRetBaixarMOTIVO_RETORNO: TStringField;
    SDS_ChRetBaixarDATA_CADASTRO: TDateField;
    SDS_ChRetBaixarDATA_DEPOSITO: TDateField;
    SDS_ChRetBaixarDATA_RETORNO: TDateField;
    SDS_ChRetBaixarDATA_BAIXA: TDateField;
    SDS_ChRetBaixarUSUARIO_CADASTRO: TStringField;
    SDS_ChRetBaixarUSUARIO_BAIXA: TStringField;
    SDS_ChRetBaixarCOMPENSADO: TStringField;
    SDS_ChRetBaixarCODIGO_CC: TIntegerField;
    SDS_ChRetBaixarNUMERO_CC: TStringField;
    SDS_ChRetBaixadosCODIGO: TIntegerField;
    SDS_ChRetBaixadosCODIGO_COMPRA: TIntegerField;
    SDS_ChRetBaixadosBANCO: TStringField;
    SDS_ChRetBaixadosAGENCIA: TStringField;
    SDS_ChRetBaixadosCONTA_CORRENTE: TStringField;
    SDS_ChRetBaixadosCONTA_DESDE: TDateField;
    SDS_ChRetBaixadosTITULAR: TStringField;
    SDS_ChRetBaixadosTIPO_CHEQUE: TStringField;
    SDS_ChRetBaixadosN_CHEQUE: TStringField;
    SDS_ChRetBaixadosQNT: TStringField;
    SDS_ChRetBaixadosVALOR_CHEQUE: TFMTBCDField;
    SDS_ChRetBaixadosCLIENTE: TStringField;
    SDS_ChRetBaixadosRETORNARDO: TStringField;
    SDS_ChRetBaixadosRETORNADO_PAGO: TStringField;
    SDS_ChRetBaixadosMOTIVO_RETORNO: TStringField;
    SDS_ChRetBaixadosDATA_CADASTRO: TDateField;
    SDS_ChRetBaixadosDATA_DEPOSITO: TDateField;
    SDS_ChRetBaixadosDATA_RETORNO: TDateField;
    SDS_ChRetBaixadosDATA_BAIXA: TDateField;
    SDS_ChRetBaixadosUSUARIO_CADASTRO: TStringField;
    SDS_ChRetBaixadosUSUARIO_BAIXA: TStringField;
    SDS_ChRetBaixadosCOMPENSADO: TStringField;
    SDS_ChRetBaixadosCODIGO_CC: TIntegerField;
    SDS_ChRetBaixadosNUMERO_CC: TStringField;
    Panel15: TPanel;
    Panel16: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Panel17: TPanel;
    RxLabel25: TRxLabel;
    RxLabel26: TRxLabel;
    Panel19: TPanel;
    suiDBGrid2: TsuiDBGrid;
    Panel20: TPanel;
    RxLabel27: TRxLabel;
    RxLabel28: TRxLabel;
    Panel21: TPanel;
    suiDBGrid3: TsuiDBGrid;
    Panel22: TPanel;
    RxLabel29: TRxLabel;
    RxLabel30: TRxLabel;
    Panel23: TPanel;
    Panel18: TPanel;
    Panel26: TPanel;
    Panel29: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel36: TPanel;
    suiDBGrid4: TsuiDBGrid;
    Panel37: TPanel;
    RxLabel31: TRxLabel;
    RxLabel32: TRxLabel;
    suiDBNavigator1: TsuiDBNavigator;
    suiDBNavigator4: TsuiDBNavigator;
    suiDBNavigator6: TsuiDBNavigator;
    suiDBNavigator7: TsuiDBNavigator;
    suiDBNavigator8: TsuiDBNavigator;
    suiDBNavigator9: TsuiDBNavigator;
    suiDBNavigator10: TsuiDBNavigator;
    suiMemo1: TsuiMemo;
    suiMemo3: TsuiMemo;
    suiMemo4: TsuiMemo;
    suiMemo6: TsuiMemo;
    suiMemo11: TsuiMemo;
    suiMemo13: TsuiMemo;
    suiMemo20: TsuiMemo;
    suiMemo21: TsuiMemo;
    suiMemo22: TsuiMemo;
    suiMemo71: TsuiMemo;
    suiMemo81: TsuiMemo;
    suiMemo91: TsuiMemo;
    suiMemo101: TsuiMemo;
    suiMemo23: TsuiMemo;
    Panel30: TPanel;
    RxLabel33: TRxLabel;
    suiDBGrid5: TsuiDBGrid;
    SDS_P_Cancelados: TSimpleDataSet;
    DTS_P_Cancelados: TDataSource;
    RxLabel34: TRxLabel;
    SDS_P_CanceladosCODIGO: TIntegerField;
    SDS_P_CanceladosVALOR_ITENS: TFMTBCDField;
    SDS_P_CanceladosVALOR_DESCONTO: TFMTBCDField;
    SDS_P_CanceladosVALOR_TOTAL: TFMTBCDField;
    SDS_P_CanceladosVALOR_COMISSAO: TFMTBCDField;
    SDS_P_CanceladosUSUARIO: TStringField;
    SDS_P_CanceladosDATA_PEDIDO: TDateField;
    SDS_P_CanceladosDATA_ENTREGA: TDateField;
    SDS_P_CanceladosCODIGO_CLIENTE: TIntegerField;
    SDS_P_CanceladosNOME_CLIENTE: TStringField;
    SDS_P_CanceladosSTATUS: TStringField;
    SDS_P_CanceladosPAGAMENTO: TStringField;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    suiDBNavigator2: TsuiDBNavigator;
    Panel34: TPanel;
    suiDBGrid6: TsuiDBGrid;
    Panel35: TPanel;
    RxLabel35: TRxLabel;
    RxLabel36: TRxLabel;
    SDS_Orcamentos: TSimpleDataSet;
    DTS_Orcamentos: TDataSource;
    SDS_OrcamentosCODIGO: TIntegerField;
    SDS_OrcamentosVALOR_TOTAL: TFMTBCDField;
    SDS_OrcamentosUSUARIO: TStringField;
    SDS_OrcamentosDATA: TDateField;
    SDS_OrcamentosCODIGO_CLIENTE: TIntegerField;
    SDS_OrcamentosPAGAMENTO: TStringField;
    SDS_P_CanceladosOBSERVACOES: TStringField;
    SDS_DocRecebidosPARCELA: TStringField;
    Label4: TLabel;
    suiMemo7: TsuiMemo;
    sds_doc_recebido_atrazo: TSimpleDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    FMTBCDField5: TFMTBCDField;
    FMTBCDField6: TFMTBCDField;
    FMTBCDField7: TFMTBCDField;
    StringField5: TStringField;
    dts_doc_recebido_atrazo: TDataSource;
    sds_doc_recebido_atrazoDIAS_VENCIDO: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ClienteButtonClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
  private
     Contador, Contador2,I,Int:Integer;
     X, C, R, V, S, B, A, T, D,E, L, O,P: Real;
  public
    { Public declarations }
  end;

var
  FormHistoricoCliente: TFormHistoricoCliente;

implementation

uses ModulodeDadosBaixas, ModulodeDados, ConsClientes, Z_RotinasGerais,
  DetalhesCrediario, Principal;

{$R *.dfm}

procedure TFormHistoricoCliente.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormHistoricoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormHistoricoCliente:=nil;
end;

procedure TFormHistoricoCliente.ClienteExit(Sender: TObject);
Var
Data, DataVenc,DiasVenc, DataAtual: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, NCompras, DIAS, ValCompras, VP, VU, VN, VM : Real;
Q: Integer;
begin
If  Cliente.Text <> '' then
    Begin
X:= 0;
C:= 0;
R:= 0;
S:= 0;
V:= 0;
B:= 0;
A:= 0;
T:= 0;
D:= 0;
E:= 0;
L:= 0;
O:= 0;
p:= 0;

 dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.DataSet.CommandText:='select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC';
  dm.SDS_Clientes.Active := True;
//DM.SDS_Clientes.Active:= False;
//DM.SDS_Clientes.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DM.SDS_Clientes.Active:= True;
//DM.SDS_Clientes.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;
If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;

DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
{DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Execproc; }
DataAtual:= Date;
DiasVenc := DataAtual - DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.Asdatetime;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
dias := DiasVenc;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Params[5].value := dias;
DMB.SPC_Juros.Execproc;

DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMB.SDS_Crediario_Baixa.First;

SDS_COMPRAS.Active:= True;
SDS_COMPRASV.Active:= True;
SDS_COMPRAS.First;
C:= C + SDS_COMPRASVALOR_TOTAL.AsFloat;
SDS_COMPRAS.Next;
suiMemo1.Text:= FormatFloat('R$ ##,##0.00',C);
RXLabel32.Caption:= FormatFloat('R$: ##,##0.00',C);
While not SDS_COMPRAS.Eof do
begin
C:= C + SDS_COMPRASVALOR_TOTAL.AsFloat;
SDS_COMPRAS.Next;
suiMemo1.Text:= FormatFloat('R$ ##,##0.00',C);
RXLabel32.Caption:= FormatFloat('R$: ##,##0.00',C);
end;
SDS_COMPRAS.First;
SDS_COMPRASV.First;
VP:= SDS_COMPRASVALOR_TOTAL.AsCurrency;
Edit2.Text:= SDS_COMPRASDATA_PEDIDO.AsString;
suiMemo71.Text:= FormatFloat('R$ ##,##0.00',VP);
VN:= SDS_COMPRASVVALOR_TOTAL.AsCurrency;
suiMemo91.Text:= FormatFloat('R$ ##,##0.00',VN);
SDS_COMPRAS.Last;
SDS_COMPRASV.Last;
Edit3.Text:= SDS_COMPRASDATA_PEDIDO.AsString;
VU:= SDS_COMPRASVALOR_TOTAL.AsCurrency;
suiMemo81.Text:= FormatFloat('R$ ##,##0.00',VU);
VM:= SDS_COMPRASVVALOR_TOTAL.AsCurrency;
suiMemo101.Text:= FormatFloat('R$ ##,##0.00',VM);
if SDS_COMPRAS.RecordCount = 0 then
begin
suiMemo2.Text:= FloatToStr(SDS_COMPRAS.RecordCount);
ValCompras:= 0;
suiMemo23.Text:= FormatFloat('R$ ##,##0.00',ValCompras);
end
else
begin
NCompras:= SDS_COMPRAS.RecordCount;
suiMemo2.Text:= FloatToStr(SDS_COMPRAS.RecordCount);
ValCompras:= C / NCompras;
suiMemo23.Text:= FormatFloat('R$ ##,##0.00',ValCompras);
end;

SDS_DocVencer.Active:= False;
SDS_DocVencer.Active:= True;
R:= R + SDS_DocVencerVALOR_TOTAL.AsFloat;
SDS_DocVencer.Next;
suiMemo3.Text:= FormatFloat('R$ ##,##0.00',R);
While not SDS_DocVencer.Eof do
begin
R:= R + SDS_DocVencerVALOR_TOTAL.AsFloat;
SDS_DocVencer.Next;
suiMemo3.Text:= FormatFloat('R$ ##,##0.00',R);
end;
SDS_DocVencer.First;
suiMemo5.Text:= FloatToStr(SDS_DocVencer.RecordCount);

DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.First;

V:= V + DMB.SDS_CREDIARIO_VENCIDOVALOR_TOTAL.AsFloat;
DMB.SDS_CREDIARIO_VENCIDO.Next;
suiMemo4.Text:= FormatFloat('R$ ##,##0.00',V);
While not DMB.SDS_CREDIARIO_VENCIDO.Eof do
begin

V:= V + DMB.SDS_CREDIARIO_VENCIDOVALOR_TOTAL.AsFloat;
DMB.SDS_CREDIARIO_VENCIDO.Next;
suiMemo4.Text:= FormatFloat('R$ ##,##0.00',V);
end;
suiMemo12.Text:= FloatToStr(DMB.SDS_CREDIARIO_VENCIDO.RecordCount);

SDS_DocRecebidos.Active:= False;
SDS_DocRecebidos.Active:= True;
SDS_DocRecebidos.First;

S:= S + SDS_DocRecebidosVALOR_PAGO.AsFloat;
SDS_DocRecebidos.Next;
suiMemo6.Text:= FormatFloat('R$ ##,##0.00',S);
RXLabel3.Caption:= FormatFloat('R$: ##,##0.00',S);
While not SDS_DocRecebidos.Eof do
begin
S:= S + SDS_DocRecebidosVALOR_PAGO.AsFloat;
SDS_DocRecebidos.Next;
suiMemo6.Text:= FormatFloat('R$ ##,##0.00',S);
RXLabel3.Caption:= FormatFloat('R$: ##,##0.00',S);
end;
suiMemo14.Text:= FloatToStr(SDS_DocRecebidos.RecordCount);

sds_doc_recebido_atrazo.Active :=False;
sds_doc_recebido_atrazo.Active :=True;

// NUMERO DE DIAS EM ATRAZO
{
P:= P + sds_doc_recebido_atrazoDIAS_VENCIDO.AsFloat;
sds_doc_recebido_atrazo.Next;

suiMemo7.Text:= FormatFloat('Dias ##00',P / sds_doc_recebido_atrazo.RecordCount);
While not sds_doc_recebido_atrazo.Eof do
begin
P:= P + sds_doc_recebido_atrazoDIAS_VENCIDO.AsFloat;
sds_doc_recebido_atrazo.Next;
suiMemo7.Text:= FormatFloat('Dias ##00',P / sds_doc_recebido_atrazo.RecordCount);
end;  }

SDS_ChequesBaixar.Active:= False;
SDS_ChequesBaixar.Active:= True;
SDS_ChequesBaixar.First;

B:= B + SDS_ChequesBaixarVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixar.Next;
suiMemo11.Text:= FormatFloat('R$ ##,##0.00',B);
RXLabel26.Caption:= FormatFloat('R$: ##,##0.00',B);
While not SDS_ChequesBaixar.Eof do
begin
B:= B + SDS_ChequesBaixarVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixar.Next;
suiMemo11.Text:= FormatFloat('R$ ##,##0.00',B);
RXLabel26.Caption:= FormatFloat('R$: ##,##0.00',B);
end;
suiMemo15.Text:= FloatToStr(SDS_ChequesBaixar.RecordCount);

SDS_ChequesBaixados.Active:= False;
SDS_ChequesBaixados.Active:= True;
SDS_ChequesBaixados.First;

A:= A + SDS_ChequesBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixados.Next;
suiMemo13.Text:= FormatFloat('R$ ##,##0.00',A);
RXLabel28.Caption:= FormatFloat('R$: ##,##0.00',A);
While not SDS_ChequesBaixados.Eof do
begin
A:= A + SDS_ChequesBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixados.Next;
suiMemo13.Text:= FormatFloat('R$ ##,##0.00',A);
RXLabel28.Caption:= FormatFloat('R$: ##,##0.00',A);
end;
suiMemo16.Text:= FloatToStr(SDS_ChequesBaixados.RecordCount);

SDS_ChequesRetornados.Active:= False;
SDS_ChequesRetornados.Active:= True;
SDS_ChequesRetornados.First;

T:= T + SDS_ChequesRetornadosVALOR_CHEQUE.AsFloat;
SDS_ChequesRetornados.Next;
suiMemo20.Text:= FormatFloat('R$ ##,##0.00',T);
RXLabel30.Caption:= FormatFloat('R$: ##,##0.00',T);
While not SDS_ChequesRetornados.Eof do
begin
T:= T + SDS_ChequesRetornadosVALOR_CHEQUE.AsFloat;
SDS_ChequesRetornados.Next;
suiMemo20.Text:= FormatFloat('R$ ##,##0.00',T);
RXLabel30.Caption:= FormatFloat('R$: ##,##0.00',T);
end;
suiMemo17.Text:= FloatToStr(SDS_ChequesRetornados.RecordCount);

SDS_ChRetBaixar.Active:= False;
SDS_ChRetBaixar.Active:= True;
SDS_ChRetBaixar.First;

D:= D + SDS_ChRetBaixarVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixar.Next;
suiMemo21.Text:= FormatFloat('R$ ##,##0.00',D);
While not SDS_ChRetBaixar.Eof do
begin
D:= D + SDS_ChRetBaixarVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixar.Next;
suiMemo21.Text:= FormatFloat('R$ ##,##0.00',D);
end;
suiMemo18.Text:= FloatToStr(SDS_ChRetBaixar.RecordCount);

SDS_ChRetBaixados.Active:= False;
SDS_ChRetBaixados.Active:= True;
SDS_ChRetBaixados.First;

E:= E + SDS_ChRetBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixados.Next;
suiMemo22.Text:= FormatFloat('R$ ##,##0.00',E);
While not SDS_ChRetBaixados.Eof do
begin
E:= E + SDS_ChRetBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixados.Next;
suiMemo22.Text:= FormatFloat('R$ ##,##0.00',E);
end;
suiMemo19.Text:= FloatToStr(SDS_ChRetBaixados.RecordCount);

SDS_P_Cancelados.Active:= False;
SDS_P_Cancelados.Active:= True;
SDS_P_Cancelados.First;

L:= L + SDS_P_CanceladosVALOR_TOTAL.AsFloat;
SDS_P_Cancelados.Next;
RXLabel34.Caption:= FormatFloat('R$: ##,##0.00',L);
While not SDS_P_Cancelados.Eof do
begin
L:= L + SDS_P_CanceladosVALOR_TOTAL.AsFloat;
SDS_P_Cancelados.Next;
RXLabel34.Caption:= FormatFloat('R$: ##,##0.00',L);
end;

SDS_Orcamentos.Active:= False;
SDS_Orcamentos.Active:= True;
SDS_Orcamentos.First;

O:= O + SDS_OrcamentosVALOR_TOTAL.AsFloat;
SDS_Orcamentos.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',O);
While not SDS_P_Cancelados.Eof do
begin
O:= O + SDS_OrcamentosVALOR_TOTAL.AsFloat;
SDS_Orcamentos.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',O);
end;

end
else
begin

    Cliente.color:= clWhite;
    MessageLocCli.ShowModal;
    if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;
     Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
     end;
     DM.SDS_Clientes.Active:= True;
     DMB.SDS_CREDIARIO_VENCIDO.Active:= True;
    If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;

DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Execproc;
DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMB.SDS_Crediario_Baixa.First;

SDS_COMPRAS.Active:= True;
SDS_COMPRASV.Active:= True;
SDS_COMPRAS.First;
C:= C + SDS_COMPRASVALOR_TOTAL.AsFloat;
SDS_COMPRAS.Next;
suiMemo1.Text:= FormatFloat('R$ ##,##0.00',C);
RXLabel32.Caption:= FormatFloat('R$: ##,##0.00',C);
While not SDS_COMPRAS.Eof do
begin
C:= C + SDS_COMPRASVALOR_TOTAL.AsFloat;
SDS_COMPRAS.Next;
suiMemo1.Text:= FormatFloat('R$ ##,##0.00',C);
RXLabel32.Caption:= FormatFloat('R$: ##,##0.00',C);
end;
SDS_COMPRAS.First;
SDS_COMPRASV.First;
VP:= SDS_COMPRASVALOR_TOTAL.AsCurrency;
Edit2.Text:= SDS_COMPRASDATA_PEDIDO.AsString;
suiMemo71.Text:= FormatFloat('R$ ##,##0.00',VP);
VN:= SDS_COMPRASVVALOR_TOTAL.AsCurrency;
suiMemo91.Text:= FormatFloat('R$ ##,##0.00',VN);
SDS_COMPRAS.Last;
SDS_COMPRASV.Last;
Edit3.Text:= SDS_COMPRASDATA_PEDIDO.AsString;
VU:= SDS_COMPRASVALOR_TOTAL.AsCurrency;
suiMemo81.Text:= FormatFloat('R$ ##,##0.00',VU);
VM:= SDS_COMPRASVVALOR_TOTAL.AsCurrency;
suiMemo101.Text:= FormatFloat('R$ ##,##0.00',VM);
if SDS_COMPRAS.RecordCount = 0 then
begin
suiMemo2.Text:= FloatToStr(SDS_COMPRAS.RecordCount);
ValCompras:= 0;
suiMemo23.Text:= FormatFloat('R$ ##,##0.00',ValCompras);
end
else
begin
NCompras:= SDS_COMPRAS.RecordCount;
suiMemo2.Text:= FloatToStr(SDS_COMPRAS.RecordCount);
ValCompras:= C / NCompras;
suiMemo23.Text:= FormatFloat('R$ ##,##0.00',ValCompras);
end;

SDS_DocVencer.Active:= False;
SDS_DocVencer.Active:= True;
R:= R + SDS_DocVencerVALOR_TOTAL.AsFloat;
SDS_DocVencer.Next;
suiMemo3.Text:= FormatFloat('R$ ##,##0.00',R);
While not SDS_DocVencer.Eof do
begin
R:= R + SDS_DocVencerVALOR_TOTAL.AsFloat;
SDS_DocVencer.Next;
suiMemo3.Text:= FormatFloat('R$ ##,##0.00',R);
end;
SDS_DocVencer.First;
suiMemo5.Text:= FloatToStr(SDS_DocVencer.RecordCount);

DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.First;

V:= V + DMB.SDS_CREDIARIO_VENCIDOVALOR_TOTAL.AsFloat;
DMB.SDS_CREDIARIO_VENCIDO.Next;
suiMemo4.Text:= FormatFloat('R$ ##,##0.00',V);
While not DMB.SDS_CREDIARIO_VENCIDO.Eof do
begin

V:= V + DMB.SDS_CREDIARIO_VENCIDOVALOR_TOTAL.AsFloat;
DMB.SDS_CREDIARIO_VENCIDO.Next;
suiMemo4.Text:= FormatFloat('R$ ##,##0.00',V);
end;
suiMemo12.Text:= FloatToStr(DMB.SDS_CREDIARIO_VENCIDO.RecordCount);

SDS_DocRecebidos.Active:= False;
SDS_DocRecebidos.Active:= True;
SDS_DocRecebidos.First;

S:= S + SDS_DocRecebidosVALOR_PAGO.AsFloat;
SDS_DocRecebidos.Next;
suiMemo6.Text:= FormatFloat('R$ ##,##0.00',S);
RXLabel3.Caption:= FormatFloat('R$: ##,##0.00',S);
While not SDS_DocRecebidos.Eof do
begin
S:= S + SDS_DocRecebidosVALOR_PAGO.AsFloat;
SDS_DocRecebidos.Next;
suiMemo6.Text:= FormatFloat('R$ ##,##0.00',S);
RXLabel3.Caption:= FormatFloat('R$: ##,##0.00',S);
end;
suiMemo14.Text:= FloatToStr(SDS_DocRecebidos.RecordCount);

SDS_ChequesBaixar.Active:= False;
SDS_ChequesBaixar.Active:= True;
SDS_ChequesBaixar.First;

B:= B + SDS_ChequesBaixarVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixar.Next;
suiMemo11.Text:= FormatFloat('R$ ##,##0.00',B);
RXLabel26.Caption:= FormatFloat('R$: ##,##0.00',B);
While not SDS_ChequesBaixar.Eof do
begin
B:= B + SDS_ChequesBaixarVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixar.Next;
suiMemo11.Text:= FormatFloat('R$ ##,##0.00',B);
RXLabel26.Caption:= FormatFloat('R$: ##,##0.00',B);
end;
suiMemo15.Text:= FloatToStr(SDS_ChequesBaixar.RecordCount);

SDS_ChequesBaixados.Active:= False;
SDS_ChequesBaixados.Active:= True;
SDS_ChequesBaixados.First;

A:= A + SDS_ChequesBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixados.Next;
suiMemo13.Text:= FormatFloat('R$ ##,##0.00',A);
RXLabel28.Caption:= FormatFloat('R$: ##,##0.00',A);
While not SDS_ChequesBaixados.Eof do
begin
A:= A + SDS_ChequesBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixados.Next;
suiMemo13.Text:= FormatFloat('R$ ##,##0.00',A);
RXLabel28.Caption:= FormatFloat('R$: ##,##0.00',A);
end;
suiMemo16.Text:= FloatToStr(SDS_ChequesBaixados.RecordCount);

SDS_ChequesRetornados.Active:= False;
SDS_ChequesRetornados.Active:= True;
SDS_ChequesRetornados.First;

T:= T + SDS_ChequesRetornadosVALOR_CHEQUE.AsFloat;
SDS_ChequesRetornados.Next;
suiMemo20.Text:= FormatFloat('R$ ##,##0.00',T);
RXLabel30.Caption:= FormatFloat('R$: ##,##0.00',T);
While not SDS_ChequesRetornados.Eof do
begin
T:= T + SDS_ChequesRetornadosVALOR_CHEQUE.AsFloat;
SDS_ChequesRetornados.Next;
suiMemo20.Text:= FormatFloat('R$ ##,##0.00',T);
RXLabel30.Caption:= FormatFloat('R$: ##,##0.00',T);
end;
suiMemo17.Text:= FloatToStr(SDS_ChequesRetornados.RecordCount);

SDS_ChRetBaixar.Active:= False;
SDS_ChRetBaixar.Active:= True;
SDS_ChRetBaixar.First;

D:= D + SDS_ChRetBaixarVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixar.Next;
suiMemo21.Text:= FormatFloat('R$ ##,##0.00',D);
While not SDS_ChRetBaixar.Eof do
begin
D:= D + SDS_ChRetBaixarVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixar.Next;
suiMemo21.Text:= FormatFloat('R$ ##,##0.00',D);
end;
suiMemo18.Text:= FloatToStr(SDS_ChRetBaixar.RecordCount);

SDS_ChRetBaixados.Active:= False;
SDS_ChRetBaixados.Active:= True;
SDS_ChRetBaixados.First;

E:= E + SDS_ChRetBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixados.Next;
suiMemo22.Text:= FormatFloat('R$ ##,##0.00',E);
While not SDS_ChRetBaixados.Eof do
begin
E:= E + SDS_ChRetBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixados.Next;
suiMemo22.Text:= FormatFloat('R$ ##,##0.00',E);
end;
suiMemo19.Text:= FloatToStr(SDS_ChRetBaixados.RecordCount);

SDS_P_Cancelados.Active:= False;
SDS_P_Cancelados.Active:= True;
SDS_P_Cancelados.First;

L:= L + SDS_P_CanceladosVALOR_TOTAL.AsFloat;
SDS_P_Cancelados.Next;
RXLabel34.Caption:= FormatFloat('R$: ##,##0.00',L);
While not SDS_P_Cancelados.Eof do
begin
L:= L + SDS_P_CanceladosVALOR_TOTAL.AsFloat;
SDS_P_Cancelados.Next;
RXLabel34.Caption:= FormatFloat('R$: ##,##0.00',L);
end;

SDS_Orcamentos.Active:= False;
SDS_Orcamentos.Active:= True;
SDS_Orcamentos.First;

O:= O + SDS_OrcamentosVALOR_TOTAL.AsFloat;
SDS_Orcamentos.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',O);
While not SDS_P_Cancelados.Eof do
begin
O:= O + SDS_OrcamentosVALOR_TOTAL.AsFloat;
SDS_Orcamentos.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',O);
end;
end;
end;
end;
CorSaida(Sender);
end;


procedure TFormHistoricoCliente.ClienteEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormHistoricoCliente.FormShow(Sender: TObject);
begin
//DM.SDS_Clientes.Active:= False;
//DM.SDS_Clientes.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= False;
end;

procedure TFormHistoricoCliente.DBGrid2DblClick(Sender: TObject);
begin
Try
if FormDetCrediario=nil   then
    begin
     FormDetCrediario:=TFormDetCrediario.Create(self);
      FormDetCrediario.ShowModal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end;

procedure TFormHistoricoCliente.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
   Var DtVen: TDateTime;
begin
DtVen:= DMB.SDS_Crediario_BaixaDATA_VENCIMENTO.Value;
If DtVen < Date then
Dbgrid2.Canvas.Font.Color:= clRed;
If DtVen >= Date then
Dbgrid2.Canvas.Font.Color:= clBlue;
Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
end;

procedure TFormHistoricoCliente.ClienteButtonClick(Sender: TObject);
Var
Data, DataVenc, DataAtual, DiasVenc: TDateTime;
dia, mes, ano: Word;
TOT, Pert, TotPert, NCompras, ValCompras, VP, VU, VN, VM, dias : Real;
Q: Integer;
begin
X:= 0;
C:= 0;
R:= 0;
S:= 0;
V:= 0;
B:= 0;
A:= 0;
T:= 0;
D:= 0;
E:= 0;
L:= 0;
O:= 0;
p:= 0;
DM.SDS_Clientes.Active:= True;
Cliente.color:= clWhite;

dm.SDS_Clientes.Filtered := false;

if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.ShowModal;
     Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
     end;
     DM.SDS_Clientes.Active:= True;
     DMB.SDS_CREDIARIO_VENCIDO.Active:= True;
    If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[lopartialkey,loCaseinSensitive]);
RXLabel5.Caption:= DM.SDS_ClientesCODIGO.Text;
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
RXLabel7.Caption:= DM.SDS_ClientesCPF_CNPJ.Text;
DMB.SDS_CREDIARIO_VENCIDO.First;
Contador:= DMB.SDS_CREDIARIO_VENCIDO.RecordCount;
For Q:=1 to Contador do
begin
DataAtual:= Date;
DiasVenc := DataAtual - DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.Asdatetime;
DataVenc:= DMB.SDS_CREDIARIO_VENCIDODATA_VENCIMENTO.AsDateTime;
Data := DataAtual - DataVenc;
DecodeDate( Data, ano, mes, dia);
Tot:= Data;
if Tot < 0 then
begin
Tot:= 0;
dias := DiasVenc;
end;
Pert:= DM.SDS_CONFIGURACOESJUROS.AsFloat;
TotPert:= (Tot * Pert);
DMB.SPC_Juros.Params[0].AsInteger:= DMB.SDS_CREDIARIO_VENCIDOCODIGO.Value;
DMB.SPC_Juros.Params[2].Value:= TotPert;
DMB.SPC_Juros.Params[4].Value := DM.SDS_CONFIGURACOESMULTA.AsFloat;
DMB.SPC_Juros.Params[5].value := dias;
DMB.SPC_Juros.Execproc;


DMB.SDS_CREDIARIO_VENCIDO.Next;
end;
DMB.SDS_Crediario_Baixa.Active:= False;
DMB.SDS_Crediario_Baixa.Active:= True;
DMB.SDS_Crediario_Baixa.First;

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
While not DMB.SDS_Crediario_Baixa.Eof do
begin

X:= X + DMB.SDS_Crediario_BaixaVALOR_TOTAL.AsFloat;
DMB.SDS_Crediario_Baixa.Next;
RXLabel8.Caption:= FormatFloat('R$: ##,##0.00',X);
end;
DMB.SDS_Crediario_Baixa.First;

SDS_COMPRAS.Active:= True;
SDS_COMPRASV.Active:= True;
SDS_COMPRAS.First;
C:= C + SDS_COMPRASVALOR_TOTAL.AsFloat;
SDS_COMPRAS.Next;
suiMemo1.Text:= FormatFloat('R$ ##,##0.00',C);
RXLabel32.Caption:= FormatFloat('R$: ##,##0.00',C);
While not SDS_COMPRAS.Eof do
begin
C:= C + SDS_COMPRASVALOR_TOTAL.AsFloat;
SDS_COMPRAS.Next;
suiMemo1.Text:= FormatFloat('R$ ##,##0.00',C);
RXLabel32.Caption:= FormatFloat('R$: ##,##0.00',C);
end;
SDS_COMPRAS.First;
SDS_COMPRASV.First;
VP:= SDS_COMPRASVALOR_TOTAL.AsCurrency;
Edit2.Text:= SDS_COMPRASDATA_PEDIDO.AsString;
suiMemo71.Text:= FormatFloat('R$ ##,##0.00',VP);
VN:= SDS_COMPRASVVALOR_TOTAL.AsCurrency;
suiMemo91.Text:= FormatFloat('R$ ##,##0.00',VN);
SDS_COMPRAS.Last;
SDS_COMPRASV.Last;
Edit3.Text:= SDS_COMPRASDATA_PEDIDO.AsString;
VU:= SDS_COMPRASVALOR_TOTAL.AsCurrency;
suiMemo81.Text:= FormatFloat('R$ ##,##0.00',VU);
VM:= SDS_COMPRASVVALOR_TOTAL.AsCurrency;
suiMemo101.Text:= FormatFloat('R$ ##,##0.00',VM);
if SDS_COMPRAS.RecordCount = 0 then
begin
suiMemo2.Text:= FloatToStr(SDS_COMPRAS.RecordCount);
ValCompras:= 0;
suiMemo23.Text:= FormatFloat('R$ ##,##0.00',ValCompras);
end
else
begin
NCompras:= SDS_COMPRAS.RecordCount;
suiMemo2.Text:= FloatToStr(SDS_COMPRAS.RecordCount);
ValCompras:= C / NCompras;
suiMemo23.Text:= FormatFloat('R$ ##,##0.00',ValCompras);
end;

SDS_DocVencer.Active:= False;
SDS_DocVencer.Active:= True;
R:= R + SDS_DocVencerVALOR_TOTAL.AsFloat;
SDS_DocVencer.Next;
suiMemo3.Text:= FormatFloat('R$ ##,##0.00',R);
While not SDS_DocVencer.Eof do
begin
R:= R + SDS_DocVencerVALOR_TOTAL.AsFloat;
SDS_DocVencer.Next;
suiMemo3.Text:= FormatFloat('R$ ##,##0.00',R);
end;
SDS_DocVencer.First;
suiMemo5.Text:= FloatToStr(SDS_DocVencer.RecordCount);

DMB.SDS_CREDIARIO_VENCIDO.Active:= False;
DMB.SDS_CREDIARIO_VENCIDO.Active:= True;
DMB.SDS_CREDIARIO_VENCIDO.First;

V:= V + DMB.SDS_CREDIARIO_VENCIDOVALOR_TOTAL.AsFloat;
DMB.SDS_CREDIARIO_VENCIDO.Next;
suiMemo4.Text:= FormatFloat('R$ ##,##0.00',V);
While not DMB.SDS_CREDIARIO_VENCIDO.Eof do
begin

V:= V + DMB.SDS_CREDIARIO_VENCIDOVALOR_TOTAL.AsFloat;
DMB.SDS_CREDIARIO_VENCIDO.Next;
suiMemo4.Text:= FormatFloat('R$ ##,##0.00',V);
end;
suiMemo12.Text:= FloatToStr(DMB.SDS_CREDIARIO_VENCIDO.RecordCount);

SDS_DocRecebidos.Active:= False;
SDS_DocRecebidos.Active:= True;
SDS_DocRecebidos.First;

S:= S + SDS_DocRecebidosVALOR_PAGO.AsFloat;
SDS_DocRecebidos.Next;
suiMemo6.Text:= FormatFloat('R$ ##,##0.00',S);
RXLabel3.Caption:= FormatFloat('R$: ##,##0.00',S);
While not SDS_DocRecebidos.Eof do
begin
S:= S + SDS_DocRecebidosVALOR_PAGO.AsFloat;
SDS_DocRecebidos.Next;
suiMemo6.Text:= FormatFloat('R$ ##,##0.00',S);
RXLabel3.Caption:= FormatFloat('R$: ##,##0.00',S);
end;

sds_doc_recebido_atrazo.Active :=False;
sds_doc_recebido_atrazo.Active :=True;

P:= P + sds_doc_recebido_atrazoDIAS_VENCIDO.AsFloat;
sds_doc_recebido_atrazo.Next;
suiMemo7.Text:= FormatFloat('Dias ##00',P / sds_doc_recebido_atrazo.RecordCount);
While not sds_doc_recebido_atrazo.Eof do
begin
P:= P + sds_doc_recebido_atrazoDIAS_VENCIDO.AsFloat;
sds_doc_recebido_atrazo.Next;
suiMemo7.Text:= FormatFloat('Dias ##00',P / sds_doc_recebido_atrazo.RecordCount);
end;



suiMemo14.Text:= FloatToStr(SDS_DocRecebidos.RecordCount);

SDS_ChequesBaixar.Active:= False;
SDS_ChequesBaixar.Active:= True;
SDS_ChequesBaixar.First;

B:= B + SDS_ChequesBaixarVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixar.Next;
suiMemo11.Text:= FormatFloat('R$ ##,##0.00',B);
RXLabel26.Caption:= FormatFloat('R$: ##,##0.00',B);
While not SDS_ChequesBaixar.Eof do
begin
B:= B + SDS_ChequesBaixarVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixar.Next;
suiMemo11.Text:= FormatFloat('R$ ##,##0.00',B);
RXLabel26.Caption:= FormatFloat('R$: ##,##0.00',B);
end;
suiMemo15.Text:= FloatToStr(SDS_ChequesBaixar.RecordCount);

SDS_ChequesBaixados.Active:= False;
SDS_ChequesBaixados.Active:= True;
SDS_ChequesBaixados.First;

A:= A + SDS_ChequesBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixados.Next;
suiMemo13.Text:= FormatFloat('R$ ##,##0.00',A);
RXLabel28.Caption:= FormatFloat('R$: ##,##0.00',A);
While not SDS_ChequesBaixados.Eof do
begin
A:= A + SDS_ChequesBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChequesBaixados.Next;
suiMemo13.Text:= FormatFloat('R$ ##,##0.00',A);
RXLabel28.Caption:= FormatFloat('R$: ##,##0.00',A);
end;
suiMemo16.Text:= FloatToStr(SDS_ChequesBaixados.RecordCount);

SDS_ChequesRetornados.Active:= False;
SDS_ChequesRetornados.Active:= True;
SDS_ChequesRetornados.First;

T:= T + SDS_ChequesRetornadosVALOR_CHEQUE.AsFloat;
SDS_ChequesRetornados.Next;
suiMemo20.Text:= FormatFloat('R$ ##,##0.00',T);
RXLabel30.Caption:= FormatFloat('R$: ##,##0.00',T);
While not SDS_ChequesRetornados.Eof do
begin
T:= T + SDS_ChequesRetornadosVALOR_CHEQUE.AsFloat;
SDS_ChequesRetornados.Next;
suiMemo20.Text:= FormatFloat('R$ ##,##0.00',T);
RXLabel30.Caption:= FormatFloat('R$: ##,##0.00',T);
end;
suiMemo17.Text:= FloatToStr(SDS_ChequesRetornados.RecordCount);

SDS_ChRetBaixar.Active:= False;
SDS_ChRetBaixar.Active:= True;
SDS_ChRetBaixar.First;

D:= D + SDS_ChRetBaixarVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixar.Next;
suiMemo21.Text:= FormatFloat('R$ ##,##0.00',D);
While not SDS_ChRetBaixar.Eof do
begin
D:= D + SDS_ChRetBaixarVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixar.Next;
suiMemo21.Text:= FormatFloat('R$ ##,##0.00',D);
end;
suiMemo18.Text:= FloatToStr(SDS_ChRetBaixar.RecordCount);

SDS_ChRetBaixados.Active:= False;
SDS_ChRetBaixados.Active:= True;
SDS_ChRetBaixados.First;

E:= E + SDS_ChRetBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixados.Next;
suiMemo22.Text:= FormatFloat('R$ ##,##0.00',E);
While not SDS_ChRetBaixados.Eof do
begin
E:= E + SDS_ChRetBaixadosVALOR_CHEQUE.AsFloat;
SDS_ChRetBaixados.Next;
suiMemo22.Text:= FormatFloat('R$ ##,##0.00',E);
end;
suiMemo19.Text:= FloatToStr(SDS_ChRetBaixados.RecordCount);

SDS_P_Cancelados.Active:= False;
SDS_P_Cancelados.Active:= True;
SDS_P_Cancelados.First;

L:= L + SDS_P_CanceladosVALOR_TOTAL.AsFloat;
SDS_P_Cancelados.Next;
RXLabel34.Caption:= FormatFloat('R$: ##,##0.00',L);
While not SDS_P_Cancelados.Eof do
begin
L:= L + SDS_P_CanceladosVALOR_TOTAL.AsFloat;
SDS_P_Cancelados.Next;
RXLabel34.Caption:= FormatFloat('R$: ##,##0.00',L);
end;

SDS_Orcamentos.Active:= False;
SDS_Orcamentos.Active:= True;
SDS_Orcamentos.First;

O:= O + SDS_OrcamentosVALOR_TOTAL.AsFloat;
SDS_Orcamentos.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',O);
While not SDS_P_Cancelados.Eof do
begin
O:= O + SDS_OrcamentosVALOR_TOTAL.AsFloat;
SDS_Orcamentos.Next;
RXLabel36.Caption:= FormatFloat('R$: ##,##0.00',O);
end;
end;

CorSaida(Sender);
end;

procedure TFormHistoricoCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormHistoricoCliente.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

end.

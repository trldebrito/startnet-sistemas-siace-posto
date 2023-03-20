unit CaixaAnalitico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, RXCtrls, ExtCtrls, 
  StdCtrls, Mask, ToolEdit, SUIButton, SUIDlg, Mylabel, FMTBcd, DB,
  DBClient, Provider, SqlExpr, Menus, DBCtrls, CurrEdit;

type
  TFormCaixaAnalitico = class(TForm)
    Panel3: TPanel;
    RxLabel4: TRxLabel;
    DBGrid1: TsuiDBGrid;
    Panel2: TPanel;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    BTRelatorio: TsuiButton;
    MsgNenhumRegistro: TsuiMessageDialog;
    MsgData: TsuiMessageDialog;
    myLabel3d1: TmyLabel3d;
    Panel1: TPanel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    BTVisualizar: TsuiButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiDBNavigator1: TsuiDBNavigator;
    suiButton1: TsuiButton;
    qry_ven: TSQLQuery;
    qry_rec: TSQLQuery;
    qry_avu: TSQLQuery;
    dsp_ven: TDataSetProvider;
    Dsp_rec: TDataSetProvider;
    dsp_avu: TDataSetProvider;
    Cds_ven: TClientDataSet;
    cds_rec: TClientDataSet;
    cds_avu: TClientDataSet;
    Dts_ven: TDataSource;
    dts_rec: TDataSource;
    dts_avu: TDataSource;
    qry_venCODIGO: TIntegerField;
    qry_venDATA: TDateField;
    qry_venHISTORICO: TStringField;
    qry_venUSUARIO: TStringField;
    qry_venTIPO: TStringField;
    qry_venVALOR_ENTRADA: TFMTBCDField;
    qry_venVALOR_SAIDA: TFMTBCDField;
    qry_venORIGEM: TStringField;
    Cds_venCODIGO: TIntegerField;
    Cds_venDATA: TDateField;
    Cds_venHISTORICO: TStringField;
    Cds_venUSUARIO: TStringField;
    Cds_venTIPO: TStringField;
    Cds_venVALOR_ENTRADA: TFMTBCDField;
    Cds_venVALOR_SAIDA: TFMTBCDField;
    Cds_venORIGEM: TStringField;
    qry_recCODIGO: TIntegerField;
    qry_recDATA: TDateField;
    qry_recHISTORICO: TStringField;
    qry_recUSUARIO: TStringField;
    qry_recTIPO: TStringField;
    qry_recVALOR_ENTRADA: TFMTBCDField;
    qry_recVALOR_SAIDA: TFMTBCDField;
    qry_recORIGEM: TStringField;
    cds_recCODIGO: TIntegerField;
    cds_recDATA: TDateField;
    cds_recHISTORICO: TStringField;
    cds_recUSUARIO: TStringField;
    cds_recTIPO: TStringField;
    cds_recVALOR_ENTRADA: TFMTBCDField;
    cds_recVALOR_SAIDA: TFMTBCDField;
    cds_recORIGEM: TStringField;
    qry_avuCODIGO: TIntegerField;
    qry_avuDATA: TDateField;
    qry_avuHISTORICO: TStringField;
    qry_avuUSUARIO: TStringField;
    qry_avuTIPO: TStringField;
    qry_avuVALOR_ENTRADA: TFMTBCDField;
    qry_avuVALOR_SAIDA: TFMTBCDField;
    qry_avuORIGEM: TStringField;
    cds_avuCODIGO: TIntegerField;
    cds_avuDATA: TDateField;
    cds_avuHISTORICO: TStringField;
    cds_avuUSUARIO: TStringField;
    cds_avuTIPO: TStringField;
    cds_avuVALOR_ENTRADA: TFMTBCDField;
    cds_avuVALOR_SAIDA: TFMTBCDField;
    cds_avuORIGEM: TStringField;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    QRY_MOV_DIARIO: TSQLQuery;
    QRY_MOV_DIARIOCODIGO: TIntegerField;
    QRY_MOV_DIARIODATA: TDateField;
    QRY_MOV_DIARIOHISTORICO: TStringField;
    QRY_MOV_DIARIOUSUARIO: TStringField;
    QRY_MOV_DIARIOTIPO: TStringField;
    QRY_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField;
    QRY_MOV_DIARIOVALOR_SAIDA: TFMTBCDField;
    QRY_MOV_DIARIOCODIGO_CC: TIntegerField;
    QRY_MOV_DIARIONUMERO_CC: TStringField;
    QRY_MOV_DIARIOCODIGO_VENDA: TIntegerField;
    DSP_MOV_DIARIO: TDataSetProvider;
    CDS_MOV_DIARIO: TClientDataSet;
    CDS_MOV_DIARIOCODIGO: TIntegerField;
    CDS_MOV_DIARIODATA: TDateField;
    CDS_MOV_DIARIOHISTORICO: TStringField;
    CDS_MOV_DIARIOUSUARIO: TStringField;
    CDS_MOV_DIARIOTIPO: TStringField;
    CDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField;
    CDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField;
    CDS_MOV_DIARIOCODIGO_CC: TIntegerField;
    CDS_MOV_DIARIONUMERO_CC: TStringField;
    CDS_MOV_DIARIOCODIGO_VENDA: TIntegerField;
    DTS_MOV_DIARIO: TDataSource;
    MSG_CD: TsuiMessageDialog;
    QRY_FIN: TSQLQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    StringField4: TStringField;
    dsp_fin: TDataSetProvider;
    cds_fin: TClientDataSet;
    dts_fin: TDataSource;
    RxLabel9: TRxLabel;
    Qry_receber: TSQLQuery;
    Qry_receberCODIGO: TIntegerField;
    Qry_receberCODIGO_CLIENTE: TIntegerField;
    Qry_receberDATA_COMPRA: TDateField;
    Qry_receberDATA_VENCIMENTO: TDateField;
    Qry_receberDATA_BAIXA: TDateField;
    Qry_receberHISTORICO: TStringField;
    Qry_receberUSUARIO_VENDA: TStringField;
    Qry_receberUSUARIO_BAIXA: TStringField;
    Qry_receberSITUACAO: TStringField;
    Qry_receberVALOR_COMPRA: TFMTBCDField;
    Qry_receberVALOR_JUROS: TFMTBCDField;
    Qry_receberVALOR_ACRESCIMO: TFMTBCDField;
    Qry_receberVALOR_DESCONTO: TFMTBCDField;
    Qry_receberVALOR_PAGAR: TFMTBCDField;
    Qry_receberVALOR_PAGO: TFMTBCDField;
    Qry_receberVALOR_TOTAL: TFMTBCDField;
    Qry_receberCODIGO_COMPRA: TIntegerField;
    Qry_receberPARCELA: TStringField;
    Qry_receberNUMBOLETO: TStringField;
    Qry_receberBANCO_PORTADOR: TIntegerField;
    Qry_receberREMESSA: TStringField;
    Qry_receberDATACREDITO: TDateField;
    Qry_receberID_PORTADOR: TIntegerField;
    Qry_receberENVIADO: TStringField;
    Qry_receberCOD_EMPRESA: TIntegerField;
    Qry_receberNUMBOLETO1: TIntegerField;
    Qry_receberCODIGOCEDENTE: TStringField;
    Qry_receberTIPO: TStringField;
    Qry_receberCHEK_BOX: TStringField;
    Qry_receberNUM_NOTA: TIntegerField;
    Qry_receberSERIE_NOTA: TStringField;
    Qry_receberNOME_SACADO: TStringField;
    Qry_receberANO: TStringField;
    Qry_receberMES: TStringField;
    Qry_receberTP_BAIXA: TStringField;
    dsp_receber: TDataSetProvider;
    cds_receber: TClientDataSet;
    cds_receberCODIGO: TIntegerField;
    cds_receberCODIGO_CLIENTE: TIntegerField;
    cds_receberDATA_COMPRA: TDateField;
    cds_receberDATA_VENCIMENTO: TDateField;
    cds_receberDATA_BAIXA: TDateField;
    cds_receberHISTORICO: TStringField;
    cds_receberUSUARIO_VENDA: TStringField;
    cds_receberUSUARIO_BAIXA: TStringField;
    cds_receberSITUACAO: TStringField;
    cds_receberVALOR_COMPRA: TFMTBCDField;
    cds_receberVALOR_JUROS: TFMTBCDField;
    cds_receberVALOR_ACRESCIMO: TFMTBCDField;
    cds_receberVALOR_DESCONTO: TFMTBCDField;
    cds_receberVALOR_PAGAR: TFMTBCDField;
    cds_receberVALOR_PAGO: TFMTBCDField;
    cds_receberVALOR_TOTAL: TFMTBCDField;
    cds_receberCODIGO_COMPRA: TIntegerField;
    cds_receberPARCELA: TStringField;
    cds_receberNUMBOLETO: TStringField;
    cds_receberBANCO_PORTADOR: TIntegerField;
    cds_receberREMESSA: TStringField;
    cds_receberDATACREDITO: TDateField;
    cds_receberID_PORTADOR: TIntegerField;
    cds_receberENVIADO: TStringField;
    cds_receberCOD_EMPRESA: TIntegerField;
    cds_receberNUMBOLETO1: TIntegerField;
    cds_receberCODIGOCEDENTE: TStringField;
    cds_receberTIPO: TStringField;
    cds_receberCHEK_BOX: TStringField;
    cds_receberNUM_NOTA: TIntegerField;
    cds_receberSERIE_NOTA: TStringField;
    cds_receberNOME_SACADO: TStringField;
    cds_receberANO: TStringField;
    cds_receberMES: TStringField;
    cds_receberTP_BAIXA: TStringField;
    dts_receber: TDataSource;
    RxLabel13: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel17: TRxLabel;
    cds_finCODIGO: TIntegerField;
    cds_finDATA: TDateField;
    cds_finHISTORICO: TStringField;
    cds_finUSUARIO: TStringField;
    cds_finTIPO: TStringField;
    cds_finVALOR_ENTRADA: TFMTBCDField;
    cds_finVALOR_SAIDA: TFMTBCDField;
    cds_finORIGEM: TStringField;
    cds_receberSOMAVALOR_RECEBER: TAggregateField;
    cds_receberCOUNT_RECEBER: TAggregateField;
    Cds_venSOMAVALOR_VENDA: TAggregateField;
    cds_recSOMAVALOR_REC: TAggregateField;
    cds_avuSOMAVALOR_ENT: TAggregateField;
    cds_avuSOMAVALOR_SAIDA: TAggregateField;
    cds_finSOMAVALOR_FIN: TAggregateField;
    Panel4: TPanel;
    RxLabel2: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel10: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel18: TRxLabel;
    suiDBGrid1: TsuiDBGrid;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    RxLabel19: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    Cds_venSOMAVALOR_SAIDA: TAggregateField;
    Panel5: TPanel;
    RxLabel20: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    Qry_cheque: TSQLQuery;
    DSP_cheque: TDataSetProvider;
    cds_cheque: TClientDataSet;
    cds_chequeSOMAVALOR_CH: TAggregateField;
    Dts_cheques: TDataSource;
    Qry_chequeCODIGO: TIntegerField;
    Qry_chequeDATA: TDateField;
    Qry_chequeHISTORICO: TStringField;
    Qry_chequeUSUARIO: TStringField;
    Qry_chequeTIPO: TStringField;
    Qry_chequeVALOR_ENTRADA: TFMTBCDField;
    Qry_chequeVALOR_SAIDA: TFMTBCDField;
    Qry_chequeORIGEM: TStringField;
    cds_chequeCODIGO: TIntegerField;
    cds_chequeDATA: TDateField;
    cds_chequeHISTORICO: TStringField;
    cds_chequeUSUARIO: TStringField;
    cds_chequeTIPO: TStringField;
    cds_chequeVALOR_ENTRADA: TFMTBCDField;
    cds_chequeVALOR_SAIDA: TFMTBCDField;
    cds_chequeORIGEM: TStringField;
    Qry_Cartao: TSQLQuery;
    Dsp_cartao: TDataSetProvider;
    cds_cartao: TClientDataSet;
    Dts_cartao: TDataSource;
    Qry_CartaoCODIGO: TIntegerField;
    Qry_CartaoCODIGO_BANDEIRA: TIntegerField;
    Qry_CartaoDOCUMENTO: TStringField;
    Qry_CartaoEMISSAO: TDateField;
    Qry_CartaoVENCIMENTO: TDateField;
    Qry_CartaoDATA_PAGAMENTO: TDateField;
    Qry_CartaoCOD_CAI: TIntegerField;
    Qry_CartaoCOD_EMP: TIntegerField;
    Qry_CartaoCOD_VEN: TIntegerField;
    Qry_CartaoVALOR: TFloatField;
    Qry_CartaoVALOR_PAGO: TFloatField;
    Qry_CartaoACRESCIMO: TFloatField;
    Qry_CartaoDESCONTO: TFloatField;
    Qry_CartaoTAXA: TFloatField;
    Qry_CartaoCODIGO_DUPLICATA: TIntegerField;
    Qry_CartaoCOD_CLI: TIntegerField;
    Qry_CartaoPARCELA: TIntegerField;
    Qry_CartaoUSUARIO: TStringField;
    Qry_CartaoNOME_RS: TStringField;
    RxLabel21: TRxLabel;
    CurrencyEdit11: TCurrencyEdit;
    cds_cartaoCODIGO: TIntegerField;
    cds_cartaoCODIGO_BANDEIRA: TIntegerField;
    cds_cartaoDOCUMENTO: TStringField;
    cds_cartaoEMISSAO: TDateField;
    cds_cartaoVENCIMENTO: TDateField;
    cds_cartaoDATA_PAGAMENTO: TDateField;
    cds_cartaoCOD_CAI: TIntegerField;
    cds_cartaoCOD_EMP: TIntegerField;
    cds_cartaoCOD_VEN: TIntegerField;
    cds_cartaoVALOR: TFloatField;
    cds_cartaoVALOR_PAGO: TFloatField;
    cds_cartaoACRESCIMO: TFloatField;
    cds_cartaoDESCONTO: TFloatField;
    cds_cartaoTAXA: TFloatField;
    cds_cartaoCODIGO_DUPLICATA: TIntegerField;
    cds_cartaoCOD_CLI: TIntegerField;
    cds_cartaoPARCELA: TIntegerField;
    cds_cartaoUSUARIO: TStringField;
    cds_cartaoNOME_RS: TStringField;
    cds_cartaovalor_total: TAggregateField;
    Qry_cheques_emitidos: TSQLQuery;
    Dsp_cheques_emitidos: TDataSetProvider;
    Cds_cheques_emitidos: TClientDataSet;
    Cds_cheques_emitidosValor_Total: TAggregateField;
    Dts_cheques_emitidos: TDataSource;
    Qry_cheques_emitidosCOD_CHEQUE: TIntegerField;
    Qry_cheques_emitidosVALOR: TFMTBCDField;
    Qry_cheques_emitidosDATA_EMISSAO: TDateField;
    Qry_cheques_emitidosDATA_VENCIMENTO: TDateField;
    Qry_cheques_emitidosPAGO: TStringField;
    Qry_cheques_emitidosORIGEM: TStringField;
    Qry_cheques_emitidosDOCUMENTO_ORIGEM: TIntegerField;
    Qry_cheques_emitidosCOD_CONTA: TIntegerField;
    Qry_cheques_emitidosCOMP_NA_INCLUSAO: TStringField;
    Qry_cheques_emitidosDATA_COMPENSACAO: TDateField;
    Qry_cheques_emitidosHISTORICO: TStringField;
    Qry_cheques_emitidosNUMERO_CHEQUE: TIntegerField;
    Qry_cheques_emitidosCOD_USUARIO: TIntegerField;
    Qry_cheques_emitidosCOD_EMPRESA: TIntegerField;
    Qry_cheques_emitidosTROCO: TStringField;
    Qry_cheques_emitidosFAVORECIDO: TStringField;
    Qry_cheques_emitidosCOD_VENDA: TIntegerField;
    Qry_cheques_emitidosCOD_COMPRA: TIntegerField;
    Qry_cheques_emitidosOBSERVACAO: TStringField;
    Cds_cheques_emitidosCOD_CHEQUE: TIntegerField;
    Cds_cheques_emitidosVALOR: TFMTBCDField;
    Cds_cheques_emitidosDATA_EMISSAO: TDateField;
    Cds_cheques_emitidosDATA_VENCIMENTO: TDateField;
    Cds_cheques_emitidosPAGO: TStringField;
    Cds_cheques_emitidosORIGEM: TStringField;
    Cds_cheques_emitidosDOCUMENTO_ORIGEM: TIntegerField;
    Cds_cheques_emitidosCOD_CONTA: TIntegerField;
    Cds_cheques_emitidosCOMP_NA_INCLUSAO: TStringField;
    Cds_cheques_emitidosDATA_COMPENSACAO: TDateField;
    Cds_cheques_emitidosHISTORICO: TStringField;
    Cds_cheques_emitidosNUMERO_CHEQUE: TIntegerField;
    Cds_cheques_emitidosCOD_USUARIO: TIntegerField;
    Cds_cheques_emitidosCOD_EMPRESA: TIntegerField;
    Cds_cheques_emitidosTROCO: TStringField;
    Cds_cheques_emitidosFAVORECIDO: TStringField;
    Cds_cheques_emitidosCOD_VENDA: TIntegerField;
    Cds_cheques_emitidosCOD_COMPRA: TIntegerField;
    Cds_cheques_emitidosOBSERVACAO: TStringField;
    CurrencyEdit12: TCurrencyEdit;
    RxLabel22: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure BTRelatorioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaAnalitico: TFormCaixaAnalitico;

implementation

uses ModulodeDadosConsultas2, Z_RotinasGerais, ModulodeDadosBaixas,
  ModulodeDadosRelatorios, Principal, ModulodeDados,
  RelatorioCaixaAnalitico;

{$R *.dfm}

procedure TFormCaixaAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormCaixaAnalitico:=nil;
end;

procedure TFormCaixaAnalitico.BTVisualizarClick(Sender: TObject);
var
Ch, E, EA, S, TOTAL ,P ,SALDO, R, F,pag, cartao, che_emi: string;
inicio, final, troco :string;
  begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;
    troco := 'T';

If DateEdit2.Date < DateEdit1.Date then
begin
MsgData.ShowModal;
DateEdit2.Clear;
DateEdit2.SetFocus;
end else
begin

    DMC2.SQLD_MOV_CAIXA.Active:=False;
    DMC2.CDS_MOV_CAIXA.Active:=False;
    DMC2.SQLD_MOV_CAIXA.Params[0].AsDate:=DateEdit1.Date;
    DMC2.SQLD_MOV_CAIXA.Params[1].AsDate:=DateEdit2.Date;
    DMC2.SQLD_MOV_CAIXA.Active:=True;
    DMC2.CDS_MOV_CAIXA.Active:=True;


    Cds_ven.Active :=FALSE;
    qry_ven.close;
    qry_ven.SQL.Clear;
    qry_ven.SQL.add('select * from V_MOVIMENTO_CAIXA_VEN where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_ven.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_ven.Open;
    Cds_ven.Active :=TRUE;

    cds_rec.Active :=FALSE;
    qry_rec.close;
    qry_REC.SQL.Clear;
    qry_REC.SQL.add('select * from V_MOVIMENTO_CAIXA_REC where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_REC.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_REC.Open;
    Cds_REC.Active :=TRUE;

    cds_avu.Active :=FALSE;
    qry_AVU.close;
    qry_AVU.SQL.Clear;
    qry_avu.SQL.add('select * from V_MOVIMENTO_CAIXA_avu where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_avu.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_avu.Open;
    cds_avu.Active :=TRUE;

    cds_fin.Active :=FALSE;
    QRY_FIN.close;
    qry_fin.SQL.Clear;
    qry_fin.SQL.add('select * from V_MOVIMENTO_CAIXA_FIN where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_fin.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_fin.Open;
    cds_fin.Active :=TRUE;


    cds_cheque.Active :=FALSE;
    Qry_cheque.close;
    Qry_cheque.SQL.Clear;
    Qry_cheque.SQL.add('select * from V_MOVIMENTO_CAIXA_CH where CODIGO >0'+'');
    if inicio > ' / /   ' then
    Qry_cheque.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    Qry_cheque.Open;
    cds_cheque.Active :=TRUE;

    cds_receber.Active :=FALSE;
    Qry_receber.close;
    Qry_receber.SQL.Clear;
    Qry_receber.SQL.add('select * from CREDIARIO where COD_EMPRESA >0'+'');
    if inicio > ' / /   ' then
    Qry_receber.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_receber.SQL.add('ORDER BY CODIGO_COMPRA ASC');
    Qry_receber.Open;
    cds_receber.Active :=TRUE;

    cds_cartao.Active :=FALSE;
    Qry_cartao.close;
    Qry_cartao.SQL.Clear;
    Qry_cartao.SQL.add('SELECT A.*, C.NOME_RS FROM CONTAS_RECEBER_ADM_CARTAO A INNER JOIN CLIENTES C ON (A.COD_CLI=C.CODIGO) where COD_EMP > 0'+'');
    if inicio > ' / /   ' then
    Qry_cartao.SQL.add('and EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cartao.SQL.add('ORDER BY CODIGO ASC');
    Qry_cartao.Open;
    cds_cartao.Active :=TRUE;

    Cds_cheques_emitidos.Active :=FALSE;
    Qry_cheques_emitidos.close;
    Qry_cheques_emitidos.SQL.Clear;
    Qry_cheques_emitidos.SQL.add('SELECT * FROM CHEQUES_EMITIDOS where COD_EMPRESA > 0'+'');
    if inicio > ' / /   ' then
    Qry_cheques_emitidos.SQL.add('and DATA_EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cheques_emitidos.SQL.add('and TROCO ='+QuotedStr(troco)+'') ;
    Qry_cheques_emitidos.SQL.add('ORDER BY COD_CHEQUE ASC');
    Qry_cheques_emitidos.Open;
    Cds_cheques_emitidos.Active :=TRUE;

{  If  DMC2.CDS_MOV_CAIXA.EOF then
  Begin
       BTRelatorio.Enabled:= False;
       DMC2.SQLD_MOV_CAIXA.Active:=False;
       DMC2.CDS_MOV_CAIXA.Active:=False;
       MsgNenhumRegistro.ShowModal;
       end;}
begin

E:= Cds_venSOMAVALOR_VENDA.Text;
pag := cds_vensomavalor_saida.text;
S:= cds_avuSOMAVALOR_SAIDA.Text;
EA:= cds_avuSOMAVALOR_ENT.Text;
P:= cds_receberSOMAVALOR_RECEBER.Text;
R:= cds_recSOMAVALOR_REC.Text;
F:= cds_finSOMAVALOR_FIN.TEXT;
CH:= cds_chequeSOMAVALOR_CH.TEXT;
cartao := cds_cartaovalor_total.Text;
che_emi := Cds_cheques_emitidosVALOR_total.Text;

CurrencyEdit3.Text :=E;
CurrencyEdit6.Text:= S;
CurrencyEdit5.Text:= EA;
CurrencyEdit4.Text:= R;
CurrencyEdit8.Text:= F;
CurrencyEdit9.Text:= P;
CurrencyEdit1.Text := pag;
CurrencyEdit2.Text := CH;
CurrencyEdit11.Text := Cartao;
CurrencyEdit12.Text := che_emi;

CurrencyEdit7.VALUE:= ((CurrencyEdit3.Value + CurrencyEdit4.Value + CurrencyEdit5.Value) - (CurrencyEdit6.Value + CurrencyEdit1.Value));
CurrencyEdit10.VALUE := (CurrencyEdit7.VALUE + CurrencyEdit11.Value + CurrencyEdit8.VALUE + CurrencyEdit12.VALUE +  CurrencyEdit9.VALUE + CurrencyEdit2.VALUE);

BTRelatorio.Enabled:= True;
suiButton1.Enabled:= True;

{While not DMC2.CDS_MOV_CAIXA.Eof do
begin
E:= Cds_venSOMAVALOR_VENDA.Text;
S:= cds_avuSOMAVALOR_SAIDA.Text;
EA:= cds_avuSOMAVALOR_ENT.Text;
P:= cds_receberSOMAVALOR_RECEBER.Text;
R:= cds_recSOMAVALOR_REC.Text;
F:= cds_finSOMAVALOR_FIN.TEXT;
{SALDO:= E + EA + R - S;
TOTAL := (SALDO + F + P);

Cds_ven.Next;
cds_avu.Next;
cds_rec.Next;
cds_receber.Next;
cds_fin.Next;
DMC2.CDS_MOV_CAIXA.next;


RXLabel8.Caption:= E;
RXLabel2.Caption:= S;
RXLabel12.Caption:= EA;
RXLabel5.Caption:= SALDO; //FormatFloat('R$: ##,##0.00',SALDO);
RXLabel14.Caption:= R;
RXLabel18.Caption:= F;
RXLabel10.Caption:= P;
RXLabel16.Caption:= TOTAL; //FormatFloat('R$: ##,##0.00',TOTAL);
BTRelatorio.Enabled:= True;
suiButton1.Enabled:= True;
end;
Cds_ven.last;
cds_avu.last;
cds_rec.last;
cds_receber.last;
cds_fin.last;
DMC2.CDS_MOV_CAIXA.last;}
end;
end;
end;


procedure TFormCaixaAnalitico.FormShow(Sender: TObject);
begin
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
DMC2.SQLD_MOV_CAIXA.Active:=False;
DMC2.CDS_MOV_CAIXA.Active:=False;
DateEdit1.Date := Date;
DateEdit2.Date := Date;
DateEdit1.SetFocus;
end;

procedure TFormCaixaAnalitico.DateEdit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaAnalitico.DateEdit2Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCaixaAnalitico.DateEdit2Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCaixaAnalitico.DateEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormCaixaAnalitico.BTRelatorioClick(Sender: TObject);
begin
//IF FormPrincipal.RCAIXA = 'S' THEN
//BEGIN
DMR.RvRelatorios.SetParam('datai',DateEdit1.Text);
DMR.RvRelatorios.SetParam('dataf',DateEdit2.Text);
DMR.RvRelatorios.SetParam('soma',RXLabel5.Caption);
DMR.RvRelatorios.SelectReport('Rp_CaixaAnalitico',False);
DMR.RvRelatorios.Execute;

end;


procedure TFormCaixaAnalitico.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormCaixaAnalitico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormCaixaAnalitico.suiButton1Click(Sender: TObject);
var
  inicio, final, troco :string;
  begin
    inicio:=datetostr(DATE);
    final:=datetostr(DATE);

    inicio:=dateedit1.TexT;
    final:=dateedit2.TexT;

     troco := 'T';

    Cds_ven.Active :=FALSE;
    qry_ven.close;
    qry_ven.SQL.Clear;
    qry_ven.SQL.add('select * from V_MOVIMENTO_CAIXA_VEN where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_ven.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_ven.Open;
    Cds_ven.Active :=TRUE;

    cds_rec.Active :=FALSE;
    qry_rec.close;
    qry_REC.SQL.Clear;
    qry_REC.SQL.add('select * from V_MOVIMENTO_CAIXA_REC where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_REC.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_REC.Open;
    Cds_REC.Active :=TRUE;

    cds_avu.Active :=FALSE;
    qry_AVU.close;
    qry_AVU.SQL.Clear;
    qry_avu.SQL.add('select * from V_MOVIMENTO_CAIXA_avu where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_avu.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_avu.Open;
    cds_avu.Active :=TRUE;

    cds_fin.Active :=FALSE;
    QRY_FIN.close;
    qry_fin.SQL.Clear;
    qry_fin.SQL.add('select * from V_MOVIMENTO_CAIXA_FIN where CODIGO >0'+'');
    if inicio > ' / /   ' then
    qry_fin.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    qry_fin.Open;
    cds_fin.Active :=TRUE;

    
    cds_cheque.Active :=FALSE;
    Qry_cheque.close;
    Qry_cheque.SQL.Clear;
    Qry_cheque.SQL.add('select * from V_MOVIMENTO_CAIXA_CH where CODIGO >0'+'');
    if inicio > ' / /   ' then
    Qry_cheque.SQL.add('and DATA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final))));
    Qry_cheque.Open;
    cds_cheque.Active :=TRUE;



    cds_receber.Active :=FALSE;
    Qry_receber.close;
    Qry_receber.SQL.Clear;
    Qry_receber.SQL.add('select * from CREDIARIO where COD_EMPRESA >0'+'');
    if inicio > ' / /   ' then
    Qry_receber.SQL.add('and DATA_COMPRA >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_COMPRA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_receber.SQL.add('ORDER BY CODIGO_COMPRA ASC');
    Qry_receber.Open;
    cds_receber.Active :=TRUE;

    cds_cartao.Active :=FALSE;
    Qry_cartao.close;
    Qry_cartao.SQL.Clear;
    Qry_cartao.SQL.add('SELECT A.*, C.NOME_RS FROM CONTAS_RECEBER_ADM_CARTAO A INNER JOIN CLIENTES C ON (A.COD_CLI=C.CODIGO) where COD_EMP >0'+'');
    if inicio > ' / /   ' then
    Qry_cartao.SQL.add('and EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cartao.SQL.add('ORDER BY CODIGO ASC');
    Qry_cartao.Open;
    cds_cartao.Active :=TRUE;

    Cds_cheques_emitidos.Active :=FALSE;
    Qry_cheques_emitidos.close;
    Qry_cheques_emitidos.SQL.Clear;
    Qry_cheques_emitidos.SQL.add('SELECT * FROM CHEQUES_EMITIDOS where COD_EMPRESA > 0'+'');
    if inicio > ' / /   ' then
    Qry_cheques_emitidos.SQL.add('and DATA_EMISSAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
    Qry_cheques_emitidos.SQL.add('and TROCO ='+QuotedStr(troco)+'');
    Qry_cheques_emitidos.SQL.add('ORDER BY COD_CHEQUE ASC');
    Qry_cheques_emitidos.Open;
    Cds_cheques_emitidos.Active :=TRUE;

    FormRelCaixa := TFormRelCaixa.Create(self);
    FormRelCaixa.RLReport1.Prepare;
    FormRelCaixa.RLReport1.PreviewModal;
    dm.SDS_Empresa.Open;
end;

procedure TFormCaixaAnalitico.Delete1Click(Sender: TObject);
var
  LANC :string;
begin
{if FormPrincipal.Label1.Caption ='N'then
begin
ShowMessage('O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!');
End;
if FormPrincipal.Label1.Caption ='S'then
begin
Msg_cd.Text:= 'Confirma Exclusão do lançamento?';
if Msg_cd.Showmodal = mryes then
begin
            LANC := DMC2.CDS_MOV_CAIXACODIGO.TEXT;

            CDS_MOV_DIARIO.Active := False;
            QRY_MOV_DIARIO.CLOSE;
            QRY_MOV_DIARIO.SQL.Clear;
            QRY_MOV_DIARIO.SQL.add('select * from MOVIMENTO_DIARIO where codigo ='+(LANC));
            QRY_MOV_DIARIO.Open;
            CDS_MOV_DIARIO.Active := true;
            begin
            with CDS_MOV_DIARIO do
            while CDS_MOV_DIARIO.RecordCount > 0 do
            CDS_MOV_DIARIO.Delete;
            CDS_MOV_DIARIO.ApplyUpdates(0);
            end;
            BTVisualizarClick(Sender);
            end;
end;   }
end;

end.

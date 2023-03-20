unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, ComCtrls,ExtCtrls, jpeg, dllcompanytec, Mylabel,
  IBCustomDataSet, IBQuery, IBDatabase, Grids, DBGrids, Mask, ToolEdit,
  CurrEdit, RXShell, AdvObj, BaseGrid, XDBGrids,
  DBClient, Provider, FMTBcd, DB, ActnList, Menus, SimpleDS,
  ACBrBase, ACBrCalculadora, SqlExpr, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, NxEdit, RLConsts,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError, uADDatSManager,
  uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager, uADCompDataSet,
  uADCompClient, DateUtils, sLabel, sGauge, ImgList, acAlphaImageList,
  sListView;

type
  TFormPrincipal = class(TForm)
    PageControl: TPageControl;
    Abastecimentos: TTabSheet;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label21: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button3: TButton;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    EditTempo: TEdit;
    EditCanal: TEdit;
    EditData: TEdit;
    EditHora: TEdit;
    EditRegistro: TEdit;
    EditEnc: TEdit;
    EditString: TEdit;
    GroupBox1: TGroupBox;
    Check: TCheckBox;
    value: TCheckBox;
    integridade: TCheckBox;
    TabSheet8: TTabSheet;
    ListBox2: TListBox;
    Button11: TButton;
    Edit1: TEdit;
    Button12: TButton;
    StatusBar1: TStatusBar;
    TabSheet10: TTabSheet;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    Edit13: TEdit;
    Label25: TLabel;
    ComboBox2: TComboBox;
    Label26: TLabel;
    Edit14: TEdit;
    Button13: TButton;
    GroupBox3: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Button21: TButton;
    Label30: TLabel;
    Edit17: TEdit;
    SpinEdit3: TSpinEdit;
    GroupBox4: TGroupBox;
    Label31: TLabel;
    Edit18: TEdit;
    Button22: TButton;
    Label32: TLabel;
    Edit19: TEdit;
    Panel9: TPanel;
    RadioButton9: TRadioButton;
    Button23: TButton;
    ComboBox3: TComboBox;
    Label33: TLabel;
    Shape1: TShape;
    Button27: TButton;
    GroupBox6: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Edit21: TEdit;
    Button29: TButton;
    Edit22: TEdit;
    TabSheet14: TTabSheet;
    Edit23: TEdit;
    Label38: TLabel;
    Button30: TButton;
    Button31: TButton;
    Panel8: TPanel;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Button32: TButton;
    GroupBox7: TGroupBox;
    Edit24: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Edit25: TEdit;
    Button33: TButton;
    Button34: TButton;
    myLabel3d1: TmyLabel3d;
    Panel4: TPanel;
    Label17: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LabelProduto: TLabel;
    Panel2: TPanel;
    EditTotaisDin: TCurrencyEdit;
    Panel3: TPanel;
    EditTotaisLT: TCurrencyEdit;
    Panel5: TPanel;
    EditPPL: TCurrencyEdit;
    dts_abstecidas: TDataSource;
    Timer1: TTimer;
    RxTrayIcon1: TRxTrayIcon;
    Qry_bico_enc: TIBQuery;
    qry_bicoenc_temp: TIBQuery;
    QConsulta: TIBQuery;
    EditBomba: TEdit;
    EditTanque: TEdit;
    EditProduto: TEdit;
    EditId_produto: TEdit;
    EditUnid: TEdit;
    qry_ultimoreg: TSQLQuery;
    qry_ultimoregREGISTRO: TIntegerField;
    Panel6: TPanel;
    XDBGrid1: TXDBGrid;
    QryBicoEnc_Temp: TSQLQuery;
    QryBicoEnc_TempCOD_BICOENC_TEMP: TIntegerField;
    QryBicoEnc_TempID_BOMBA: TIntegerField;
    QryBicoEnc_TempID_BICO: TStringField;
    QryBicoEnc_TempCOD_FRENTISTA: TIntegerField;
    QryBicoEnc_TempID_PRODUTOS: TIntegerField;
    QryBicoEnc_TempENC_LITROS: TFMTBCDField;
    QryBicoEnc_TempENC_DINHEIRO: TFMTBCDField;
    QryBicoEnc_TempPRODUTOS_DESC: TStringField;
    QryBicoEnc_TempNIVEL_PRECO: TIntegerField;
    QryBicoEnc_TempDINHEIRO: TFMTBCDField;
    QryBicoEnc_TempPRECO: TFMTBCDField;
    QryBicoEnc_TempLITROS: TFMTBCDField;
    QryBicoEnc_TempID_TANQUE: TIntegerField;
    QryBicoEnc_TempUNIDADE: TStringField;
    QryBicoEnc_TempREGISTRO: TIntegerField;
    cds_abastecidas: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    cds_abastecidasCOD_BICOENC_TEMP: TIntegerField;
    cds_abastecidasID_BOMBA: TIntegerField;
    cds_abastecidasID_BICO: TStringField;
    cds_abastecidasCOD_FRENTISTA: TIntegerField;
    cds_abastecidasID_PRODUTOS: TIntegerField;
    cds_abastecidasENC_LITROS: TFMTBCDField;
    cds_abastecidasENC_DINHEIRO: TFMTBCDField;
    cds_abastecidasPRODUTOS_DESC: TStringField;
    cds_abastecidasNIVEL_PRECO: TIntegerField;
    cds_abastecidasDINHEIRO: TFMTBCDField;
    cds_abastecidasPRECO: TFMTBCDField;
    cds_abastecidasLITROS: TFMTBCDField;
    cds_abastecidasID_TANQUE: TIntegerField;
    cds_abastecidasUNIDADE: TStringField;
    cds_abastecidasREGISTRO: TIntegerField;
    Panel7: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Calculator: TACBrCalculadora;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Configuraces1: TMenuItem;
    Ecf1: TMenuItem;
    Entrada1: TMenuItem;
    Saida1: TMenuItem;
    Fechamento1: TMenuItem;
    FechamentoIndividual1: TMenuItem;
    grid_bico: TNextGrid;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxNumberColumn19: TNxNumberColumn;
    NxTextColumn17: TNxTextColumn;
    NxTextColumn18: TNxTextColumn;
    Label4: TLabel;
    sh_status_conexao: TShape;
    lb_status_conexao: TLabel;
    NxTextColumn6: TNxNumberColumn;
    NxTextColumn13: TNxNumberColumn;
    timer_bico: TTimer;
    Button4: TButton;
    Edit2: TEdit;
    Edit30: TEdit;
    NxNumberColumn26: TNxNumberColumn;
    PopupMenu1: TPopupMenu;
    Venda1: TMenuItem;
    Aferio1: TMenuItem;
    Button5: TButton;
    VendaAvulsa1: TMenuItem;
    ConsultaProdutos1: TMenuItem;
    Label14: TLabel;
    BloqueiaTela1: TMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Qry_mov: TIBQuery;
    Action3: TAction;
    Button69: TButton;
    Qry_lmc: TIBQuery;
    QryVEndido: TIBQuery;
    QryVEndidoTAN_NUM_FIS: TIntegerField;
    QryVEndidoQ_TOTAL: TIBBCDField;
    QryVEndidoV_TOTAL: TIBBCDField;
    QryVEndidoENC_ABR: TIBBCDField;
    QryVEndidoENC_FCT: TIBBCDField;
    QryRecebido: TIBQuery;
    QryRecebidoCODIGO: TIntegerField;
    QryRecebidoCOD_NOTA_ENT: TIntegerField;
    QryRecebidoTAN_NUM_FIS: TIntegerField;
    QryRecebidoBOM_NUM_FIS: TIntegerField;
    QryRecebidoBIC_NUM_LOG: TIBStringField;
    QryRecebidoENC_ABT: TIBBCDField;
    QryRecebidoENC_FCT: TIBBCDField;
    QryRecebidoCOD_CLIENTE: TIntegerField;
    QryRecebidoCOD_VENDEDOR: TIntegerField;
    QryRecebidoDATA: TDateField;
    QryRecebidoCODPRODUTO: TIntegerField;
    QryRecebidoUNITARIO: TIBBCDField;
    QryRecebidoUNIDADE: TIBStringField;
    QryRecebidoQTDE: TIBBCDField;
    QryRecebidoTOTAL: TIBBCDField;
    QryRecebidoICMS_ALIQUOTA: TIBBCDField;
    QryRecebidoICMS_BASE: TIBBCDField;
    QryRecebidoICMS_VALOR: TIBBCDField;
    QryRecebidoCREDITO_ICMS: TIBBCDField;
    QryRecebidoIPI_ALIQUOTA: TIBBCDField;
    QryRecebidoIPI_BASE: TIBBCDField;
    QryRecebidoIPI_VALOR: TIBBCDField;
    QryRecebidoPIS_ALIQUOTA: TIBBCDField;
    QryRecebidoPIS_BASE: TIBBCDField;
    QryRecebidoPIS_VALOR: TIBBCDField;
    QryRecebidoCOFINS_ALIQUOTA: TIBBCDField;
    QryRecebidoCOFINS_BASE: TIBBCDField;
    QryRecebidoCOFINS_VALOR: TIBBCDField;
    QryRecebidoCFOP: TIBStringField;
    QryRecebidoNUMERO_VDA: TIntegerField;
    QryRecebidoDESCONTO: TIBBCDField;
    QryRecebidoACRESCIMO: TIBBCDField;
    QryRecebidoMOVIMENTO: TIntegerField;
    QryRecebidoBASE_CALCULO: TIBBCDField;
    QryRecebidoSITUACAO: TIntegerField;
    QryRecebidoCUPOM_NUMERO: TIBStringField;
    QryRecebidoMODELO: TIBStringField;
    QryRecebidoITEM: TIBStringField;
    QryRecebidoCST: TIBStringField;
    QryRecebidoMOVIMENTO_ESTOQUE: TIBBCDField;
    QryRecebidoCOD_USUARIO: TIntegerField;
    QryRecebidoLANCADO: TIntegerField;
    QryTotais: TIBQuery;
    QryTotaisTAN_NUM_FIS: TIntegerField;
    QryTotaisQUANT_ENT: TIBBCDField;
    QryTotaisENC_ABR: TIBBCDField;
    QryTotaisENT_TOTAL: TIBBCDField;
    QryTotaisSALDO_ESC: TIBBCDField;
    QryTotaisENC_FCT: TIBBCDField;
    QryTotaisENC_SAI: TIBBCDField;
    QryTotaisVLR_VDA_MES: TIBBCDField;
    QryTotaisVLR_TOTAL_SAI: TIBBCDField;
    Qryperdas: TIBQuery;
    QryperdasQUANT: TIBBCDField;
    QryperdasDATA_ACE: TDateField;
    QryMaster: TIBQuery;
    SpinEdit2: TNxSpinEdit;
    QryBicoEnc_TempDATAHORA: TSQLTimeStampField;
    QryBicoEnc_TempUSUARIO: TStringField;
    QryBicoEnc_TempCOD_USUARIO: TIntegerField;
    cds_abastecidasUSUARIO: TStringField;
    cds_abastecidasCOD_USUARIO: TIntegerField;
    cds_abastecidasDATAHORA: TSQLTimeStampField;
    qrult_Encerrantes: TADQuery;
    qrBombas: TADQuery;
    qrBombasCOD_BOMBA: TIntegerField;
    qrBombasCOD_FRENTISTA: TIntegerField;
    qrBombasID_BOMBA: TIntegerField;
    qrBombasQNT_BICO: TIntegerField;
    qrBombasPICPATH: TStringField;
    qrBombasULTATUAL: TSQLTimeStampField;
    qrBombasULTATUALCODSETOR: TIntegerField;
    qrBombasULTATUALCODSETORUSER: TIntegerField;
    qrBombasDATAHORA: TSQLTimeStampField;
    qrBombasENABLED: TIntegerField;
    qrBombasOBS: TStringField;
    qrBombasAUTO_AUTORIZA: TSmallintField;
    qrBombasDESAUTORIZA_APOS_VALOR: TBCDField;
    qrBombasDESAUTORIZA_APOS_QNT: TIntegerField;
    qrBombasSERIE: TStringField;
    qrBombasFABRICANTE: TStringField;
    qrBombasMODELO: TStringField;
    qrBicos: TADQuery;
    qrBicosCOD_BICO: TIntegerField;
    qrBicosCOD_BOMBA: TIntegerField;
    qrBicosCOD_TANQUE: TIntegerField;
    qrBicosCOD_FRENTISTA: TIntegerField;
    qrBicosULTATUAL: TSQLTimeStampField;
    qrBicosULTATUALCODSETOR: TIntegerField;
    qrBicosULTATUALCODSETORUSER: TIntegerField;
    qrBicosCOD_PRODUTOS: TIntegerField;
    qrBicosDATAHORA: TSQLTimeStampField;
    qrBicosENABLED: TIntegerField;
    qrBicosOBS: TStringField;
    qrBicosID_BICO: TStringField;
    qrBicosPOSICAO: TIntegerField;
    qrTanques: TADQuery;
    qrTanquesCOD_TANQUE: TIntegerField;
    qrTanquesID_TANQUE: TIntegerField;
    qrTanquesLITROS: TBCDField;
    qrTanquesULTATUAL: TSQLTimeStampField;
    qrTanquesULTATUALCODSETOR: TIntegerField;
    qrTanquesULTATUALCODSETORUSER: TIntegerField;
    qrTanquesDATAHORA: TSQLTimeStampField;
    qrTanquesENABLED: TIntegerField;
    qrTanquesOBS: TStringField;
    qrTanquesCOD_PRODUTOS: TIntegerField;
    qrTanquesLITROS_ATUAL: TBCDField;
    qrTanquesVLR_SAI: TBCDField;
    qrTanquesVLR_ENT: TBCDField;
    qrTanquesEST_INI: TBCDField;
    qrTanquesEST_ATU: TBCDField;
    qrTanquesDAT_ULT_ENT: TDateField;
    qrTanquesNUM_NF: TIntegerField;
    qrTanquesDAT_ULT_SAI: TDateField;
    qrTanquesESTOQUE_MEDICAO: TBCDField;
    qrCombustiveis: TADQuery;
    qrCombustiveisCODIGO: TIntegerField;
    qrCombustiveisCODIGO_BARRAS: TStringField;
    qrCombustiveisDESCRICAO: TStringField;
    qrCombustiveisABREVIADO: TStringField;
    qrCombustiveisUNIDADE: TIntegerField;
    qrCombustiveisPRECO_CUSTO: TBCDField;
    qrCombustiveisMARGEM_LUCRO: TBCDField;
    qrCombustiveisFRETE: TBCDField;
    qrCombustiveisICMS: TBCDField;
    qrCombustiveisIPI_IRPJ: TBCDField;
    qrCombustiveisOUTROS_IMPOSTOS: TBCDField;
    qrCombustiveisDESCONTOS: TBCDField;
    qrCombustiveisCLASS_FISCAL: TStringField;
    qrCombustiveisSIT_TRIBUTARIA: TStringField;
    qrCombustiveisCUSTO_MEDIO: TBCDField;
    qrCombustiveisPRECO_VENDA: TBCDField;
    qrCombustiveisDESCONTO_MAXIMO: TBCDField;
    qrCombustiveisCODIGO_GRUPO: TIntegerField;
    qrCombustiveisCODIGO_SUBGRUPO: TIntegerField;
    qrCombustiveisCODIGO_MARCA: TIntegerField;
    qrCombustiveisNOME_GRUPO: TStringField;
    qrCombustiveisNOME_SUBGRUPO: TStringField;
    qrCombustiveisNOME_MARCA: TStringField;
    qrCombustiveisNOME_FORNECEDOR: TStringField;
    qrCombustiveisCODIGO_FORNECEDORES: TIntegerField;
    qrCombustiveisFOTO: TBlobField;
    qrCombustiveisESTOQUE_ATUAL: TBCDField;
    qrCombustiveisESTOQUE_VENDIDO: TBCDField;
    qrCombustiveisESTOQUE: TBCDField;
    qrCombustiveisVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    qrCombustiveisVALOR_ESTOQUE: TFMTBCDField;
    qrCombustiveisESTOQUE_MINIMO: TIntegerField;
    qrCombustiveisESTOQUE_MAXIMO: TIntegerField;
    qrCombustiveisDATACAD: TDateField;
    qrCombustiveisUSERCAD: TStringField;
    qrCombustiveisVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qrCombustiveisULTIMACOMPRA: TDateField;
    qrCombustiveisVALOR_EST_CUSTO: TFMTBCDField;
    qrCombustiveisSECCAO: TIntegerField;
    qrCombustiveisCATEGORIA: TIntegerField;
    qrCombustiveisLOCALIZACAO: TStringField;
    qrCombustiveisAPLICACAO: TStringField;
    qrCombustiveisESP_COD_AUX: TStringField;
    qrCombustiveisGARANTIA: TIntegerField;
    qrCombustiveisBALANCA: TStringField;
    qrCombustiveisETIQUETA: TStringField;
    qrCombustiveisATIVO: TStringField;
    qrCombustiveisREFERENCIA: TStringField;
    qrCombustiveisCOD_EMPRESA: TIntegerField;
    qrCombustiveisDESC_UNIDADE: TStringField;
    qrCombustiveisPESOBRUTO: TBCDField;
    qrCombustiveisPESOLIQUIDO: TBCDField;
    qrCombustiveisFONETICO: TStringField;
    qrCombustiveisDATAULTALTERACAO: TDateField;
    qrCombustiveisCUSTOREPOSICAO: TBCDField;
    qrCombustiveisPRECO_ANT: TBCDField;
    qrCombustiveisPRECO_PROMOCAO: TBCDField;
    qrCombustiveisFLAG_PROMOCAO: TStringField;
    qrCombustiveisDT_INICIO_PROMO: TDateField;
    qrCombustiveisDT_FIM_PROMO: TDateField;
    qrCombustiveisCOD_LABORATORIO: TIntegerField;
    qrCombustiveisLABORATORIO: TStringField;
    qrCombustiveisPRINCIPIO_ATIVO: TStringField;
    qrCombustiveisMED_CONTROLADO: TStringField;
    qrCombustiveisQTD_FRACIONADA: TBCDField;
    qrCombustiveisQTD_CAIXA: TSmallintField;
    qrCombustiveisMED_GENERICO: TStringField;
    qrCombustiveisLOTE_MED: TStringField;
    qrCombustiveisVALIDADE: TDateField;
    qrCombustiveisCHEK_BOX: TStringField;
    qrCombustiveisPRECO_VENDA2: TBCDField;
    qrCombustiveisMARGEM_LUCRO2: TBCDField;
    qrCombustiveisVALIDADE_PRODUTO: TStringField;
    qrCombustiveisPROD_SERV: TStringField;
    qrCombustiveisUNIDADE_ENT: TIntegerField;
    qrCombustiveisDESC_UNID_ENT: TStringField;
    qrCombustiveisQUANT_SAIDA: TBCDField;
    qrCombustiveisQUANT_ENTRADA: TBCDField;
    qrCombustiveisESTOQUE_FRACAO: TBCDField;
    qrCombustiveisDATA_FABRICACAO: TDateField;
    qrCombustiveisFRACAO: TIntegerField;
    qrCombustiveisNCM_SH: TStringField;
    qrCombustiveisCOD_MS: TStringField;
    qrCombustiveisCONTOLAESTOQUE: TStringField;
    qrCombustiveisPRODUTOCOMPOSTO: TStringField;
    qrCombustiveisTIPO_ATIVIDADE: TStringField;
    qrCombustiveisCOD_PRODUTO_ESTOQUE: TIntegerField;
    qrCombustiveisCODIGO_LOCAL_ESTOQUE: TIntegerField;
    qrCombustiveisLISTA_ABC: TStringField;
    qrCombustiveisGRUPO_TRIBUTACAO: TIntegerField;
    qrCombustiveisCOMBUSTIVEL: TStringField;
    qrCombustiveisCOR: TIntegerField;
    qrCombustiveisENABLE_NUMSERIE: TIntegerField;
    qrCombustiveisID_PRODUTOS: TIntegerField;
    qrCombustiveisCOD_ANP: TStringField;
    qrCombustiveisCESTA: TStringField;
    qrCombustiveisML_QUANT_BEB: TBCDField;
    qrCombustiveisUND_TRIB: TStringField;
    qrCombustiveisCHASSI: TStringField;
    qrCombustiveisCOR_DESC: TStringField;
    qrCombustiveisN_MOTOR: TStringField;
    qrCombustiveisANO_FAB: TStringField;
    qrCombustiveisANO_MOD_FAB: TStringField;
    qrCombustiveisTIPO_VEIC: TStringField;
    qrCombustiveisN_SERIE: TStringField;
    qrCombustiveisCOD_MODELO: TStringField;
    qrCombustiveisESPECIE_VEICULO: TStringField;
    qrCombustiveisCOD_COR_DENATRAN: TStringField;
    qrCombustiveisTIPO_COMBUSTIVEL: TStringField;
    qrCombustiveisVEICULO: TStringField;
    qrCombustiveisUSA_RENTABILIDADE: TIntegerField;
    qrCombustiveisUSA_SERIAL: TIntegerField;
    qrCombustiveisUSA_GRADE: TIntegerField;
    qrCombustiveisPRODUTO_PROPRIEDADE: TIntegerField;
    qrCombustiveisMULTIP_FRACAO: TIntegerField;
    qrCombustiveisCOMISSAO: TBCDField;
    qrLivro: TADQuery;
    qrLivroCODIGO: TIntegerField;
    qrLivroCOD_FILIAL: TStringField;
    qrLivroFILIAL: TStringField;
    qrLivroENDERECO: TStringField;
    qrLivroBAIRRO: TStringField;
    qrLivroCEP: TStringField;
    qrLivroCIDADE: TStringField;
    qrLivroUF: TStringField;
    qrLivroIE: TStringField;
    qrLivroCNPJ: TStringField;
    qrLivroIM: TStringField;
    qrLivroDISTRIBUIDORA: TStringField;
    qrLivroCAPACIDADE: TIntegerField;
    qrLivroCOD_COMBUSTIVEL: TIntegerField;
    qrLivroNOME_COMBUSTIVEL: TStringField;
    qrLivroNUMERO: TStringField;
    qrLivroNUMERO_JUNTACOM: TStringField;
    qrLivroDATA_ABERTURA: TDateField;
    qrLivroNUMERO_ORDEM: TIntegerField;
    qrLivroPAGINA_ATUAL: TIntegerField;
    qrLMC: TADQuery;
    qrLMCCODIGO: TIntegerField;
    qrLMCTANQUE: TIntegerField;
    qrLMCBOMBA: TIntegerField;
    qrLMCBICO: TStringField;
    qrLMCABERTURA: TIntegerField;
    qrLMCENCERRANTE: TIntegerField;
    qrLMCCOMBUSTIVEL: TIntegerField;
    qrLMCDATA: TDateField;
    qrLMCSITUACAO: TIntegerField;
    qrLMCNR_NOTA: TIntegerField;
    qrLMCNOTAFISCAL1: TStringField;
    qrLMCNOTAFISCAL2: TStringField;
    qrLMCNOTAFISCAL3: TStringField;
    qrLMCNOTAFISCAL4: TStringField;
    qrLMCQUANTNF1: TIntegerField;
    qrLMCQUANTNF2: TIntegerField;
    qrLMCQUANTNF3: TIntegerField;
    qrLMCQUANTNF4: TIntegerField;
    qrLMCBICO1: TIntegerField;
    qrLMCBICO2: TIntegerField;
    qrLMCBICO3: TIntegerField;
    qrLMCBICO4: TIntegerField;
    qrLMCBICO5: TIntegerField;
    qrLMCBICO6: TIntegerField;
    qrLMCBICO7: TIntegerField;
    qrLMCBICO8: TIntegerField;
    qrLMCABER_BICO1: TIntegerField;
    qrLMCABER_BICO2: TIntegerField;
    qrLMCABER_BICO3: TIntegerField;
    qrLMCABER_BICO4: TIntegerField;
    qrLMCABER_BICO5: TIntegerField;
    qrLMCABER_BICO6: TIntegerField;
    qrLMCABER_BICO7: TIntegerField;
    qrLMCABER_BICO8: TIntegerField;
    qrLMCENC_BICO1: TIntegerField;
    qrLMCENC_BICO2: TIntegerField;
    qrLMCENC_BICO3: TIntegerField;
    qrLMCENC_BICO4: TIntegerField;
    qrLMCENC_BICO5: TIntegerField;
    qrLMCENC_BICO6: TIntegerField;
    qrLMCENC_BICO7: TIntegerField;
    qrLMCENC_BICO8: TIntegerField;
    qrLMCAFER_BICO1: TIntegerField;
    qrLMCAFER_BICO2: TIntegerField;
    qrLMCAFER_BICO3: TIntegerField;
    qrLMCAFER_BICO4: TIntegerField;
    qrLMCAFER_BICO5: TIntegerField;
    qrLMCAFER_BICO6: TIntegerField;
    qrLMCAFER_BICO7: TIntegerField;
    qrLMCAFER_BICO8: TIntegerField;
    qrLMCQTEVEND_1: TIntegerField;
    qrLMCQTEVEND_2: TIntegerField;
    qrLMCQTEVEND_3: TIntegerField;
    qrLMCQTEVEND_4: TIntegerField;
    qrLMCQTEVEND_5: TIntegerField;
    qrLMCQTEVEND_6: TIntegerField;
    qrLMCQTEVEND_7: TIntegerField;
    qrLMCQTEVEND_8: TIntegerField;
    qrLMCPERDA_SOBRA: TIntegerField;
    qrLMCOBSERVACAO: TStringField;
    qrLMCPAGINA: TIntegerField;
    qrLMCID_BICO1: TStringField;
    qrLMCID_BICO2: TStringField;
    qrLMCID_BICO3: TStringField;
    qrLMCID_BICO4: TStringField;
    qrLMCID_BICO5: TStringField;
    qrLMCID_BICO6: TStringField;
    qrLMCID_BICO7: TStringField;
    qrLMCID_BICO8: TStringField;
    qrLMCPRECO: TBCDField;
    qrLMCQUANTIDADE: TBCDField;
    qrLMCTOTAL: TBCDField;
    qrLMCTOTALVEND_1: TBCDField;
    qrLMCTOTALVEND_2: TBCDField;
    qrLMCTOTALVEND_3: TBCDField;
    qrLMCTOTALVEND_4: TBCDField;
    qrLMCTOTALVEND_5: TBCDField;
    qrLMCTOTALVEND_6: TBCDField;
    qrLMCTOTALVEND_7: TBCDField;
    qrLMCTOTALVEND_8: TBCDField;
    qrLMCESTOQ_ABERTURA: TIntegerField;
    qrLMCESTOQ_ESCRITURAL: TIntegerField;
    qrLMCESTOQ_FECHAMENTO: TIntegerField;
    qrLMCVENDAS_DIA: TLargeintField;
    qrLMCRECEBIDO_DIA: TLargeintField;
    qrLMCDISPONIVEL_DIA: TLargeintField;
    qrLMCTOTALVENDAS_DIA: TBCDField;
    qrLMCTOTALVENDAS_ACU: TBCDField;
    qrEncerrantes: TADQuery;
    qrEncerrantesCODIGO: TIntegerField;
    qrEncerrantesDATA: TDateField;
    qrEncerrantesCOD_BICO: TIntegerField;
    qrEncerrantesABERTURA: TIntegerField;
    qrEncerrantesENCERRAMENTO: TIntegerField;
    qrEncerrantesCOD_PRODUTO: TIntegerField;
    qrEncerrantesSITUACAO: TStringField;
    qrEncerrantesQUANTIDADE: TBCDField;
    qrEncerrantesAFERICAO: TBCDField;
    qrEncerrantesPRECO: TBCDField;
    qrEncerrantesVALOR: TBCDField;
    qrApoio: TADQuery;
    qr_afericao: TADQuery;
    QR_PRECO: TADQuery;
    qr_dados: TADQuery;
    ADQuery1: TADQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    BCDField1: TBCDField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField5: TIntegerField;
    StringField1: TStringField;
    IntegerField6: TIntegerField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    DateField1: TDateField;
    IntegerField7: TIntegerField;
    DateField2: TDateField;
    Qry_mov2: TADQuery;
    Qry_mov2DATA: TDateField;
    Qry_mov2TAN_NUM_FIS: TIntegerField;
    Qry_mov2Q_TOTAL_V: TBCDField;
    Qry_mov2Q_TOTAL_E: TBCDField;
    qdata: TADQuery;
    DateField3: TDateField;
    qrCombustivel: TADQuery;
    Panel12: TPanel;
    pb: TsGauge;
    sLabel1: TsLabel;
    Label5: TLabel;
    qrCombustivelCOD_PRODUTOS: TIntegerField;
    Edit3: TEdit;
    lbpreco: TLabel;
    Qsaldo: TADQuery;
    QsaldoESTOQ_FECHAMENTO: TIntegerField;
    QryBicoEnc_TempCHECK_BOX: TStringField;
    cds_abastecidasCHECK_BOX: TStringField;
    E1: TMenuItem;
    R1: TMenuItem;
    L1: TMenuItem;
    MostraBicos: TListView;
    ImagensBicos: TsAlphaImageList;
    query: TADQuery;
    sds_tanques: TADQuery;
    queryPRECO_VENDA: TBCDField;
    queryDESCRICAO: TStringField;
    queryCOD_BICO: TIntegerField;
    queryCOD_BOMBA: TIntegerField;
    queryCOD_TANQUE: TIntegerField;
    queryCOD_FRENTISTA: TIntegerField;
    queryULTATUAL: TSQLTimeStampField;
    queryULTATUALCODSETOR: TIntegerField;
    queryULTATUALCODSETORUSER: TIntegerField;
    queryCOD_PRODUTOS: TIntegerField;
    queryDATAHORA: TSQLTimeStampField;
    queryENABLED: TIntegerField;
    queryOBS: TStringField;
    queryID_BICO: TStringField;
    queryPOSICAO: TIntegerField;
    sds_tanquesCOD_TANQUE: TIntegerField;
    sds_tanquesID_TANQUE: TIntegerField;
    sds_tanquesLITROS: TBCDField;
    sds_tanquesULTATUAL: TSQLTimeStampField;
    sds_tanquesULTATUALCODSETOR: TIntegerField;
    sds_tanquesULTATUALCODSETORUSER: TIntegerField;
    sds_tanquesDATAHORA: TSQLTimeStampField;
    sds_tanquesENABLED: TIntegerField;
    sds_tanquesOBS: TStringField;
    sds_tanquesCOD_PRODUTOS: TIntegerField;
    sds_tanquesLITROS_ATUAL: TBCDField;
    sds_tanquesVLR_SAI: TBCDField;
    sds_tanquesVLR_ENT: TBCDField;
    sds_tanquesEST_INI: TBCDField;
    sds_tanquesEST_ATU: TBCDField;
    sds_tanquesDAT_ULT_ENT: TDateField;
    sds_tanquesNUM_NF: TIntegerField;
    sds_tanquesDAT_ULT_SAI: TDateField;
    sds_tanquesESTOQUE_MEDICAO: TBCDField;
    Procedure Retorno_Impressora;
    Procedure Analisa_iRetorno();
    function ErrorToString(Erro:Error):string;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure liberaUser;
    procedure Ecf1Click(Sender: TObject);
    procedure Fechamento1Click(Sender: TObject);
    procedure FechamentoIndividual1Click(Sender: TObject);
    procedure Saida1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure EnviaComando(comando:string;timeout:integer);
    procedure timer_bicoTimer(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Aferio1Click(Sender: TObject);
    procedure VendaAvulsa1Click(Sender: TObject);
    procedure ConsultaProdutos1Click(Sender: TObject);
    procedure BloqueiaTela1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    function tiraacento ( str: String ): String;
    function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
    procedure Action1Execute(Sender: TObject);
    procedure pegaBicos;
    procedure pegaEncerrantes;
    procedure XDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XDBGrid1CellClick(Column: TXColumn);
    procedure R1Click(Sender: TObject);
    procedure L1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    UserLogado: String;
    USER,PASS,  usuario_temp, NFCE :String;
    V_total : Currency;
    combustivel : Boolean;

    procedure log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
  end;
 
  //Buscar Porta e Velocidade Automático
  function eBuscarPortaVelocidade_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
   //Imprimir  Dual
  function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll';
   //Retornar valor DarumaFramework.xml
  function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer;StdCall; External 'DarumaFramework.dll';
 //URL QrCode
  function rURLQrcode_NFCe_Daruma(StrRetornoUrl: String): Integer; StdCall; External 'DarumaFramework.dll';
 
var FormPrincipal: TFormPrincipal;
 iRetorno: Integer;
  iControle: Integer;
  iACK, iST1, iST2: Integer; // Variáveis com o retorno do Status da Impressora

  sPosto_Resposta, sPosto_Comando, str : string;
  iQtde_bico : integer;
  bPosto_ok : boolean;
  tanque, bomba, bico, bico1 : string;
  valida_nfc, valida_nfe, IMPRIME :Boolean;

      periodo,  xtanque,  xqtde_bicos, eqtde_bicos  : integer;
  xtanque_estoq, xpreco_comb: double;
  xabert1, xabert2, xabert3, xabert4, xabert5, xabert6, xabert7, xabert8 : integer;
  xvendb1, xvendb2, xvendb3, xvendb4, xvendb5, xvendb6, xvendb7, xvendb8 : double;
  xvenvaldb1, xvenvaldb2, xvenvaldb3, xvenvaldb4, xvenvaldb5, xvenvaldb6, xvenvaldb7, xvenvaldb8 : double;
  xestoq_escritural, xestoq_fechamento, xperdasobra : double;
  bedatual, xacumulado, xbomba, xpagina_atual,
  evt1, evb1,  evb2,  evb3,  evb4, rvf1, rvf2, rvf3, rvf4,
  rvaf1, rvaf2, rvaf3, rvaf4, rva1, rva2, rva3, rva4, evt2, evt3, evt4, I, lmc, perdas : integer;



  xpega_bicoatual, evib1, evib2, evib3, evib4, edn1, edn2, eproduto, lbpreco, lbv1, lbv2, lbv3, lbv4 : string;
  xqtde_venbico, xval_venbico, rta1, rta2, rta3, rta4, rta5, rta6, rvr1, rvr2,
  rvp1, rvp2, rvp3, rvp4, rvr3, rvr4, rtf1, rtf2, rtf3, rtf4, rtf5, rtf6 : double;

  xcod_pesq : integer;
  prim_dia, ultim_dia : TDate;


implementation

uses Z_RotinasGerais, Z_DeclaracoesBemaFi32, Acesso, Vendas, ModulodeDados,
  ECFTeste1, CaixaAnalitico, CaixaEspecifico, LancamentosCaixaSaida,
  LancamentosCaixa, UAfeicao, ModuleDados1, ConsProdutos, Logoff, caixa,
  BEMA_ReducaoZ, BEMA_LeituraX, Ubibli1;

{$R *.DFM}
function tformprincipal.tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'è': str[i] := 'e';
'ì': str[i] := 'i';
'ù': str[i] := 'u';
'î': str[i] := 'i';
'û': str[i] := 'u';
'á': str[i] := ' ';//
'é': str[i] := '‚';//
'í': str[i] := '¡';//
'ó': str[i] := '¢';//
'ú': str[i] := '£';//
'à': str[i] := '…';//
'ò': str[i] := '•';//
'â': str[i] := 'ƒ';//
'ê': str[i] := 'ˆ';//
'ô': str[i] := '“';//
'ä': str[i] := '„';//
'ë': str[i] := '‰';//
'ï': str[i] := '‹';//
'ö': str[i] := '”';//
'ü': str[i] := '';//
'ã': str[i] := '†';//
'õ': str[i] := 'o';
'ñ': str[i] := '¤';//
'ç': str[i] := '‡';//
'Á': str[i] := 'A';
'É': str[i] := '';//
'Í': str[i] := 'I';
'Ó': str[i] := 'O';
'Ú': str[i] := 'U';
'À': str[i] := 'A';
'È': str[i] := 'E';
'Ì': str[i] := 'I';
'Ò': str[i] := 'O';
'Ù': str[i] := 'U';
'Â': str[i] := '';
'Ê': str[i] := 'E';
'Î': str[i] := 'I';
'Ô': str[i] := 'O';
'Û': str[i] := 'U';
'Ä': str[i] := 'A';
'Ë': str[i] := 'E';
'Ï': str[i] := 'I';
'Ö': str[i] := 'O';
'Ü': str[i] := 'š';//
'Ã': str[i] := 'A';
'Õ': str[i] := 'O';
'Ñ': str[i] := '¥';//
'Ç': str[i] := '€';//
'ª': str[i] := '¦';//
'º': str[i] := '§';//
end;
Result := str;
end;

procedure Tformprincipal.pegaEncerrantes;
begin
{
    qrEncerrantes.Close;
    qrEncerrantes.SQL.Clear;
    qrEncerrantes.SQL.Add('select * from ENCERRANTES where cod_bico = :cod_bico');
    qrEncerrantes.SQL.Add(' and cod_produto = :cod_produto and data = :data');
//    qrEncerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(Trim(evb1.Text));

    qrEncerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(Trim(xpega_bicoatual));
    qrEncerrantes.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto.Text));
    qrEncerrantes.Params.ParamByName('data').AsDateTime := edata.Date;
    qrEncerrantes.Open;
}

    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where cod_bico = :cod_bico');
    qrult_Encerrantes.SQL.Add(' and cod_produto = :cod_produto ');
    if bedatual = 1 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := evb1
    else if bedatual = 2 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := evb2
    else if bedatual = 3 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := evb3
    else if bedatual = 4 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := evb4 ;
 {   else if bedatual = 5 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(evb5.text)
    else if bedatual = 6 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(evb6.text)
    else if bedatual = 7 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(evb7.text)
    else if bedatual = 8 then
      qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := StrToInt(evb8.text)}

    qrult_Encerrantes.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrult_Encerrantes.Open;
    qrult_Encerrantes.Last;

//    if qrEncerrantes.RecordCount > 0 then
      if qrult_Encerrantes.RecordCount > 0 then
      begin
        if bedatual = 1 then
        begin
//          xabert1 := qrEncerrantes.fieldbyname('abertura').AsInteger;
//          xabert1 := qrult_Encerrantes.fieldbyname('abertura').AsInteger;
          xabert1 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp1 := xpreco_comb;
          rva1 := xabert1;
        end
        else
        if bedatual = 2 then
        begin
          xabert2 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp2 := xpreco_comb;
          rva2 := xabert2;
        end
        else
        if bedatual = 3 then
        begin
          xabert3 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp3 := xpreco_comb;
          rva3 := xabert3;
        end
        else
        if bedatual = 4 then
        begin
          xabert4 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp4 := xpreco_comb;
          rva4 := xabert4;
        end ;
      {  else if bedatual = 5 then
                begin
          xabert5 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp5.Value := xpreco_comb;
          rva5.Value := xabert5;
        end
        else if bedatual = 6 then
        begin
          xabert6 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp6.Value := xpreco_comb;
          rva6.Value := xabert6;
        end
        else if bedatual = 7 then
                begin
          xabert7 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp7.Value := xpreco_comb;
          rva7.Value := xabert7;
        end
        else if bedatual = 8 then
                begin
          xabert8 := qrult_Encerrantes.fieldbyname('encerramento').AsInteger;
          rvp8.Value := xpreco_comb;
          rva8.Value := xabert8;
        end
    end
    else
    BEGIN   }
   {   ShowMessage('nada');
      ShowMessage(xpega_bicoatual);
      ShowMessage(eproduto.Text);
      ShowMessage(DateToStr(edata.Date));  }
    END;
end;

procedure tformprincipal.pegaBicos;
var
  xcod_bicos : Array of integer;
  icontador : integer;
begin
//  ShowMessage('passou aqui bicos');
  qrBicos.Close;
  qrBicos.SQL.Clear;
  qrBicos.SQL.Add('select * from BICO where cod_produtos = :cod_produto');
  qrBicos.Params.ParamByName('cod_Produto').AsInteger := StrToInt(Trim(eproduto));
  qrBicos.Open;

  xbomba := qrBicos.Fieldbyname('cod_bomba').asinteger;

  xqtde_bicos := 0;
  While not qrBicos.Eof do
  begin
    xqtde_bicos := xqtde_bicos + 1;
    qrBicos.next;
  end;

  eqtde_bicos := xqtde_bicos;
  icontador:= 0;
//  SetLength(xcod_bicos,xqtde_bicos);
  SetLength(xcod_bicos,4);

  qrBicos.First;
  While  xqtde_bicos > 0 do
  begin
    xcod_bicos[icontador] := qrBicos.fieldbyname('COD_BICO').AsInteger;
    xqtde_bicos := xqtde_bicos - 1;
    if icontador = 0 then
    begin
      evb1 := xcod_bicos[icontador];
      evt1 := xtanque;
      rvp1 := StrToFloat(lbpreco.CAPTION);
    end
    else if icontador = 1 then
    begin
      evb2 := xcod_bicos[icontador];
      evt2 := xtanque;
      rvp1 := StrToFloat(lbpreco.CAPTION);
    end
    else if icontador = 2 then
    begin
      evb3 := xcod_bicos[icontador];
      evt3 := (xtanque);
      rvp1 := StrToFloat(lbpreco.CAPTION);
    end
    else if icontador = 3 then
    begin
      evb4 := (xcod_bicos[icontador]);
      evt4 := (xtanque);
      rvp1 := StrToFloat(lbpreco.CAPTION);
    end;
   { else if icontador = 4 then
    begin
      evb5 := IntToStr(xcod_bicos[icontador]);
      evt5 := IntToStr(xtanque);
      rvp1 := lbpreco.Caption;
    end
    else if icontador = 5 then
    begin
      evb6 := IntToStr(xcod_bicos[icontador]);
      evt6 := IntToStr(xtanque);
      rvp1 := lbpreco.Caption;
    end
    else if icontador = 6 then
    begin
      evb7 := IntToStr(xcod_bicos[icontador]);
      evt7 := IntToStr(xtanque);
      rvp1 := lbpreco.Caption;
    end
    else if icontador = 7 then
    begin
      evb8 := IntToStr(xcod_bicos[icontador]);
      evt8 := IntToStr(xtanque);
      rvp1 := lbpreco.Caption;
    end; }
    icontador := icontador + 1;
    qrBicos.next;
  end;
end;

function tformprincipal.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
begin
   texto := tiraacento(texto);
   if tipo = 'E' then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'D' then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'C' then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;

procedure tformprincipal.log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
begin
   if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;
      begin
        try
          try
          DM.QConsulta.close;
          DM.QConsulta.SQL.clear;
          DM.QConsulta.sql.add('insert into log');
          DM.QConsulta.sql.add('(data,hora,codusuario,tabela,codregistro,funcao,historico)');
          DM.QConsulta.SQL.add('values');
          DM.QConsulta.sql.add('(:data,:hora,:codusuario,:tabela,:codregistro,:funcao,:historico)');
          DM.QConsulta.params.parambyname('data').asdatetime := date;
          DM.QConsulta.params.parambyname('hora').asstring := timetostr(time);
          DM.QConsulta.params.parambyname('codusuario').AsString := usuario_temp;
          DM.QConsulta.params.parambyname('tabela').asstring := TABELA;
          DM.QConsulta.params.parambyname('codregistro').asstring := copy(codregistro,1,10);
          DM.QConsulta.params.parambyname('funcao').asstring := copy(funcao,1,10);
          DM.QConsulta.params.parambyname('historico').asstring := copy(historico,1,150);
          DM.QConsulta.execsql;
           except
            DM.IBTransaction.Rollback;
            showmessage('Erro ao Gravar o log do sistema');
          end;
        finally
          DM.QConsulta.Close;
        end;
     end;
      usuario_temp := codigo_usuario;

end;

procedure TFormPrincipal.EnviaComando(comando:string;timeout:integer);
begin
  sPosto_comando := comando;
  //comport1.WriteStr(comando);
 // timer_resposta.Interval:=Timeout;
 // timer_resposta.Enabled:=true;
end;
procedure TFormPrincipal.liberaUser;
begin
user:= dm.SDS_UsuariosUSUARIO.Text;

if DM.SDS_Usuarios.locate('USUARIO',USER,[locaseInsensitive])then
begin
Label1.Caption :=  DM.SDS_Usuarios.FieldByname('EXCLUIR').AsString;
Label2.Caption :=  DM.SDS_Usuarios.FieldByname('EDITAR').AsString;
Label3.Caption :=  DM.SDS_Usuarios.FieldByname('INSERIR').AsString;
NFCE           :=  DM.SDS_Usuarios.FieldByname('UTILIZA_NFCE').AsString;
end;
end;

Procedure TFormPrincipal.Analisa_iRetorno();
Begin
  if iRetorno = 0 then
    Application.MessageBox( 'Erro de Comunicação !', 'Erro',MB_IconError + MB_OK);

  If iRetorno = -1 Then
    Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro', MB_IconError + MB_OK);

  if iRetorno = -2  then
    Application.MessageBox( 'Parâmetro Inválido !', 'Erro',MB_IconError + MB_OK);

  if iRetorno = -3  then
    Application.MessageBox( 'Alíquota não programada !', 'Atenção',MB_IconInformation + MB_OK);

  If iRetorno = -4 Then
    Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -5 Then
    Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro',
                                MB_IconError + MB_OK);

  If iRetorno = -6 Then
    Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -7 Then
    Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -8 Then
    Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK);

  if iRetorno = -18 then
    Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -19 then
    Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -20 then
    Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -21 then
    Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -22 then
    Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -23 then
    Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -24 then
    Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -25 then
    Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -26 then
    Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -28 then
    Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
                                MB_IconInformation + MB_OK);
End;


Procedure TFormPrincipal.Retorno_Impressora;
  Var iACK, iST1, iST2: Integer;
  Begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
    If iACK = 6 then
       BEGIN

          // Verifica ST1

          IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; end;
          IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  end;
          IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  end;
          IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  end;
          IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   end;
          IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   end;
          IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   end;
          IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   end;

          // Verifica ST2

          IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; end;
          IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  end;
          IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  end;
          IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  end;
          IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   end;
          IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   end;
          IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   end;
          IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   end;
       End;

    If iACK = 21 Then BEGIN
       showmessage( 'Atenção!!!' + #13 + #10 +
                    'A Impressora retornou NAK. O programa será abortado.');
    End;
End;

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
Radiobutton1.Checked:=InicializaSerial(spinedit1.Value);
RadioButton2.Checked:=not RadioButton1.Checked;
Button1.Enabled:=not RadioButton1.Checked;
Button2.Enabled:=not Button1.Enabled;
end;

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
if FechaSerial<>0 then Radiobutton1.Checked:=true else Radiobutton1.Checked:=false;
RadioButton2.Checked:=not RadioButton1.Checked;
Button1.Enabled:=not RadioButton1.Checked;
Button2.Enabled:=not Button1.Enabled;
end;

procedure TFormPrincipal.Button3Click(Sender: TObject);
begin
RadioButton1.Checked:=PortOpen;
RadioButton2.Checked:=not RadioButton1.Checked;
Button1.Enabled:=not RadioButton1.Checked;
Button2.Enabled:=not Button1.Enabled;
end;

//------------------------------------------------------------------------------
procedure TFormPrincipal.Button4Click(Sender: TObject);
var ab:abast;
begin
ab:=LeAbastecimento;
editTotaisDin.Text:=floattostr(ab.total_dinheiro);
editString.Text:=ab.st_full;
editTotaisLt.Text:=floattostr(ab.total_litros);
editPPL.Text:=floattostr(ab.PU);
editTempo.Text:=ab.tempo;
editCanal.Text:=ab.canal;
editData.Text:=ab.data;
editHora.text:=ab.hora;
editRegistro.Text:=floattostr(ab.registro);
editEnc.Text:=floattostr(ab.encerrante);
check.Checked:=ab.checksum;
integridade.Checked:=ab.integridade;
value.Checked:=ab.value;
end;

//------------------------------------------------------------------------------
procedure TFormPrincipal.Button9Click(Sender: TObject);
var
ab:abast;
Begin
if (RadioButton1.Checked = False) and (RadioButton6.Checked = False) then
begin
  ShowMessage('Verifique as conecções com o Concentrador');
end else
begin
   qry_ultimoreg.Close;
   qry_ultimoreg.SQL.Clear;
   qry_ultimoreg.SQL.Add('select max(registro) as registro FROM BICOENC');
   qry_ultimoreg.Open;

IF qry_ultimoregREGISTRO.Value >= 9999 then
begin
  if dm.IBTransaction.Active then
       dm.IBTransaction.Commit;
       dm.IBTransaction.StartTransaction;
  try
      with QConsulta do
        begin
           close;
           sql.Clear;
              SQL.Add('UPDATE bicoenc SET bicoenc.registro=:REG');
              Parambyname('REG').AsString:= '-1';
              Open;
         end;
        dm.IBTransaction.Commit;
  finally
    QConsulta.Close;
    SpinEdit2.Value := 0;
    Button31.Click;
    Button30.Click;
  end;
end;


ab:=LeRegistro(SpinEdit2.AsInteger);
//ab:=LeAbastecimento;
editTotaisDin.Text:=floattostr(ab.total_dinheiro);
editString.Text   :=ab.st_full;
editTotaisLt.Text :=floattostr(ab.total_litros);
editPPL.Text      :=floattostr(ab.PU);
editTempo.Text    :=ab.tempo;
editCanal.Text    :=ab.canal;
editData.Text     :=ab.data;
editHora.text     :=ab.hora;
editRegistro.Text :=floattostr(ab.registro);
editEnc.Text      :=floattostr(ab.encerrante);
check.Checked     :=ab.checksum;
integridade.Checked :=ab.integridade;
value.Checked       :=ab.value;

IF value.Checked = True then
BEGIN
 if SpinEdit2.Value > qry_ultimoregREGISTRO.Value then
 BEGIN
 if EditTotaisLT.Value > 0 then
 begin
 if dm.IBTransaction.Active then
       dm.IBTransaction.Commit;
       dm.IBTransaction.StartTransaction;
  try
      with QConsulta do
        begin
           close;
           sql.Clear;
              begin
                 sql.add('SELECT * FROM BICO WHERE ID_BICO =:CODBICO');
                 Parambyname('CODBICO').AsString:= Trim(EditCanal.Text);
                end;
           Open;
           if not FieldByName('COD_BICO').IsNull then
              begin
                 EditBomba.Text       := IntToStr(fieldbyname('COD_BOMBA').AsInteger);
                 EditTanque.Text      := IntToStr(fieldbyname('COD_TANQUE').AsInteger);
                 EditId_produto.Text  := IntToStr(fieldbyname('COD_PRODUTOS').AsInteger);
              end;
        end;
      dm.IBTransaction.Commit;
  finally
    QConsulta.Close;
  end;


  if dm.IBTransaction.Active then
       dm.IBTransaction.Commit;
       dm.IBTransaction.StartTransaction;
  try
      with QConsulta do
        begin
           close;
           sql.Clear;
              begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
                         'PRECO_VENDA, PRECO_VENDA2, DESC_UNIDADE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                 Parambyname('codpro').AsString:= Trim(EditId_produto.Text);
                end;
           Open;
           if not FieldByName('CODIGO').IsNull then
              begin
                 EditProduto.Text      := fieldbyname('descricao').AsString;
                 EditUnid.Text         := fieldbyname('desc_unidade').AsString;
              end;
        end;
      dm.IBTransaction.Commit;
  finally
    QConsulta.Close;
  end;

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
   with Qry_bico_enc do
      begin
         close;
            Parambyname('ID_BICO').AsString         := EditCanal.Text;
            Parambyname('ID_BOMBA').AsInteger       := StrToInt(EditBomba.text);
            Parambyname('REGISTRO').AsInteger       := StrToInt(EditRegistro.text);
            Parambyname('COD_FRENTISTA').AsInteger  := -1;
            Parambyname('ID_PRODUTOS').AsInteger    := StrToInt(EditId_produto.text);
            Parambyname('ENC_LITROS').AsFloat      := EditTotaisLT.Value;
	          Parambyname('ENC_DINHEIRO').AsCurrency  := StrToCurr(EditTotaisDin.text);
            Parambyname('PRODUTOS_DESC').AsString   := EditProduto.Text;
            Parambyname('NIVEL_PRECO').AsInteger    := 1;
            Parambyname('DINHEIRO').AsCurrency      := StrToCurr(EditTotaisDin.text);
            Parambyname('PRECO').AsFloat            := EditPPL.Value;
            Parambyname('DATAHORA').AsDate          := Date;
            Parambyname('LITROS').AsCurrency        := StrToCurr(EditTotaisLT.text);
            Parambyname('ID_TANQUE').AsInteger      := StrToInt(EditTanque.text);
            Parambyname('UNIDADE').AsString         := EditUnid.Text;
            Parambyname('USUARIO').AsString         := UserLogado;
            Parambyname('COD_USUARIO').AsInteger    := DM.SDS_UsuariosCODIGO.AsInteger;

         ExecSQL;
      end;
   finally
   dm.IBTransaction.Commit;
   Qry_bico_enc.Close;
   end;

    if dm.IBTransaction.Active then
       dm.IBTransaction.Commit;
       dm.IBTransaction.StartTransaction;
   try
     with qry_bicoenc_temp do
      begin
         close;
            Parambyname('ID_BICO').AsString         := EditCanal.Text;
            Parambyname('ID_BOMBA').AsInteger       := StrToInt(EditBomba.text);
            Parambyname('REGISTRO').AsInteger       := StrToInt(EditRegistro.text);
            Parambyname('COD_FRENTISTA').AsInteger  := -1;
            Parambyname('ID_PRODUTOS').AsInteger    := StrToInt(EditId_produto.text);
            Parambyname('ENC_LITROS').AsFloat        := EditTotaisLT.Value;
	          Parambyname('ENC_DINHEIRO').AsCurrency  := StrToCurr(EditTotaisDin.text);
            Parambyname('PRODUTOS_DESC').AsString   := EditProduto.Text;
            Parambyname('NIVEL_PRECO').AsInteger    := 1;
            Parambyname('DINHEIRO').AsCurrency      := StrToCurr(EditTotaisDin.text);
            Parambyname('PRECO').AsFloat            := EditPPL.Value;
            Parambyname('DATAHORA').AsTime          := Time;
            Parambyname('LITROS').AsCurrency        := StrToCurr(EditTotaisLT.text);
            Parambyname('ID_TANQUE').AsInteger      := StrToInt(EditTanque.text);
            Parambyname('UNIDADE').AsString         := EditUnid.Text;
            Parambyname('USUARIO').AsString         := UserLogado;
            Parambyname('COD_USUARIO').AsInteger    := DM.SDS_UsuariosCODIGO.AsInteger;
            ExecSQL;
      end;
   finally
   dm.IBTransaction.Commit;
   qry_bicoenc_temp.Close;
   end;


    QryBicoEnc_Temp.Active := false;
  //  cds_abastecidas.Active := False;

    QryBicoEnc_Temp.Active := True;
    cds_abastecidas.Refresh;
   // cds_abastecidas.Last;
 end;
end;
  SpinEdit2.Value := SpinEdit2.Value + 1;
end;
end;

if EditTotaisLT.Value = 0 then
begin
editTotaisDin.Text:= '0';
editString.Text:='';
editTotaisLt.Text:='0';
editPPL.Text:='0';
editTempo.Text:='';
editCanal.Text:='';
editData.Text:='';
editHora.text:='';
editRegistro.Text:='';
editEnc.Text:='';
check.Checked:= False;
integridade.Checked:=False;
value.Checked:= False;
EditBomba.Text :='';
EditTanque.Text :='';
EditProduto.TEXT:= '';
EditId_produto.TEXT:='';
EditUnid.TEXT:='';
end;
end;

//------------------------------------------------------------------------------

procedure TFormPrincipal.Button5Click(Sender: TObject);
var ab:abast2;
begin
{LeStructSt(ab);
editTotaisDin.Text:=ab.total_dinheiro;
editString.Text:=ab.st_full;
editTotaisLt.Text:=ab.total_litros;
editPPL.Text:=ab.PU;
editTempo.Text:=ab.tempo;
editCanal.Text:=ab.canal;
editData.Text:=ab.data;
editHora.text:=ab.hora;
editRegistro.Text:=ab.registro;
editEnc.Text:=ab.encerrante;
if ab.checksum='1' then check.Checked:=true else check.Checked:=false;
if ab.integridade='1' then integridade.Checked:=true else integridade.Checked:=false;
if ab.value='1' then value.Checked:=true else value.Checked:=false;  }

DM.SDS_USUARIOS.Locate('usuario',UserLogado,[loCaseInsensitive]);
if DM.SDS_UsuariosSITUACAO.AsInteger <> 1 then
begin
    application.MessageBox('O Caixa individual não esta aberto! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
    Exit;
    end
else
  if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
    application.MessageBox('A Data do Caixa está diferente da atual! Para prosseguir é necessário abrir o caixa!','Aviso',mb_ok+MB_ICONWARNING);
    Exit;
   end
   else
begin

  //if cds_abastecidas.RecordCount <> 0 then

                 combustivel := True;

                 dm.SDS_PRODUTOS_c.Active := false;
                 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + cds_abastecidasID_PRODUTOS.AsString + '%' + #39+'ORDER BY DESCRICAO';
                 dm.SDS_PRODUTOS_c.Active := True;

                 V_total := cds_abastecidasENC_DINHEIRO.AsCurrency;

                  If DM.SDS_PRODUTOS_C.locate('CODIGO', cds_abastecidasID_PRODUTOS.AsString,[])=True then
                  begin
                //  if formVendas.Sds_pedidos.RecordCount = 0 then
                  formVendas:=TformVendas.Create(self);
                  formVendas.Show;

                  formvendas.InserirClick(Sender);
                   end else
                      If not DM.SDS_PRODUTOS_C.locate('codigo', cds_abastecidasID_PRODUTOS.AsString,[])=True then
                      begin
                       SHOWMESSAGE('Produto não Localizado...');
                       abort;
                       Exit;
                      end;
               cds_abastecidas.First;
               while not cds_abastecidas.Eof  do
                  begin
                     if xDBGrid1.SelectedRows.CurrentRowSelected = true then
                        begin
                          cds_abastecidas.edit;
                          cds_abastecidas.FieldByName('check_box').asstring := 'T';
                          cds_abastecidas.post;
                          cds_abastecidas.ApplyUpdates(0);


                      if cds_abastecidasREGISTRO.Text >= '0' then
                       Begin

                              formvendas.NValor:=1;
                              formvendas.NItem:=formvendas.NItem+formvendas.NValor;
                              formvendas.sds_pedidos_itens.Edit;
                              formvendas.Sds_pedidos_itensPreco_unitario.text     := formatcurr('0.000', cds_abastecidasPRECO.AsCurrency);
                              formvendas.sds_pedidos_itensDescricao_PRODUTO.text  := cds_abastecidasPRODUTOS_DESC.Text;
                              formvendas.Sds_pedidos_itensquantidade.text         := formatcurr('0.000', cds_abastecidasLITROS.AsCurrency);
                              formvendas.Sds_pedidos_itensDESCONTO.Text           := '0,00';
                              formvendas.Sds_pedidos_itensCODIGO.AsInteger        := FORMVENDAS.NItem;
                              formvendas.Sds_pedidos_itensCODIGO_PROD.Text        := cds_abastecidasID_PRODUTOS.AsString;
                              formvendas.sds_pedidos_itensCODIGO_PRODUTO.Text     := DM.Sds_produtos_cCODIGO_BARRAS.TEXT;
                              formvendas.Sds_pedidos_itensCODIGO_ID.Text          := formvendas.N_venda.Text;
                              formvendas.Sds_pedidos_itensUNIDADE.Text            := DM.SDS_PRODUTOS_CDESC_UNIDADE.TEXT;
                              formvendas.Sds_pedidos_itensVENDEDOR.Text           := dm.SDS_UsuariosCODIGO.Text;
                              formvendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text     := DM.SDS_PRODUTOS_CSIT_TRIBUTARIA.text;
                              formvendas.Sds_pedidos_itensFRACAO.AsFloat          := StrToFloatDef(DM.SDS_PRODUTOS_CFRACAO.Text,0);
                              formvendas.Sds_pedidos_itensCOD_NCM.TEXT            := DM.Sds_produtos_cNCM_SH.Text;
                              formvendas.Sds_pedidos_itensPROD_SERV.Text          := DM.Sds_produtos_cPROD_SERV.Text;
                              formvendas.Sds_pedidos_itensITEN.AsInteger          := FORMVENDAS.NItem;
                              formvendas.Sds_pedidos_itensCODIGO_BICO.Text        := cds_abastecidasCOD_BICOENC_TEMP.Text;
                              formvendas.Sds_pedidos_itensPRECO_TOTAL.VALUE       := (formvendas.Sds_pedidos_itensquantidade.VALUE * formvendas.Sds_pedidos_itensPreco_unitario.VALUE);
                              formvendas.sds_pedidos_itensBOMBA.Text              := bomba;
                              Formvendas.sds_pedidos_itensTANQUE.Text             := tanque;
                              formvendas.Sds_pedidos_itensBICO.Text               := bico;
                              formvendas.Sds_pedidos_itens.post;

                              formvendas.Sds_pedidos_itens.last;
                              formvendas.sds_pedidos_itens.insert;
                              formvendas.NValor:=1;
                              formvendas.NItem:=formvendas.NItem+formvendas.NValor;
                              formvendas.Sds_pedidos_itens.Edit;
                              formvendas.Sds_pedidos_itensCODIGO.AsInteger:=(formvendas.NItem);
                              formvendas.Sds_pedidos_itensITEN.AsInteger :=(formvendas.NItem);
                              formvendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
                              formvendas.Sds_pedidos_itensCODIGO_ID.Text := formvendas.N_venda.Text;
                              formvendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
                              formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
                              formvendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
                              formvendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
                              formvendas.Sds_pedidos_itensFRACAO.Text := '1';

                              formvendas.Sds_pedidos_itens.last;
                              formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
                              formvendas.Sds_pedidos_itens.Edit;
                              formvendas.ComboEdit1.Visible := True;

                              formvendas.ComboEdit1.SetFocus;

                       end;
                      end;
                      cds_abastecidas.NEXT;
                    end;

end;
end;

//------------------------------------------------------------------------------
procedure TFormPrincipal.Button7Click(Sender: TObject);
var ab:abast;
begin
ab:=LeAbFix;
editTotaisDin.Text:=floattostr(ab.total_dinheiro);
editString.Text:=ab.st_full;
editTotaisLt.Text:=floattostr(ab.total_litros);
editPPL.Text:=floattostr(ab.PU);
editTempo.Text:=ab.tempo;
editCanal.Text:=ab.canal;
editData.Text:=ab.data;
editHora.text:=ab.hora;
editRegistro.Text:=floattostr(ab.registro);
editEnc.Text:=floattostr(ab.encerrante);
check.Checked:=ab.checksum;
integridade.Checked:=ab.integridade;
value.Checked:=ab.value;
end;

//------------------------------------------------------------------------------
procedure TFormPrincipal.Button8Click(Sender: TObject);
var ab:abast2;
begin
CobLeStructSt(ab);
editTotaisDin.Text:=ab.total_dinheiro;
editString.Text:=ab.st_full;
editTotaisLt.Text:=ab.total_litros;
editPPL.Text:=ab.PU;
editTempo.Text:=ab.tempo;
editCanal.Text:=ab.canal;
editData.Text:=ab.data;
editHora.text:=ab.hora;
editRegistro.Text:=ab.registro;
editEnc.Text:=ab.encerrante;
if ab.checksum='1' then check.Checked:=true else check.Checked:=false;
if ab.integridade='1' then integridade.Checked:=true else integridade.Checked:=false;
if ab.value='1' then value.Checked:=true else value.Checked:=false;
end;

//------------------------------------------------------------------------------
procedure TFormPrincipal.Button6Click(Sender: TObject);
var ol:online;
    a:byte;
begin
{ol:=LeVisualizacao;
for a:=1 to 48 do
    ListBox1.Items.Add(ol.Bico[a] + ' - ' + floattostr(ol.Litragem[a]));}
end;

//------------------------------------------------------------------------------------------------------------
procedure TFormPrincipal.Button10Click(Sender: TObject);
var stvis:Shortstring;
begin
{STVisualizacao(stvis);
Memo6.Lines.Add(stvis);  }
end;

//------------------------------------------------------------------------------------------------------------
procedure TFormPrincipal.Button11Click(Sender: TObject);
var ms:multistatus;
    a:byte;
begin
ms:=LeStatus;
for a:=1 to 32 do
    begin
    case ms.Status[a] of
    Livre:ListBox2.Items.Add(inttostr(a) + ' (L) - Livre');
    Pronta:ListBox2.Items.Add(inttostr(a) + ' (P) - Pronto');
    Falha:ListBox2.Items.Add(inttostr(a) + ' (F) - Falha');
    Concluiu:ListBox2.Items.Add(inttostr(a) + ' (C) - Concluiu');
    Abastecendo:ListBox2.Items.Add(inttostr(a) + ' (A) - Abastecimento');
    Bloqueada:ListBox2.Items.Add(inttostr(a) + ' (B) - Bloqueado');
    SolicitaLib:ListBox2.Items.Add(inttostr(a) + ' (E) - Espera');
    end;
    end;
end;




procedure TFormPrincipal.Button12Click(Sender: TObject);
begin
edit1.Text:=LeStStatus.value;
end;

procedure TFormPrincipal.Button14Click(Sender: TObject);
var rta:IFid;
begin
{rta:=FidIdent;
if rta.Value then
    edit2.text:=rta.StFull
else
    edit2.Text:='';}
end;

procedure TFormPrincipal.Button15Click(Sender: TObject);
var rta:StFid;
begin
{rta:=FidStatus;
edit3.text:=rta.Status;}
end;

procedure TFormPrincipal.Button16Click(Sender: TObject);
begin
{radiobutton3.Checked:=false;
if FidModo(edit4.text,combobox1.text[1])=1 then
    radiobutton3.Checked:=true
else
    radiobutton3.Checked:=false;}
end;

procedure TFormPrincipal.Button17Click(Sender: TObject);
begin
{if FidAciona(edit5.text,strtoint(edit5.text),strtoint(edit7.text))=1 then
    radiobutton4.Checked:=true
else
    radiobutton4.Checked:=false;}
end;



procedure TFormPrincipal.Button18Click(Sender: TObject);
begin
{if FidSetClock(strtoint(edit8.text),strtoint(edit9.text),strtoint(edit10.text))=1 then
    radiobutton5.Checked:=true
else
    radiobutton5.Checked:=false;}
end;

procedure TFormPrincipal.Button19Click(Sender: TObject);
begin
//edit11.text:=FidLeRegistro(strtoint(edit12.text));
end;



procedure TFormPrincipal.Button20Click(Sender: TObject);
begin
FidIncrementa;
end;




procedure TFormPrincipal.Button13Click(Sender: TObject);
var st:encerrante;
begin
st:=ConsultaEncerrante(combobox2.text[1],edit13.text);
edit14.text:='Bico:' + st.Bico + ' Total:' + floattostr(st.valor);
end;

procedure TFormPrincipal.Button21Click(Sender: TObject);
var erro:error;
begin
erro:=AlteraPreco(edit15.text,strtofloat(edit17.text),spinedit3.Value);
Edit16.text:=ErrorToString(erro);
end;

function TFormPrincipal.ErrorToString(Erro:Error):string;
begin
if Erro=ErroString then result:='ErroString' else
if Erro=None then result:='Ok' else
if Erro=ErroCodBico then result:='ErroCodBico' else
if Erro=ErroCaracterModo then result:='ErroCaracterModo' else
if Erro=ErroTimeout then result:='ErroTimeout' else
if Erro=ErroResposta then result:='ErroResposta' else
result:='ErroResposta';
end;

procedure TFormPrincipal.Button22Click(Sender: TObject);
var erro:error;
begin
erro:=None;
if Combobox3.Text[1]='L' then erro:=AutoLibera(edit18.text) else
if Combobox3.Text[1]='B' then erro:=BloqueiaBico(edit18.text) else
if Combobox3.Text[1]='A' then erro:=AutorizaAbast(edit18.text);
Edit19.text:=ErrorToString(erro);
end;

procedure TFormPrincipal.Button23Click(Sender: TObject);
begin
RadioButton9.Checked:=Comunica;
end;

procedure TFormPrincipal.Button24Click(Sender: TObject);
begin
//edit20.text:=LeStringAbVb;
end;

procedure TFormPrincipal.Button25Click(Sender: TObject);
begin
//edit20.text:=LeStStatus2;
end;

procedure TFormPrincipal.Button26Click(Sender: TObject);
var ab:abastFid;
begin
{ab:=LeAbastecimentoFid;
editTotaisDin.Text:=floattostr(ab.total_dinheiro);
editString.Text:=ab.st_full;
editTotaisLt.Text:=floattostr(ab.total_litros);
editPPL.Text:=floattostr(ab.PU);
editTempo.Text:=ab.tempo;
editCanal.Text:=ab.canal;
editData.Text:=ab.data;
editHora.text:=ab.hora;
editRegistro.Text:=floattostr(ab.registro);
editEnc.Text:=floattostr(ab.encerrante);
editTag.text:=ab.tag;
check.Checked:=ab.checksum;
integridade.Checked:=ab.integridade;
value.Checked:=ab.value;}
end;

procedure TFormPrincipal.Button27Click(Sender: TObject);
var ms:multistatus;
    a:byte;
begin
ms:=LeStatusFid;
for a:=1 to 32 do
    begin
    case ms.Status[a] of
    Livre:ListBox2.Items.Add(inttostr(a) + ' (L) - Livre');
    Pronta:ListBox2.Items.Add(inttostr(a) + ' (P) - Pronto');
    Falha:ListBox2.Items.Add(inttostr(a) + ' (F) - Falha');
    Concluiu:ListBox2.Items.Add(inttostr(a) + ' (C) - Concluiu');
    Abastecendo:ListBox2.Items.Add(inttostr(a) + ' (A) - Abastecimento');
    Bloqueada:ListBox2.Items.Add(inttostr(a) + ' (B) - Bloqueado');
    SolicitaLib:ListBox2.Items.Add(inttostr(a) + ' (E) - Espera');
    end;
    end;
end;

procedure TFormPrincipal.Button28Click(Sender: TObject);
var ab:abast3;
begin
CobLeStructIDSt(ab);
//memo7.Clear;
{memo7.Lines.Add('Ident. : ' + ab.id);
memo7.Lines.Add('Total  : ' + ab.total_dinheiro);
memo7.Lines.Add('String : ' + ab.st_full);
memo7.Lines.Add('Volume : ' + ab.total_litros);
memo7.Lines.Add('P.Unit : ' + ab.PU);
memo7.Lines.Add('Tempo  : ' + ab.tempo);
memo7.Lines.Add('Bico   : ' + ab.canal);
memo7.Lines.Add('Data   : ' + ab.data);
memo7.Lines.Add('Hora   : ' + ab.hora);
memo7.Lines.Add('Reg    : ' + ab.registro);
memo7.Lines.Add('Enc.L. : ' + ab.encerrante);
memo7.Lines.Add('--------------------------------');}
end;



procedure TFormPrincipal.Button29Click(Sender: TObject);
begin
edit22.text:=LeEvento(strtoint(edit21.text));
end;

procedure TFormPrincipal.Button30Click(Sender: TObject);
var
  i: Integer;
begin
if InicializaSocket(edit23.text) then
  begin
  radiobutton6.Checked:=true;
  button30.Enabled:=false;
  button31.Enabled:=true;
    sh_status_conexao.Brush.Color := clLime;
    bPosto_ok := true;
    lb_status_conexao.Caption := 'Conectado';

      //  lb_status_conexao.Caption := 'Concentrador '+query.fieldbyname('concentrador').asstring+
      //   ' conectado na COM'+query.FIELDBYNAME('PORTA').Asstring;

    //   SpinEdit2.Value := 0;

      formprincipal.QryBicoEnc_Temp.Active := false;
      formprincipal.cds_abastecidas.Active := false;
      formprincipal.QryBicoEnc_Temp.Active := True;
      formprincipal.cds_abastecidas.Active := True;

   qry_ultimoreg.Close;
   qry_ultimoreg.SQL.Clear;
   qry_ultimoreg.SQL.Add('select max(registro) as registro FROM BICOENC');
   qry_ultimoreg.Open;

  if  qry_ultimoregREGISTRO.AsFloat > 0 then
  begin
  SpinEdit2.Value := qry_ultimoregREGISTRO.Value + 1;
  end;
  end
else
  begin
  radiobutton7.Checked:=true;
  button31.Enabled:=false;
  button30.Enabled:=true;
  sh_status_conexao.Brush.Color := clGray;
  bPosto_ok := False;
  lb_status_conexao.Caption := 'Desconectado';
  end;

 Application.ProcessMessages;
 Action1.Execute;
 Application.ProcessMessages;
end;

procedure TFormPrincipal.Button31Click(Sender: TObject);
begin
if FechaSocket then
  radiobutton7.Checked:=true
else
  radiobutton6.Checked:=true;
  sh_status_conexao.Brush.Color := clGray;
  bPosto_ok := False;
  lb_status_conexao.Caption := 'Desconectado';
  Button32.Click;
end;

procedure TFormPrincipal.Button32Click(Sender: TObject);
begin
RadioButton6.Checked:=SocketOpen;
RadioButton7.Checked:=not RadioButton6.Checked;
Button30.Enabled:=not RadioButton6.Checked;
Button31.Enabled:=not Button30.Enabled;
end;

procedure TFormPrincipal.Button33Click(Sender: TObject);
begin
edit25.Text:=floattostr(LePPL(edit24.text));
end;

procedure TFormPrincipal.Button34Click(Sender: TObject);
var st:string;
begin
//st:=;
//edit1.Text:=st;

end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
//width:=692;
//height:=470;
end;

procedure TFormPrincipal.Button35Click(Sender: TObject);
begin
//WriteSerial(edit26.text,length(edit26.text));
end;

procedure TFormPrincipal.Button36Click(Sender: TObject);
begin
//edit27.Text:='';
//edit27.Repaint;
//edit27.Text:=ReadSerial(1000);
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Button31.Click;
Button2.Click;
Action := caFree;
end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
if (RadioButton1.Checked = true) or (RadioButton6.Checked = true) then
begin
Button9Click(Sender);
end;
StatusBar1.Panels[3].Text:= TimeToStr(Time);
statusBar1.Panels[2].Text:= MostraData(Date);
StatusBar1.Panels[1].Text:= 'Usuário : '+ FormPrincipal.UserLogado;
StatusBar1.Panels[0].Text := 'Empresa: ' + dm.SDS_EmpresaNOME_FANTASIA.Text;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
var
  i : Integer;
begin
DM.SDS_Usuarios.Active:= True;
DM.SDS_Empresa.Active:= True;
DM.SDS_CONFIGURACOES.Active:= True;

try
Form_Usuario:=TForm_Usuario.Create(self);
Form_Usuario.ShowModal;

USER := DM.SDS_UsuariosUSUARIO.Text;
FormPrincipal.StatusBar1.Panels[1].Text:= USER;
finally
Form_Usuario.Release;
end;
userLogado:= USER;
usuario_temp :=  DM.SDS_Usuarios.FieldByname('CODIGO').AsString;

    QryBicoEnc_Temp.Active := false;
    cds_abastecidas.Active := False;

    QryBicoEnc_Temp.Active := True;
    cds_abastecidas.Active := True;
    cds_abastecidas.Last;
     // dm.IBTransaction.Commit;

   qry_ultimoreg.Close;
   qry_ultimoreg.SQL.Clear;
   qry_ultimoreg.SQL.Add('select max(registro) as registro FROM BICOENC');
   qry_ultimoreg.Open;

if  qry_ultimoregREGISTRO.AsFloat > 0 then
begin
SpinEdit2.Value := qry_ultimoregREGISTRO.Value + 1;
end;
liberaUser;


      Query.Active := false;
      Query.Active := True;
      query.First;

      grid_bico.ClearRows;
      //  grid_abastecimento.ClearRows;

        while not query.eof do
        begin
          i := grid_bico.AddRow(1);
          grid_bico.Cell[0,i].AsInteger := query.fieldbyname('Cod_tanque').AsInteger;
          grid_bico.Cell[1,i].AsInteger := query.fieldbyname('Cod_bomba').AsInteger;
          grid_bico.Cell[2,i].asstring := query.fieldbyname('Id_bico').asstring;
          // COLOQUEI PARA PEGAR A MASCARA DA BOMBA E DO BICO
          //          grid_bico.Cell[1,i].AsString := query.fieldbyname('bomba').asstring;
          //          grid_bico.Cell[2,i].asstring := query.fieldbyname('bico').asstring;

          grid_bico.Cell[3,i].asstring := 'DESCONECTADA';
          grid_bico.cell[4,i].asinteger := query.fieldbyname('cod_Bico').asinteger;
          grid_bico.cell[5,i].AsInteger := query.fieldbyname('posicao').AsInteger;
          query.Next;
          end;
        iQtde_bico := query.RecordCount;

 Application.ProcessMessages;
 Action2.Execute;
 Application.ProcessMessages;
 Action3.Execute;

 sds_tanques.Active := False;
 sds_tanques.Active := True; 

   query.First;
     MostraBicos.Clear;
     while not query.Eof do
       begin
          with MostraBicos.Items.Add do
              begin
                 Caption := FormataStringD( query.fieldbyname('posicao').asstring, '2', '0' ) +
                 ' - Bico: ' + query.fieldbyname('id_bico').asstring + #13 + ' - ' + query.fieldbyname('descricao').asstring + #13 + ' ' +
                 FormatFloat( 'R$ ,0.00',  query.fieldbyname('preco_venda').AsCurrency );
                    ImageIndex := 0
              end;
          query.Next;
       end;

end;

procedure TFormPrincipal.XDBGrid1DblClick(Sender: TObject);
begin
//Xdbgrid1.SelectedRows.CurrentRowSelected := true;

//Button5.Click;
end;

procedure TFormPrincipal.Ecf1Click(Sender: TObject);
begin
TRY
   if formECF=nil   then
    BEGIN
     //CoInitialize(nil);
     //Application.CreateForm(TformECF, formECF);
     formECF := TformECF.Create(self);
     formECF.Showmodal;
     //CoUninitialize;
    end;
     except
       ShowMessage('Erro ao Tentar Exibir o Formulario de Configuração do ECF!!');
    end;
end;

procedure TFormPrincipal.Fechamento1Click(Sender: TObject);
begin
Try
if FormCaixaAnalitico=nil   then
    begin
 //    FormMenuCaixa.Visible:=False;
     FormCaixaAnalitico:=TFormCaixaAnalitico.Create(self);
     FormCaixaAnalitico.Show;
//     FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

end;

procedure TFormPrincipal.FechamentoIndividual1Click(Sender: TObject);
begin
Try
if FormCaixaEspecifico=nil   then
    begin
//  FormMenuCaixa.Visible:=False;
     FormCaixaEspecifico:=TFormCaixaEspecifico.Create(self);
     FormCaixaEspecifico.Showmodal;
//    FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;

end;

procedure TFormPrincipal.Saida1Click(Sender: TObject);
begin
Try
if FormLancamentosCaixaSaida=nil   then
    begin
 //    FormMenuCaixa.Visible:=False;
     FormLancamentosCaixaSaida:=TFormLancamentosCaixaSaida.Create(self);
     FormLancamentosCaixaSaida.Showmodal;
 //    FormMenuCaixa.Close;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
     end;
end;

procedure TFormPrincipal.Entrada1Click(Sender: TObject);
begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.Tag := 1;
    frmcaixa.wwDBGrid1.Visible := False;
    frmcaixa.RENTRADA.Visible := False;
    frmcaixa.RSAIDA.Visible := False;
    frmcaixa.RSALDO.Visible := False;
    frmcaixa.Label4.Visible := False;
    frmcaixa.Label10.Visible := False;
    frmcaixa.PageSheet2.TabVisible := False;
    frmcaixa.showmodal;
end;

procedure TFormPrincipal.FormPaint(Sender: TObject);
begin
    QryBicoEnc_Temp.Active := false;
    cds_abastecidas.Active := false;
    QryBicoEnc_Temp.Active := True;
    cds_abastecidas.Active := True;
end;

procedure TFormPrincipal.timer_bicoTimer(Sender: TObject);
var txt : textfile;
entrada : string;
x, I : integer;
rta:pchar;
s, posicao : string;

begin
{  if not bPosto_ok then exit;

  try

    entrada := clipboard.astext;

    if entrada = '' then entrada := '1';
 
    if entrada = '2' then
    begin
      sh_status_conexao.Brush.Color := clred;
      for x := 0 to grid_bico.RowCount - 1 do
      begin
         grid_bico.Cell[3,x].AsString := 'FALHA';
      end;
      exit;
    end;
  except
  end;

  EnviaComando('(&S)',1000);
  edit2.Text := }

         rta:=TxRxSerial(edit30.text,1000);
         edit2.text:=rta;
         sPosto_Resposta := Edit2.TEXT;
         sPosto_Comando := edit30.text;
          
    if (sPosto_Comando = '(&S)') and (copy(sposto_resposta,1,2) = '(S') then
    begin

            sPosto_Resposta := copy(sPosto_resposta,3,32);
            // existe abastecimento
          for x := 0 to grid_bico.RowCount - 1 do
          begin
               s := sPosto_Resposta[grid_bico.cell[5,x].asinteger];
               if s = 'L' then
               grid_bico.Cell[3,x].AsString := 'LIVRE';
               if s = 'P' then
               grid_bico.Cell[3,x].AsString := 'PRONTA';
               if s = 'F' then
               grid_bico.Cell[3,x].AsString := 'FALHA';
               if s = 'C' then
               grid_bico.Cell[3,x].AsString := 'CONCLUIU';
               if s = 'A' then
               grid_bico.Cell[3,x].AsString := 'ABASTECENDO';
               if s = 'B' then
               grid_bico.Cell[3,x].AsString := 'BLOQUEDA';
               if s = 'E' then
               grid_bico.Cell[3,x].AsString := 'AGUARDANDO';

           // end;
           end;



            if MostraBicos.Items.Count = 0 then
               Exit;
            for I := 0 to  MostraBicos.Items.Count - 1 do
                begin

                  posicao:=  IntToStr(strtoint(Copy(MostraBicos.Items[I].Caption,1,2)));
                   query.Locate( 'POSICAO', posicao , [ loCaseInsensitive ] );
                   if queryPOSICAO.AsString = posicao then
                       begin
                        //with MostraBicos.Items.Item[ MostraBicos.Items.Count - 1 ] do
                         begin
                             MostraBicos.ItemIndex := I;

                            s := sPosto_Resposta[queryPOSICAO.AsInteger];
                            if s = 'L' then
                            MostraBicos.Items.Item[I].ImageIndex := 0;
                            if s = 'P' then
                            MostraBicos.Items.Item[I].ImageIndex := 4;
                            if s = 'F' then
                            MostraBicos.Items.Item[I].ImageIndex := 6;
                            if s = 'C' then
                            MostraBicos.Items.Item[I].ImageIndex := 2;
                            if s = 'A' then
                            MostraBicos.Items.Item[I].ImageIndex := 1;
                            if s = 'B' then
                             MostraBicos.Items.Item[I].ImageIndex := 5;
                            if s = 'E' then
                            MostraBicos.Items.Item[I].ImageIndex := 3;

                        {  case CBicos[I].Status of
                              bNo: ImageIndex := 6;
                              bLivre: ImageIndex := 0;
                              bBloqueado: ImageIndex := 5;
                              bConcluiu: ImageIndex := 2;
                              bAbastecendo: ImageIndex := 1;
                              bAguardaLiberacao: ImageIndex := 3;
                              bFalha: ImageIndex := 6;
                              bPronto: ImageIndex := 4;
                          end;
                         { case CBicos[I].Status of
                              bAbastecendo: Caption := FormataStringD( QBicosCODIGO_BICO.AsString, '3', '0' ) +
                                 #13 + FormatFloat( ',0.00 ' + QBicosUNID.AsString, CBicos[I].Litros );
                              else
                               Caption := FormataStringD( QBicosCODIGO_BICO.AsString, '3', '0' ) +
                                   #13 + QBicosTIPO_COMBUSTIVEL.AsString + #13 +
                                   FormatFloat( 'R$ ,0.00',  QBicosVALOR.AsCurrency );
                          end; }
                          end;

                    end;
                end;
             end;
end;


procedure TFormPrincipal.Venda1Click(Sender: TObject);
begin
Xdbgrid1.SelectedRows.CurrentRowSelected := true;
tanque := cds_abastecidasID_TANQUE.Text;
bico   := cds_abastecidasID_BICO.Text;
bomba  := cds_abastecidasID_BOMBA.Text;
bico1  :=  cds_abastecidasCOD_BICOENC_TEMP.Text;
Button5.Click;
end;

procedure TFormPrincipal.Aferio1Click(Sender: TObject);
begin
     FormAfericao := TFormAfericao.Create(self);
     FormAfericao.btnNovoClick(Sender);
     DM1.Sds_AfericaoQUANTIDADE.AsFloat := FormPrincipal.cds_abastecidasENC_LITROS.AsFloat;
     DM1.Sds_AfericaoVALOR_UNITARIO.AsFloat := FormPrincipal.cds_abastecidasPRECO.AsFloat;
     DM1.Sds_AfericaoVALOR_TOTAL.AsFloat := FormPrincipal.cds_abastecidasENC_DINHEIRO.AsFloat;
     FormAfericao.EdtNomePro.Text :=    FormPrincipal.cds_abastecidasPRODUTOS_DESC.Text;
     FormAfericao.EdtCodPro.Text :=FormPrincipal.cds_abastecidasID_PRODUTOS.Text;
     FormAfericao.EdtQuant.text := FormPrincipal.cds_abastecidasENC_LITROS.text;
     FormAfericao.edtVenda.Value := FormPrincipal.cds_abastecidasPRECO.AsFloat;
     FormAfericao.edtTotal.value  := FormPrincipal.cds_abastecidasENC_DINHEIRO.AsFloat;
     DM1.Sds_AfericaoCODIGO_PROD.Text := FormPrincipal.cds_abastecidasID_PRODUTOS.Text;
     DM1.Sds_AfericaoCOD_TANQUE.text := FormPrincipal.cds_abastecidasID_TANQUE.text;
     DM1.Sds_AfericaoCOD_BOMBA.text := FormPrincipal.cds_abastecidasID_BOMBA.text;
     DM1.Sds_AfericaoID_BICO.text := FormPrincipal.cds_abastecidasID_BICO.text;  
     FormAfericao.Panel1.Enabled := False;
     FormAfericao.showmodal;
end;

procedure TFormPrincipal.VendaAvulsa1Click(Sender: TObject);
begin
  combustivel := false;
  formVendas := tformVendas.create(self);
  formVendas.showmodal;
end;

procedure TFormPrincipal.ConsultaProdutos1Click(Sender: TObject);
begin
  formconsprodutos := tformconsprodutos.create(self);
  formconsprodutos.showmodal;
end;

procedure TFormPrincipal.BloqueiaTela1Click(Sender: TObject);
begin
try
if FormLogoff=nil   then
    begin
     FormLogoff:=TFormLogoff.Create(self);
      FormLogoff.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key=VK_F1) then
      begin
      Calculator.Execute;
     // calculator.Execute(1);
      end;

      if (Key=VK_F10) then
      begin
      SpinEdit2.Enabled := True;
      end;

end;

procedure TFormPrincipal.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
  VAR
    Check: Integer;
    R: TRect;
begin
 if not odd(cDS_abastecidas.RecNo) then
  if not (gdselected in State) then
    begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD; //$00FFEFDF;
    xDBGrid1.Canvas.FillRect(Rect);
    xDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
   end;

   if (Column.Field.FieldName = 'CHECK_BOX') and (not (gdFixed in State)) then
  begin
  // Desenha um campo em branco
  XDBGrid1.Canvas.FillRect(Rect);

  // Testa de a linha está selecionada ou não
  if XDBGrid1.SelectedRows.IndexOf(XDBGrid1.DataSource.DataSet.Bookmark) >= 0 then
    DrawFrameControl(XDBGrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
  else
    DrawFrameControl(XDBGrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end;

end;

procedure TFormPrincipal.Action2Execute(Sender: TObject);
begin
  if (DM.SDS_Usuarios.fieldbyname('data').AsDateTime <> Date) and (DM.SDS_Usuarios.fieldbyname('situacao').asinteger = 1) then
    begin
      if application.messagebox(PChar('A Data do Caixa está diferente da atual!' +
         #13 + 'Deseja fechar o caixa do dia ' + DM.SDS_Usuarios.fieldbyname('data').asstring + '?'),
         'Atenção', MB_IconInformation + MB_YESNO) = idYes then
      begin
        // bcaixa.SetFocus;
        // bcaixa.Click;
         Entrada1.Click;
      end;
   end;
end;

procedure TFormPrincipal.Action3Execute(Sender: TObject);
begin
 Button69.Click;
end;

procedure TFormPrincipal.Button69Click(Sender: TObject);
var
  contador, i : Integer;
begin
   sds_tanques.Active := False;
   sds_tanques.Active := True;

  // gera saldos iniciais  fechamento
 sds_tanques.First;
 Contador:= sds_tanques.RecordCount;
 For I:=1 to Contador do
 begin
      if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      with Qry_mov do
      begin
         close;
         Parambyname('data').AsDate:= date - 1 ;
         Parambyname('mov').AsString:= '4';
         Parambyname('tanque').Asstring:= sds_tanquesCOD_TANQUE.Text;
         open;
         FetchAll;
      end;
      dm.IBTransaction.CommitRetaining;


    if Qry_mov.Eof then
    begin
     if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
       DM.IBTransaction.StartTransaction;
       try
       try
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

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTACAO_COMBUSTIVEL');
                   DM.ProxCod.Open;

                   parambyname('CODIGO').AsInteger             := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                   parambyname('COD_NOTA_ENT').AsString        := NullValueString;
                   parambyname('TAN_NUM_FIS').AsString         := sds_tanquesCOD_TANQUE.Text;
                   parambyname('BOM_NUM_FIS').AsString         := NullValueString;
                   parambyname('BIC_NUM_LOG').asstring         := NullValueString;
                   parambyname('ENC_ABT').AsFloat              := 0;
                   parambyname('ENC_FCT').AsFloat              := sds_tanquesLITROS_ATUAL.AsFloat;
                   parambyname('COD_CLIENTE').AsString            := NullValueString;
                   parambyname('COD_VENDEDOR').AsInteger       := dm.SDS_UsuariosCODIGO.AsInteger;
                   parambyname('DATA').AsDate                  := Date -1 ;
                   parambyname('CODPRODUTO').AsString          := sds_tanquesCOD_PRODUTOS.Text;
                   parambyname('UNITARIO').AsFloat             := 0;
                   parambyname('UNIDADE').asstring             := NullValueString;
                   parambyname('QTDE').AsFloat                 := 0;
                   parambyname('TOTAL').AsFloat                := 0;
                   parambyname('ICMS_ALIQUOTA').AsFloat        := 0;
                   parambyname('ICMS_BASE').AsFloat            := 0;
                   parambyname('ICMS_VALOR').AsFloat           := 0;
                   parambyname('CREDITO_ICMS').AsFloat         := 0;
                   parambyname('IPI_ALIQUOTA').AsFloat         := 0;
                   parambyname('IPI_BASE').AsFloat             := 0;
                   parambyname('IPI_VALOR').AsFloat            := 0;
                   parambyname('PIS_ALIQUOTA').AsFloat         := 0;
                   parambyname('PIS_BASE').AsFloat             := 0;
                   parambyname('PIS_VALOR').AsFloat            := 0;
                   parambyname('COFINS_ALIQUOTA').AsFloat      := 0;
                   parambyname('COFINS_BASE').AsFloat          := 0;
                   parambyname('COFINS_VALOR').AsFloat         := 0;
                   parambyname('CFOP').AsString                := NullValueString;
                   parambyname('NUMERO_VDA').asstring          := NullValueString;
                   parambyname('DESCONTO').AsFloat             := 0;
                   parambyname('ACRESCIMO').AsFloat            := 0;
                   parambyname('MOVIMENTO').AsInteger          := 4;  // saldo inicial 3
                   parambyname('BASE_CALCULO').AsFloat         := 0;
                   parambyname('SITUACAO').AsInteger           := 1;
                   parambyname('CUPOM_NUMERO').AsString        :=  NullValueString;
                   parambyname('MODELO').AsString              :=  NullValueString;
                   parambyname('ITEM').AsString                :=  NullValueString;
                   parambyname('CST').AsString                 :=  NullValueString;
                   parambyname('MOVIMENTO_ESTOQUE').AsFloat    := 0;
                   parambyname('COD_USUARIO').AsString         := DM.SDS_UsuariosCODIGO.AsString;
                   parambyname('LANCADO').AsInteger            := 1;
                   ExecQuery;
                end;
                DM.IBTransaction.CommitRetaining;
            except
              DM.IBTransaction.Rollback;
              showmessage('Erro ao Gravar o movimento de Saldos anteriores');
            end;
          finally
           dm.IBSQL.Close;
          end;
     end;
     sds_tanques.Next;
    end;


 // gera saldos iniciais  Abertura
 sds_tanques.First;
 Contador:= sds_tanques.RecordCount;
 For I:=1 to Contador do
 begin
      if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      with Qry_mov do
      begin
         close;
         Parambyname('data').AsDate:= date;
         Parambyname('mov').AsString:= '3';
         Parambyname('tanque').Asstring:= sds_tanquesCOD_TANQUE.Text;
         open;
         FetchAll;
      end;
      dm.IBTransaction.CommitRetaining;


    if Qry_mov.Eof then
    begin
     if DM.IBTransaction.Active then
       DM.IBTransaction.Commit;
       DM.IBTransaction.StartTransaction;
       try
        try
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

                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTACAO_COMBUSTIVEL');
                   DM.ProxCod.Open;

                   parambyname('CODIGO').AsInteger             := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                   parambyname('COD_NOTA_ENT').AsString        := NullValueString;
                   parambyname('TAN_NUM_FIS').AsString         := sds_tanquesCOD_TANQUE.Text;
                   parambyname('BOM_NUM_FIS').AsString         := NullValueString;
                   parambyname('BIC_NUM_LOG').asstring         := NullValueString;
                   parambyname('ENC_ABT').AsFloat              := sds_tanquesLITROS_ATUAL.AsFloat;
                   parambyname('ENC_FCT').AsFloat              := 0;
                   parambyname('COD_CLIENTE').AsString            := NullValueString;
                   parambyname('COD_VENDEDOR').AsInteger       := dm.SDS_UsuariosCODIGO.AsInteger;
                   parambyname('DATA').AsDate                  := Date;
                   parambyname('CODPRODUTO').AsString          := sds_tanquesCOD_PRODUTOS.Text;
                   parambyname('UNITARIO').AsFloat             := 0;
                   parambyname('UNIDADE').asstring             := NullValueString;
                   parambyname('QTDE').AsFloat                 := 0;
                   parambyname('TOTAL').AsFloat                := 0;
                   parambyname('ICMS_ALIQUOTA').AsFloat        := 0;
                   parambyname('ICMS_BASE').AsFloat            := 0;
                   parambyname('ICMS_VALOR').AsFloat           := 0;
                   parambyname('CREDITO_ICMS').AsFloat         := 0;
                   parambyname('IPI_ALIQUOTA').AsFloat         := 0;
                   parambyname('IPI_BASE').AsFloat             := 0;
                   parambyname('IPI_VALOR').AsFloat            := 0;
                   parambyname('PIS_ALIQUOTA').AsFloat         := 0;
                   parambyname('PIS_BASE').AsFloat             := 0;
                   parambyname('PIS_VALOR').AsFloat            := 0;
                   parambyname('COFINS_ALIQUOTA').AsFloat      := 0;
                   parambyname('COFINS_BASE').AsFloat          := 0;
                   parambyname('COFINS_VALOR').AsFloat         := 0;
                   parambyname('CFOP').AsString                := NullValueString;
                   parambyname('NUMERO_VDA').asstring          := NullValueString;
                   parambyname('DESCONTO').AsFloat             := 0;
                   parambyname('ACRESCIMO').AsFloat            := 0;
                   parambyname('MOVIMENTO').AsInteger          := 3;  // saldo inicial 3
                   parambyname('BASE_CALCULO').AsFloat         := 0;
                   parambyname('SITUACAO').AsInteger           := 1;
                   parambyname('CUPOM_NUMERO').AsString        :=  NullValueString;
                   parambyname('MODELO').AsString              :=  NullValueString;
                   parambyname('ITEM').AsString                :=  NullValueString;
                   parambyname('CST').AsString                 :=  NullValueString;
                   parambyname('MOVIMENTO_ESTOQUE').AsFloat    := 0;
                   parambyname('COD_USUARIO').AsString         := DM.SDS_UsuariosCODIGO.AsString;
                   parambyname('LANCADO').AsInteger            := 1;
                   ExecQuery;
                end;
                DM.IBTransaction.CommitRetaining;
            except
              DM.IBTransaction.Rollback;
              showmessage('Erro ao Gravar o movimento de Saldos iniciais');
            end;
          finally
           dm.IBSQL.Close;
          end;
     end;
     sds_tanques.Next;
    end;


    // gera lmc
{ sds_tanques.First;
 Contador:= sds_tanques.RecordCount;
 For I:=1 to Contador do
 begin
      if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm.IBTransaction.StartTransaction;
      with Qry_lmc do
      begin
         close;
         Parambyname('data').AsDate:= date - 1 ;
         Parambyname('cod_pro').Asstring:= sds_tanquesCOD_PRODUTOS.Text;
         Parambyname('tanque').Asstring:= sds_tanquesCOD_TANQUE.Text;
         Parambyname('mov').Asstring:= '1';
         open;
         FetchAll;
      end;
      dm.IBTransaction.CommitRetaining;

      if Qry_lmc.Eof then
      begin






      end; }
end;


procedure TFormPrincipal.Action1Execute(Sender: TObject);
var
  comb, e : Integer;
begin

   { qrLMC.Close;
    qrLMC.SQL.Clear;
    qrLMC.SQL.Add('delete from lmc where combustivel =:cod_pro');
    qrLMC.Params.ParamByName('cod_pro').AsInteger := StrToInt(Trim(eproduto.Text));
    qrLMC.ExecSQL;

    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('DELETE from ULT_LMC where ');
    qrult_Encerrantes.SQL.Add('cod_produto = :cod_pro');
    qrult_Encerrantes.Params.ParamByName('cod_pro').AsInteger := StrToInt(Trim(eproduto.Text));
    qrult_Encerrantes.ExecSQL;  }



    qrCombustivel.Close;
    qrCombustivel.SQL.Clear;
    qrCombustivel.SQL.Add('select Cod_produtos from TANQUE');
    //qrCombustiveis.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrCombustivel.open;

    //eproduto :=      qrCombustivel.fieldbyname('codproduto').AsString;

   if not qrCombustivel.eof then
    begin
    qrCombustivel.first;
    comb :=  qrCombustivel.RecordCount;
    For e:=1 to comb do
    begin
     eproduto := qrCombustivel.fieldbyname('cod_produtos').AsString;

    if eproduto >'' then
    begin
    qrCombustiveis.Close;
    qrCombustiveis.SQL.Clear;
    qrCombustiveis.SQL.Add('select * from PRODUTOS where codigo = :codigo');
    qrCombustiveis.Params.ParamByName('codigo').AsInteger := StrToInt(Trim(eproduto));
    qrCombustiveis.Open;

    xpreco_comb := qrCombustiveis.fieldbyname('preco_venda').AsFloat;

    lbpreco.Caption := formatfloat('###,###,##0.00',xpreco_comb);
    end;

    qrTanques.Close;
    qrTanques.SQL.Clear;
    qrTanques.SQL.Add('update tanque set TANQUE.estoque_medicao = 0 where cod_produtos = :cod_produto');
    qrTanques.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrTanques.ExecSQL;

    qdata.Close;
    qdata.SQL.Clear;
    qdata.SQL.Add('select distinct data, codproduto from MOVIMENTACAO_COMBUSTIVEL where codproduto =:cod_pro and data >= :data_ini and data <= :data_fim order by data');
    qdata.Params.ParamByName('cod_pro').AsInteger := StrToInt(Trim(eproduto));
    qdata.Params.ParamByName('data_ini').AsDate := date -1;
    qdata.Params.ParamByName('data_fim').AsDate := date -1;
    qdata.Open;

    qrLMC.Close;
    qrLMC.SQL.Clear;
    qrLMC.SQL.Add('select *  from lmc where combustivel =:cod_pro and data >= :data_ini and data <= :data_fim order by data');
    qrLMC.Params.ParamByName('cod_pro').AsInteger := StrToInt(Trim(eproduto));
    qrLMC.Params.ParamByName('data_ini').AsDate := date -1;
    qrLMC.Params.ParamByName('data_fim').AsDate := date -1;
    qrLMC.open;

    qsaldo.Close;
    qsaldo.SQL.Clear;
    qsaldo.SQL.Add('select *  from lmc where combustivel =:cod_pro and data >= :data ');
    qsaldo.Params.ParamByName('cod_pro').AsInteger := StrToInt(Trim(eproduto));
    qsaldo.Params.ParamByName('data').AsDate := date -2;
    qsaldo.open;


 if qrLMC.RecordCount = 0 then
 begin

 panel12.Visible := True;
 pb.MaxValue := qrCombustivel.RecordCount - 1;

 qdata.First;
 periodo := qdata.RecordCount;
 For I:=1 to periodo do
 begin
  xvendb1 := 0;
  xvendb2 := 0;
  xvendb3 := 0;
  xvendb4 := 0;
  xvendb5 := 0;
  xvendb6 := 0;
  xvendb7 := 0;
  xvendb8 := 0;

  xvenvaldb1 := 0;
  xvenvaldb2 := 0;
  xvenvaldb3 := 0;
  xvenvaldb4 := 0;
  xvenvaldb5 := 0;
  xvenvaldb6 := 0;
  xvenvaldb7 := 0;
  xvenvaldb8 := 0;

  xqtde_venbico := 0;
  
  xval_venbico := 0;

  xestoq_escritural:=0;

  rta1 :=0;
  rta2 :=0;
  rta3 :=0;
  rta4 :=0;
  rta5 :=0;
  rta6 :=0;

  xestoq_fechamento:=0;

  rtf1:=0;
  rtf2 :=0;
  rtf3 :=0;
  rtf4 :=0;
  rtf5 :=0;
  rtf6:=0;
  perdas:=0;

  xperdasobra:=0;
   rvf1 :=0;
   rva1 :=0;
   rvaf1 :=0;
   rvf2 :=0;
   rva2 :=0;
   rvaf2 :=0;
   rvf3 :=0;
   rva3 :=0;
   rvaf3 :=0;
   rvf4 :=0;
   rva4 :=0;
   rvaf4 :=0;
   edn2 := '';
   rvr2 := 0;
   edn1 := '';
   rvr1 := 0;
   
   prim_dia := StartOfTheMonth(qdata.fieldbyname('data').Asdatetime);
   ultim_dia := EndOfTheMonth(qdata.fieldbyname('data').Asdatetime);

  // Form1.Caption := 'Lendo registro: ' + IntToStr(i) + ' de: ' + IntToStr(pb.MaxValue);

    pegabicos;

    qrTanques.Close;
    qrTanques.SQL.Clear;
    qrTanques.SQL.Add('select * from TANQUE where cod_produtos = :cod_produto');
    qrTanques.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrTanques.Open;
    xtanque := qrTanques.fieldbyname('cod_TANQUE').AsInteger;
   // xtanque_estoq := qrTanques.fieldbyname('estoque_medicao').AsFloat;

    xtanque_estoq := Qsaldo.fieldbyname('ESTOQ_FECHAMENTO').AsFloat ;
    // volumes e saldo dos tanques

    if xtanque = 1 then
    begin
      rta1 := 0;
      rta1 := xtanque_estoq;
    end
    else if xtanque = 2 then
    begin
      rta2 := 0;
      rta2 := xtanque_estoq;
    end
    else if xtanque = 3 then
    begin
        rta3 := 0;
        rta3 := xtanque_estoq;
    end
    else if xtanque = 4 then
    begin
      rta4 := 0;
      rta4:= xtanque_estoq;
    end
    else if xtanque = 5 then
    begin
        rta5 := 0;
        rta5 := xtanque_estoq;
    end;

  //dados da entrada
  qr_dados.Close;
  qr_dados.SQL.Clear;
  qr_dados.SQL.Add('select  sum(quantidade) as total, NOTASFISCAIS.NUM_NOTA from notasfiscais_itens INNER JOIN NOTASFISCAIS ON (notasfiscais_itens.codigo_nota = NOTASFISCAIS.CODIGO_NOTA) '+'');
  qr_dados.SQL.Add('where CODIGO_PRODUTO =:cod_pro AND NOTASFISCAIS.DATA_CADASTRO = :DATA group by NOTASFISCAIS.NUM_NOTA');
  //qr_dados.Params.Parambyname('TANQUE').AsInteger := xtanque;
  qr_dados.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_dados.Params.Parambyname('data').AsDate := qdata.fieldbyname('data').Asdatetime;
  Qr_dados.Open;

  Qr_dados.First;
  rvr1 := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER;
  edn1 :=  qr_dados.FIELDBYNAME('NUM_NOTA').AsString;
  IF qr_dados.RecordCount > 1 then
  BEGIN
  Qr_dados.Next;
  rvr2 := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER;
  edn2 :=  qr_dados.FIELDBYNAME('NUM_NOTA').AsString;
  end;


  //pega dados das vendas  bico 1
   evt1 := (xtanque);
 // PegaBicos;

  xpega_bicoatual:= IntToStr(evb1);
  if evb1 > 0 then
  begin
  bedatual := 1;

  PegaEncerrantes;

  qrBicos.Close;
  qrBicos.SQL.Clear;
  qrBicos.SQL.Add('select * from BICO where cod_bico = :COD_BICO');
  qrBicos.Params.ParamByName('cod_bico').AsInteger := (evb1);
  qrBicos.Open;
  evib1 := qrBicosid_bico.AsString;

  qr_dados.Close;
  qr_dados.SQL.Clear;
  qr_dados.SQL.Add('select  sum(ENC_LITROS) as total from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA ');
  qr_dados.Params.Parambyname('BICO').AsString     := evib1;
  qr_dados.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_dados.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  Qr_dados.Open;
  rvf1 := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER + rva1;

  QR_PRECO.Close;
  QR_PRECO.SQL.Clear;
  QR_PRECO.SQL.Add('select PRECO from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA  GROUP BY PRECO');
  QR_PRECO.Params.Parambyname('BICO').AsString     := evib1;
  QR_PRECO.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  QR_PRECO.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  QR_PRECO.Open;
  rvp1 := QR_PRECO.FIELDBYNAME('PRECO').AsCurrency;

  qr_afericao.Close;
  qr_afericao.SQL.Clear;
  qr_afericao.SQL.Add('select  sum(QUANTIDADE) as total from AFERICAO where ID_BICO = :BICO and CODIGO_PROD =:cod_pro AND DATA = :DATA');
  qr_afericao.Params.Parambyname('BICO').AsString     := (evib1);
  qr_afericao.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_afericao.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  qr_afericao.Open;
  rvaf1:= qr_afericao.FIELDBYNAME('TOTAL').ASINTEGER;
  end;

      xvendb1 := rvf1 - (rva1 + rvaf1);
      xvenvaldb1:= xvendb1 * rvp1;
     lbv1 := FloatToStr(xvendb1);

  //pega dados das vendas  bico 2
  evt2 := (xtanque);
 // PegaBicos;

  xpega_bicoatual:= IntToStr(evb2);
  if evb2 > 0 then
  begin
  bedatual := 2;

  PegaEncerrantes;

  qrBicos.Close;
  qrBicos.SQL.Clear;
  qrBicos.SQL.Add('select * from BICO where cod_bico = :COD_BICO');
  qrBicos.Params.ParamByName('cod_bico').AsInteger := (evb2);
  qrBicos.Open;
  evib2 := qrBicosid_bico.AsString;

  qr_dados.Close;
  qr_dados.SQL.Clear;
  qr_dados.SQL.Add('select  sum(ENC_LITROS) as total from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA ');
  qr_dados.Params.Parambyname('BICO').AsString     := evib2;
  qr_dados.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_dados.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  Qr_dados.Open;
  rvf2 := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER + rva2;

  QR_PRECO.Close;
  QR_PRECO.SQL.Clear;
  QR_PRECO.SQL.Add('select PRECO from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA  GROUP BY PRECO');
  QR_PRECO.Params.Parambyname('BICO').AsString     := evib2;
  QR_PRECO.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  QR_PRECO.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  QR_PRECO.Open;
  rvp2 := QR_PRECO.FIELDBYNAME('PRECO').AsCurrency;

  qr_afericao.Close;
  qr_afericao.SQL.Clear;
  qr_afericao.SQL.Add('select  sum(QUANTIDADE) as total from AFERICAO where ID_BICO = :BICO and CODIGO_PROD =:cod_pro AND DATA = :DATA');
  qr_afericao.Params.Parambyname('BICO').AsString     := (evib2);
  qr_afericao.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_afericao.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  qr_afericao.Open;
  rvaf2:= qr_afericao.FIELDBYNAME('TOTAL').ASINTEGER;
  end;


//  evt3.Text := IntToStr(xtanque);
  xvendb2 := rvf2 - rva2 - rvaf2;
  xvenvaldb2:= xvendb2 * rvp2;
  lbv2 := FloatToStr(xvendb2);

  //pega dados das vendas  bico 3
  evt3 := (xtanque);
 // PegaBicos;

  xpega_bicoatual:= IntToStr(evb3);
  if evb3 > 0 then
  begin
  bedatual := 3;

  PegaEncerrantes;

  qrBicos.Close;
  qrBicos.SQL.Clear;
  qrBicos.SQL.Add('select * from BICO where cod_bico = :COD_BICO');
  qrBicos.Params.ParamByName('cod_bico').AsInteger := (evb3);
  qrBicos.Open;
  evib3 := qrBicosid_bico.AsString;

  qr_dados.Close;
  qr_dados.SQL.Clear;
  qr_dados.SQL.Add('select  sum(ENC_LITROS) as total from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA ');
  qr_dados.Params.Parambyname('BICO').AsString     := evib3;
  qr_dados.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_dados.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  Qr_dados.Open;
  rvf3 := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER + rva3;

  QR_PRECO.Close;
  QR_PRECO.SQL.Clear;
  QR_PRECO.SQL.Add('select PRECO from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA  GROUP BY PRECO');
  QR_PRECO.Params.Parambyname('BICO').AsString     := evib3;
  QR_PRECO.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  QR_PRECO.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  QR_PRECO.Open;
  rvp3 := QR_PRECO.FIELDBYNAME('PRECO').AsCurrency;

  qr_afericao.Close;
  qr_afericao.SQL.Clear;
  qr_afericao.SQL.Add('select  sum(QUANTIDADE) as total from AFERICAO where ID_BICO = :BICO and CODIGO_PROD =:cod_pro AND DATA = :DATA');
  qr_afericao.Params.Parambyname('BICO').AsString     := (evib3);
  qr_afericao.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_afericao.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  qr_afericao.Open;
  rvaf3:= qr_afericao.FIELDBYNAME('TOTAL').ASINTEGER;
  end;

      xvendb3 := rvf3 - rva3 - rvaf3;
      xvenvaldb3:= xvendb3 * rvp2;
      lbv3 := FloatToStr(xvendb3);

   //pega dados das vendas  bico 4
  evt4 := (xtanque);
 // PegaBicos;

  xpega_bicoatual:= IntToStr(evb4);
  if evb4 > 0 then
  begin
  bedatual := 4;

  PegaEncerrantes;

  qrBicos.Close;
  qrBicos.SQL.Clear;
  qrBicos.SQL.Add('select * from BICO where cod_bico = :COD_BICO');
  qrBicos.Params.ParamByName('cod_bico').AsInteger := (evb4);
  qrBicos.Open;
  evib4 := qrBicosid_bico.AsString;

  qr_dados.Close;
  qr_dados.SQL.Clear;
  qr_dados.SQL.Add('select  sum(ENC_LITROS) as total from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA ');
  qr_dados.Params.Parambyname('BICO').AsString     := evib4;
  qr_dados.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_dados.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  Qr_dados.Open;
  rvf4 := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER + rva4;

  QR_PRECO.Close;
  QR_PRECO.SQL.Clear;
  QR_PRECO.SQL.Add('select PRECO from BICOENC where ID_BICO = :BICO and ID_PRODUTOS =:cod_pro AND DATAHORA = :DATA  GROUP BY PRECO');
  QR_PRECO.Params.Parambyname('BICO').AsString     := evib4;
  QR_PRECO.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  QR_PRECO.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  QR_PRECO.Open;
  rvp4 := QR_PRECO.FIELDBYNAME('PRECO').AsCurrency;

  qr_afericao.Close;
  qr_afericao.SQL.Clear;
  qr_afericao.SQL.Add('select  sum(QUANTIDADE) as total from AFERICAO where ID_BICO = :BICO and CODIGO_PROD =:cod_pro AND DATA = :DATA');
  qr_afericao.Params.Parambyname('BICO').AsString     := (evib4);
  qr_afericao.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qr_afericao.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
  qr_afericao.Open;
  rvaf4:= qr_afericao.FIELDBYNAME('TOTAL').ASINTEGER;
  end;

      xvendb4 := rvf4 - rva4 - rvaf4;
      xvenvaldb4:= xvendb4 * rvp4;

      lbv4 := FloatToStr(xvendb4);


      xqtde_venbico := xvendb1 + xvendb2 + xvendb3 + xvendb4 + xvendb5 + xvendb6 +
                       xvendb7 + xvendb8;

      //  lbVendas.Caption := formatfloat('###,###,##0.00',xqtde_venbico);

      xval_venbico := xvenvaldb1 + xvenvaldb2 + xvenvaldb3 + xvenvaldb4 + xvenvaldb5 +
                      xvenvaldb6 + xvenvaldb7 + xvenvaldb8;
      //  lbValorVendas.Caption := formatfloat('###,###,##0.00',xval_venbico);



      xestoq_escritural:=(rta1 + rta2 + rta3 + rta4 + rta5 + rta6) +
                         (rvr1 + rvr2 + rvr3 + rvr4) - xqtde_venbico;

      //  lbestoqescrit.Caption := formatfloat('###,###,##0.00',xestoq_escritural);

      if xtanque = 1 then
        rtf1 := xestoq_escritural
      else if xtanque = 2 then
        rtf2 := xestoq_escritural
      else if xtanque = 3 then
        rtf3 := xestoq_escritural
      else if xtanque = 4 then
        rtf4 := xestoq_escritural
      else if xtanque = 5 then
        rtf5 := xestoq_escritural;


      qr_dados.Close;
      qr_dados.SQL.Clear;
      qr_dados.SQL.Add('select  sum(quant) as total, acerto_estoque.data_ace,  acerto_estoque.cod_mot from itens_acerto_estoque INNER JOIN acerto_estoque ON (itens_acerto_estoque.cod_ace = acerto_estoque.COD_ACE )');
      qr_dados.SQL.Add(' where COD_PRO =:cod_pro AND DATA_ACE = :DATA group by acerto_estoque.data_ace , acerto_estoque.cod_mot');
      qr_dados.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
      qr_dados.Params.Parambyname('data').AsDate       := qdata.fieldbyname('data').Asdatetime;
      Qr_dados.Open;
      if qr_dados.FIELDBYNAME('cod_mot').ASINTEGER = 1 then
      perdas := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER
      else
      perdas := qr_dados.FIELDBYNAME('TOTAL').ASINTEGER * -1;


      xestoq_fechamento:=(rtf1 + rtf2 + rtf3 + rtf4 + rtf5 + rtf6) + perdas;

     // lbestoqfecha.Caption := formatfloat('###,###,##0.00',xestoq_fechamento);

      xperdasobra:= xestoq_fechamento - xestoq_escritural;
    //  lbPerdSobr.Caption := FloatToStr(xperdasobra);

      xacumulado := 0;
      qrApoio.Close;
      qrApoio.SQL.Clear;
      qrApoio.SQL.Add('select * from LMC where data >= :data_ini and data <= :data_fim');
      qrApoio.Params.ParamByName('data_ini').AsDate := prim_dia;
      qrApoio.Params.ParamByName('data_fim').AsDate := ultim_dia;
      qrApoio.Open;

      While not qrApoio.Eof do
      begin
        xacumulado := xacumulado + qrApoio.fieldbyname('estoq_fechamento').AsInteger;
        qrApoio.Next;
      end;

     // lbValorAcumu.caption := IntToStr(xacumulado);

  
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM LMC');
   DM.ProxCod.Open;
   lmc := DM.ProxCodN_CODIGO.ASINTEGER + 1;

   edit3.Text := IntToStr(lmc);

 //gravando dados
  qrLMC.insert;

  
  xpagina_atual := 0;
  qrLivro.Close;
  qrLivro.SQL.Clear;
  qrLivro.SQL.Add('select * from LMC_ABERFECH where cod_combustivel = :cod_combustivel');
  qrLivro.Params.ParamByName('cod_combustivel').AsInteger := StrToInt(Trim(eproduto));
  qrLivro.Open;
  xpagina_atual := qrLivro.fieldbyname('pagina_atual').asinteger;

  xpagina_atual := xpagina_atual + 1;



  qrApoio.Close;
  qrApoio.SQL.Clear;
  qrApoio.SQL.Add('SELECT sum(lmc.totalvendas_dia) as totalvendas_dia  FROM lmc ');
  qrApoio.SQL.Add('WHERE EXTRACT(month FROM lmc.data) = :NUM_MES and EXTRACT(YEAR FROM lmc.data) = :NUM_ANO and combustivel = :cod_pro');
  qrApoio.Params.ParamByName('NUM_MES').AsString := FormatDateTime('MM',qdata.fieldbyname('data').Asdatetime);
  qrApoio.Params.ParamByName('NUM_ANO').AsString := FormatDateTime('yyyy',qdata.fieldbyname('data').Asdatetime);
  qrApoio.Params.Parambyname('cod_pro').Asinteger := StrToInt(eproduto);
  qrApoio.Open;

  qrApoio.last;

  qrLMC.Fieldbyname('totalvendas_acu').asfloat :=  xval_venbico + StrToFloatDef(qrApoio.Fieldbyname('totalvendas_dia').Text,0.00);


  qrLMC.FieldByName('codigo').AsINTEGER := lmc;
  qrLMC.Fieldbyname('tanque').asinteger := xtanque;
  qrLMC.Fieldbyname('bomba').asinteger := xbomba;
  qrLMC.Fieldbyname('data').AsDateTime := qdata.fieldbyname('data').Asdatetime;
  qrLMC.Fieldbyname('combustivel').asinteger := StrToInt(Trim(eproduto));
  qrLMC.Fieldbyname('preco').asfloat := StrToFloat(lbpreco.Caption);
  qrLMC.Fieldbyname('notafiscal1').asstring := Trim(edn1);
  qrLMC.Fieldbyname('notafiscal2').asstring := Trim(edn2);
 // qrLMC.Fieldbyname('notafiscal3').asstring := Trim(edn3);
//  qrLMC.Fieldbyname('notafiscal4').asstring:= Trim(edn4);
  qrLMC.Fieldbyname('quantnf1').asinteger := Trunc(rvr1);
  qrLMC.Fieldbyname('quantnf2').asinteger := Trunc(rvr2);
  qrLMC.Fieldbyname('quantnf3').asinteger := Trunc(rvr3);
  qrLMC.Fieldbyname('quantnf4').asinteger := Trunc(rvr4);


  if rvf1 > 0 then
//  if xvendb1 > 0 then
  begin
    qrLMC.Fieldbyname('bico1').Asinteger := (evb1);
    qrLMC.Fieldbyname('Id_bico1').AsString := (evib1);
    qrLMC.Fieldbyname('aber_bico1').asinteger :=Trunc(rva1);
    qrLMC.Fieldbyname('enc_bico1').asinteger :=Trunc(rvf1);
    qrLMC.Fieldbyname('afer_bico1').asinteger :=Trunc(rvaf1);
  end;
//  if xvendb2 > 0 then
  if rvf2 > 0 then
  begin
    qrLMC.Fieldbyname('bico2').Asinteger :=(evb2);
    qrLMC.Fieldbyname('Id_bico2').AsString := (evib2);
    qrLMC.Fieldbyname('aber_bico2').asinteger :=Trunc(rva2);
    qrLMC.Fieldbyname('enc_bico2').asinteger :=Trunc(rvf2);
    qrLMC.Fieldbyname('afer_bico2').asinteger :=Trunc(rvaf2);
  end;
//  if xvendb3 > 0 then
  if rvf3 > 0 then
  begin
    qrLMC.Fieldbyname('bico3').AsInteger :=(evb3);
    qrLMC.Fieldbyname('Id_bico3').AsString := (evib3);
    qrLMC.Fieldbyname('aber_bico3').asinteger :=Trunc(rva3);
    qrLMC.Fieldbyname('enc_bico3').asinteger :=Trunc(rvf3);
    qrLMC.Fieldbyname('afer_bico3').asinteger :=Trunc(rvaf3);
  end;
//  if xvendb4 > 0 then
  if rvf4 > 0 then
  begin
    qrLMC.Fieldbyname('bico4').AsInteger :=(evb4);
    qrLMC.Fieldbyname('Id_bico4').AsString := (evib4);
    qrLMC.Fieldbyname('aber_bico4').asinteger :=Trunc(rva4);
    qrLMC.Fieldbyname('enc_bico4').asinteger :=Trunc(rvf4);
    qrLMC.Fieldbyname('afer_bico4').asinteger :=Trunc(rvaf4);
  end;
//  if xvendb5 > 0 then
{  if rvf5.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico5').AsString := (evb5.Text);
    qrLMC.Fieldbyname('Id_bico5').AsString := (evib5.Text);
    qrLMC.Fieldbyname('aber_bico5').asinteger :=Trunc(rva5.Value);
    qrLMC.Fieldbyname('enc_bico5').asinteger :=Trunc(rvf5.Value);
    qrLMC.Fieldbyname('afer_bico5').asinteger :=Trunc(rvaf5.Value);
  end;
//  if xvendb6 > 0 then
  if rvf6.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico6').AsString :=(evb6.Text);
    qrLMC.Fieldbyname('Id_bico6').AsString := (evib6.Text);
    qrLMC.Fieldbyname('aber_bico6').asinteger :=Trunc(rva6.Value);
    qrLMC.Fieldbyname('enc_bico6').asinteger :=Trunc(rvf6.Value);
    qrLMC.Fieldbyname('afer_bico6').asinteger :=Trunc(rvaf6.Value);
  end;
//  if xvendb7 > 0 then
  if rvf7.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico7').AsString :=(evb7.Text);
    qrLMC.Fieldbyname('Id_bico7').AsString := (evib7.Text);
    qrLMC.Fieldbyname('aber_bico7').asinteger :=Trunc(rva7.Value);
    qrLMC.Fieldbyname('enc_bico7').asinteger :=Trunc(rvf7.Value);
    qrLMC.Fieldbyname('afer_bico7').asinteger :=Trunc(rvaf7.Value);
  end;
//  if xvendb8 > 0 then
  if rvf8.Value > 0 then
  begin
    qrLMC.Fieldbyname('bico8').AsString :=(evb8.Text);
    qrLMC.Fieldbyname('Id_bico8').AsString := (evib8.Text);
    qrLMC.Fieldbyname('aber_bico8').asinteger :=Trunc(rva8.Value);
    qrLMC.Fieldbyname('enc_bico8').asinteger :=Trunc(rvf8.Value);
    qrLMC.Fieldbyname('afer_bico8').asinteger :=Trunc(rvaf8.Value);
  end;   }

  qrLMC.Fieldbyname('qtevend_1').asinteger :=Trunc(xvendb1);
  qrLMC.Fieldbyname('qtevend_2').asinteger :=Trunc(xvendb2);
  qrLMC.Fieldbyname('qtevend_3').asinteger :=Trunc(xvendb3);
  qrLMC.Fieldbyname('qtevend_4').asinteger :=Trunc(xvendb4);
  qrLMC.Fieldbyname('qtevend_5').asinteger :=Trunc(xvendb5);
  qrLMC.Fieldbyname('qtevend_6').asinteger :=Trunc(xvendb6);
  qrLMC.Fieldbyname('qtevend_7').asinteger :=Trunc(xvendb7);
  qrLMC.Fieldbyname('qtevend_8').asinteger :=Trunc(xvendb8);
  qrLMC.Fieldbyname('totalvend_1').asfloat :=xvenvaldb1;
  qrLMC.Fieldbyname('totalvend_2').asfloat :=xvenvaldb2;
  qrLMC.Fieldbyname('totalvend_3').asfloat :=xvenvaldb3;
  qrLMC.Fieldbyname('totalvend_4').asfloat :=xvenvaldb4;
  qrLMC.Fieldbyname('totalvend_5').asfloat :=xvenvaldb5;
  qrLMC.Fieldbyname('totalvend_6').asfloat :=xvenvaldb6;
  qrLMC.Fieldbyname('totalvend_7').asfloat :=xvenvaldb7;
  qrLMC.Fieldbyname('totalvend_8').asfloat :=xvenvaldb8;
  qrLMC.Fieldbyname('estoq_abertura').asinteger := Trunc(rta1 + rta2 + rta3 + rta4 + rta5 + rta6);
  qrLMC.Fieldbyname('estoq_escritural').asinteger := Trunc(xestoq_escritural);
  qrLMC.Fieldbyname('estoq_fechamento').asinteger := Trunc(xestoq_fechamento);
  qrLMC.Fieldbyname('perda_sobra').asinteger := Trunc(xperdasobra);
 //  qrLMC.Fieldbyname('observacao').asstring := memobs.Text;
  qrLMC.Fieldbyname('pagina').asinteger := xpagina_atual;


  if (qrLMC.State = dsinsert) or (qrLMC.State = dsedit) then
  begin
      qrLMC.post;
      DM.coneccao.Commit;
  end;


  qrLivro.Close;
  qrLivro.SQL.Clear;
  qrLivro.SQL.Add('update LMC_ABERFECH set pagina_atual = :pagina_atual ');
  qrLivro.SQL.Add('where cod_combustivel = :cod_combustivel');
  qrLivro.Params.ParamByName('cod_combustivel').AsInteger := StrToInt(Trim(eproduto));
  qrLivro.Params.ParamByName('pagina_atual').AsInteger := xpagina_atual;
  qrLivro.Execsql;



    qrTanques.Close;
    qrTanques.SQL.Clear;
    qrTanques.SQL.Add('update TANQUE set estoque_medicao = :estoque_medicao where cod_produtos = :cod_produto');
    qrTanques.Params.ParamByName('estoque_medicao').AsFloat := xestoq_fechamento;
    qrTanques.Params.ParamByName('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrTanques.ExecSQL;

 //grava encerrantes
  if rvf1 > 0 then
  begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM ULT_LMC');
   DM.ProxCod.Open;

    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where ');
    qrult_Encerrantes.SQL.Add('cod_bico = :cod_bico');
    qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := (evb1);
    qrult_Encerrantes.Open;

    qrult_Encerrantes.Insert;
    qrult_Encerrantes.fieldbyname('codigo').AsInteger :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;;
    qrult_Encerrantes.fieldbyname('lmc_codigo').AsInteger :=    lmc;
    qrult_Encerrantes.fieldbyname('data').AsDateTime := qdata.fieldbyname('data').Asdatetime;
    qrult_Encerrantes.fieldbyname('cod_bico').AsInteger := evb1;
    qrult_Encerrantes.fieldbyname('id_bico').AsString := evib1;
    qrult_Encerrantes.fieldbyname('abertura').AsInteger := Trunc(rva1);
    qrult_Encerrantes.fieldbyname('encerramento').AsInteger := Trunc(rvf1);
    qrult_Encerrantes.fieldbyname('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrult_Encerrantes.Post;
  end;

  if rvf2 > 0 then
  begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM ULT_LMC');
   DM.ProxCod.Open;

    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where ');
    qrult_Encerrantes.SQL.Add('cod_bico = :cod_bico');
    qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger :=(evb2);
    qrult_Encerrantes.Open;

    qrult_Encerrantes.Insert;
    qrult_Encerrantes.fieldbyname('codigo').AsInteger :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;;
    qrult_Encerrantes.fieldbyname('lmc_codigo').AsInteger :=    lmc;
    qrult_Encerrantes.fieldbyname('data').AsDateTime := qdata.fieldbyname('data').Asdatetime;
    qrult_Encerrantes.fieldbyname('cod_bico').AsInteger := evb2;
    qrult_Encerrantes.fieldbyname('id_bico').AsString := evib2;
    qrult_Encerrantes.fieldbyname('abertura').AsInteger := Trunc(rva2);
    qrult_Encerrantes.fieldbyname('encerramento').AsInteger := Trunc(rvf2);
    qrult_Encerrantes.fieldbyname('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrult_Encerrantes.Post;
  end;
   if rvf3 > 0 then
  begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM ULT_LMC');
   DM.ProxCod.Open;

    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where ');
    qrult_Encerrantes.SQL.Add('cod_bico = :cod_bico');
    qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := (evb3);
    qrult_Encerrantes.Open;

    qrult_Encerrantes.Insert;
    qrult_Encerrantes.fieldbyname('codigo').AsInteger :=  DM.ProxCodN_CODIGO.ASINTEGER + 1;;
    qrult_Encerrantes.fieldbyname('lmc_codigo').AsInteger :=    lmc;
    qrult_Encerrantes.fieldbyname('data').AsDateTime := qdata.fieldbyname('data').Asdatetime;
    qrult_Encerrantes.fieldbyname('cod_bico').AsInteger := evb3;
    qrult_Encerrantes.fieldbyname('id_bico').AsString := evib3;
    qrult_Encerrantes.fieldbyname('abertura').AsInteger := Trunc(rva3);
    qrult_Encerrantes.fieldbyname('encerramento').AsInteger := Trunc(rvf3);
    qrult_Encerrantes.fieldbyname('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrult_Encerrantes.Post;
  end;

  if rvf4 > 0 then
  begin
   dm.ProxCod.Close;
   dm.ProxCod.SQL.Clear;
   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM ULT_LMC');
   DM.ProxCod.Open;
   
    qrult_Encerrantes.Close;
    qrult_Encerrantes.SQL.Clear;
    qrult_Encerrantes.SQL.Add('select * from ULT_LMC where ');
    qrult_Encerrantes.SQL.Add('cod_bico = :cod_bico');
    qrult_Encerrantes.Params.ParamByName('cod_bico').AsInteger := (evb4);
    qrult_Encerrantes.Open;

    qrult_Encerrantes.Insert;
    qrult_Encerrantes.fieldbyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
    qrult_Encerrantes.fieldbyname('lmc_codigo').AsInteger :=  lmc;
    qrult_Encerrantes.fieldbyname('data').AsDateTime := qdata.fieldbyname('data').Asdatetime;
    qrult_Encerrantes.fieldbyname('cod_bico').AsInteger := evb4;
    qrult_Encerrantes.fieldbyname('id_bico').AsString := evib4;
    qrult_Encerrantes.fieldbyname('abertura').AsInteger := Trunc(rva4);
    qrult_Encerrantes.fieldbyname('encerramento').AsInteger := Trunc(rvf4);
    qrult_Encerrantes.fieldbyname('cod_produto').AsInteger := StrToInt(Trim(eproduto));
    qrult_Encerrantes.Post;
  end;
  DM.coneccao.Commit;

  pb.Progress := pb.Progress + 1;


  qdata.next;

  Application.ProcessMessages;

  
  panel12.Visible := false;
  end;
  end;
  qrCombustivel.next;
 end;
 end;
end;

procedure TFormPrincipal.XDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_space then
begin
XDBGrid1.SelectedRows.CurrentRowSelected := not XDBGrid1.SelectedRows.CurrentRowSelected;
end;
end;

procedure TFormPrincipal.XDBGrid1CellClick(Column: TXColumn);
begin
tanque := cds_abastecidasID_TANQUE.Text;
bico   := cds_abastecidasID_BICO.Text;
bomba  := cds_abastecidasID_BOMBA.Text;
bico1  :=  cds_abastecidasCOD_BICOENC_TEMP.Text;

 XDBGrid1.SelectedRows.CurrentRowSelected := not XDBGrid1.SelectedRows.CurrentRowSelected;

 end;

procedure TFormPrincipal.R1Click(Sender: TObject);
begin
Try
if Form_ReducaoZ=nil   then
    begin
     Form_ReducaoZ:=TForm_ReducaoZ.Create(self);
      Form_ReducaoZ.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormPrincipal.L1Click(Sender: TObject);
begin
Try
if Form_LeituraX=nil   then
    begin
     Form_LeituraX:=TForm_LeituraX.Create(self);
      Form_LeituraX.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

initialization
RLConsts.SetVersion(3,70,'B');
end.

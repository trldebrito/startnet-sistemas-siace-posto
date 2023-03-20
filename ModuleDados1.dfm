object DM1: TDM1
  OldCreateOrder = False
  Left = 320
  Top = 8
  Height = 649
  Width = 921
  object DTS_bem: TDataSource
    DataSet = Sds_bens
    Left = 110
    Top = 16
  end
  object Dts_centro_Custo: TDataSource
    DataSet = Sds_CentroCusto
    Left = 117
    Top = 80
  end
  object Dts_bens_utilizacao: TDataSource
    DataSet = Sds_bens_utilizacao
    Left = 133
    Top = 145
  end
  object Sds_bens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from BENS order By Codigo asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 16
    object Sds_bensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_bensIDENTIF_MERC: TStringField
      DisplayLabel = 'Id'
      DisplayWidth = 1
      FieldName = 'IDENTIF_MERC'
      Size = 1
    end
    object Sds_bensDESC_BEM: TStringField
      DisplayLabel = 'Nome do Bem'
      DisplayWidth = 50
      FieldName = 'DESC_BEM'
      Size = 50
    end
    object Sds_bensCOD_PRINCIPAL: TIntegerField
      DisplayLabel = 'Cod Bem Princ'
      DisplayWidth = 10
      FieldName = 'COD_PRINCIPAL'
    end
    object Sds_bensCOD_CONTA: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 50
      FieldName = 'COD_CONTA'
      Size = 50
    end
    object Sds_bensN_PARCELAS: TStringField
      DisplayWidth = 3
      FieldName = 'N_PARCELAS'
      Visible = False
      Size = 3
    end
    object Sds_bensDATACAD: TDateField
      DisplayWidth = 10
      FieldName = 'DATACAD'
      Visible = False
    end
    object Sds_bensUSERCAD: TStringField
      DisplayWidth = 20
      FieldName = 'USERCAD'
      Visible = False
    end
    object Sds_benscod_empresa: TIntegerField
      DisplayWidth = 10
      FieldName = 'cod_empresa'
      Visible = False
    end
  end
  object Sds_CentroCusto: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CENTRO_CUSTO order by Cod_centro Asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 80
    object Sds_CentroCustoCOD_CENTRO: TIntegerField
      DisplayLabel = 'C'#243'd Centro'
      DisplayWidth = 10
      FieldName = 'COD_CENTRO'
      Required = True
    end
    object Sds_CentroCustoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Sds_CentroCustoDATA_CAD: TDateField
      DisplayWidth = 10
      FieldName = 'DATA_CAD'
      Visible = False
    end
    object Sds_CentroCustoUSERCAD: TStringField
      DisplayWidth = 20
      FieldName = 'USERCAD'
      Visible = False
    end
    object Sds_CentroCustoCOD_EMPRESA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COD_EMPRESA'
      Required = True
      Visible = False
    end
  end
  object Sds_bens_utilizacao: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from BENS_UTILIZACAO order by Sequencia Asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 144
    object Sds_bens_utilizacaoCOD_CENT_CUSTO: TIntegerField
      DisplayLabel = 'Centro Custo'
      DisplayWidth = 10
      FieldName = 'COD_CENT_CUSTO'
    end
    object Sds_bens_utilizacaoFUNCAO: TStringField
      DisplayLabel = 'Utiliza'#231#227'o'
      DisplayWidth = 50
      FieldName = 'FUNCAO'
      Size = 50
    end
    object Sds_bens_utilizacaoVIDA_UTIL: TIntegerField
      DisplayLabel = 'Vida Util'
      DisplayWidth = 10
      FieldName = 'VIDA_UTIL'
    end
    object Sds_bens_utilizacaoSEQUENCIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQUENCIA'
      Required = True
      Visible = False
    end
    object Sds_bens_utilizacaoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object Sds_ecf: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from SPED_ECF'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 224
    Top = 24
    object Sds_ecfCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 2
    end
    object Sds_ecfECF_CX: TIntegerField
      FieldName = 'ECF_CX'
    end
    object Sds_ecfECF_MOD: TStringField
      FieldName = 'ECF_MOD'
      Size = 30
    end
    object Sds_ecfECF_FAB: TStringField
      FieldName = 'ECF_FAB'
      Size = 30
    end
  end
  object Sds_Red_Z: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from SPED_REDUCAO_Z ORDER BY DT_COD ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ECF_CX'
    MasterFields = 'ECF_CX'
    MasterSource = Dts_Ecf
    PacketRecords = 0
    Params = <>
    Left = 408
    Top = 24
    object Sds_Red_ZECF_CX: TIntegerField
      FieldName = 'ECF_CX'
    end
    object Sds_Red_ZDT_COD: TDateField
      FieldName = 'DT_COD'
    end
    object Sds_Red_ZCRO: TIntegerField
      FieldName = 'CRO'
    end
    object Sds_Red_ZCRZ: TIntegerField
      FieldName = 'CRZ'
    end
    object Sds_Red_ZCOO: TIntegerField
      FieldName = 'COO'
    end
    object Sds_Red_ZGT_FIN: TFMTBCDField
      FieldName = 'GT_FIN'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Red_ZVL_BRT: TFMTBCDField
      FieldName = 'VL_BRT'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object Dts_Ecf: TDataSource
    DataSet = Sds_ecf
    Left = 304
    Top = 24
  end
  object dts_Red_Z: TDataSource
    DataSet = Sds_Red_Z
    Left = 496
    Top = 24
  end
  object SDS_TOTAL_Z: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from SPED_TOTAL_Z'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ECF_CX'
    MasterFields = 'ECF_CX'
    MasterSource = Dts_Ecf
    PacketRecords = 0
    Params = <>
    Left = 224
    Top = 88
    object SDS_TOTAL_ZECF_CX: TIntegerField
      FieldName = 'ECF_CX'
      Required = True
    end
    object SDS_TOTAL_ZTOTALIZADOR_Z: TStringField
      FieldName = 'TOTALIZADOR_Z'
      Required = True
      Size = 7
    end
    object SDS_TOTAL_ZDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object SDS_TOTAL_ZVALOR_TOTALIZADOR: TFMTBCDField
      FieldName = 'VALOR_TOTALIZADOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object SDS_TOTAL_ZN_TOTALIZADOR: TStringField
      FieldName = 'N_TOTALIZADOR'
      Size = 2
    end
    object SDS_TOTAL_ZDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_TOTAL_ZT_SIT_TRIB: TStringField
      FieldName = 'T_SIT_TRIB'
      Size = 6
    end
  end
  object DTS_TOTAL_Z: TDataSource
    DataSet = SDS_TOTAL_Z
    Left = 312
    Top = 88
  end
  object sds_sped_copons: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_COPONS order by data_pedido asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'DATA_PEDIDO'
    MasterFields = 'DT_COD'
    MasterSource = dts_Red_Z
    PacketRecords = 0
    Params = <>
    Left = 408
    Top = 152
    object sds_sped_coponsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_sped_coponsDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object sds_sped_coponsNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object sds_sped_coponsCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object sds_sped_coponsSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sds_sped_coponsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object sds_sped_coponsTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object sds_sped_coponsN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object sds_sped_coponsN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object sds_sped_coponsVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object sds_sped_coponsNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sds_sped_coponsVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object sds_sped_coponsVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_coponsVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
  end
  object Dts_sped_cupons: TDataSource
    DataSet = sds_sped_copons
    Left = 512
    Top = 152
  end
  object SDS_Sped_cupons_itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from V_SPED_CUPONS_ITENS order by data_pedido asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = Dts_sped_cupons
    PacketRecords = 0
    Params = <>
    Left = 384
    Top = 224
    object SDS_Sped_cupons_itensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Sped_cupons_itensDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_Sped_cupons_itensCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
      Required = True
    end
    object SDS_Sped_cupons_itensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_Sped_cupons_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_Sped_cupons_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Sped_cupons_itensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_Sped_cupons_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_Sped_cupons_itensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object SDS_Sped_cupons_itensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object SDS_Sped_cupons_itensQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
      Size = 8
    end
    object SDS_Sped_cupons_itensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_Sped_cupons_itensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_Sped_cupons_itensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_Sped_cupons_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_Sped_cupons_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_Sped_cupons_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_Sped_cupons_itensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 3
    end
    object SDS_Sped_cupons_itensN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object SDS_Sped_cupons_itensN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object SDS_Sped_cupons_itensCOD_UNIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'COD_UNIDADE'
      LookupDataSet = DM.SDS_Unidades
      LookupKeyFields = 'ABREVIATURA'
      LookupResultField = 'CODIGO'
      KeyFields = 'UNIDADE'
      Lookup = True
    end
    object SDS_Sped_cupons_itensCFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Size = 4
    end
    object SDS_Sped_cupons_itensCST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Size = 3
    end
  end
  object Dts_sped_cupons_itens: TDataSource
    DataSet = SDS_Sped_cupons_itens
    Left = 496
    Top = 208
  end
  object sds_sped_nf_ent: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_NOTAS_FISCAIS ORDER BY CODIGO_NOTA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 224
    object sds_sped_nf_entCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object sds_sped_nf_entNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
    end
    object sds_sped_nf_entCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      Size = 5
    end
    object sds_sped_nf_entDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object sds_sped_nf_entFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object sds_sped_nf_entDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object sds_sped_nf_entTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object sds_sped_nf_entIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object sds_sped_nf_entUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object sds_sped_nf_entDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object sds_sped_nf_entOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object sds_sped_nf_entMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object sds_sped_nf_entANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object sds_sped_nf_entCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 40
    end
    object sds_sped_nf_entPROTOCOLO_NFE: TStringField
      FieldName = 'PROTOCOLO_NFE'
      Size = 30
    end
    object sds_sped_nf_entBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entBASE_CALC_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_ICMS_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_OUTRAS_DESPESAS: TFMTBCDField
      FieldName = 'VALOR_OUTRAS_DESPESAS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_TOTAL_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_TOTAL_PRODUTOS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_TOTAL_ITENS_NOTA: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITENS_NOTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVLR_ICMS_GARANTIDO: TFMTBCDField
      FieldName = 'VLR_ICMS_GARANTIDO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entcod_pagto: TIntegerField
      FieldName = 'cod_pagto'
    end
    object sds_sped_nf_entTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object sds_sped_nf_entENDERECO_CLI_FORN: TStringField
      FieldName = 'ENDERECO_CLI_FORN'
      Size = 40
    end
    object sds_sped_nf_entEND_NUM_CLIENTE: TStringField
      FieldName = 'END_NUM_CLIENTE'
    end
    object sds_sped_nf_entCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object sds_sped_nf_entCEP_CLIENTE_FORN: TStringField
      FieldName = 'CEP_CLIENTE_FORN'
      FixedChar = True
      Size = 10
    end
    object sds_sped_nf_entBAIRRO_CLIENTE_FORN: TStringField
      FieldName = 'BAIRRO_CLIENTE_FORN'
      Size = 30
    end
    object sds_sped_nf_entTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Size = 1
    end
    object sds_sped_nf_entCIDADE_CLIENTE_FORN: TStringField
      FieldName = 'CIDADE_CLIENTE_FORN'
      Size = 40
    end
    object sds_sped_nf_entUF_CLIENTE_FORN: TStringField
      FieldName = 'UF_CLIENTE_FORN'
      Size = 2
    end
    object sds_sped_nf_entDESC_PAGTO: TStringField
      FieldName = 'DESC_PAGTO'
      Size = 50
    end
    object sds_sped_nf_entVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entpagamento: TStringField
      FieldName = 'pagamento'
      Size = 30
    end
    object sds_sped_nf_entMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object sds_sped_nf_entEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object sds_sped_nf_entCOD_SPED: TIntegerField
      FieldName = 'COD_SPED'
    end
    object sds_sped_nf_entNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sds_sped_nf_entIE1: TStringField
      FieldName = 'IE1'
      Size = 15
    end
    object sds_sped_nf_entCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sds_sped_nf_entCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Size = 7
    end
    object sds_sped_nf_entLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object sds_sped_nf_entNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object sds_sped_nf_entCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object sds_sped_nf_entBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object sds_sped_nf_entSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 11
    end
    object sds_sped_nf_entPAIS: TStringField
      FieldName = 'PAIS'
      Size = 11
    end
    object sds_sped_nf_entCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sds_sped_nf_entCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object sds_sped_nf_entCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_sped_nf_entTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_sped_nf_entTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object sds_sped_nf_entVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_PIS_ST: TFMTBCDField
      FieldName = 'VALOR_PIS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entVALOR_COFIS_ST: TFMTBCDField
      FieldName = 'VALOR_COFIS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_entSUB_SERIE: TStringField
      FieldName = 'SUB_SERIE'
      Size = 10
    end
    object sds_sped_nf_entCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nf_entSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 15
    end
  end
  object Dts_sped_nf_ent: TDataSource
    DataSet = sds_sped_nf_ent
    Left = 24
    Top = 280
  end
  object Dts_sped_nf_ent_itens: TDataSource
    DataSet = sds_sped_nf_ent_itens
    Left = 112
    Top = 272
  end
  object sds_sped_nf_ent_itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_NOTAFISCAIS_ITENS_SPED'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_NOTA'
    MasterFields = 'CODIGO_NOTA'
    MasterSource = Dts_sped_nf_ent
    PacketRecords = 0
    Params = <>
    Left = 136
    Top = 208
    object sds_sped_nf_ent_itensCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Required = True
    end
    object sds_sped_nf_ent_itensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object sds_sped_nf_ent_itensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object sds_sped_nf_ent_itensCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object sds_sped_nf_ent_itensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sds_sped_nf_ent_itensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object sds_sped_nf_ent_itensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nf_ent_itensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object sds_sped_nf_ent_itensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object sds_sped_nf_ent_itensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object sds_sped_nf_ent_itensVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      Precision = 15
      Size = 8
    end
    object sds_sped_nf_ent_itensVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_sped_nf_ent_itensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object sds_sped_nf_ent_itensDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object sds_sped_nf_ent_itensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object sds_sped_nf_ent_itensQUANT_FRACIONADA: TFMTBCDField
      FieldName = 'QUANT_FRACIONADA'
      Precision = 15
      Size = 8
    end
    object sds_sped_nf_ent_itensLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object sds_sped_nf_ent_itensMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object sds_sped_nf_ent_itensBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itensUNIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'UNIDADE'
      LookupDataSet = DM.SDS_Unidades
      LookupKeyFields = 'ABREVIATURA'
      LookupResultField = 'CODIGO'
      KeyFields = 'DESC_UNIDADE'
      Lookup = True
    end
    object sds_sped_nf_ent_itensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object sds_sped_nf_ent_itensCFOP_EST_COMPRA: TStringField
      FieldName = 'CFOP_EST_COMPRA'
      Size = 4
    end
    object sds_sped_nf_ent_itensCST_COMPRA: TStringField
      FieldName = 'CST_COMPRA'
      Size = 3
    end
  end
  object Sds_sped_nfe: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_NFE_SAIDA order by nr_nota asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 16
    Top = 336
    object Sds_sped_nfeN_SEQUENCIA: TIntegerField
      FieldName = 'N_SEQUENCIA'
      Required = True
    end
    object Sds_sped_nfeCD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
    end
    object Sds_sped_nfeNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object Sds_sped_nfeCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Sds_sped_nfeFL_IMPRESSO: TStringField
      FieldName = 'FL_IMPRESSO'
      Size = 1
    end
    object Sds_sped_nfeSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object Sds_sped_nfeCD_CFOP: TIntegerField
      FieldName = 'CD_CFOP'
    end
    object Sds_sped_nfeDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object Sds_sped_nfeDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object Sds_sped_nfeVL_ACRESCIMOS: TFMTBCDField
      FieldName = 'VL_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_DESCONTOS: TFMTBCDField
      FieldName = 'VL_DESCONTOS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_MERCADORIAS: TFMTBCDField
      FieldName = 'VL_MERCADORIAS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_SERVICOS: TFMTBCDField
      FieldName = 'VL_SERVICOS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeCOD_PGTO: TIntegerField
      FieldName = 'COD_PGTO'
    end
    object Sds_sped_nfeVL_AVISTA: TFMTBCDField
      FieldName = 'VL_AVISTA'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_PRAZO: TFMTBCDField
      FieldName = 'VL_PRAZO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfePESO_TOTAL: TFMTBCDField
      FieldName = 'PESO_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeQT_PECAS: TFMTBCDField
      FieldName = 'QT_PECAS'
      Precision = 15
      Size = 8
    end
    object Sds_sped_nfeCFOP_DESC: TStringField
      FieldName = 'CFOP_DESC'
      Size = 40
    end
    object Sds_sped_nfeCD_TRANSPORTADORA: TIntegerField
      FieldName = 'CD_TRANSPORTADORA'
    end
    object Sds_sped_nfeUF_ORIGEM: TStringField
      FieldName = 'UF_ORIGEM'
      Size = 2
    end
    object Sds_sped_nfeUF_DESTINO: TStringField
      FieldName = 'UF_DESTINO'
      Size = 2
    end
    object Sds_sped_nfePESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_SEGURO: TFMTBCDField
      FieldName = 'VL_SEGURO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeTP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 1
    end
    object Sds_sped_nfeQT_VOLUMES: TFMTBCDField
      FieldName = 'QT_VOLUMES'
      Precision = 15
      Size = 8
    end
    object Sds_sped_nfeESPECIE_VOLUMES: TStringField
      FieldName = 'ESPECIE_VOLUMES'
      Size = 15
    end
    object Sds_sped_nfeMARCA_VOLUMES: TStringField
      FieldName = 'MARCA_VOLUMES'
      Size = 15
    end
    object Sds_sped_nfeNR_VOLUMES: TIntegerField
      FieldName = 'NR_VOLUMES'
    end
    object Sds_sped_nfeCD_TIPOCOBR: TIntegerField
      FieldName = 'CD_TIPOCOBR'
    end
    object Sds_sped_nfeCD_FUNCIONARIO: TIntegerField
      FieldName = 'CD_FUNCIONARIO'
    end
    object Sds_sped_nfeDT_ATZ: TDateField
      FieldName = 'DT_ATZ'
    end
    object Sds_sped_nfePLACA_TRANSP: TStringField
      FieldName = 'PLACA_TRANSP'
      Size = 8
    end
    object Sds_sped_nfeUF_PLACA_TRANSP: TStringField
      FieldName = 'UF_PLACA_TRANSP'
      Size = 2
    end
    object Sds_sped_nfeVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeNR_PEDIDO: TIntegerField
      FieldName = 'NR_PEDIDO'
    end
    object Sds_sped_nfeVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_DESCONTO_ITEM: TFMTBCDField
      FieldName = 'VL_DESCONTO_ITEM'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ISENTO_ITENS: TFMTBCDField
      FieldName = 'VL_ISENTO_ITENS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_OUTROS_ITENS: TFMTBCDField
      FieldName = 'VL_OUTROS_ITENS'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeNR_PROTOCOLO_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_NFE'
      Size = 15
    end
    object Sds_sped_nfeDT_PROCESSAMENTO_NFE: TDateField
      FieldName = 'DT_PROCESSAMENTO_NFE'
    end
    object Sds_sped_nfeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Sds_sped_nfeNR_LOTE_NFE: TStringField
      FieldName = 'NR_LOTE_NFE'
      Size = 15
    end
    object Sds_sped_nfeNR_RECIBO_NFE: TStringField
      FieldName = 'NR_RECIBO_NFE'
      Size = 15
    end
    object Sds_sped_nfeNR_PROTOCOLO_CANC_NFE: TStringField
      FieldName = 'NR_PROTOCOLO_CANC_NFE'
      Size = 15
    end
    object Sds_sped_nfeCHAVE_ACESSO_NFE: TStringField
      FieldName = 'CHAVE_ACESSO_NFE'
      Size = 44
    end
    object Sds_sped_nfeVL_FRETE_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_FRETE_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ST_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ST_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_CONHECIMENTO: TFMTBCDField
      FieldName = 'VL_ICM_CONHECIMENTO'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeBASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object Sds_sped_nfeCNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      FixedChar = True
    end
    object Sds_sped_nfeNOME_TRANSP: TStringField
      FieldName = 'NOME_TRANSP'
      Size = 50
    end
    object Sds_sped_nfeIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
      Size = 15
    end
    object Sds_sped_nfeEND_TRANSPORTADOR: TStringField
      FieldName = 'END_TRANSPORTADOR'
      Size = 50
    end
    object Sds_sped_nfeCIDADE_TRANSP: TStringField
      FieldName = 'CIDADE_TRANSP'
      Size = 40
    end
    object Sds_sped_nfeUF_TRANSP: TStringField
      FieldName = 'UF_TRANSP'
      Size = 2
    end
    object Sds_sped_nfeTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object Sds_sped_nfeN_NOTA_ENTRADA: TStringField
      FieldName = 'N_NOTA_ENTRADA'
    end
    object Sds_sped_nfeIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      Size = 15
    end
    object Sds_sped_nfePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object Sds_sped_nfePAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 50
    end
    object Sds_sped_nfeCOD_SPED: TIntegerField
      FieldName = 'COD_SPED'
    end
    object Sds_sped_nfeNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object Sds_sped_nfeIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object Sds_sped_nfeCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object Sds_sped_nfeCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Size = 7
    end
    object Sds_sped_nfeLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object Sds_sped_nfeNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Sds_sped_nfeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 60
    end
    object Sds_sped_nfeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object Sds_sped_nfeSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 11
    end
    object Sds_sped_nfePAIS: TStringField
      FieldName = 'PAIS'
      Size = 11
    end
    object Sds_sped_nfeCOD_CLIENTE1: TIntegerField
      FieldName = 'COD_CLIENTE1'
    end
    object Sds_sped_nfeCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object Sds_sped_nfeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Sds_sped_nfeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Sds_sped_nfeSTATUS_INUTILIZADO: TStringField
      FieldName = 'STATUS_INUTILIZADO'
      Size = 1
    end
    object Sds_sped_nfeSTATUS_CANCELADO: TStringField
      FieldName = 'STATUS_CANCELADO'
      Size = 1
    end
    object Sds_sped_nfeSTATUS_EMAIL: TStringField
      FieldName = 'STATUS_EMAIL'
      Size = 1
    end
    object Sds_sped_nfeDEPEC: TStringField
      FieldName = 'DEPEC'
      Size = 1
    end
    object Sds_sped_nfeCHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 50
    end
    object Sds_sped_nfeSTATUS_RETORNO: TStringField
      FieldName = 'STATUS_RETORNO'
      Size = 1
    end
    object Sds_sped_nfeJUSTIFICATIVA_CANCEL_INUTIL: TStringField
      FieldName = 'JUSTIFICATIVA_CANCEL_INUTIL'
      Size = 255
    end
  end
  object Dts_sped_nfe: TDataSource
    DataSet = Sds_sped_nfe
    Left = 16
    Top = 392
  end
  object Dts_sped_nfe_itens: TDataSource
    DataSet = sds_sped_nfe_itens
    Left = 112
    Top = 392
  end
  object sds_sped_nfe_itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_NFE_ITENS_SAIDA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = Dts_sped_nfe
    PacketRecords = 0
    Params = <>
    Left = 112
    Top = 336
    object sds_sped_nfe_itensNR_SEQUENCIA: TIntegerField
      FieldName = 'NR_SEQUENCIA'
      Required = True
    end
    object sds_sped_nfe_itensNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
      Required = True
    end
    object sds_sped_nfe_itensCD_CLIENTE: TIntegerField
      FieldName = 'CD_CLIENTE'
    end
    object sds_sped_nfe_itensCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object sds_sped_nfe_itensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 11
    end
    object sds_sped_nfe_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object sds_sped_nfe_itensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object sds_sped_nfe_itensQT_PRODUTO: TFMTBCDField
      FieldName = 'QT_PRODUTO'
      Precision = 15
      Size = 8
    end
    object sds_sped_nfe_itensVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensDT_LANCAMENTO: TDateField
      FieldName = 'DT_LANCAMENTO'
    end
    object sds_sped_nfe_itensPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object sds_sped_nfe_itensCD_ATUALIZACAO: TIntegerField
      FieldName = 'CD_ATUALIZACAO'
    end
    object sds_sped_nfe_itensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nfe_itensPC_RED_BASE_ICM: TFMTBCDField
      FieldName = 'PC_RED_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ISS: TFMTBCDField
      FieldName = 'ALIQ_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensDT_ALTERACAO: TDateField
      FieldName = 'DT_ALTERACAO'
    end
    object sds_sped_nfe_itensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 3
    end
    object sds_sped_nfe_itensPERC_DESCONTO: TFMTBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensCD_CONTA: TIntegerField
      FieldName = 'CD_CONTA'
    end
    object sds_sped_nfe_itensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_sped_nfe_itensVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_CONTABIL: TFMTBCDField
      FieldName = 'VL_CONTABIL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_OUTROS: TFMTBCDField
      FieldName = 'VL_OUTROS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ISENTO: TFMTBCDField
      FieldName = 'VL_ISENTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_PIS: TFMTBCDField
      FieldName = 'ALIQ_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_PIS: TFMTBCDField
      FieldName = 'VL_BASE_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_COFINS: TFMTBCDField
      FieldName = 'ALIQ_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_COFINS: TFMTBCDField
      FieldName = 'VL_BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ISS: TFMTBCDField
      FieldName = 'VL_BASE_ISS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_IPI: TFMTBCDField
      FieldName = 'VL_BASE_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'ALIQ_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM_PROPRIO_ST: TFMTBCDField
      FieldName = 'VL_ICM_PROPRIO_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensALIQ_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'ALIQ_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensVL_ICM_SUBST_REAL: TFMTBCDField
      FieldName = 'VL_ICM_SUBST_REAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object sds_sped_nfe_itensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object sds_sped_nfe_itensUNIDADE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'UNIDADE'
      LookupDataSet = DM.SDS_Unidades
      LookupKeyFields = 'ABREVIATURA'
      LookupResultField = 'CODIGO'
      KeyFields = 'DESC_UNIDADE'
      Lookup = True
    end
    object sds_sped_nfe_itensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
  end
  object sds_sped_nf_ent_itens_anal: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from V_NOTAS_ITENS_SPED_C190'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_NOTA'
    MasterFields = 'CODIGO_NOTA'
    MasterSource = Dts_sped_nf_ent
    PacketRecords = 0
    Params = <>
    Left = 208
    Top = 232
    object sds_sped_nf_ent_itens_analCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
    end
    object sds_sped_nf_ent_itens_analTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object sds_sped_nf_ent_itens_analCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object sds_sped_nf_ent_itens_analCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
  end
  object Dts_sped_nf_ent_itens_anal: TDataSource
    DataSet = sds_sped_nf_ent_itens_anal
    Left = 208
    Top = 288
  end
  object sds_sped_nfe_itens_anal: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from V_NFE_ITENS_SPED_C190'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'NR_NOTA'
    MasterFields = 'NR_NOTA'
    MasterSource = Dts_sped_nfe
    PacketRecords = 0
    Params = <>
    Left = 208
    Top = 344
    object sds_sped_nfe_itens_analNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object sds_sped_nfe_itens_analCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object sds_sped_nfe_itens_analCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object sds_sped_nfe_itens_analVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_BASE_ICM: TFMTBCDField
      FieldName = 'VL_BASE_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analALIQ_ICM: TFMTBCDField
      FieldName = 'ALIQ_ICM'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVL_BASE_ICM_SUBST: TFMTBCDField
      FieldName = 'VL_BASE_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analALIC_ICM_SUBST: TFMTBCDField
      FieldName = 'ALIC_ICM_SUBST'
      Precision = 15
      Size = 2
    end
    object sds_sped_nfe_itens_analVALOR_ICM_SUBST: TFMTBCDField
      FieldName = 'VALOR_ICM_SUBST'
      Precision = 15
      Size = 2
    end
  end
  object DTs_sped_nfe_itens_anal: TDataSource
    DataSet = sds_sped_nfe_itens_anal
    Left = 208
    Top = 408
  end
  object Sds_Total_z_1: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from SPED_TOTAL_Z'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ECF_CX;DATA'
    MasterFields = 'ECF_CX;DT_COD'
    MasterSource = dts_Red_Z
    PacketRecords = 0
    Params = <>
    Left = 408
    Top = 96
    object Sds_Total_z_1ECF_CX: TIntegerField
      FieldName = 'ECF_CX'
      Required = True
    end
    object Sds_Total_z_1TOTALIZADOR_Z: TStringField
      FieldName = 'TOTALIZADOR_Z'
      Required = True
      Size = 7
    end
    object Sds_Total_z_1DATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object Sds_Total_z_1VALOR_TOTALIZADOR: TFMTBCDField
      FieldName = 'VALOR_TOTALIZADOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object Sds_Total_z_1N_TOTALIZADOR: TStringField
      FieldName = 'N_TOTALIZADOR'
      Size = 2
    end
    object Sds_Total_z_1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Sds_Total_z_1T_SIT_TRIB: TStringField
      FieldName = 'T_SIT_TRIB'
      Size = 6
    end
  end
  object DTS_Total_z_1: TDataSource
    DataSet = Sds_Total_z_1
    Left = 488
    Top = 96
  end
  object Dts_inventario: TDataSource
    DataSet = Sds_inventario
    Left = 488
    Top = 280
  end
  object Sds_inventario: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from SPED_INVENTARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 384
    Top = 288
    object Sds_inventarioID_INV: TIntegerField
      FieldName = 'ID_INV'
      Required = True
    end
    object Sds_inventarioDT_INV: TDateField
      FieldName = 'DT_INV'
      Required = True
    end
    object Sds_inventarioDT_REG: TDateField
      FieldName = 'DT_REG'
      Required = True
    end
    object Sds_inventarioVL_INV: TFMTBCDField
      FieldName = 'VL_INV'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object Dts_inventario_itens: TDataSource
    DataSet = Sds_Inventario_itens
    Left = 488
    Top = 336
  end
  object Sds_Inventario_itens: TSimpleDataSet
    Aggregates = <>
    AggregatesActive = True
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from SPED_INVENTARIO_ITENS ORDER BY SEQUENCIA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_INV'
    MasterFields = 'ID_INV'
    MasterSource = Dts_inventario
    PacketRecords = 0
    Params = <>
    Left = 384
    Top = 344
    object Sds_Inventario_itensSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object Sds_Inventario_itensID_INV: TIntegerField
      FieldName = 'ID_INV'
      Required = True
    end
    object Sds_Inventario_itensCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Required = True
    end
    object Sds_Inventario_itensUND_ITEN: TStringField
      FieldName = 'UND_ITEN'
      Required = True
      Size = 1
    end
    object Sds_Inventario_itensVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Inventario_itensVL_ITEM_TOTAL: TFMTBCDField
      FieldName = 'VL_ITEM_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Inventario_itensTXT_COMPLEN: TStringField
      FieldName = 'TXT_COMPLEN'
      Size = 50
    end
    object Sds_Inventario_itensCOD_CONTA: TStringField
      FieldName = 'COD_CONTA'
      FixedChar = True
      Size = 10
    end
    object Sds_Inventario_itensQTD_ITEN: TFMTBCDField
      FieldName = 'QTD_ITEN'
      Precision = 15
      Size = 3
    end
    object Sds_Inventario_itensCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 13
    end
  end
  object SDS_V_INVENTARIO: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_INVENTARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 384
    Top = 400
    object SDS_V_INVENTARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_V_INVENTARIODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_V_INVENTARIOPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object SDS_V_INVENTARIOUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object SDS_V_INVENTARIOPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object SDS_V_INVENTARIOESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
      Size = 8
    end
    object SDS_V_INVENTARIOVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 15
      Size = 6
    end
    object SDS_V_INVENTARIOVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Precision = 15
      Size = 6
    end
    object SDS_V_INVENTARIOVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 15
      Size = 6
    end
    object SDS_V_INVENTARIOCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      FixedChar = True
      Size = 13
    end
  end
  object Dts_v_inventario: TDataSource
    DataSet = SDS_V_INVENTARIO
    Left = 488
    Top = 400
  end
  object DTS_PRODUTOS: TDataSource
    DataSet = SDS_PRODUTOS
    Left = 312
    Top = 152
  end
  object SDS_PRODUTOS: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_PRODUTOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 224
    Top = 152
    object SDS_PRODUTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PRODUTOSCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 13
    end
    object SDS_PRODUTOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_PRODUTOSUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object SDS_PRODUTOSTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object SDS_PRODUTOSCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      Size = 8
    end
    object SDS_PRODUTOSMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_PRODUTOSANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
  end
  object DTS_Sped_cupons_itens_B: TDataSource
    DataSet = SDS_Sped_cupons_itens_B
    Left = 584
    Top = 296
  end
  object SDS_Sped_cupons_itens_B: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *   from V_SPED_ITENS_C425 order by data_pedido asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'DATA_PEDIDO;SIT_TRIBUTARIA'
    MasterFields = 'DATA;T_SIT_TRIB'
    MasterSource = DTS_Total_z_1
    PacketRecords = 0
    Params = <>
    Left = 584
    Top = 240
    object SDS_Sped_cupons_itens_BDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_Sped_cupons_itens_BCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Sped_cupons_itens_BCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_Sped_cupons_itens_BQTD: TFMTBCDField
      FieldName = 'QTD'
      Precision = 15
      Size = 8
    end
    object SDS_Sped_cupons_itens_BTOTAL_ITEN: TFMTBCDField
      FieldName = 'TOTAL_ITEN'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itens_BVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itens_BVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Sped_cupons_itens_BSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_Sped_cupons_itens_BCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
  end
  object Sds_pis_Cofins: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_TOTAL_PIS_COFINS order By DATA_PEDIDO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'DATA_PEDIDO'
    MasterFields = 'DATA'
    MasterSource = DTS_Total_z_1
    PacketRecords = 0
    Params = <>
    Left = 344
    Top = 560
    object Sds_pis_CofinsDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Sds_pis_CofinsVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_pis_CofinsVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
  end
  object Dts_pis_Cofins: TDataSource
    DataSet = Sds_pis_Cofins
    Left = 440
    Top = 560
  end
  object SDS_C490: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_SPED_C490 ORDER By DATA_PEDIDO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'DATA_PEDIDO'
    MasterFields = 'DATA'
    MasterSource = DTS_Total_z_1
    PacketRecords = 0
    Params = <>
    Left = 488
    Top = 456
    object SDS_C490DATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SDS_C490VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_C490SIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_C490PERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_C490BASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_C490VALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_C490CFOP_EST_VENDA: TStringField
      FieldName = 'CFOP_EST_VENDA'
      Size = 4
    end
    object SDS_C490CST_VENDA: TStringField
      FieldName = 'CST_VENDA'
      Size = 3
    end
    object SDS_C490VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
  end
  object DTS_C490: TDataSource
    DataSet = SDS_C490
    Left = 488
    Top = 512
  end
  object Dts_Afericao: TDataSource
    DataSet = Sds_Afericao
    Left = 88
    Top = 496
  end
  object Sds_Afericao: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from AFERICAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 16
    Top = 504
    object Sds_AfericaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_AfericaoDATA: TDateField
      FieldName = 'DATA'
    end
    object Sds_AfericaoCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Sds_AfericaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object Sds_AfericaoVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Precision = 15
      Size = 2
    end
    object Sds_AfericaoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_AfericaoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_AfericaoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_AfericaoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object Sds_AfericaoCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
    end
    object Sds_AfericaoCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
    end
    object Sds_AfericaoID_BICO: TStringField
      FieldName = 'ID_BICO'
      Size = 2
    end
  end
  object ProxCod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(codigo) as N_CODIGO FROM AFERICAO')
    SQLConnection = DM.SQLC
    Left = 16
    Top = 440
    object ProxCodN_CODIGO: TIntegerField
      FieldName = 'N_CODIGO'
    end
  end
  object DTS_BuscaAfericao: TDataSource
    DataSet = QBuscaAfericao
    Left = 96
    Top = 552
  end
  object QBuscaAfericao: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 
      'SELECT A.*, P.DESCRICAO, P.CODIGO_BARRAS, p.Preco_venda, p.preco' +
      '_venda2, p.Preco_custo'#13#10'FROM afericao A'#13#10'INNER JOIN PRODUTOS P'#13#10 +
      'ON (A.CODIGO_PROD = P.CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 24
    Top = 560
    object QBuscaAfericaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QBuscaAfericaoDATA: TDateField
      FieldName = 'DATA'
    end
    object QBuscaAfericaoCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object QBuscaAfericaoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object QBuscaAfericaoVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object QBuscaAfericaoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QBuscaAfericaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object QBuscaAfericaoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object QBuscaAfericaoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBuscaAfericaoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object Sds_valeTroco: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from VALETROCO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 184
    Top = 496
    object Sds_valeTrocoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Sds_valeTrocoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_valeTrocoCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 18
    end
    object Sds_valeTrocoDATA: TDateField
      FieldName = 'DATA'
    end
    object Sds_valeTrocoHORA: TTimeField
      FieldName = 'HORA'
    end
    object Sds_valeTrocoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Sds_valeTrocoDEBITOCREDITO: TStringField
      FieldName = 'DEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object Sds_valeTrocoTOTAL_VENDA: TFMTBCDField
      FieldName = 'TOTAL_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoTOTAL_PAGO: TFMTBCDField
      FieldName = 'TOTAL_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoVALOR_VALETROCO: TFMTBCDField
      FieldName = 'VALOR_VALETROCO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoVALIDO: TStringField
      FieldName = 'VALIDO'
      FixedChar = True
      Size = 1
    end
    object Sds_valeTrocoSALDO_ATUAL: TFMTBCDField
      FieldName = 'SALDO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_valeTrocoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Sds_valeTrocoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Sds_valeTrocoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Sds_valeTrocoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
  end
  object dts_vale_troco: TDataSource
    DataSet = Sds_valeTroco
    Left = 272
    Top = 496
  end
  object QConsValeTroco: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    SQL.Strings = (
      
        'SELECT V.*, C.NOME_RS, C.CPF_CNPJ, C.ENDERECO, C.NUMERO, C.BAIRR' +
        'O, C.RG_IE, C.APELIDO, C.CIDADE, C.UF'
      'FROM  VALETROCO V'
      'INNER JOIN clientes C'
      'ON (V.COD_CLIENTE = C.CODIGO)')
    Left = 184
    Top = 560
    object QConsValeTrocoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'VALETROCO.COD_EMPRESA'
      Required = True
    end
    object QConsValeTrocoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'VALETROCO.CODIGO'
      Required = True
    end
    object QConsValeTrocoCUPOM: TIBStringField
      FieldName = 'CUPOM'
      Origin = 'VALETROCO.CUPOM'
      Size = 18
    end
    object QConsValeTrocoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'VALETROCO.DATA'
    end
    object QConsValeTrocoHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'VALETROCO.HORA'
    end
    object QConsValeTrocoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'VALETROCO.COD_CLIENTE'
    end
    object QConsValeTrocoDEBITOCREDITO: TIBStringField
      FieldName = 'DEBITOCREDITO'
      Origin = 'VALETROCO.DEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object QConsValeTrocoTOTAL_VENDA: TIBBCDField
      FieldName = 'TOTAL_VENDA'
      Origin = 'VALETROCO.TOTAL_VENDA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoTOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = 'VALETROCO.TOTAL_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALOR_UTILIZADO: TIBBCDField
      FieldName = 'VALOR_UTILIZADO'
      Origin = 'VALETROCO.VALOR_UTILIZADO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALOR_VALETROCO: TIBBCDField
      FieldName = 'VALOR_VALETROCO'
      Origin = 'VALETROCO.VALOR_VALETROCO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoVALIDO: TIBStringField
      FieldName = 'VALIDO'
      Origin = 'VALETROCO.VALIDO'
      FixedChar = True
      Size = 1
    end
    object QConsValeTrocoSALDO_ATUAL: TIBBCDField
      FieldName = 'SALDO_ATUAL'
      Origin = 'VALETROCO.SALDO_ATUAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QConsValeTrocoNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'VALETROCO.NOME_CLIENTE'
      Size = 50
    end
    object QConsValeTrocoUSERCAD: TIBStringField
      FieldName = 'USERCAD'
      Origin = 'VALETROCO.USERCAD'
    end
    object QConsValeTrocoDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'VALETROCO.DATACAD'
    end
    object QConsValeTrocoNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 50
    end
    object QConsValeTrocoCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CLIENTES.CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object QConsValeTrocoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Size = 44
    end
    object QConsValeTrocoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'CLIENTES.NUMERO'
      Size = 6
    end
    object QConsValeTrocoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTES.BAIRRO'
      Size = 30
    end
    object QConsValeTrocoRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = 'CLIENTES.RG_IE'
      FixedChar = True
      Size = 15
    end
    object QConsValeTrocoAPELIDO: TIBStringField
      FieldName = 'APELIDO'
      Origin = 'CLIENTES.APELIDO'
      Size = 30
    end
    object QConsValeTrocoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTES.CIDADE'
      Size = 40
    end
    object QConsValeTrocoUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CLIENTES.UF'
      Size = 2
    end
    object QConsValeTrocoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'VALETROCO.COD_VENDA'
    end
  end
  object DtsConsValeTroco: TDataSource
    AutoEdit = False
    DataSet = QConsValeTroco
    Left = 256
    Top = 560
  end
  object dts_valetroco_pagto: TDataSource
    DataSet = sds_valeTroco_pagto
    Left = 408
    Top = 491
  end
  object sds_valeTroco_pagto: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from VALE_TROCO_PAGTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 344
    Top = 475
    object sds_valeTroco_pagtoCOD_VALE: TIntegerField
      FieldName = 'COD_VALE'
      Required = True
    end
    object sds_valeTroco_pagtoDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sds_valeTroco_pagtoSALDO_ANTERIOR: TFMTBCDField
      FieldName = 'SALDO_ANTERIOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_valeTroco_pagtoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_valeTroco_pagtoSALDO_ATUAL: TFMTBCDField
      FieldName = 'SALDO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_Unidades: TDataSource
    DataSet = SDS_Unidades
    Left = 568
    Top = 85
  end
  object SDS_Unidades: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from  UNIDADES'
    DataSet.DataSource = DTS_Unidades
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 576
    Top = 34
    object SDS_UnidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object SDS_UnidadesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_UnidadesABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Size = 6
    end
    object SDS_UnidadesDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
  end
end

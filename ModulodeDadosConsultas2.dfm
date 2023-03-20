object DMC2: TDMC2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 375
  Top = 67
  Height = 625
  Width = 884
  object DTSP_CPNA_Data: TDataSetProvider
    DataSet = SQLD_CPNA_Data
    Left = 79
    Top = 40
  end
  object CDS_CPNA_Data: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPNA_Data'
    Left = 82
    Top = 84
    object CDS_CPNA_DataCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPNA_DataDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPNA_DataDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPNA_DataDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPNA_DataUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPNA_DataTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPNA_DataFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPNA_DataDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPNA_DataMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPNA_DataJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPNA_DataVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPNA_DataN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPNA_DataPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object CDS_CPNA_DataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPNA_DataAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object Dts_CPNA_Data: TDataSource
    DataSet = CDS_CPNA_Data
    Left = 80
    Top = 128
  end
  object SQLD_CPNA_FOR: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_NA_FOR(:PARAM, :DATAI, :DATAF) ord' +
      'er by DATA_VENCIMENTO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAF'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 168
    Top = 65530
    object SQLD_CPNA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPNA_FORDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPNA_FORDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPNA_FORDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPNA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPNA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPNA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPNA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SQLD_CPNA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object SQLD_CPNA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPNA_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPNA_FORSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPNA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTSP_CPNA_FOR: TDataSetProvider
    DataSet = SQLD_CPNA_FOR
    Left = 175
    Top = 40
  end
  object CDS_CPNA_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPNA_FOR'
    Left = 176
    Top = 84
    object CDS_CPNA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPNA_FORDATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPNA_FORDATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPNA_FORDATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPNA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPNA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPNA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPNA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPNA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPNA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPNA_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPNA_FORSERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPNA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object Dts_CPNA_FOR: TDataSource
    DataSet = CDS_CPNA_FOR
    Left = 168
    Top = 128
  end
  object DTSP_CPA_DATA: TDataSetProvider
    DataSet = SQLD_CPA_DATA
    Left = 247
    Top = 35
  end
  object CDS_CPA_DATA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPA_DATA'
    Left = 255
    Top = 84
    object CDS_CPA_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPA_DATADATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPA_DATADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPA_DATADATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPA_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPA_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPA_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPA_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPA_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
      Size = 2
    end
    object CDS_CPA_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPA_DATAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object CDS_CPA_DATASERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPA_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_CPA_DATA: TDataSource
    DataSet = CDS_CPA_DATA
    Left = 255
    Top = 128
  end
  object SQLD_CPA_FOR: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_A_FOR(:PARAM,:DATAI,:DATAF) order ' +
      'by DATA_VENCIMENTO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAF'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 341
    Top = 65533
    object SQLD_CPA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPA_FORDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPA_FORDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPA_FORDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPA_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPA_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPA_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPA_FORSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTSP_CPA_FOR: TDataSetProvider
    DataSet = SQLD_CPA_FOR
    Left = 341
    Top = 40
  end
  object CDS_CPA_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPA_FOR'
    Left = 342
    Top = 84
    object CDS_CPA_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPA_FORDATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPA_FORDATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPA_FORDATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPA_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPA_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPA_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPA_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPA_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPA_FORPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPA_FORSERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPA_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_CPA_FOR: TDataSource
    DataSet = CDS_CPA_FOR
    Left = 342
    Top = 128
  end
  object DTSP_CPP_DATA: TDataSetProvider
    DataSet = SQLD_CPP_DATA
    Left = 428
    Top = 40
  end
  object CDS_CPP_DATA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPP_DATA'
    Left = 429
    Top = 84
    object CDS_CPP_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPP_DATADATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPP_DATADATA_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPP_DATADATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPP_DATADATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object CDS_CPP_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPP_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPP_DATAUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_CPP_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPP_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPP_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPP_DATAPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPP_DATASERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPP_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_CPP_DATA: TDataSource
    DataSet = CDS_CPP_DATA
    Left = 429
    Top = 128
  end
  object SQLD_CPP_FOR: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_P_FOR(:PARAM,:DATAI,:DATAF) order ' +
      'by DATA_VENCIMENTO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATAF'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 549
    Top = 5
    object SQLD_CPP_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPP_FORDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPP_FORDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPP_FORDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPP_FORDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_CPP_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPP_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPP_FORUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_CPP_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPP_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPP_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPP_FORPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
    end
    object SQLD_CPP_FORSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPP_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTSP_CPP_FOR: TDataSetProvider
    DataSet = SQLD_CPP_FOR
    Left = 549
    Top = 48
  end
  object CDS_CPP_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPP_FOR'
    Left = 550
    Top = 92
    object CDS_CPP_FORCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPP_FORDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPP_FORDATA_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPP_FORDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CPP_FORDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object CDS_CPP_FORUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_CPP_FORUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object CDS_CPP_FORUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_CPP_FORTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object CDS_CPP_FORFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_CPP_FORDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPP_FORN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPP_FORPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPP_FORSERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPP_FORAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_CPP_FOR: TDataSource
    DataSet = CDS_CPP_FOR
    Left = 550
    Top = 136
  end
  object SQLD_MOV_CAIXA: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_MOV_CAIXA_DATA(:Datai:,:Dataf) order by CODIGO ' +
      'ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 75
    Top = 180
    object SQLD_MOV_CAIXADATA: TDateField
      FieldName = 'DATA'
    end
    object SQLD_MOV_CAIXAHISTORICO: TStringField
      DisplayWidth = 150
      FieldName = 'HISTORICO'
      Size = 150
    end
    object SQLD_MOV_CAIXAUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object SQLD_MOV_CAIXAVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 8
    end
    object SQLD_MOV_CAIXAVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 8
    end
    object SQLD_MOV_CAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object DTSP_MOV_CAIXA: TDataSetProvider
    DataSet = SQLD_MOV_CAIXA
    Left = 75
    Top = 224
  end
  object CDS_MOV_CAIXA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_MOV_CAIXA'
    Left = 76
    Top = 272
    object CDS_MOV_CAIXADATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_MOV_CAIXAHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_MOV_CAIXAUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object CDS_MOV_CAIXAVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_MOV_CAIXAVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_MOV_CAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
  object DTS_MOV_CAIXA: TDataSource
    DataSet = CDS_MOV_CAIXA
    Left = 76
    Top = 320
  end
  object SQLD_MOV_BANCO: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_MOV_BANCO_DATA(:Datai:,:Dataf) order by CODIGO ' +
      'ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 179
    Top = 180
    object SQLD_MOV_BANCOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object StringField1: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object StringField2: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 8
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 8
    end
    object SQLD_MOV_BANCOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLD_MOV_BANCOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SQLD_MOV_BANCONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTSP_MOV_BANCO: TDataSetProvider
    DataSet = SQLD_MOV_BANCO
    Left = 179
    Top = 224
  end
  object CDS_MOV_BANCO: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_MOV_BANCO'
    Left = 180
    Top = 272
    object CDS_MOV_BANCOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_MOV_BANCODATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_MOV_BANCOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object CDS_MOV_BANCOUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object CDS_MOV_BANCOVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_MOV_BANCOVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_MOV_BANCOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CDS_MOV_BANCOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object CDS_MOV_BANCONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_MOV_BANCO: TDataSource
    DataSet = CDS_MOV_BANCO
    Left = 180
    Top = 320
  end
  object SQLD_Mov_CaixaEspecifico: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_MOV_CAIXA_ESPECIFICO(:Datai:,:Dataf,:Param) ord' +
      'er by CODIGO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 304
    Top = 180
    object DateField2: TDateField
      FieldName = 'DATA'
    end
    object StringField3: TStringField
      DisplayWidth = 150
      FieldName = 'HISTORICO'
      Size = 150
    end
    object StringField4: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 8
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 8
    end
  end
  object DTSP_Mov_CaixaEspecifico: TDataSetProvider
    DataSet = SQLD_Mov_CaixaEspecifico
    Left = 303
    Top = 226
  end
  object CDS_Mov_CaixaEspecifico: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Mov_CaixaEspecifico'
    Left = 303
    Top = 272
    object CDS_Mov_CaixaEspecificoDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_Mov_CaixaEspecificoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_Mov_CaixaEspecificoUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object CDS_Mov_CaixaEspecificoVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_Mov_CaixaEspecificoVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 8
    end
  end
  object DTS_Mov_CaixaEspecifico: TDataSource
    DataSet = CDS_Mov_CaixaEspecifico
    Left = 303
    Top = 320
  end
  object SQLD_Mov_BancoEspecifico: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_MOV_BANCO_ESPECIFICO(:Datai:,:Dataf, :Param) or' +
      'der by CODIGO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 448
    Top = 181
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object DateField3: TDateField
      FieldName = 'DATA'
    end
    object StringField5: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object StringField6: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 8
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 8
    end
    object StringField7: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object StringField8: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTSP_Mov_BancoEspecifico: TDataSetProvider
    DataSet = SQLD_Mov_BancoEspecifico
    Left = 448
    Top = 225
  end
  object CDS_Mov_BancoEspecifico: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Mov_BancoEspecifico'
    Left = 449
    Top = 273
    object CDS_Mov_BancoEspecificoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_Mov_BancoEspecificoDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_Mov_BancoEspecificoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object CDS_Mov_BancoEspecificoUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object CDS_Mov_BancoEspecificoVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_Mov_BancoEspecificoVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_Mov_BancoEspecificoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CDS_Mov_BancoEspecificoCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object CDS_Mov_BancoEspecificoNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_Mov_BancoEspecifico: TDataSource
    DataSet = CDS_Mov_BancoEspecifico
    Left = 449
    Top = 321
  end
  object SQLD_ChequesBaixarPeriodo: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_BAIXAR_PERIODO(:Datai:,:Dataf) order by' +
      ' DATA_DEPOSITO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 594
    Top = 181
    object SQLD_ChequesBaixarPeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_ChequesBaixarPeriodoCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SQLD_ChequesBaixarPeriodoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SQLD_ChequesBaixarPeriodoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SQLD_ChequesBaixarPeriodoCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SQLD_ChequesBaixarPeriodoCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SQLD_ChequesBaixarPeriodoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SQLD_ChequesBaixarPeriodoTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SQLD_ChequesBaixarPeriodoN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SQLD_ChequesBaixarPeriodoQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SQLD_ChequesBaixarPeriodoVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object SQLD_ChequesBaixarPeriodoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SQLD_ChequesBaixarPeriodoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_ChequesBaixarPeriodoDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SQLD_ChequesBaixarPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
  end
  object DTSP_ChequesBaixarPeriodo: TDataSetProvider
    DataSet = SQLD_ChequesBaixarPeriodo
    Left = 594
    Top = 225
  end
  object CDS_ChequesBaixarPeriodo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesBaixarPeriodo'
    Left = 659
    Top = 289
    object CDS_ChequesBaixarPeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_ChequesBaixarPeriodoCODIGO_COMPRA: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object CDS_ChequesBaixarPeriodoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object CDS_ChequesBaixarPeriodoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object CDS_ChequesBaixarPeriodoCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object CDS_ChequesBaixarPeriodoCONTA_DESDE: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object CDS_ChequesBaixarPeriodoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object CDS_ChequesBaixarPeriodoTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object CDS_ChequesBaixarPeriodoN_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object CDS_ChequesBaixarPeriodoQNT: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object CDS_ChequesBaixarPeriodoVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_ChequesBaixarPeriodoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object CDS_ChequesBaixarPeriodoDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_ChequesBaixarPeriodoDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object CDS_ChequesBaixarPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
  end
  object DTS_ChequesBaixarPeriodo: TDataSource
    DataSet = CDS_ChequesBaixarPeriodo
    Left = 596
    Top = 321
  end
  object SQLD_ChequesBaixarTitular: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_BAIXAR_TITULAR(:Param) order by DATA_DE' +
      'POSITO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 746
    Top = 181
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField9: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField10: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField4: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object StringField12: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField13: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField14: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField15: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object StringField16: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object DateField5: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object DateField6: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object StringField17: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
  end
  object DTSP_ChequesBaixarTitular: TDataSetProvider
    DataSet = SQLD_ChequesBaixarTitular
    Left = 738
    Top = 225
  end
  object CDS_ChequesBaixarTitular: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesBaixarTitular'
    Left = 739
    Top = 273
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField6: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField18: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField19: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField20: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField7: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object StringField21: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField22: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField23: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField24: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object StringField25: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object DateField8: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object DateField9: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object StringField26: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
  end
  object DTS_ChequesBaixarTitular: TDataSource
    DataSet = CDS_ChequesBaixarTitular
    Left = 740
    Top = 321
  end
  object SQLD_ChequesRetornadosPeriodo: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_RETORNADOS_PERIODO(:Datai:,:Dataf) orde' +
      'r by DATA_RETORNO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 99
    Top = 366
    object SQLD_ChequesRetornadosPeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_ChequesRetornadosPeriodoCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SQLD_ChequesRetornadosPeriodoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SQLD_ChequesRetornadosPeriodoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SQLD_ChequesRetornadosPeriodoCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SQLD_ChequesRetornadosPeriodoCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SQLD_ChequesRetornadosPeriodoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SQLD_ChequesRetornadosPeriodoTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SQLD_ChequesRetornadosPeriodoN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SQLD_ChequesRetornadosPeriodoQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SQLD_ChequesRetornadosPeriodoVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object SQLD_ChequesRetornadosPeriodoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SQLD_ChequesRetornadosPeriodoMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SQLD_ChequesRetornadosPeriodoDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SQLD_ChequesRetornadosPeriodoDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SQLD_ChequesRetornadosPeriodoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_ChequesRetornadosPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_ChequesRetornadosPeriodoUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_ChequesRetornadosPeriodoNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SQLD_ChequesRetornadosPeriodoRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTSP_ChequesRetornadosPeriodo: TDataSetProvider
    DataSet = SQLD_ChequesRetornadosPeriodo
    Left = 99
    Top = 409
  end
  object CDS_ChequesRetornadosPeriodo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesRetornadosPeriodo'
    Left = 100
    Top = 457
    object CDS_ChequesRetornadosPeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_ChequesRetornadosPeriodoCODIGO_COMPRA: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object CDS_ChequesRetornadosPeriodoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object CDS_ChequesRetornadosPeriodoAGENCIA: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object CDS_ChequesRetornadosPeriodoCONTA_CORRENTE: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object CDS_ChequesRetornadosPeriodoCONTA_DESDE: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object CDS_ChequesRetornadosPeriodoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object CDS_ChequesRetornadosPeriodoTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object CDS_ChequesRetornadosPeriodoN_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object CDS_ChequesRetornadosPeriodoQNT: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object CDS_ChequesRetornadosPeriodoVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_ChequesRetornadosPeriodoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object CDS_ChequesRetornadosPeriodoRETORNADO_PAGO: TStringField
      Alignment = taCenter
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object CDS_ChequesRetornadosPeriodoMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object CDS_ChequesRetornadosPeriodoDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object CDS_ChequesRetornadosPeriodoDATA_RETORNO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object CDS_ChequesRetornadosPeriodoDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object CDS_ChequesRetornadosPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_ChequesRetornadosPeriodoUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_ChequesRetornadosPeriodoNUMERO_CC: TStringField
      Alignment = taCenter
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChequesRetornadosPeriodo: TDataSource
    DataSet = CDS_ChequesRetornadosPeriodo
    Left = 101
    Top = 505
  end
  object SQLD_ChequesRetornadosBaixar: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_RETORNADOS_A_BAIXAR(:Datai:,:Dataf) ord' +
      'er by DATA_RETORNO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 235
    Top = 351
    object IntegerField7: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField27: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField28: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField29: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField10: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object StringField30: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField31: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField32: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField33: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object StringField34: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField35: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField11: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField12: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object DateField13: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object StringField36: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField37: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField38: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object StringField39: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTSP_ChequesRetornadosBaixar: TDataSetProvider
    DataSet = SQLD_ChequesRetornadosBaixar
    Left = 235
    Top = 394
  end
  object CDS_ChequesRetornadosBaixar: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesRetornadosBaixar'
    Left = 236
    Top = 442
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField10: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField40: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField41: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField42: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField14: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object StringField43: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField44: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField45: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField46: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField10: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object StringField47: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField48: TStringField
      Alignment = taCenter
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object StringField49: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField15: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField16: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object DateField17: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object StringField50: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField51: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField52: TStringField
      Alignment = taCenter
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChequesRetornadosBaixar: TDataSource
    DataSet = CDS_ChequesRetornadosBaixar
    Left = 237
    Top = 490
  end
  object SQLD_ChequesRetornadosBaixados: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_RETORNADOS_BAIXADOS(:Datai:,:Dataf) ord' +
      'er by DATA_RETORNO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 387
    Top = 359
    object IntegerField11: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField12: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField53: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField54: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField55: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField18: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object StringField56: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField57: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField58: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField59: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField11: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object StringField60: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField61: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField19: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField20: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object DateField21: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object StringField62: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField63: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField64: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object StringField65: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTSP_ChequesRetornadosBaixados: TDataSetProvider
    DataSet = SQLD_ChequesRetornadosBaixados
    Left = 387
    Top = 402
  end
  object CDS_ChequesRetornadosBaixados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesRetornadosBaixados'
    Left = 388
    Top = 450
    object IntegerField13: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField14: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField66: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField67: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField68: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField22: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object StringField69: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField70: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField71: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField72: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField12: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object StringField73: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField74: TStringField
      Alignment = taCenter
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object StringField75: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField23: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField24: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object DateField25: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object StringField76: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField77: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField78: TStringField
      Alignment = taCenter
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChequesRetornadosBaixados: TDataSource
    DataSet = CDS_ChequesRetornadosBaixados
    Left = 389
    Top = 498
  end
  object SQLD_ChequesBaixadosPeriodo: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_BAIXADOS_PERIODO(:Datai:,:Dataf) order ' +
      'by DATA_BAIXA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 555
    Top = 359
    object IntegerField15: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField16: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField79: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField80: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField81: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField26: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object StringField82: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField83: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField84: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField85: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField13: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object StringField86: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField87: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField27: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField28: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object DateField29: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object StringField88: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField89: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField90: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object StringField91: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTSP_ChequesBaixadosPeriodo: TDataSetProvider
    DataSet = SQLD_ChequesBaixadosPeriodo
    Left = 555
    Top = 402
  end
  object CDS_ChequesBaixadosPeriodo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesBaixadosPeriodo'
    Left = 556
    Top = 450
    object IntegerField17: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField18: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField92: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField93: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField94: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField30: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object StringField95: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField96: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField97: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField98: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField14: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object StringField99: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField100: TStringField
      Alignment = taCenter
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object StringField101: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField31: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField32: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object DateField33: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object StringField102: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField103: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField104: TStringField
      Alignment = taCenter
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChequesBaixadosPeriodo: TDataSource
    DataSet = CDS_ChequesBaixadosPeriodo
    Left = 557
    Top = 498
  end
  object SQLD_ChequesBaixadosTitular: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_BAIXADOS_TITULAR(:Param) order by DATA_' +
      'BAIXA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 707
    Top = 359
    object IntegerField19: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField20: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField105: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField106: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField107: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField34: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object StringField108: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField109: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField110: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField111: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField15: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object StringField112: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField113: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField35: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField36: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object DateField37: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object StringField114: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField115: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField116: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object StringField117: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTSP_ChequesBaixadosTitular: TDataSetProvider
    DataSet = SQLD_ChequesBaixadosTitular
    Left = 707
    Top = 402
  end
  object CDS_ChequesBaixadosTitular: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesBaixadosTitular'
    Left = 708
    Top = 450
    object IntegerField21: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField22: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField118: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField119: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField120: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField38: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object StringField121: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField122: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField123: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField124: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField16: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object StringField125: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField126: TStringField
      Alignment = taCenter
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object StringField127: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField39: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField40: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object DateField41: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object StringField128: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField129: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField130: TStringField
      Alignment = taCenter
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_ChequesBaixadosTitular: TDataSource
    DataSet = CDS_ChequesBaixadosTitular
    Left = 709
    Top = 498
  end
  object SQLD_ChequesPagPeriodo: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_PAGAMENTO_PERIODO(:Datai:,:Dataf) order' +
      ' by DATA_BAIXA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 658
    Top = 14
    object SQLD_ChequesPagPeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_ChequesPagPeriodoCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SQLD_ChequesPagPeriodoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SQLD_ChequesPagPeriodoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SQLD_ChequesPagPeriodoCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SQLD_ChequesPagPeriodoCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SQLD_ChequesPagPeriodoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SQLD_ChequesPagPeriodoTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SQLD_ChequesPagPeriodoN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SQLD_ChequesPagPeriodoQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SQLD_ChequesPagPeriodoVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object SQLD_ChequesPagPeriodoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SQLD_ChequesPagPeriodoMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SQLD_ChequesPagPeriodoDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SQLD_ChequesPagPeriodoDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SQLD_ChequesPagPeriodoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_ChequesPagPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_ChequesPagPeriodoUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_ChequesPagPeriodoRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTSP_ChequesPagPeriodo: TDataSetProvider
    DataSet = SQLD_ChequesPagPeriodo
    Left = 658
    Top = 57
  end
  object CDS_ChequesPagPeriodo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesPagPeriodo'
    Left = 659
    Top = 105
    object CDS_ChequesPagPeriodoCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
    end
    object CDS_ChequesPagPeriodoCODIGO_COMPRA: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object CDS_ChequesPagPeriodoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object CDS_ChequesPagPeriodoAGENCIA: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object CDS_ChequesPagPeriodoCONTA_CORRENTE: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object CDS_ChequesPagPeriodoCONTA_DESDE: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object CDS_ChequesPagPeriodoTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object CDS_ChequesPagPeriodoTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object CDS_ChequesPagPeriodoN_CHEQUE: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object CDS_ChequesPagPeriodoQNT: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object CDS_ChequesPagPeriodoVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_ChequesPagPeriodoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object CDS_ChequesPagPeriodoMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object CDS_ChequesPagPeriodoDATA_DEPOSITO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object CDS_ChequesPagPeriodoDATA_RETORNO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object CDS_ChequesPagPeriodoDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object CDS_ChequesPagPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_ChequesPagPeriodoUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_ChequesPagPeriodoRETORNADO_PAGO: TStringField
      Alignment = taCenter
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTS_ChequesPagPeriodo: TDataSource
    DataSet = CDS_ChequesPagPeriodo
    Left = 660
    Top = 153
  end
  object SQLD_ChequesPagTitular: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CHEQUES_PAGAMENTO_TITULAR(:Param) order by DATA' +
      '_BAIXA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 744
    Top = 1
    object IntegerField23: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField24: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField131: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField132: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField133: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField42: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object StringField134: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField135: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField136: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField137: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField17: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object StringField138: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField139: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField43: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField44: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object DateField45: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object StringField140: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField141: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object StringField143: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
  end
  object DTSP_ChequesPagTitular: TDataSetProvider
    DataSet = SQLD_ChequesPagTitular
    Left = 744
    Top = 44
  end
  object CDS_ChequesPagTitular: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ChequesPagTitular'
    Left = 745
    Top = 92
    object IntegerField25: TIntegerField
      FieldName = 'CODIGO'
    end
    object IntegerField26: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
    object StringField144: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object StringField145: TStringField
      Alignment = taCenter
      FieldName = 'AGENCIA'
      Size = 15
    end
    object StringField146: TStringField
      Alignment = taCenter
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object DateField46: TDateField
      Alignment = taCenter
      FieldName = 'CONTA_DESDE'
    end
    object StringField147: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object StringField148: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object StringField149: TStringField
      Alignment = taCenter
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object StringField150: TStringField
      Alignment = taCenter
      FieldName = 'QNT'
      Size = 10
    end
    object FMTBCDField18: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object StringField151: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object StringField152: TStringField
      Alignment = taCenter
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object StringField153: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object DateField47: TDateField
      Alignment = taCenter
      FieldName = 'DATA_DEPOSITO'
    end
    object DateField48: TDateField
      Alignment = taCenter
      FieldName = 'DATA_RETORNO'
    end
    object DateField49: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object StringField154: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object StringField155: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
  end
  object DTS_ChequesPagTitular: TDataSource
    DataSet = CDS_ChequesPagTitular
    Left = 746
    Top = 140
  end
  object SQLD_CPNA_Data: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from  V_CONTAS_PAGAR order by data_vencimento asc')
    SQLConnection = DM.SQLC
    Left = 77
    Top = 65529
    object SQLD_CPNA_DataCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPNA_DataDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPNA_DataDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPNA_DataDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPNA_DataUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPNA_DataTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPNA_DataFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPNA_DataDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQLD_CPNA_DataMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 2
    end
    object SQLD_CPNA_DataJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 2
    end
    object SQLD_CPNA_DataVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
      Size = 2
    end
    object SQLD_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 2
    end
    object SQLD_CPNA_DataN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPNA_DataPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object SQLD_CPNA_DataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPNA_DataAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLD_CPA_DATA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_CONTAS_AUTORIZADA order by data_vencimento asc')
    SQLConnection = DM.SQLC
    Left = 251
    Top = 65530
    object SQLD_CPA_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPA_DATADATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPA_DATADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPA_DATADATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPA_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPA_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPA_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPA_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPA_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQLD_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 2
    end
    object SQLD_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 2
    end
    object SQLD_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
      Size = 2
    end
    object SQLD_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 2
    end
    object SQLD_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
      Size = 2
    end
    object SQLD_CPA_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPA_DATAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object SQLD_CPA_DATASERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPA_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLD_CPP_DATA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_CONTAS_PAGAS')
    SQLConnection = DM.SQLC
    Left = 431
    Top = 65532
    object SQLD_CPP_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CPP_DATADATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_CPP_DATADATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_CPP_DATADATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CPP_DATADATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_CPP_DATAUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_CPP_DATAUSUARIO_AUTORIZACAO: TStringField
      FieldName = 'USUARIO_AUTORIZACAO'
    end
    object SQLD_CPP_DATAUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_CPP_DATATIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object SQLD_CPP_DATAFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_CPP_DATADESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_CPP_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_CPP_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_CPP_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_CPP_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_CPP_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_CPP_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPP_DATAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 5
    end
    object SQLD_CPP_DATASERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object SQLD_CPP_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
end

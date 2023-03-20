object DMC4: TDMC4
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 231
  Top = 43
  Height = 566
  Width = 787
  object SQLD_RegVendasGeral: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_REGVENDAS_GERAL(:Datai:,:Dataf) order by DATA  ' +
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
    Left = 55
    object SQLD_RegVendasGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_RegVendasGeralVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasGeralVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasGeralVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_RegVendasGeralDATA: TDateField
      FieldName = 'DATA'
    end
    object SQLD_RegVendasGeralCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_RegVendasGeralNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_RegVendasGeralPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object SQLD_RegVendasGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasGeralOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_RegVendasGeral: TDataSetProvider
    DataSet = SQLD_RegVendasGeral
    Left = 56
    Top = 44
  end
  object CDS_RegVendasGeral: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_RegVendasGeral'
    Left = 58
    Top = 87
    object CDS_RegVendasGeralCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_RegVendasGeralVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasGeralVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasGeralVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_RegVendasGeralDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object CDS_RegVendasGeralCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_RegVendasGeralNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_RegVendasGeralPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object CDS_RegVendasGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasGeralOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_RegVendasGeral: TDataSource
    DataSet = CDS_RegVendasGeral
    Left = 59
    Top = 131
  end
  object SDS_ItensRegVendasGeral: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from REG_PEDIDOS_ITENS ORDER BY DESCRICAO_PRODUTO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_RegVendasGeral
    PacketRecords = 0
    Params = <>
    Left = 60
    Top = 175
    object SDS_ItensRegVendasGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ItensRegVendasGeralCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_ItensRegVendasGeralCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_ItensRegVendasGeralDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_ItensRegVendasGeralPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasGeralDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasGeralQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasGeralPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
  end
  object DTS_ItensRegVendasGeral: TDataSource
    DataSet = SDS_ItensRegVendasGeral
    Left = 61
    Top = 217
  end
  object SQLD_RegVendasCliente: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_RegVendas_CLIENTE(:Datai,:Dataf,:PARAM) order b' +
      'y DATA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 193
    object SQLD_RegVendasClienteCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_RegVendasClienteVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasClienteVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasClienteVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_RegVendasClienteDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object SQLD_RegVendasClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_RegVendasClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_RegVendasClientePAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object SQLD_RegVendasClienteENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasClienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_RegVendasCliente: TDataSetProvider
    DataSet = SQLD_RegVendasCliente
    Left = 194
    Top = 44
  end
  object CDS_RegVendasCliente: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_RegVendasCliente'
    Left = 196
    Top = 87
    object CDS_RegVendasClienteCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_RegVendasClienteVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasClienteVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasClienteVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_RegVendasClienteDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object CDS_RegVendasClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_RegVendasClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_RegVendasClientePAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object CDS_RegVendasClienteENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasClienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_RegVendasCliente: TDataSource
    DataSet = CDS_RegVendasCliente
    Left = 197
    Top = 131
  end
  object SDS_ItensRegVendasCliente: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from REG_PEDIDOS_ITENS ORDER BY DESCRICAO_PRODUTO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_RegVendasCliente
    PacketRecords = 0
    Params = <>
    Left = 198
    Top = 175
    object SDS_ItensRegVendasClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ItensRegVendasClienteCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_ItensRegVendasClienteCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_ItensRegVendasClienteDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_ItensRegVendasClientePRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasClienteDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasClienteQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasClientePRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasClienteENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
  end
  object DTS_ItensRegVendasCliente: TDataSource
    DataSet = SDS_ItensRegVendasCliente
    Left = 199
    Top = 217
  end
  object SQLD_RegVendasUsuario: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_RegVendas_USUARIO(:Datai,:Dataf,:PARAM) order b' +
      'y DATA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 336
    Top = 8
    object SQLD_RegVendasUsuarioCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_RegVendasUsuarioVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasUsuarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasUsuarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_RegVendasUsuarioDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object SQLD_RegVendasUsuarioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_RegVendasUsuarioNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_RegVendasUsuarioPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object SQLD_RegVendasUsuarioENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendasUsuarioOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_RegVendasUsuario: TDataSetProvider
    DataSet = SQLD_RegVendasUsuario
    Left = 345
    Top = 44
  end
  object CDS_RegVendasUsuario: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_RegVendasUsuario'
    Left = 347
    Top = 87
    object CDS_RegVendasUsuarioCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_RegVendasUsuarioVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasUsuarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasUsuarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_RegVendasUsuarioDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object CDS_RegVendasUsuarioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_RegVendasUsuarioNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_RegVendasUsuarioPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object CDS_RegVendasUsuarioENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendasUsuarioOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_RegVendasUsuario: TDataSource
    DataSet = CDS_RegVendasUsuario
    Left = 348
    Top = 131
  end
  object SDS_ItensRegVendasUsuario: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from REG_PEDIDOS_ITENS ORDER BY DESCRICAO_PRODUTO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_RegVendasUsuario
    PacketRecords = 0
    Params = <>
    Left = 349
    Top = 175
    object SDS_ItensRegVendasUsuarioCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ItensRegVendasUsuarioVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasUsuarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasUsuarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_ItensRegVendasUsuarioDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object SDS_ItensRegVendasUsuarioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_ItensRegVendasUsuarioNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SDS_ItensRegVendasUsuarioPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object SDS_ItensRegVendasUsuarioENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendasUsuarioOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_ItensRegVendasUsuario: TDataSource
    DataSet = SDS_ItensRegVendasUsuario
    Left = 350
    Top = 217
  end
  object SQLD_RegVendas_Pagamento: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_RegVendas_PAGAMENTO(:Datai,:Dataf,:PARAM) order' +
      ' by DATA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 509
    object SQLD_RegVendas_PagamentoCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_RegVendas_PagamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendas_PagamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendas_PagamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendas_PagamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_RegVendas_PagamentoDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object SQLD_RegVendas_PagamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_RegVendas_PagamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_RegVendas_PagamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object SQLD_RegVendas_PagamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
    object SQLD_RegVendas_PagamentoOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_RegVendas_Pagamento: TDataSetProvider
    DataSet = SQLD_RegVendas_Pagamento
    Left = 510
    Top = 44
  end
  object CDS_RegVendas_Pagamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_RegVendas_Pagamento'
    Left = 512
    Top = 87
    object CDS_RegVendas_PagamentoCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_RegVendas_PagamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendas_PagamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendas_PagamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendas_PagamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_RegVendas_PagamentoDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object CDS_RegVendas_PagamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_RegVendas_PagamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_RegVendas_PagamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
    object CDS_RegVendas_PagamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_RegVendas_PagamentoOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_RegVendas_Pagamento: TDataSource
    DataSet = CDS_RegVendas_Pagamento
    Left = 513
    Top = 131
  end
  object SDS_ItensRegVendas_Pagamento: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from REG_PEDIDOS_ITENS ORDER BY DESCRICAO_PRODUTO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_RegVendas_Pagamento
    PacketRecords = 0
    Params = <>
    Left = 514
    Top = 175
    object SDS_ItensRegVendas_PagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ItensRegVendas_PagamentoCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_ItensRegVendas_PagamentoCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_ItensRegVendas_PagamentoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_ItensRegVendas_PagamentoPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendas_PagamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendas_PagamentoQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendas_PagamentoPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_ItensRegVendas_PagamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 8
    end
  end
  object DTS_ItensRegVendas_Pagamento: TDataSource
    DataSet = SDS_ItensRegVendas_Pagamento
    Left = 515
    Top = 217
  end
  object SQLD_CPP_FOR: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_P_FORF(:PARAM) order by DATA_VENCI' +
      'MENTO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 513
    Top = 270
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
  object SQLD_CPP_DATA: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_P_PERIODO_FOR(:Datai:,:Dataf) orde' +
      'r by DATA_VENCIMENTO'
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
    Left = 415
    Top = 269
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
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPP_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPP_DATAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
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
  object SQLD_CPA_FOR: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_A_FORF(:PARAM) order by DATA_VENCI' +
      'MENTO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 320
    Top = 269
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
  object SQLD_CPA_DATA: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_A_PERIODO_FOR(:Datai:,:Dataf) orde' +
      'r by DATA_VENCIMENTO'
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
    Left = 224
    Top = 269
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
      Size = 8
    end
    object SQLD_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
      Size = 8
    end
    object SQLD_CPA_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPA_DATAPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
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
  object SQLD_CPNA_FOR: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_NA_FORF(:PARAM) order by DATA_VENC' +
      'IMENTO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 127
    Top = 269
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
  object SQLD_CPNA_Data: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'select * from SP_CONTAS_PAGAR_NA_PERIODO_FOR(:Datai:,:Dataf) ord' +
      'er by DATA_VENCIMENTO'
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
    Left = 30
    Top = 268
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
    object SQLD_CPNA_DataVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SQLD_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object SQLD_CPNA_DataN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object SQLD_CPNA_DataPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 3
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
  object DTSP_CPNA_Data: TDataSetProvider
    DataSet = SQLD_CPNA_Data
    Left = 30
    Top = 311
  end
  object DTSP_CPNA_FOR: TDataSetProvider
    DataSet = SQLD_CPNA_FOR
    Left = 127
    Top = 312
  end
  object DTSP_CPA_DATA: TDataSetProvider
    DataSet = SQLD_CPA_DATA
    Left = 224
    Top = 312
  end
  object DTSP_CPA_FOR: TDataSetProvider
    DataSet = SQLD_CPA_FOR
    Left = 320
    Top = 312
  end
  object DTSP_CPP_DATA: TDataSetProvider
    DataSet = SQLD_CPP_DATA
    Left = 415
    Top = 312
  end
  object DTSP_CPP_FOR: TDataSetProvider
    DataSet = SQLD_CPP_FOR
    Left = 513
    Top = 313
  end
  object CDS_CPP_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPP_FOR'
    Left = 514
    Top = 357
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
  object CDS_CPP_DATA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPP_DATA'
    Left = 416
    Top = 356
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
  object CDS_CPA_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPA_FOR'
    Left = 321
    Top = 356
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
  object CDS_CPA_DATA: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPA_DATA'
    Left = 225
    Top = 356
    object CDS_CPA_DATACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPA_DATADATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPA_DATADATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPA_DATADATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
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
      Size = 8
    end
    object CDS_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPA_DATAN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPA_DATAPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPA_DATASERIE: TStringField
      Alignment = taCenter
      FieldName = 'SERIE'
      Size = 5
    end
    object CDS_CPA_DATAAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      FixedChar = True
      Size = 1
    end
  end
  object CDS_CPNA_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPNA_FOR'
    Left = 128
    Top = 356
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
  object CDS_CPNA_Data: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPNA_Data'
    Left = 31
    Top = 355
    object CDS_CPNA_DataCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CPNA_DataDATA_CADASTRO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_CPNA_DataDATA_EMISSAO: TDateField
      Alignment = taRightJustify
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_CPNA_DataDATA_VENCIMENTO: TDateField
      Alignment = taRightJustify
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
    object CDS_CPNA_DataVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 8
    end
    object CDS_CPNA_DataN_DOCUMENTO: TStringField
      FieldName = 'N_DOCUMENTO'
      Size = 10
    end
    object CDS_CPNA_DataPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 3
    end
    object CDS_CPNA_DataSERIE: TStringField
      Alignment = taCenter
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
    Left = 31
    Top = 399
  end
  object Dts_CPNA_FOR: TDataSource
    DataSet = CDS_CPNA_FOR
    Left = 120
    Top = 400
  end
  object DTS_CPA_DATA: TDataSource
    DataSet = CDS_CPA_DATA
    Left = 225
    Top = 400
  end
  object DTS_CPA_FOR: TDataSource
    DataSet = CDS_CPA_FOR
    Left = 321
    Top = 400
  end
  object DTS_CPP_DATA: TDataSource
    DataSet = CDS_CPP_DATA
    Left = 416
    Top = 400
  end
  object DTS_CPP_FOR: TDataSource
    DataSet = CDS_CPP_FOR
    Left = 514
    Top = 401
  end
end

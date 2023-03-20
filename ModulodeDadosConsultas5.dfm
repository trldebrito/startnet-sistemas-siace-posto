object DMC5: TDMC5
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 561
  Width = 804
  object SQLD_PedidosGeral: TSQLDataSet
    CommandText = 
      'select * from SP_PEDIDOS_C_GERAL(:Datai:,:Dataf) order by DATA_P' +
      'EDIDO  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai:'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 44
    Top = 1
    object SQLD_PedidosGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_PedidosGeralVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object SQLD_PedidosGeralVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_PedidosGeralVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_PedidosGeralVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object SQLD_PedidosGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosGeralDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosGeralDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLD_PedidosGeralCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_PedidosGeralNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_PedidosGeralSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosGeralOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object SQLD_PedidosGeralPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTSP_PedidosGeral: TDataSetProvider
    DataSet = SQLD_PedidosGeral
    Left = 43
    Top = 46
  end
  object CDS_PedidosGeral: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_PedidosGeral'
    Left = 42
    Top = 92
    object CDS_PedidosGeralCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_PedidosGeralVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object CDS_PedidosGeralVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosGeralVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_PedidosGeralVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PedidosGeralDATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_PedidosGeralDATA_ENTREGA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_ENTREGA'
    end
    object CDS_PedidosGeralCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_PedidosGeralNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_PedidosGeralSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDS_PedidosGeralOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object CDS_PedidosGeralPAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
    end
  end
  object DTS_PedidosGeral: TDataSource
    DataSet = CDS_PedidosGeral
    Left = 42
    Top = 138
  end
  object SDS_ItensPedidoGeral: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_PEDIDO_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosGeral
    PacketRecords = 0
    Params = <>
    Left = 43
    Top = 183
    object SDS_ItensPedidoGeralCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ItensPedidoGeralCODIGO_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_ItensPedidoGeralCODIGO_PRODUTO: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_ItensPedidoGeralDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_ItensPedidoGeralPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralQUANTIDADE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_ItensPedidoGeralPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoGeralDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object fmtbcdfldSDS_ItensPedidoGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
  end
  object DTS_ItensPedidoGeral: TDataSource
    DataSet = SDS_ItensPedidoGeral
    Left = 43
    Top = 228
  end
  object SQLD_PedidosCliente: TSQLDataSet
    CommandText = 
      'select * from SP_PEDIDOS_C_CLIENTE(:Datai,:Dataf,:PARAM) order b' +
      'y DATA_PEDIDO  ASC'
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
    Left = 158
    Top = 1
    object SQLD_PedidosClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_PedidosClienteVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object SQLD_PedidosClienteVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_PedidosClienteVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_PedidosClienteVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object SQLD_PedidosClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosClienteDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosClienteDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLD_PedidosClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_PedidosClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_PedidosClienteSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosClienteOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object SQLD_PedidosClientePAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTSP_PedidosCliente: TDataSetProvider
    DataSet = SQLD_PedidosCliente
    Left = 157
    Top = 46
  end
  object CDS_PedidosCliente: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_PedidosCliente'
    Left = 156
    Top = 92
    object CDS_PedidosClienteCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_PedidosClienteVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object CDS_PedidosClienteVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosClienteVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_PedidosClienteVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosClienteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PedidosClienteDATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_PedidosClienteDATA_ENTREGA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_ENTREGA'
    end
    object CDS_PedidosClienteCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_PedidosClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_PedidosClienteSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDS_PedidosClienteOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object CDS_PedidosClientePAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
    end
  end
  object DTS_PedidosCliente: TDataSource
    DataSet = CDS_PedidosCliente
    Left = 156
    Top = 138
  end
  object SDS_ItensPedidoCliente: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_PEDIDO_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosCliente
    PacketRecords = 0
    Params = <>
    Left = 157
    Top = 183
    object IntegerField7: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField8: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object StringField9: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object StringField10: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object FMTBCDField10: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object FMTBCDField11: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField12: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoClienteDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
  end
  object DTS_ItensPedidoCliente: TDataSource
    DataSet = SDS_ItensPedidoCliente
    Left = 157
    Top = 228
  end
  object SQLD_PedidosUsuario: TSQLDataSet
    CommandText = 
      'select * from SP_PEDIDOS_C_USUARIO(:Datai,:Dataf,:PARAM) order b' +
      'y DATA_PEDIDO ASC'
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
    Left = 278
    Top = 1
    object SQLD_PedidosUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_PedidosUsuarioVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object SQLD_PedidosUsuarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_PedidosUsuarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_PedidosUsuarioVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object SQLD_PedidosUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosUsuarioDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosUsuarioDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLD_PedidosUsuarioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_PedidosUsuarioNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_PedidosUsuarioSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosUsuarioOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object SQLD_PedidosUsuarioPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTSP_PedidosUsuario: TDataSetProvider
    DataSet = SQLD_PedidosUsuario
    Left = 277
    Top = 46
  end
  object CDS_PedidosUsuario: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_PedidosUsuario'
    Left = 276
    Top = 92
    object CDS_PedidosUsuarioCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_PedidosUsuarioVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object CDS_PedidosUsuarioVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosUsuarioVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_PedidosUsuarioVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PedidosUsuarioDATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_PedidosUsuarioDATA_ENTREGA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_ENTREGA'
    end
    object CDS_PedidosUsuarioCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_PedidosUsuarioNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_PedidosUsuarioSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDS_PedidosUsuarioOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object CDS_PedidosUsuarioPAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
    end
  end
  object DTS_PedidosUsuario: TDataSource
    DataSet = CDS_PedidosUsuario
    Left = 276
    Top = 138
  end
  object SDS_ItensPedidoUsuario: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_PEDIDO_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_PedidosUsuario
    PacketRecords = 0
    Params = <>
    Left = 277
    Top = 183
    object IntegerField15: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField16: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object StringField19: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object StringField20: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object FMTBCDField21: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object FMTBCDField22: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object FMTBCDField23: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField24: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedidoUsuarioDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
  end
  object DTS_ItensPedidoUsuario: TDataSource
    DataSet = SDS_ItensPedidoUsuario
    Left = 277
    Top = 228
  end
  object SQLD_Pedidos_Pagamento: TSQLDataSet
    CommandText = 
      'select * from SP_PEDIDOS_C_PAGAMENTO(:Datai,:Dataf,:PARAM) order' +
      ' by DATA_PEDIDO ASC'
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
    Left = 412
    Top = 1
    object SQLD_Pedidos_PagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_Pedidos_PagamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object SQLD_Pedidos_PagamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_Pedidos_PagamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_Pedidos_PagamentoVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object SQLD_Pedidos_PagamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_Pedidos_PagamentoDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_Pedidos_PagamentoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLD_Pedidos_PagamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_Pedidos_PagamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_Pedidos_PagamentoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLD_Pedidos_PagamentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object SQLD_Pedidos_PagamentoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTSP_Pedidos_Pagamento: TDataSetProvider
    DataSet = SQLD_Pedidos_Pagamento
    Left = 411
    Top = 46
  end
  object CDS_Pedidos_Pagamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Pedidos_Pagamento'
    Left = 410
    Top = 92
    object CDS_Pedidos_PagamentoCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_Pedidos_PagamentoVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object CDS_Pedidos_PagamentoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_Pedidos_PagamentoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_Pedidos_PagamentoVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object CDS_Pedidos_PagamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_Pedidos_PagamentoDATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_Pedidos_PagamentoDATA_ENTREGA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_ENTREGA'
    end
    object CDS_Pedidos_PagamentoCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_Pedidos_PagamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_Pedidos_PagamentoSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDS_Pedidos_PagamentoOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object CDS_Pedidos_PagamentoPAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
    end
  end
  object DTS_Pedidos_Pagamento: TDataSource
    DataSet = CDS_Pedidos_Pagamento
    Left = 410
    Top = 138
  end
  object SDS_ItensPedido_Pagamento: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_PEDIDO_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos_Pagamento
    PacketRecords = 0
    Params = <>
    Left = 411
    Top = 183
    object IntegerField23: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField24: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object StringField29: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object StringField30: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object FMTBCDField33: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object FMTBCDField34: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object FMTBCDField35: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField36: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_ItensPedido_PagamentoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
  end
  object DTS_ItensPedido_Pagamento: TDataSource
    DataSet = SDS_ItensPedido_Pagamento
    Left = 411
    Top = 228
  end
  object SQLD_Pedidos: TSQLDataSet
    CommandText = 'select  *  from SP_DUPLICATAS(:param)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 598
    Top = 199
    object SQLD_PedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_PedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object SQLD_PedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_PedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_PedidosUSUARIO2: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_PedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_PedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
  end
  object DTSP_Pedidos: TDataSetProvider
    DataSet = SQLD_Pedidos
    Left = 598
    Top = 244
  end
  object CDS_Pedidos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Pedidos'
    Left = 599
    Top = 288
    object CDS_PedidosCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_PedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object CDS_PedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_PedidosUSUARIO2: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PedidosDATA_PEDIDO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_PedidosCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_PedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_PedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 37
    end
  end
  object DTS_Pedidos: TDataSource
    DataSet = CDS_Pedidos
    Left = 600
    Top = 330
  end
  object SDS_Pedido_Itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_PEDIDO_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 596
    Top = 102
    object SDS_Pedido_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Pedido_ItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_Pedido_ItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_Pedido_ItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_Pedido_ItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object SDS_Pedido_ItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_Pedido_ItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_Pedido_ItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_Pedido_ItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
    object SDS_Pedido_ItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
  end
  object DTS_Pedido_Itens: TDataSource
    Left = 597
    Top = 147
  end
  object SDS_Cliente: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO_CLIENTE'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 593
    Top = 13
    object SDS_ClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_ClienteNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_ClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_ClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_ClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_ClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_ClienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
  end
  object DTS_Cliente: TDataSource
    DataSet = SDS_Cliente
    Left = 595
    Top = 58
  end
  object SQLD_CrediarioReceber: TSQLDataSet
    CommandText = 
      'select * from SP_CREDIARIO_RECEBER_PERIODO(:Datai,:Dataf) order ' +
      'by CODIGO_CLIENTE ASC'
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
      end>
    SQLConnection = DM.SQLC
    Left = 46
    Top = 289
    object SQLD_CrediarioReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_CrediarioReceberCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SQLD_CrediarioReceberDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SQLD_CrediarioReceberDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_CrediarioReceberDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_CrediarioReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SQLD_CrediarioReceberUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SQLD_CrediarioReceberUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SQLD_CrediarioReceberSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SQLD_CrediarioReceberVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
    end
    object SQLD_CrediarioReceberVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
    end
    object SQLD_CrediarioReceberVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
    end
    object SQLD_CrediarioReceberVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object SQLD_CrediarioReceberVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
    end
    object SQLD_CrediarioReceberVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
    end
    object SQLD_CrediarioReceberVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object SQLD_CrediarioReceberPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SQLD_CrediarioReceberCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SQLD_CrediarioReceberNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
  end
  object DTSP_CrediarioReceber: TDataSetProvider
    DataSet = SQLD_CrediarioReceber
    Left = 53
    Top = 350
  end
  object CDS_CrediarioReceber: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CrediarioReceber'
    Left = 44
    Top = 396
    object CDS_CrediarioReceberNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object CDS_CrediarioReceberCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_CrediarioReceberCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CDS_CrediarioReceberDATA_COMPRA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_COMPRA'
    end
    object CDS_CrediarioReceberDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_CrediarioReceberDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object CDS_CrediarioReceberHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_CrediarioReceberUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object CDS_CrediarioReceberUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object CDS_CrediarioReceberSITUACAO: TStringField
      Alignment = taCenter
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object CDS_CrediarioReceberVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object CDS_CrediarioReceberVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CrediarioReceberVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object CDS_CrediarioReceberVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object CDS_CrediarioReceberVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object CDS_CrediarioReceberVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object CDS_CrediarioReceberVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object CDS_CrediarioReceberPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 10
    end
    object CDS_CrediarioReceberCODIGO_COMPRA: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_COMPRA'
    end
  end
  object DTS_CrediarioReceber: TDataSource
    DataSet = CDS_CrediarioReceber
    Left = 44
    Top = 442
  end
  object DTS_CrediarioRecebido: TDataSource
    DataSet = SDS_CrediarioRecebido
    Left = 152
    Top = 337
  end
  object SDS_CrediarioRecebido: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CREDIARIO_RECEBIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'COD_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DTS_CliCrediario
    PacketRecords = 0
    Params = <>
    Left = 160
    Top = 289
    object SDS_CrediarioRecebidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CrediarioRecebidoCOD_CREDIAIRIO: TIntegerField
      FieldName = 'COD_CREDIAIRIO'
      Required = True
    end
    object SDS_CrediarioRecebidoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_CrediarioRecebidoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 6
    end
    object SDS_CrediarioRecebidoVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioRecebidoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioRecebidoMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioRecebidoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioRecebidoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioRecebidoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CrediarioRecebidoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SDS_CrediarioRecebidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_CrediarioRecebidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SDS_CrediarioRecebidoCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object SDS_CrediarioRecebidoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioRecebidoSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_CrediarioRecebidoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object SDS_CliCrediario: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CLIENTES order by NOME_RS asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 153
    Top = 389
    object SDS_CliCrediarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CliCrediarioNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_CliCrediarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_CliCrediarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_CliCrediarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_CliCrediarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_CliCrediarioAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object SDS_CliCrediarioCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
  end
  object DTS_CliCrediario: TDataSource
    DataSet = SDS_CliCrediario
    Left = 155
    Top = 442
  end
  object SQLD_CrediarioRecebidoP: TSQLDataSet
    CommandText = 
      'select * from SP_CREDIARIO_RECEBIDO_P (:datai,:dataf) order by D' +
      'ATA_BAIXA ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 278
    Top = 281
    object SQLD_CrediarioRecebidoPCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_CrediarioRecebidoPCOD_CREDIAIRIO: TIntegerField
      FieldName = 'COD_CREDIAIRIO'
    end
    object SQLD_CrediarioRecebidoPCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SQLD_CrediarioRecebidoPPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 6
    end
    object SQLD_CrediarioRecebidoPVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 2
    end
    object SQLD_CrediarioRecebidoPJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 2
    end
    object SQLD_CrediarioRecebidoPMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 2
    end
    object SQLD_CrediarioRecebidoPDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQLD_CrediarioRecebidoPVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SQLD_CrediarioRecebidoPDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SQLD_CrediarioRecebidoPUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_CrediarioRecebidoPCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SQLD_CrediarioRecebidoPNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_CrediarioRecebidoPCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object SQLD_CrediarioRecebidoPVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object SQLD_CrediarioRecebidoPSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      Precision = 15
      Size = 2
    end
    object SQLD_CrediarioRecebidoPDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object DTSP_CrediarioRecebidoP: TDataSetProvider
    DataSet = SQLD_CrediarioRecebidoP
    Left = 277
    Top = 326
  end
  object CDS_CrediarioRecebidoP: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CrediarioRecebidoP'
    Left = 276
    Top = 372
    object CDS_CrediarioRecebidoPCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_CrediarioRecebidoPCOD_CREDIAIRIO: TIntegerField
      FieldName = 'COD_CREDIAIRIO'
    end
    object CDS_CrediarioRecebidoPCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object CDS_CrediarioRecebidoPPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 6
    end
    object CDS_CrediarioRecebidoPVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 2
    end
    object CDS_CrediarioRecebidoPJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 2
    end
    object CDS_CrediarioRecebidoPMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 2
    end
    object CDS_CrediarioRecebidoPDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object CDS_CrediarioRecebidoPVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CrediarioRecebidoPDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object CDS_CrediarioRecebidoPUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_CrediarioRecebidoPCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CDS_CrediarioRecebidoPNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_CrediarioRecebidoPCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object CDS_CrediarioRecebidoPVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CrediarioRecebidoPSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_CrediarioRecebidoPDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object DTS_CrediarioRecebidoP: TDataSource
    DataSet = CDS_CrediarioRecebidoP
    Left = 276
    Top = 418
  end
  object Qry_relRes_prod: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'MESI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANOI'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from  SP_REL_VENDAS_PROD(:MESI,:ANOI) order by DESCRICA' +
        'O_PRODUTO ASC')
    SQLConnection = DM.SQLC
    Left = 416
    Top = 288
    object Qry_relRes_prodCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Qry_relRes_prodCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Qry_relRes_prodDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Qry_relRes_prodUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Qry_relRes_prodPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Qry_relRes_prodDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Qry_relRes_prodQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Qry_relRes_prodPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Qry_relRes_prodMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Qry_relRes_prodANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
  end
  object Cds_RelRes_prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_RelRes_prod'
    Left = 400
    Top = 408
    object Cds_RelRes_prodCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Cds_RelRes_prodCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Cds_RelRes_prodDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Cds_RelRes_prodUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Cds_RelRes_prodPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelRes_prodDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelRes_prodQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      currency = True
      Precision = 15
    end
    object Cds_RelRes_prodPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelRes_prodMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Cds_RelRes_prodANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
  end
  object Dsp_RelRes_prod: TDataSetProvider
    DataSet = Qry_relRes_prod
    Left = 408
    Top = 344
  end
  object Dts_RelRes_Prod: TDataSource
    DataSet = Cds_RelRes_prod
    Left = 408
    Top = 456
  end
  object dsp_relRes_ProdD: TDataSetProvider
    DataSet = Qry_relRes_prodD
    Left = 520
    Top = 80
  end
  object Cds_RelRes_ProdD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_relRes_ProdD'
    Left = 520
    Top = 136
    object Cds_RelRes_ProdDCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Cds_RelRes_ProdDCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Cds_RelRes_ProdDDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Cds_RelRes_ProdDUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Cds_RelRes_ProdDPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelRes_ProdDDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelRes_ProdDQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Cds_RelRes_ProdDPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelRes_ProdDMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Cds_RelRes_ProdDANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Cds_RelRes_ProdDDIA: TStringField
      FieldName = 'DIA'
      Size = 2
    end
  end
  object dts_relsRes_prodD: TDataSource
    DataSet = Cds_RelRes_ProdD
    Left = 520
    Top = 192
  end
  object Qry_relRes_prodD: TSQLDataSet
    CommandText = 
      'select * from SP_REL_VENDAS_PROD_DIA(:DIAI, :MESI, :ANOI) order ' +
      'by DESCRICAO_PRODUTO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DIAI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'MESI'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ANOI'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 518
    Top = 17
    object Qry_relRes_prodDCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Qry_relRes_prodDCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Qry_relRes_prodDDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Qry_relRes_prodDUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Qry_relRes_prodDPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Qry_relRes_prodDDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Qry_relRes_prodDQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Qry_relRes_prodDPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Qry_relRes_prodDMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object Qry_relRes_prodDANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object Qry_relRes_prodDDIA: TStringField
      FieldName = 'DIA'
      Size = 2
    end
  end
  object DSP_REL_PIS_COFINS: TDataSetProvider
    DataSet = SQLD_REL_PIS_COFINS
    Left = 685
    Top = 78
  end
  object CDS_REL_PIS_COFINS: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSP_REL_PIS_COFINS'
    Left = 692
    Top = 124
    object CDS_REL_PIS_COFINSDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_REL_PIS_COFINSLISTA: TStringField
      FieldName = 'LISTA'
      Size = 30
    end
    object CDS_REL_PIS_COFINSPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
      Size = 2
    end
    object CDS_REL_PIS_COFINSDESCONTO1: TFMTBCDField
      FieldName = 'DESCONTO1'
      Precision = 15
      Size = 2
    end
    object CDS_REL_PIS_COFINSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object CDS_REL_PIS_COFINSTOTAL_LIQUIDO: TFMTBCDField
      FieldName = 'TOTAL_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object CDS_REL_PIS_COFINSPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
      Size = 2
    end
    object CDS_REL_PIS_COFINSPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object CDS_REL_PIS_COFINSCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object DTS_PIS_COFINS: TDataSource
    DataSet = CDS_REL_PIS_COFINS
    Left = 700
    Top = 170
  end
  object SQLD_REL_PIS_COFINS: TSQLDataSet
    CommandText = 
      'select * from SP_REL_PIS_COFINS (:Datai,:Dataf,:COD_EMP) order b' +
      'y DATA_PEDIDO ASC'
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
        Name = 'COD_EMP'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 678
    Top = 17
    object SQLD_REL_PIS_COFINSDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_REL_PIS_COFINSLISTA: TStringField
      FieldName = 'LISTA'
      Size = 30
    end
    object SQLD_REL_PIS_COFINSPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
      Size = 2
    end
    object SQLD_REL_PIS_COFINSDESCONTO1: TFMTBCDField
      FieldName = 'DESCONTO1'
      Precision = 15
      Size = 2
    end
    object SQLD_REL_PIS_COFINSQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SQLD_REL_PIS_COFINSPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
      Size = 2
    end
    object SQLD_REL_PIS_COFINSPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object SQLD_REL_PIS_COFINSCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SQLD_REL_PIS_COFINSTOTAL_LIQUIDO: TFMTBCDField
      FieldName = 'TOTAL_LIQUIDO'
      Precision = 15
      Size = 2
    end
  end
end

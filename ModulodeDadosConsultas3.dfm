object DMC3: TDMC3
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 659
  Width = 1036
  object SQLD_PedidosGeral: TSQLDataSet
    CommandText = 
      'select * from SP_PEDIDOS_N_GERAL(:Datai,:Dataf) order by codigo ' +
      'ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
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
    object fmtbcdfldSQLD_PedidosGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object strngfldSQLD_PedidosGeralUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object strngfldSQLD_PedidosGeralTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosGeralN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object SQLD_PedidosGeralN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object SQLD_PedidosGeralNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SQLD_PedidosGeralSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
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
    Left = 51
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
    object fmtbcdfldCDS_PedidosGeralENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object strngfldCDS_PedidosGeralUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object strngfldCDS_PedidosGeralTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object CDS_PedidosGeralN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object CDS_PedidosGeralN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object CDS_PedidosGeralNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object CDS_PedidosGeralSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object CDS_PedidosGeralCOUNT_VENDAS: TAggregateField
      Alignment = taCenter
      FieldName = 'COUNT_VENDAS'
      Active = True
      DisplayName = ''
      Expression = 'COUNT(CODIGO)'
    end
    object CDS_PedidosGeralSOMAVALOR_TOTAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SOMAVALOR_TOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_TOTAL)'
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
      currency = True
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
      'select * from SP_PEDIDOS_N_CLIENTE(:Datai,:Dataf,:PARAM) order b' +
      'y DATA_PEDIDO  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
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
    object SQLD_PedidosClienteENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object SQLD_PedidosClienteUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SQLD_PedidosClienteTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
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
    object fmtbcdfldSDS_ItensPedidoClienteENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
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
      'select * from SP_PEDIDOS_N_USUARIO(:Datai,:Dataf,:PARAM) order b' +
      'y DATA_PEDIDO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
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
    object SQLD_PedidosUsuarioENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object SQLD_PedidosUsuarioUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SQLD_PedidosUsuarioTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
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
    object SDS_ItensPedidoUsuarioENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
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
      'select * from SP_PEDIDOS_N_PAGAMENTO(:Datai,:Dataf,:PARAM) order' +
      ' by DATA_PEDIDO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
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
    object SQLD_Pedidos_PagamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object SQLD_Pedidos_PagamentoUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SQLD_Pedidos_PagamentoTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
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
    Left = 412
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
    object SDS_ItensPedido_PagamentoENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
  end
  object DTS_ItensPedido_Pagamento: TDataSource
    DataSet = SDS_ItensPedido_Pagamento
    Left = 411
    Top = 228
  end
  object SQLD_OrcamentoGeral: TSQLDataSet
    CommandText = 
      'select * from SP_ORCAMENTO_GERAL(:Datai:,:Dataf) order by DATA  ' +
      'ASC'
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
    Left = 56
    Top = 287
    object IntegerField33: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField49: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object FMTBCDField50: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object FMTBCDField51: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object FMTBCDField52: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object StringField41: TStringField
      FieldName = 'USUARIO'
    end
    object DateField9: TDateField
      FieldName = 'DATA'
    end
    object IntegerField35: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField42: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField44: TStringField
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTSP_OrcamentoGeral: TDataSetProvider
    DataSet = SQLD_OrcamentoGeral
    Left = 55
    Top = 332
  end
  object CDS_OrcamentoGeral: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_OrcamentoGeral'
    Left = 54
    Top = 378
    object IntegerField36: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField53: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object FMTBCDField54: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object FMTBCDField55: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField56: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object StringField45: TStringField
      FieldName = 'USUARIO'
    end
    object DateField10: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object IntegerField38: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField46: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField48: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTS_OrcamentoGeral: TDataSource
    DataSet = CDS_OrcamentoGeral
    Left = 54
    Top = 424
  end
  object SDS_ItensOrcamentoGeral: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from ORCAMENTOS_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_OrcamentoGeral
    PacketRecords = 0
    Params = <>
    Left = 55
    Top = 479
    object IntegerField39: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField40: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object StringField49: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object StringField50: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object FMTBCDField57: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object FMTBCDField58: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object FMTBCDField59: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField60: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
  end
  object DTS_ItensOrcamentoGeral: TDataSource
    DataSet = SDS_ItensOrcamentoGeral
    Left = 55
    Top = 524
  end
  object SQLD_OrcamentoCliente: TSQLDataSet
    CommandText = 
      'select * from SP_ORCAMENTO_CLIENTE(:Datai,:Dataf,:PARAM) order b' +
      'y DATA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 198
    Top = 287
    object IntegerField41: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField61: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object FMTBCDField62: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object FMTBCDField63: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object FMTBCDField64: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object StringField51: TStringField
      FieldName = 'USUARIO'
    end
    object DateField11: TDateField
      FieldName = 'DATA'
    end
    object IntegerField43: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField52: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField54: TStringField
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTSP_OrcamentoCliente: TDataSetProvider
    DataSet = SQLD_OrcamentoCliente
    Left = 197
    Top = 332
  end
  object CDS_OrcamentoCliente: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_OrcamentoCliente'
    Left = 196
    Top = 378
    object IntegerField44: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField65: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object FMTBCDField66: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object FMTBCDField67: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField68: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object StringField55: TStringField
      FieldName = 'USUARIO'
    end
    object DateField12: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object IntegerField46: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField56: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField58: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTS_OrcamentoCliente: TDataSource
    DataSet = CDS_OrcamentoCliente
    Left = 196
    Top = 424
  end
  object SDS_ItensOrcamentoCliente: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from ORCAMENTOS_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_OrcamentoCliente
    PacketRecords = 0
    Params = <>
    Left = 197
    Top = 479
    object IntegerField47: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField48: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object StringField59: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object StringField60: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object FMTBCDField69: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object FMTBCDField70: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object FMTBCDField71: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField72: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
  end
  object DTS_ItensOrcamentoCliente: TDataSource
    DataSet = SDS_ItensOrcamentoCliente
    Left = 197
    Top = 524
  end
  object SQLD_OrcamentoUsuario: TSQLDataSet
    CommandText = 
      'select * from SP_ORCAMENTO_USUARIO(:Datai,:Dataf,:PARAM) order b' +
      'y DATA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 346
    Top = 287
    object IntegerField49: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField73: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object FMTBCDField74: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object FMTBCDField75: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object FMTBCDField76: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object StringField61: TStringField
      FieldName = 'USUARIO'
    end
    object DateField13: TDateField
      FieldName = 'DATA'
    end
    object IntegerField51: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField62: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField64: TStringField
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTSP_OrcamentoUsuario: TDataSetProvider
    DataSet = SQLD_OrcamentoUsuario
    Left = 345
    Top = 332
  end
  object CDS_OrcamentoUsuario: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_OrcamentoUsuario'
    Left = 344
    Top = 378
    object IntegerField52: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField77: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object FMTBCDField78: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object FMTBCDField79: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField80: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object StringField65: TStringField
      FieldName = 'USUARIO'
    end
    object DateField14: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object IntegerField54: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField66: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField68: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTS_OrcamentoUsuario: TDataSource
    DataSet = CDS_OrcamentoUsuario
    Left = 344
    Top = 424
  end
  object SDS_ItensOrcamentoUsuario: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from ORCAMENTOS_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_OrcamentoUsuario
    PacketRecords = 0
    Params = <>
    Left = 345
    Top = 479
    object IntegerField55: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField56: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object StringField69: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object StringField70: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object FMTBCDField81: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object FMTBCDField82: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object FMTBCDField83: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField84: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
  end
  object DTS_ItensOrcamentoUsuario: TDataSource
    DataSet = SDS_ItensOrcamentoUsuario
    Left = 345
    Top = 524
  end
  object DTSP_OrcamentoPagamento: TDataSetProvider
    Left = 506
    Top = 332
  end
  object CDS_OrcamentoPagamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_OrcamentoPagamento'
    Left = 505
    Top = 378
    object IntegerField60: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField89: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object FMTBCDField90: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object FMTBCDField91: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField92: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object StringField75: TStringField
      FieldName = 'USUARIO'
    end
    object DateField16: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object IntegerField62: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField76: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField78: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object DTS_OrcamentoPagamento: TDataSource
    DataSet = CDS_OrcamentoPagamento
    Left = 505
    Top = 424
  end
  object SDS_ItensOrcamentoPagamento: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from ORCAMENTOS_ITENS order by DESCRICAO_PRODUTO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_OrcamentoPagamento
    PacketRecords = 0
    Params = <>
    Left = 506
    Top = 479
    object IntegerField63: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object IntegerField64: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object StringField79: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object StringField80: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object FMTBCDField93: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
    end
    object FMTBCDField94: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object FMTBCDField95: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
    end
    object FMTBCDField96: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
    end
  end
  object DTS_ItensOrcamentoPagamento: TDataSource
    DataSet = SDS_ItensOrcamentoPagamento
    Left = 506
    Top = 524
  end
  object SQLD_OrcamentoPagamento: TSQLDataSet
    CommandText = 
      'select * from SP_ORCAMENTO_PAGAMENTO(:Datai,:Dataf,:PARAM) order' +
      ' by DATA  ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 506
    Top = 287
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object StringField1: TStringField
      FieldName = 'USUARIO'
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'PAGAMENTO'
      Size = 15
    end
  end
  object SQLD_ExtComissao: TSQLDataSet
    CommandText = 
      'select * from SP_CONS_EXTORNO_COMISSAO(:Datai,:Dataf,:PARAM) ord' +
      'er by DATA ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 550
    Top = 1
    object SQLD_ExtComissaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_ExtComissaoDATA: TDateField
      FieldName = 'DATA'
    end
    object SQLD_ExtComissaoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SQLD_ExtComissaoUSUARIO_EST: TStringField
      FieldName = 'USUARIO_EST'
    end
    object SQLD_ExtComissaoUSUARIO_PEDIDO: TStringField
      FieldName = 'USUARIO_PEDIDO'
    end
    object SQLD_ExtComissaoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
    end
    object SQLD_ExtComissaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SQLD_ExtComissaoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTSP_ExtComissao: TDataSetProvider
    DataSet = SQLD_ExtComissao
    Left = 549
    Top = 46
  end
  object CDS_ExtComissao: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ExtComissao'
    Left = 556
    Top = 92
    object CDS_ExtComissaoCODIGO: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_ExtComissaoDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
    end
    object CDS_ExtComissaoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_ExtComissaoUSUARIO_EST: TStringField
      FieldName = 'USUARIO_EST'
    end
    object CDS_ExtComissaoUSUARIO_PEDIDO: TStringField
      FieldName = 'USUARIO_PEDIDO'
    end
    object CDS_ExtComissaoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
    end
    object CDS_ExtComissaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object CDS_ExtComissaoPAGAMENTO: TStringField
      Alignment = taCenter
      FieldName = 'PAGAMENTO'
    end
  end
  object DTS_ExtComissao: TDataSource
    DataSet = CDS_ExtComissao
    Left = 556
    Top = 138
  end
  object SQLD_ExtComissaoGeral: TSQLDataSet
    CommandText = 
      'select * from SP_EXTORNO_COMISSAO_GERAL(:Datai,:Dataf) order by ' +
      'DATA ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dataf'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 662
    Top = 1
    object SQLD_ExtComissaoGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_ExtComissaoGeralDATA: TDateField
      FieldName = 'DATA'
    end
    object SQLD_ExtComissaoGeralHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SQLD_ExtComissaoGeralUSUARIO_EST: TStringField
      FieldName = 'USUARIO_EST'
    end
    object SQLD_ExtComissaoGeralUSUARIO_PEDIDO: TStringField
      FieldName = 'USUARIO_PEDIDO'
    end
    object SQLD_ExtComissaoGeralVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
    end
    object SQLD_ExtComissaoGeralCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SQLD_ExtComissaoGeralPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTSP_ExtComissaoGeral: TDataSetProvider
    DataSet = SQLD_ExtComissaoGeral
    Left = 661
    Top = 46
  end
  object CDS_ExtComissaoGeral: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ExtComissaoGeral'
    Left = 660
    Top = 92
    object CDS_ExtComissaoGeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_ExtComissaoGeralDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_ExtComissaoGeralHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object CDS_ExtComissaoGeralUSUARIO_EST: TStringField
      FieldName = 'USUARIO_EST'
    end
    object CDS_ExtComissaoGeralUSUARIO_PEDIDO: TStringField
      FieldName = 'USUARIO_PEDIDO'
    end
    object CDS_ExtComissaoGeralVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
    end
    object CDS_ExtComissaoGeralCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object CDS_ExtComissaoGeralPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
    end
  end
  object DTS_ExtComissaoGeral: TDataSource
    DataSet = CDS_ExtComissaoGeral
    Left = 660
    Top = 138
  end
  object SQLD_ComprasPeriodo: TSQLDataSet
    CommandText = 
      'select * from SP_ENTRADAS_PERIODO(:Datai,:Dataf) order by DATA_C' +
      'ADASTRO ASC'
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
    Left = 654
    Top = 185
    object SQLD_ComprasPeriodoCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object SQLD_ComprasPeriodoNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object SQLD_ComprasPeriodoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_ComprasPeriodoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_ComprasPeriodoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_ComprasPeriodoTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 15
    end
    object SQLD_ComprasPeriodoCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object SQLD_ComprasPeriodoIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object SQLD_ComprasPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_ComprasPeriodoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_ComprasPeriodoOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_ComprasPeriodo: TDataSetProvider
    DataSet = SQLD_ComprasPeriodo
    Left = 653
    Top = 230
  end
  object CDS_ComprasPeriodo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ComprasPeriodo'
    Left = 652
    Top = 276
    object CDS_ComprasPeriodoCODIGO_NOTA: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object CDS_ComprasPeriodoNUM_NOTA: TStringField
      Alignment = taRightJustify
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object CDS_ComprasPeriodoDATA_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_ComprasPeriodoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_ComprasPeriodoDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_ComprasPeriodoTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      currency = True
      Precision = 15
    end
    object CDS_ComprasPeriodoCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object CDS_ComprasPeriodoIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object CDS_ComprasPeriodoUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_ComprasPeriodoDATA_CADASTRO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_ComprasPeriodoOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_ComprasPeriodo: TDataSource
    DataSet = CDS_ComprasPeriodo
    Left = 652
    Top = 322
  end
  object SQLD_ComprasFornecedor: TSQLDataSet
    CommandText = 
      'select * from SP_ENTRADAS_FORNECEDOR(:Param) order by DATA_CADAS' +
      'TRO ASC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 654
    Top = 373
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object DateField2: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object StringField5: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object DateField3: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      Precision = 15
    end
    object StringField6: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object StringField7: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object DateField4: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object BlobField1: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_ComprasFornecedor: TDataSetProvider
    DataSet = SQLD_ComprasFornecedor
    Left = 653
    Top = 418
  end
  object CDS_ComprasFornecedor: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_ComprasFornecedor'
    Left = 652
    Top = 464
    object IntegerField4: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object StringField11: TStringField
      Alignment = taRightJustify
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object DateField5: TDateField
      Alignment = taCenter
      FieldName = 'DATA_EMISSAO'
    end
    object StringField12: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object DateField6: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      currency = True
      Precision = 15
    end
    object StringField13: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object StringField14: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object StringField15: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object DateField7: TDateField
      Alignment = taCenter
      FieldName = 'DATA_CADASTRO'
    end
    object BlobField2: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_ComprasFornecedor: TDataSource
    DataSet = CDS_ComprasFornecedor
    Left = 652
    Top = 510
  end
  object QryRelVendas_pedidos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pedidos')
    SQLConnection = DM.SQLC
    Left = 784
    Top = 16
    object QryRelVendas_pedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryRelVendas_pedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object QryRelVendas_pedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object QryRelVendas_pedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object QryRelVendas_pedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object QryRelVendas_pedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object QryRelVendas_pedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object QryRelVendas_pedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object QryRelVendas_pedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object QryRelVendas_pedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object QryRelVendas_pedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object QryRelVendas_pedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object QryRelVendas_pedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object QryRelVendas_pedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object QryRelVendas_pedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object QryRelVendas_pedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object QryRelVendas_pedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object QryRelVendas_pedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object QryRelVendas_pedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object QryRelVendas_pedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object QryRelVendas_pedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object QryRelVendas_pedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object QryRelVendas_pedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object QryRelVendas_pedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object QryRelVendas_pedidosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object QryRelVendas_pedidosRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object QryRelVendas_pedidosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object QryRelVendas_pedidosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object QryRelVendas_pedidosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object QryRelVendas_pedidosN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object QryRelVendas_pedidosPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object QryRelVendas_pedidosQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object QryRelVendas_pedidosSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object QryRelVendas_pedidosMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 50
    end
    object QryRelVendas_pedidosDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object QryRelVendas_pedidosVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QryRelVendas_pedidosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object QryRelVendas_pedidosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object QryRelVendas_pedidosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object QryRelVendas_pedidosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QryRelVendas_pedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object QryRelVendas_pedidosENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 40
    end
    object QryRelVendas_pedidosTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object QryRelVendas_pedidosFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object QryRelVendas_pedidosMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object QryRelVendas_pedidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
  end
  object Dsp_RelVendas_pedidos: TDataSetProvider
    DataSet = QryRelVendas_pedidos
    Left = 784
    Top = 72
  end
  object Cds_RelVendas_pedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_RelVendas_pedidos'
    Left = 784
    Top = 136
    object Cds_RelVendas_pedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Cds_RelVendas_pedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Cds_RelVendas_pedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Cds_RelVendas_pedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object Cds_RelVendas_pedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Cds_RelVendas_pedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Cds_RelVendas_pedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object Cds_RelVendas_pedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object Cds_RelVendas_pedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object Cds_RelVendas_pedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object Cds_RelVendas_pedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object Cds_RelVendas_pedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object Cds_RelVendas_pedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object Cds_RelVendas_pedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object Cds_RelVendas_pedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object Cds_RelVendas_pedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object Cds_RelVendas_pedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Cds_RelVendas_pedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object Cds_RelVendas_pedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object Cds_RelVendas_pedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object Cds_RelVendas_pedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object Cds_RelVendas_pedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object Cds_RelVendas_pedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object Cds_RelVendas_pedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Cds_RelVendas_pedidosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object Cds_RelVendas_pedidosRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object Cds_RelVendas_pedidosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object Cds_RelVendas_pedidosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Cds_RelVendas_pedidosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Cds_RelVendas_pedidosN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object Cds_RelVendas_pedidosPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object Cds_RelVendas_pedidosQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object Cds_RelVendas_pedidosSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object Cds_RelVendas_pedidosMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 50
    end
    object Cds_RelVendas_pedidosDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object Cds_RelVendas_pedidosVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Cds_RelVendas_pedidosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object Cds_RelVendas_pedidosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Cds_RelVendas_pedidosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Cds_RelVendas_pedidosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Cds_RelVendas_pedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      Precision = 15
      Size = 2
    end
    object Cds_RelVendas_pedidosENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 40
    end
    object Cds_RelVendas_pedidosTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object Cds_RelVendas_pedidosFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object Cds_RelVendas_pedidosMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object Cds_RelVendas_pedidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 50
    end
  end
  object dts_RelVendas_pedidos: TDataSource
    DataSet = Cds_RelVendas_pedidos
    Left = 784
    Top = 192
  end
  object dts_relVendas_Itens: TDataSource
    DataSet = Sds_RelVendas_Itens
    Left = 888
    Top = 72
  end
  object Sds_RelVendas_Itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from PEDIDOS_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = dts_RelVendas_pedidos
    PacketRecords = 0
    Params = <>
    Left = 888
    Top = 16
    object Sds_RelVendas_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_RelVendas_ItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_RelVendas_ItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Sds_RelVendas_ItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_RelVendas_ItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_RelVendas_ItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#.##'
      Precision = 15
    end
    object Sds_RelVendas_ItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object Sds_RelVendas_ItensQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object Sds_RelVendas_ItensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Sds_RelVendas_ItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object Sds_RelVendas_ItensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object Sds_RelVendas_ItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object Sds_RelVendas_ItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object Sds_RelVendas_ItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object Sds_RelVendas_ItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object Sds_RelVendas_ItensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object Sds_RelVendas_ItensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
  end
  object qry_relVendas_produtos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM V_PRODUTOS_VENDAS ORDER BY CODIGO ASC')
    SQLConnection = DM.SQLC
    Left = 778
    Top = 258
    object qry_relVendas_produtosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object qry_relVendas_produtosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qry_relVendas_produtosCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object qry_relVendas_produtosCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object qry_relVendas_produtosCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object qry_relVendas_produtosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object qry_relVendas_produtosPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object qry_relVendas_produtosPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object qry_relVendas_produtosQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object qry_relVendas_produtosVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qry_relVendas_produtosSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object qry_relVendas_produtosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object qry_relVendas_produtosPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object qry_relVendas_produtosCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Precision = 15
      Size = 6
    end
    object qry_relVendas_produtosCUSTO_T_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_T_MEDIO'
      Precision = 15
      Size = 6
    end
    object qry_relVendas_produtosPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
  end
  object DSP_relVendas_produtos: TDataSetProvider
    DataSet = qry_relVendas_produtos
    Left = 790
    Top = 333
  end
  object CDS_relVendas_produtos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSP_relVendas_produtos'
    Left = 793
    Top = 401
    object CDS_relVendas_produtosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_relVendas_produtosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_relVendas_produtosCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object CDS_relVendas_produtosCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object CDS_relVendas_produtosCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object CDS_relVendas_produtosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object CDS_relVendas_produtosPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '#.##'
      Precision = 15
    end
    object CDS_relVendas_produtosPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object CDS_relVendas_produtosQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object CDS_relVendas_produtosVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object CDS_relVendas_produtosSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object CDS_relVendas_produtosVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object CDS_relVendas_produtosPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosCUSTO_T_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_T_MEDIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_relVendas_produtosPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
  end
  object DTS_relVendas_produtos: TDataSource
    DataSet = CDS_relVendas_produtos
    Left = 789
    Top = 457
  end
  object Qry_Vendas_prod_cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM V_VENDAS_CLIENTE_PRODUTOS order BY data_pedido ASC')
    SQLConnection = DM.SQLC
    Left = 904
    Top = 261
    object Qry_Vendas_prod_clienteCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Qry_Vendas_prod_clienteCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object Qry_Vendas_prod_clienteCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Qry_Vendas_prod_clienteDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Qry_Vendas_prod_clientePRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Qry_Vendas_prod_clientePRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object Qry_Vendas_prod_clienteQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object Qry_Vendas_prod_clienteVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object Qry_Vendas_prod_clienteSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object Qry_Vendas_prod_clienteVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object Qry_Vendas_prod_clienteFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object Qry_Vendas_prod_clienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Qry_Vendas_prod_clienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Qry_Vendas_prod_clienteDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Qry_Vendas_prod_clienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_Vendas_prod_clientePRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clientePRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object Qry_Vendas_prod_clienteCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Precision = 15
      Size = 6
    end
    object Qry_Vendas_prod_clienteCUSTO_T_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_T_MEDIO'
      Precision = 15
      Size = 6
    end
    object Qry_Vendas_prod_clientePROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
  end
  object dsp_vendas_prod_cliente: TDataSetProvider
    DataSet = Qry_Vendas_prod_cliente
    Left = 910
    Top = 333
  end
  object cds_vendas_prod_cliente: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dsp_vendas_prod_cliente'
    Left = 913
    Top = 393
    object cds_vendas_prod_clienteCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object cds_vendas_prod_clienteCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object cds_vendas_prod_clienteCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object cds_vendas_prod_clienteDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object cds_vendas_prod_clientePRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object cds_vendas_prod_clientePRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object cds_vendas_prod_clienteQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object cds_vendas_prod_clienteVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cds_vendas_prod_clienteSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object cds_vendas_prod_clienteVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object cds_vendas_prod_clienteFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object cds_vendas_prod_clienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cds_vendas_prod_clienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object cds_vendas_prod_clienteDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object cds_vendas_prod_clienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_vendas_prod_clientePRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clientePRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clienteCUSTO_T_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_T_MEDIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds_vendas_prod_clientePROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
  end
  object Dts_venda_prod_cliente: TDataSource
    DataSet = cds_vendas_prod_cliente
    Left = 917
    Top = 457
  end
end

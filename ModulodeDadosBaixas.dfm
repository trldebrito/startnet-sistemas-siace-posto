object DMB: TDMB
  OldCreateOrder = False
  Left = 295
  Top = 163
  Height = 413
  Width = 722
  object SDS_Crediario_Baixa: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_CREDIARIO_BOLETOS order by data_vencimento asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
        Value = 3
      end>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 43
    Top = 64
    object SDS_Crediario_BaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Crediario_BaixaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_Crediario_BaixaDATA_COMPRA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_COMPRA'
    end
    object SDS_Crediario_BaixaDATA_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_Crediario_BaixaDATA_BAIXA: TDateField
      Alignment = taCenter
      FieldName = 'DATA_BAIXA'
    end
    object SDS_Crediario_BaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_Crediario_BaixaUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_Crediario_BaixaUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_Crediario_BaixaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_Crediario_BaixaVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_Crediario_BaixaVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_Crediario_BaixaVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_Crediario_BaixaVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_Crediario_BaixaVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_Crediario_BaixaVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_Crediario_BaixaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_Crediario_BaixaPARCELA: TStringField
      Alignment = taCenter
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_Crediario_BaixaCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_Crediario_BaixaNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_Crediario_BaixaBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_Crediario_BaixaREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object SDS_Crediario_BaixaDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_Crediario_BaixaID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_Crediario_BaixaENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_Crediario_BaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_Crediario_BaixaNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_Crediario_BaixaCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_Crediario_BaixaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_Crediario_BaixaCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_Crediario_BaixaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_Crediario_BaixaSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_Crediario_BaixaNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_Crediario_BaixaCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object SDS_Crediario_BaixaCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_BaixaDT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object SDS_Crediario_BaixaDIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
    object SDS_Crediario_BaixaID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
  end
  object DTS_Crediario_Baixa: TDataSource
    DataSet = SDS_Crediario_Baixa
    Left = 168
    Top = 56
  end
  object DTS_Cliente: TDataSource
    Left = 168
    Top = 104
  end
  object SDS_BaixarCheque: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CHEQUES WHERE COMPENSADO = '#39'N'#39';'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 127
    object SDS_BaixarChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_BaixarChequeCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_BaixarChequeBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_BaixarChequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_BaixarChequeCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_BaixarChequeCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_BaixarChequeTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_BaixarChequeTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_BaixarChequeN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_BaixarChequeQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_BaixarChequeVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_BaixarChequeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_BaixarChequeRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_BaixarChequeRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_BaixarChequeMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_BaixarChequeDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_BaixarChequeDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_BaixarChequeDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_BaixarChequeDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_BaixarChequeUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_BaixarChequeUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_BaixarChequeCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_BaixarChequeCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_BaixarChequeNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_BaixarChequeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object SDS_BaixarChequeCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object SDS_BaixarChequeNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SDS_BaixarChequeCOD_BARRAS_CHEQUE: TStringField
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
    object SDS_BaixarChequeCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
  end
  object DTS_BaixarCheque: TDataSource
    DataSet = SDS_BaixarCheque
    Left = 154
    Top = 150
  end
  object SDS_Cheque_Retornar: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from  V_CHEQUES_RETORNAR  order by N_CHEQUE asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 207
    object SDS_Cheque_RetornarCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_Cheque_RetornarCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_Cheque_RetornarBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_Cheque_RetornarAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_Cheque_RetornarCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_Cheque_RetornarCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_Cheque_RetornarTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_Cheque_RetornarTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_Cheque_RetornarN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_Cheque_RetornarQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_Cheque_RetornarVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object SDS_Cheque_RetornarCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_Cheque_RetornarRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_Cheque_RetornarRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_Cheque_RetornarMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_Cheque_RetornarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_Cheque_RetornarDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_Cheque_RetornarDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_Cheque_RetornarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_Cheque_RetornarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_Cheque_RetornarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_Cheque_RetornarCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_Cheque_RetornarCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_Cheque_RetornarNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_Cheque_Retornar: TDataSource
    DataSet = SDS_Cheque_Retornar
    Left = 162
    Top = 206
  end
  object SDS_BaixarChequeRetornados: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 
      'select * from V_CHEQUES_RETORNADOS_A_PAGAR  order by N_CHEQUE as' +
      'c'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 283
    Top = 112
    object SDS_BaixarChequeRetornadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_BaixarChequeRetornadosCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_BaixarChequeRetornadosBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_BaixarChequeRetornadosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_BaixarChequeRetornadosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_BaixarChequeRetornadosCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_BaixarChequeRetornadosTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_BaixarChequeRetornadosTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_BaixarChequeRetornadosN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_BaixarChequeRetornadosQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_BaixarChequeRetornadosVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object SDS_BaixarChequeRetornadosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_BaixarChequeRetornadosRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_BaixarChequeRetornadosRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_BaixarChequeRetornadosMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_BaixarChequeRetornadosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_BaixarChequeRetornadosDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_BaixarChequeRetornadosDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_BaixarChequeRetornadosDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_BaixarChequeRetornadosUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_BaixarChequeRetornadosUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_BaixarChequeRetornadosCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_BaixarChequeRetornadosCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_BaixarChequeRetornadosNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
  end
  object DTS_BaixarChequeRetornados: TDataSource
    DataSet = SDS_BaixarChequeRetornados
    Left = 410
    Top = 110
  end
  object SPC_Juros: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'MULTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIAS_VENC'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO_JUROS_DIA'
    Left = 42
    Top = 8
  end
  object SDS_CREDIARIO_VENCIDO: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 
      'select * from V_CREDIARIO_RECEBER_VENCIDO ORDER BY DATA_VENCIMEN' +
      'TO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
        Value = 1
      end>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 187
    Top = 8
    object SDS_CREDIARIO_VENCIDOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CREDIARIO_VENCIDOCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_CREDIARIO_VENCIDODATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_CREDIARIO_VENCIDODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_CREDIARIO_VENCIDODATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CREDIARIO_VENCIDOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_CREDIARIO_VENCIDOUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_CREDIARIO_VENCIDOUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CREDIARIO_VENCIDOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_CREDIARIO_VENCIDOVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 8
    end
    object SDS_CREDIARIO_VENCIDOVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 8
    end
    object SDS_CREDIARIO_VENCIDOVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 8
    end
    object SDS_CREDIARIO_VENCIDOVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 8
    end
    object SDS_CREDIARIO_VENCIDOVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 8
    end
    object SDS_CREDIARIO_VENCIDOVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 8
    end
    object SDS_CREDIARIO_VENCIDOVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 8
    end
    object SDS_CREDIARIO_VENCIDOCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CREDIARIO_VENCIDOPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_CREDIARIO_VENCIDONUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_CREDIARIO_VENCIDOBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_CREDIARIO_VENCIDOREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 10
    end
    object SDS_CREDIARIO_VENCIDODATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_CREDIARIO_VENCIDOID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_CREDIARIO_VENCIDOENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_CREDIARIO_VENCIDOCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CREDIARIO_VENCIDONUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_CREDIARIO_VENCIDOCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_CREDIARIO_VENCIDOTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_CREDIARIO_VENCIDOCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_CREDIARIO_VENCIDONUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_CREDIARIO_VENCIDOSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_CREDIARIO_VENCIDONOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_CREDIARIO_VENCIDOANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_CREDIARIO_VENCIDOMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object SDS_CREDIARIO_VENCIDOTP_BAIXA: TStringField
      FieldName = 'TP_BAIXA'
      Size = 1
    end
    object SDS_CREDIARIO_VENCIDOID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object SDS_CREDIARIO_VENCIDONOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
    end
    object SDS_CREDIARIO_VENCIDOCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object SDS_CREDIARIO_VENCIDOCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_CREDIARIO_VENCIDODT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object SDS_CREDIARIO_VENCIDODIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
  end
  object DTS_CREDIARIO_VENCIDO: TDataSource
    DataSet = SDS_CREDIARIO_VENCIDO
    Left = 362
    Top = 8
  end
  object SDS_ChequesBaixar: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CHEQUES  WHERE COMPENSADO='#39'N'#39' order by  CODIGO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 265
    Top = 175
    object SDS_ChequesBaixarCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_ChequesBaixarCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_ChequesBaixarBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_ChequesBaixarAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_ChequesBaixarCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_ChequesBaixarCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_ChequesBaixarTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_ChequesBaixarTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_ChequesBaixarN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_ChequesBaixarQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_ChequesBaixarVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      Precision = 15
      Size = 8
    end
    object SDS_ChequesBaixarCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_ChequesBaixarRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesBaixarRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_ChequesBaixarMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_ChequesBaixarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_ChequesBaixarDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_ChequesBaixarDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_ChequesBaixarDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_ChequesBaixarUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_ChequesBaixarUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_ChequesBaixarCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_ChequesBaixarCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_ChequesBaixarNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_ChequesBaixarCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
  end
  object DTS_ChequesBaixar: TDataSource
    DataSet = SDS_ChequesBaixar
    Left = 370
    Top = 182
  end
  object SDS_Crediario_Baixa1: TSimpleDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'Total'
        Expression = 'Sum(Valor_Total)'
        Visible = False
      end>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_CREDIARIO_BOLETOS order by data_vencimento asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_CLIENTE'
    MasterFields = 'CODIGO'
    MasterSource = DM.DTS_Clientes
    PacketRecords = 0
    Params = <>
    Left = 289
    Top = 51
    object SDS_Crediario_Baixa1CODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SDS_Crediario_Baixa1CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object SDS_Crediario_Baixa1DATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_Crediario_Baixa1DATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_Crediario_Baixa1DATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_Crediario_Baixa1HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_Crediario_Baixa1USUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_Crediario_Baixa1USUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_Crediario_Baixa1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_Crediario_Baixa1VALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1VALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1VALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1VALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1VALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1VALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1VALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1CODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_Crediario_Baixa1PARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_Crediario_Baixa1NUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_Crediario_Baixa1BANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_Crediario_Baixa1REMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object SDS_Crediario_Baixa1DATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_Crediario_Baixa1ID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_Crediario_Baixa1ENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_Crediario_Baixa1COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_Crediario_Baixa1NUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_Crediario_Baixa1CODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_Crediario_Baixa1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_Crediario_Baixa1CHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_Crediario_Baixa1NUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_Crediario_Baixa1SERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_Crediario_Baixa1NOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_Crediario_Baixa1ID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
    object SDS_Crediario_Baixa1COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
    end
    object SDS_Crediario_Baixa1COMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object SDS_Crediario_Baixa1DT_PREVISAO_PGTO: TDateField
      FieldName = 'DT_PREVISAO_PGTO'
    end
    object SDS_Crediario_Baixa1DIAS_VENCIDO: TIntegerField
      FieldName = 'DIAS_VENCIDO'
    end
  end
  object dts_crediario_baixa1: TDataSource
    DataSet = SDS_Crediario_Baixa1
    Left = 401
    Top = 56
  end
  object Sds_Itens_venda: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from pedidos_itens'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO_COMPRA'
    MasterSource = DTS_Crediario_Baixa
    PacketRecords = 0
    Params = <>
    Left = 504
    Top = 8
    object Sds_Itens_vendaCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_Itens_vendaCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_Itens_vendaDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_Itens_vendaPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Itens_vendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object Sds_Itens_vendaQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 8
    end
    object Sds_Itens_vendaPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Sds_Itens_vendaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dts_itens_venda: TDataSource
    DataSet = Sds_Itens_venda
    Left = 505
    Top = 64
  end
  object Sds_parcelas_baixas: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select *  from CREDIARIO_RECEBIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 48
    Top = 280
    object Sds_parcelas_baixasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_parcelas_baixasCOD_CREDIAIRIO: TIntegerField
      FieldName = 'COD_CREDIAIRIO'
      Required = True
    end
    object Sds_parcelas_baixasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Sds_parcelas_baixasPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 6
    end
    object Sds_parcelas_baixasVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 2
    end
    object Sds_parcelas_baixasJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 2
    end
    object Sds_parcelas_baixasMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 2
    end
    object Sds_parcelas_baixasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object Sds_parcelas_baixasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Sds_parcelas_baixasDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object Sds_parcelas_baixasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Sds_parcelas_baixasCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Sds_parcelas_baixasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Sds_parcelas_baixasCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object Sds_parcelas_baixasSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      Precision = 15
      Size = 2
    end
    object Sds_parcelas_baixasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object Dts_Parcelas_Baixas: TDataSource
    DataSet = Sds_parcelas_baixas
    Left = 152
    Top = 280
  end
  object Dts_Crediario_recebido: TDataSource
    DataSet = Cds_crediario_Recebido
    Left = 376
    Top = 296
  end
  object Qry_Crediario_Recebido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from crediario_recebido')
    SQLConnection = DM.SQLC
    Left = 280
    Top = 248
    object Qry_Crediario_RecebidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_Crediario_RecebidoCOD_CREDIAIRIO: TIntegerField
      FieldName = 'COD_CREDIAIRIO'
      Required = True
    end
    object Qry_Crediario_RecebidoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Qry_Crediario_RecebidoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 6
    end
    object Qry_Crediario_RecebidoVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
      Size = 2
    end
    object Qry_Crediario_RecebidoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
      Size = 2
    end
    object Qry_Crediario_RecebidoMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 2
    end
    object Qry_Crediario_RecebidoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object Qry_Crediario_RecebidoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object Qry_Crediario_RecebidoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object Qry_Crediario_RecebidoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Qry_Crediario_RecebidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Qry_Crediario_RecebidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Qry_Crediario_RecebidoCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object Qry_Crediario_RecebidoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      Precision = 15
      Size = 2
    end
    object Qry_Crediario_RecebidoSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      Precision = 15
      Size = 2
    end
    object Qry_Crediario_RecebidoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object Dsp_crediario_Recebido: TDataSetProvider
    DataSet = Qry_Crediario_Recebido
    Left = 264
    Top = 304
  end
  object Cds_crediario_Recebido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_crediario_Recebido'
    Left = 384
    Top = 248
    object Cds_crediario_RecebidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Cds_crediario_RecebidoCOD_CREDIAIRIO: TIntegerField
      FieldName = 'COD_CREDIAIRIO'
      Required = True
    end
    object Cds_crediario_RecebidoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Cds_crediario_RecebidoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 6
    end
    object Cds_crediario_RecebidoVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_crediario_RecebidoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_crediario_RecebidoMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_crediario_RecebidoDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_crediario_RecebidoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_crediario_RecebidoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object Cds_crediario_RecebidoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Cds_crediario_RecebidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Cds_crediario_RecebidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Cds_crediario_RecebidoCOD_COMPRA: TIntegerField
      FieldName = 'COD_COMPRA'
    end
    object Cds_crediario_RecebidoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_crediario_RecebidoSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      currency = True
      Precision = 15
      Size = 2
    end
    object Cds_crediario_RecebidoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object QRY_MOV_DIARIO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM MOVIMENTO_DIARIO')
    SQLConnection = DM.SQLC
    Left = 481
    Top = 185
    object QRY_MOV_DIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QRY_MOV_DIARIODATA: TDateField
      FieldName = 'DATA'
    end
    object QRY_MOV_DIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object QRY_MOV_DIARIOUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object QRY_MOV_DIARIOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QRY_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object QRY_MOV_DIARIOVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object QRY_MOV_DIARIOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object QRY_MOV_DIARIONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object QRY_MOV_DIARIOCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object QRY_MOV_DIARIOORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object QRY_MOV_DIARIOCOD_CREDIARIO: TIntegerField
      FieldName = 'COD_CREDIARIO'
    end
  end
  object DSP_MOV_DIARIO: TDataSetProvider
    DataSet = QRY_MOV_DIARIO
    Left = 473
    Top = 233
  end
  object CDS_MOV_DIARIO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_MOV_DIARIO'
    Left = 554
    Top = 177
    object CDS_MOV_DIARIOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_MOV_DIARIODATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_MOV_DIARIOHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object CDS_MOV_DIARIOUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object CDS_MOV_DIARIOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object CDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      Precision = 15
      Size = 2
    end
    object CDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      Precision = 15
      Size = 2
    end
    object CDS_MOV_DIARIOCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object CDS_MOV_DIARIONUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object CDS_MOV_DIARIOCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object CDS_MOV_DIARIOORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
    object CDS_MOV_DIARIOCOD_CREDIARIO: TIntegerField
      FieldName = 'COD_CREDIARIO'
    end
  end
  object DTS_MOV_DIARIO: TDataSource
    DataSet = CDS_MOV_DIARIO
    Left = 561
    Top = 225
  end
  object Sds_cheques: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CHEQUES order by  DATA_CADASTRO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 481
    Top = 311
    object Sds_chequesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object Sds_chequesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_chequesCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object Sds_chequesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object Sds_chequesAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object Sds_chequesCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object Sds_chequesCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object Sds_chequesTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object Sds_chequesTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object Sds_chequesN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object Sds_chequesQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object Sds_chequesVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
      Size = 8
    end
    object Sds_chequesCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object Sds_chequesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object Sds_chequesRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object Sds_chequesRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object Sds_chequesMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object Sds_chequesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object Sds_chequesDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object Sds_chequesDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object Sds_chequesDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object Sds_chequesUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object Sds_chequesUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object Sds_chequesCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object Sds_chequesCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object Sds_chequesNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object Sds_chequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Sds_chequesCOD_BARRAS_CHEQUE: TStringField
      FieldName = 'COD_BARRAS_CHEQUE'
      Size = 50
    end
  end
  object Dts_cheques: TDataSource
    DataSet = Sds_cheques
    Left = 570
    Top = 310
  end
end

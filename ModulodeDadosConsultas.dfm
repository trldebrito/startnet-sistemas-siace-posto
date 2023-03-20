object DMC: TDMC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 728
  Width = 953
  object SDS_Estoque_Atual: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 28
    Top = 10
    object SDS_Estoque_AtualCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_AtualDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_AtualPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_AtualVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_AtualESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_AtualESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object SDS_Estoque_AtualATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
  end
  object DTS_Estoque_Atual: TDataSource
    DataSet = SDS_Estoque_Atual
    Left = 39
    Top = 72
  end
  object SDS_Estoque_Atual_Minimo: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_MINIMO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 131
    Top = 96
    object SDS_Estoque_Atual_MinimoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_Atual_MinimoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_Atual_MinimoESTOQUE_MINIMO: TIntegerField
      Alignment = taCenter
      FieldName = 'ESTOQUE_MINIMO'
    end
    object SDS_Estoque_Atual_MinimoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_Atual_MinimoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
  end
  object DTS_Estoque_Atual_Minimo: TDataSource
    DataSet = SDS_Estoque_Atual_Minimo
    Left = 133
    Top = 144
  end
  object SDS_Estoque_Atual_Maximo: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_MAXIMO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 37
    Top = 121
    object SDS_Estoque_Atual_MaximoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_Atual_MaximoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_Atual_MaximoESTOQUE_MAXIMO: TIntegerField
      Alignment = taCenter
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object SDS_Estoque_Atual_MaximoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_Atual_MaximoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
  end
  object DTS_Estoque_Atual_Maximo: TDataSource
    DataSet = SDS_Estoque_Atual_Maximo
    Left = 37
    Top = 170
  end
  object SQLD_Estoque_Atual_Periodo: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_CAD_PERIODO(:DATAI,:DATAF) order' +
      ' by DATACAD asc'
    MaxBlobSize = -1
    Params = <
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
    Left = 253
    Top = 25
    object SQLD_Estoque_Atual_PeriodoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_PeriodoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_PeriodoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SQLD_Estoque_Atual_PeriodoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SQLD_Estoque_Atual_PeriodoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object SQLD_Estoque_Atual_PeriodoPRECO_VENDA: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SQLD_Estoque_Atual_PeriodoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object DTSP_Estoque_Atual_Periodo: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Periodo
    Left = 253
    Top = 71
  end
  object CDS_Estoque_Atual_Periodo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Estoque_Atual_Periodo'
    Left = 253
    Top = 115
    object CDS_Estoque_Atual_PeriodoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_PeriodoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_PeriodoDATACAD: TDateField
      Alignment = taCenter
      FieldName = 'DATACAD'
    end
    object CDS_Estoque_Atual_PeriodoUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object CDS_Estoque_Atual_PeriodoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_PeriodoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_PeriodoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object DTS_Estoque_Atual_Periodo: TDataSource
    DataSet = CDS_Estoque_Atual_Periodo
    Left = 254
    Top = 159
  end
  object SQLD_Estoque_Atual_Fornecedor: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_FORNECEDOR(:param) order by DESC' +
      'RICAO asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 369
    Top = 1
    object SQLD_Estoque_Atual_FornecedorNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object SQLD_Estoque_Atual_FornecedorCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_FornecedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object SQLD_Estoque_Atual_FornecedorPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_FornecedorESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
      Size = 2
    end
    object SQLD_Estoque_Atual_FornecedorVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_Estoque_Atual_FornecedorPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_Estoque_Atual_FornecedorVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTSP_Estoque_Atual_Fornecedor: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Fornecedor
    Left = 369
    Top = 45
  end
  object CDS_Estoque_Atual_Fornecedor: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Estoque_Atual_Fornecedor'
    Left = 370
    Top = 89
    object CDS_Estoque_Atual_FornecedorPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_Estoque_Atual_FornecedorVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_Estoque_Atual_FornecedorCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_FornecedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object CDS_Estoque_Atual_FornecedorPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_FornecedorNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object CDS_Estoque_Atual_FornecedorESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_FornecedorVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
  end
  object DTS_Estoque_Atual_For_Fornecedor: TDataSource
    DataSet = CDS_Estoque_Atual_Fornecedor
    Left = 371
    Top = 133
  end
  object SQLD_Estoque_Atual_Marca: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_MARCA (:param) order by DESCRICA' +
      'O asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 482
    Top = 24
    object SQLD_Estoque_Atual_MarcaCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_MarcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object SQLD_Estoque_Atual_MarcaPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_MarcaESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_MarcaVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_MarcaNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
  end
  object DSTP_Estoque_Atual_Marca: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Marca
    Left = 482
    Top = 67
  end
  object CDS_Estoque_Atual_Marca: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSTP_Estoque_Atual_Marca'
    Left = 483
    Top = 111
    object CDS_Estoque_Atual_MarcaCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_MarcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object CDS_Estoque_Atual_MarcaPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_MarcaESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_MarcaVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_MarcaNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
  end
  object DTS_Estoque_Atual_Marca: TDataSource
    DataSet = CDS_Estoque_Atual_Marca
    Left = 484
    Top = 155
  end
  object SQLD_Estoque_Atual_Grupo: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_GRUPO (:param) order by DESCRICA' +
      'O asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 587
    Top = 3
    object StringField4: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object StringField5: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_GrupoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_GrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
    object StringField7: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
  end
  object DSTP_Estoque_Atual_Grupo: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_Grupo
    Left = 587
    Top = 46
  end
  object CDS_Estoque_Atual_Grupo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSTP_Estoque_Atual_Grupo'
    Left = 588
    Top = 90
    object CDS_Estoque_Atual_GrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object StringField8: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_GrupoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object StringField11: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
  end
  object DTS_Estoque_Atual_Grupo: TDataSource
    DataSet = CDS_Estoque_Atual_Grupo
    Left = 589
    Top = 134
  end
  object SQLD_Estoque_Atual_SubGrupo: TSQLDataSet
    CommandText = 
      'select * from  SP_ESTOQUE_ATUAL_SUBGRUPO (:param) order by DESCR' +
      'ICAO asc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 716
    Top = 27
    object SQLD_Estoque_Atual_SubGrupoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object SQLD_Estoque_Atual_SubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object SQLD_Estoque_Atual_SubGrupoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
    end
    object SQLD_Estoque_Atual_SubGrupoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SQLD_Estoque_Atual_SubGrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
    end
    object StringField15: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
  end
  object DSTP_Estoque_Atual_SubGrupo: TDataSetProvider
    DataSet = SQLD_Estoque_Atual_SubGrupo
    Left = 716
    Top = 70
  end
  object CDS_Estoque_Atual_SubGrupo: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSTP_Estoque_Atual_SubGrupo'
    Left = 717
    Top = 114
    object CDS_Estoque_Atual_SubGrupoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object CDS_Estoque_Atual_SubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object CDS_Estoque_Atual_SubGrupoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_SubGrupoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object CDS_Estoque_Atual_SubGrupoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object CDS_Estoque_Atual_SubGrupoNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
  end
  object DTS_Estoque_Atual_SubGrupo: TDataSource
    DataSet = CDS_Estoque_Atual_SubGrupo
    Left = 726
    Top = 158
  end
  object SDS_Estoque_Atual_Zerado: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_ZERADO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 132
    Top = 3
    object SDS_Estoque_Atual_ZeradoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Estoque_Atual_ZeradoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Estoque_Atual_ZeradoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_Atual_ZeradoVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      currency = True
      Precision = 15
    end
    object SDS_Estoque_Atual_ZeradoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Estoque_Atual_ZeradoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_Estoque_Atual_ZeradoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
  end
  object DTS_Estoque_Atual_Zerado: TDataSource
    DataSet = SDS_Estoque_Atual_Zerado
    Left = 132
    Top = 49
  end
  object SDS_PDV: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_PRODUTO_PDV order by DESCRICAO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 41
    Top = 400
    object SDS_PDVCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_PDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_PDVABREVIADO: TStringField
      FieldName = 'ABREVIADO'
    end
    object SDS_PDVPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
    end
    object SDS_PDVCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object SDS_PDVFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object SDS_PDVCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_PDVDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 15
    end
    object SDS_PDVESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_PDVESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Precision = 15
    end
    object SDS_PDVESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object SDS_PDVSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_PDVDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_PDVREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object SDS_PDVPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 15
      Size = 2
    end
    object SDS_PDVFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_PDVNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 12
    end
    object SDS_PDVPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
  end
  object DTS_PDV: TDataSource
    DataSet = SDS_PDV
    Left = 40
    Top = 456
  end
  object SQLD_Pedidos: TSQLDataSet
    CommandText = 'select * from pedidos where codigo =:param'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 734
    Top = 399
    object SQLD_PedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SQLD_PedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_PedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object SQLD_PedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
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
    object SQLD_PedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
    object SQLD_PedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object SQLD_PedidosTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object SQLD_PedidosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object SQLD_PedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SQLD_PedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SQLD_PedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SQLD_PedidosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object SQLD_PedidosRG_IE: TStringField
      DisplayWidth = 15
      FieldName = 'RG_IE'
      Size = 15
    end
    object SQLD_PedidosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object SQLD_PedidosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SQLD_PedidosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SQLD_PedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object SQLD_PedidosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SQLD_PedidosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object SQLD_PedidosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SQLD_PedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SQLD_PedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object SQLD_PedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object SQLD_PedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object SQLD_PedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object SQLD_PedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object SQLD_PedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SQLD_PedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object SQLD_PedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object SQLD_PedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object SQLD_PedidosN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object SQLD_PedidosPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 70
    end
    object SQLD_PedidosQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object SQLD_PedidosSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object SQLD_PedidosMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 70
    end
    object SQLD_PedidosDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object SQLD_PedidosVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object SQLD_PedidosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object SQLD_PedidosENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 44
    end
    object SQLD_PedidosTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object SQLD_PedidosFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object SQLD_PedidosMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object SQLD_PedidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 70
    end
    object SQLD_PedidosCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SQLD_PedidosPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object SQLD_PedidosIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object SQLD_PedidosVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object SQLD_PedidosKM: TIntegerField
      FieldName = 'KM'
    end
    object SQLD_PedidosCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object SQLD_PedidosCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
  end
  object DTSP_Pedidos: TDataSetProvider
    DataSet = SQLD_Pedidos
    Left = 734
    Top = 444
  end
  object CDS_Pedidos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Pedidos'
    Left = 735
    Top = 488
    object CDS_PedidosVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_PedidosVALOR_TROCO: TFMTBCDField
      FieldName = 'VALOR_TROCO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_PedidosCODIGO: TIntegerField
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
    object CDS_PedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object CDS_PedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object CDS_PedidosCODIGO_CLIENTE: TIntegerField
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
    object CDS_PedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
    end
    object CDS_PedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object CDS_PedidosTP: TStringField
      FieldName = 'TP'
      Size = 1
    end
    object CDS_PedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object CDS_PedidosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object CDS_PedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object CDS_PedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object CDS_PedidosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CDS_PedidosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object CDS_PedidosRG_IE: TStringField
      DisplayWidth = 15
      FieldName = 'RG_IE'
      Size = 15
    end
    object CDS_PedidosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object CDS_PedidosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object CDS_PedidosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CDS_PedidosCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CDS_PedidosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CDS_PedidosNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object CDS_PedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object CDS_PedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object CDS_PedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object CDS_PedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object CDS_PedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object CDS_PedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object CDS_PedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object CDS_PedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object CDS_PedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object CDS_PedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object CDS_PedidosN_PARTIDA: TStringField
      FieldName = 'N_PARTIDA'
      Size = 15
    end
    object CDS_PedidosPROPRIEDADE: TStringField
      FieldName = 'PROPRIEDADE'
      Size = 70
    end
    object CDS_PedidosQUANT_VENDIDA: TFMTBCDField
      FieldName = 'QUANT_VENDIDA'
      Precision = 15
    end
    object CDS_PedidosSALDO_VENDIDO: TFMTBCDField
      FieldName = 'SALDO_VENDIDO'
      Precision = 15
    end
    object CDS_PedidosMED_VETERINARIO: TStringField
      FieldName = 'MED_VETERINARIO'
      Size = 70
    end
    object CDS_PedidosDATA_VACINA: TDateField
      FieldName = 'DATA_VACINA'
    end
    object CDS_PedidosVALOR_AVISTA: TFMTBCDField
      FieldName = 'VALOR_AVISTA'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosVALOR_PRAZO: TFMTBCDField
      FieldName = 'VALOR_PRAZO'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Size = 7
    end
    object CDS_PedidosTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CDS_PedidosENTREGADOR: TStringField
      FieldName = 'ENTREGADOR'
      Size = 44
    end
    object CDS_PedidosTIPO_PEDIDO: TStringField
      FieldName = 'TIPO_PEDIDO'
      FixedChar = True
      Size = 10
    end
    object CDS_PedidosFECHADO: TStringField
      FieldName = 'FECHADO'
      Size = 5
    end
    object CDS_PedidosMESA: TStringField
      FieldName = 'MESA'
      Size = 3
    end
    object CDS_PedidosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 70
    end
    object CDS_PedidosCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object CDS_PedidosPROD_RURAL: TStringField
      FieldName = 'PROD_RURAL'
      Size = 1
    end
    object CDS_PedidosIE_PRODUTOR: TStringField
      FieldName = 'IE_PRODUTOR'
      FixedChar = True
      Size = 15
    end
    object CDS_PedidosVLR_PIS: TFMTBCDField
      FieldName = 'VLR_PIS'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosVLR_COFINS: TFMTBCDField
      FieldName = 'VLR_COFINS'
      Precision = 15
      Size = 2
    end
    object CDS_PedidosKM: TIntegerField
      FieldName = 'KM'
    end
    object CDS_PedidosCHAVE_FP: TStringField
      FieldName = 'CHAVE_FP'
      Size = 100
    end
    object CDS_PedidosCHAVE_FP_CANCEL: TStringField
      FieldName = 'CHAVE_FP_CANCEL'
      Size = 30
    end
  end
  object DTS_Pedidos: TDataSource
    DataSet = CDS_Pedidos
    Left = 736
    Top = 530
  end
  object SDS_Pedido_Itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from  PEDIDOS_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 732
    Top = 303
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
    object SDS_Pedido_ItensDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object SDS_Pedido_ItensQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object SDS_Pedido_ItensVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
    end
    object SDS_Pedido_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_Pedido_ItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object SDS_Pedido_ItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Pedido_ItensNOME_MARCA: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_MARCA'
      LookupDataSet = DM.SDS_PRODUTOS
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_MARCA'
      KeyFields = 'CODIGO_PROD'
      Size = 30
      Lookup = True
    end
    object SDS_Pedido_ItensITEN: TIntegerField
      FieldName = 'ITEN'
    end
    object SDS_Pedido_ItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_Pedido_ItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_Pedido_ItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_Pedido_ItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_Pedido_ItensPERC_ISS: TFMTBCDField
      FieldName = 'PERC_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_ISS: TFMTBCDField
      FieldName = 'BASE_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_ISS: TFMTBCDField
      FieldName = 'VL_ISS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_ICM: TFMTBCDField
      FieldName = 'PERC_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_ICM: TFMTBCDField
      FieldName = 'VL_ICM'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_IPI: TFMTBCDField
      FieldName = 'BASE_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_IPI: TFMTBCDField
      FieldName = 'VL_IPI'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_COFINS: TFMTBCDField
      FieldName = 'PERC_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_COFINS: TFMTBCDField
      FieldName = 'BASE_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_COFINS: TFMTBCDField
      FieldName = 'VL_COFINS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_ICMS_SUBST: TFMTBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_ICMS_SUBST: TFMTBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_ICMS_SUBST: TFMTBCDField
      FieldName = 'VL_ICMS_SUBST'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensPERC_PIS: TFMTBCDField
      FieldName = 'PERC_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensBASE_PIS: TFMTBCDField
      FieldName = 'BASE_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensVL_PIS: TFMTBCDField
      FieldName = 'VL_PIS'
      Precision = 15
      Size = 2
    end
    object SDS_Pedido_ItensIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Size = 3
    end
  end
  object DTS_Pedido_Itens: TDataSource
    DataSet = SDS_Pedido_Itens
    Left = 733
    Top = 347
  end
  object DTSP_Orcamentos: TDataSetProvider
    DataSet = SQLD_Orcamentos
    Left = 628
    Top = 444
  end
  object DTS_Orcamentos: TDataSource
    DataSet = CDS_Orcamentos
    Left = 630
    Top = 546
  end
  object SDS_Orcamento_Itens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from ORCAMENTOS_ITENS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_ID'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Orcamentos
    PacketRecords = 0
    Params = <>
    Left = 619
    Top = 302
    object SDS_Orcamento_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Orcamento_ItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object SDS_Orcamento_ItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
    end
    object SDS_Orcamento_ItensNOME_MARCA: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_MARCA'
      LookupDataSet = DM.SDS_PRODUTOS
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_MARCA'
      KeyFields = 'CODIGO_PROD'
      Size = 30
      Lookup = True
    end
    object SDS_Orcamento_ItensCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object SDS_Orcamento_ItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object SDS_Orcamento_ItensPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_Orcamento_ItensPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Orcamento_ItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object SDS_Orcamento_ItensSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 6
    end
    object SDS_Orcamento_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object SDS_Orcamento_ItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_Orcamento_ItensCOD_NCM: TStringField
      FieldName = 'COD_NCM'
      FixedChar = True
      Size = 10
    end
    object SDS_Orcamento_ItensPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object SDS_Orcamento_ItensITEN: TIntegerField
      FieldName = 'ITEN'
    end
  end
  object DTS_Orcamento_Itens: TDataSource
    DataSet = SDS_Orcamento_Itens
    Left = 627
    Top = 347
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
    Left = 731
    Top = 213
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
    object SDS_ClienteRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object SDS_ClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_ClienteCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_ClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_ClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object SDS_ClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_ClienteNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object SDS_ClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object SDS_ClienteFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object SDS_ClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDS_ClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SDS_ClienteUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_ClienteDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_ClienteOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_ClienteCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object SDS_ClienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_ClienteRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_ClientePAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SDS_ClienteMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SDS_ClienteNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object SDS_ClienteCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object SDS_ClienteNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object SDS_ClienteTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object SDS_ClientePROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object SDS_ClienteLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object SDS_ClientePROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object SDS_ClienteTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object SDS_ClienteFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object SDS_ClienteOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object SDS_ClienteBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_ClienteNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object SDS_ClienteNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object SDS_ClienteCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object SDS_ClienteNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object SDS_ClienteNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object SDS_ClienteTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object SDS_ClienteTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object SDS_ClienteBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object SDS_ClienteTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClienteOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object SDS_ClienteOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object SDS_ClientePG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientePG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_ClientePG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_ClienteREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_ClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_ClienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_ClienteORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_ClienteDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object SDS_ClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object SDS_ClienteNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_ClienteCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object SDS_ClienteCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object SDS_ClienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_ClienteCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object SDS_ClientePONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object SDS_ClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_ClienteCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object SDS_ClienteCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object SDS_ClienteCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object SDS_ClienteVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_ClienteNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object SDS_ClienteENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object SDS_ClienteENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object SDS_ClienteDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_ClienteDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_ClienteRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object SDS_ClienteRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_ClienteFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object SDS_ClienteENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object SDS_ClienteCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object SDS_ClienteCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object SDS_ClienteCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object SDS_ClienteLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object SDS_ClienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object SDS_ClientePRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_ClienteINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object SDS_ClienteCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
  end
  object DTS_Cliente: TDataSource
    DataSet = SDS_Cliente
    Left = 731
    Top = 258
  end
  object SDS_CLIENTEO: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO_CLIENTE'
    MasterSource = DTS_Orcamentos
    PacketRecords = 0
    Params = <>
    Left = 616
    Top = 211
    object SDS_CLIENTEOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CLIENTEONOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object SDS_CLIENTEOENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SDS_CLIENTEOCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SDS_CLIENTEOUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SDS_CLIENTEOCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object SDS_CLIENTEOBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object SDS_CLIENTEOAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object SDS_CLIENTEOTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object SDS_CLIENTEOTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object SDS_CLIENTEOEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SDS_CLIENTEONASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object SDS_CLIENTEOSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object SDS_CLIENTEOFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object SDS_CLIENTEORG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object SDS_CLIENTEOFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object SDS_CLIENTEOCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object SDS_CLIENTEOUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object SDS_CLIENTEODATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object SDS_CLIENTEOCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object SDS_CLIENTEOOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object SDS_CLIENTEOCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object SDS_CLIENTEOESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object SDS_CLIENTEORESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object SDS_CLIENTEOPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object SDS_CLIENTEOMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object SDS_CLIENTEONOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object SDS_CLIENTEOCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object SDS_CLIENTEONASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object SDS_CLIENTEOTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object SDS_CLIENTEOPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object SDS_CLIENTEOLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object SDS_CLIENTEOPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object SDS_CLIENTEOTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object SDS_CLIENTEOFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object SDS_CLIENTEOOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object SDS_CLIENTEOBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object SDS_CLIENTEONOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object SDS_CLIENTEONUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object SDS_CLIENTEOCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object SDS_CLIENTEONOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object SDS_CLIENTEONOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object SDS_CLIENTEOTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object SDS_CLIENTEOTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object SDS_CLIENTEOBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object SDS_CLIENTEOTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object SDS_CLIENTEOOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object SDS_CLIENTEOPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object SDS_CLIENTEOREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEONUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object SDS_CLIENTEOCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object SDS_CLIENTEOCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_CLIENTEOORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object SDS_CLIENTEODATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object SDS_CLIENTEONATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object SDS_CLIENTEONATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object SDS_CLIENTEOCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object SDS_CLIENTEOCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object SDS_CLIENTEODATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SDS_CLIENTEOCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object SDS_CLIENTEOPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object SDS_CLIENTEOATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_CLIENTEOCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object SDS_CLIENTEOCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object SDS_CLIENTEOCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object SDS_CLIENTEOVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object SDS_CLIENTEONUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object SDS_CLIENTEOENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object SDS_CLIENTEOENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object SDS_CLIENTEODATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object SDS_CLIENTEODATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object SDS_CLIENTEORG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object SDS_CLIENTEORENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEODATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object SDS_CLIENTEOFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object SDS_CLIENTEOENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object SDS_CLIENTEOCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object SDS_CLIENTEOCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object SDS_CLIENTEOCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object SDS_CLIENTEOLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object SDS_CLIENTEOPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object SDS_CLIENTEOINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object SDS_CLIENTEOCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object SDS_CLIENTEOCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object SDS_CLIENTEOBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object SDS_CLIENTEOUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object SDS_CLIENTEOCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object SDS_CLIENTEONOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object SDS_CLIENTEONOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object SDS_CLIENTEOSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object SDS_CLIENTEOSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object SDS_CLIENTEOSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object SDS_CLIENTEOSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object SDS_CLIENTEOCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object SDS_CLIENTEODATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object SDS_CLIENTEODATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object SDS_CLIENTEOCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object SDS_CLIENTEOREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object SDS_CLIENTEOENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object SDS_CLIENTEOENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object SDS_CLIENTEOENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object SDS_CLIENTEOENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object SDS_CLIENTEORGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object SDS_CLIENTEOAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object SDS_CLIENTEOAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object SDS_CLIENTEOAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object SDS_CLIENTEOCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object SDS_CLIENTEOCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object SDS_CLIENTEOCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object SDS_CLIENTEOFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object SDS_CLIENTEOCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
  end
  object DTS_CLIENTEO: TDataSource
    DataSet = SDS_CLIENTEO
    Left = 619
    Top = 258
  end
  object SQLD_CPP_FOR: TSQLDataSet
    CommandText = 
      'select * from SP_CONTAS_PAGAR_P_FORP(:PARAM) order by DATA_VENCI' +
      'MENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 513
    Top = 222
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
    end
    object SQLD_CPP_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPP_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPP_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPP_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPP_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
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
    CommandText = 
      'select * from SP_CONTAS_PAGAR_P_PERIODO_PLC(:Datai:,:Dataf) orde' +
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
    Top = 221
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
    end
    object SQLD_CPP_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPP_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPP_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPP_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPP_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
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
    CommandText = 
      'select * from SP_CONTAS_PAGAR_A_FORP(:PARAM) order by DATA_VENCI' +
      'MENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 320
    Top = 221
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
    end
    object SQLD_CPA_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPA_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPA_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
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
    CommandText = 
      'select * from SP_CONTAS_PAGAR_A_PERIODO_PLC(:Datai:,:Dataf) orde' +
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
    Top = 221
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
    end
    object SQLD_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
    end
    object SQLD_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 15
    end
    object SQLD_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      Precision = 15
    end
    object SQLD_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Precision = 15
    end
    object SQLD_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      Precision = 15
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
    CommandText = 
      'select * from SP_CONTAS_PAGAR_NA_FORP(:PARAM) order by DATA_VENC' +
      'IMENTO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARAM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 127
    Top = 221
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
    end
    object SQLD_CPNA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
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
    CommandText = 
      'select * from SP_CONTAS_PAGAR_NA_PERIODO_PLC(:Datai:,:Dataf) ord' +
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
    Top = 220
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
    end
    object SQLD_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
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
    Top = 263
  end
  object DTSP_CPNA_FOR: TDataSetProvider
    DataSet = SQLD_CPNA_FOR
    Left = 127
    Top = 264
  end
  object DTSP_CPA_DATA: TDataSetProvider
    DataSet = SQLD_CPA_DATA
    Left = 224
    Top = 264
  end
  object DTSP_CPA_FOR: TDataSetProvider
    DataSet = SQLD_CPA_FOR
    Left = 320
    Top = 264
  end
  object DTSP_CPP_DATA: TDataSetProvider
    DataSet = SQLD_CPP_DATA
    Left = 415
    Top = 264
  end
  object DTSP_CPP_FOR: TDataSetProvider
    DataSet = SQLD_CPP_FOR
    Left = 513
    Top = 265
  end
  object CDS_CPP_FOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_CPP_FOR'
    Left = 514
    Top = 309
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
    end
    object CDS_CPP_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
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
    Top = 308
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
    end
    object CDS_CPP_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPP_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
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
    Top = 308
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
    end
    object CDS_CPA_FORMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_FORVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
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
    Top = 308
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
    end
    object CDS_CPA_DATAMULTA: TFMTBCDField
      FieldName = 'MULTA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAJUROS: TFMTBCDField
      FieldName = 'JUROS'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAVALOR_DOCUMENTO: TFMTBCDField
      FieldName = 'VALOR_DOCUMENTO'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
    end
    object CDS_CPA_DATAVALOR_BAIXA: TFMTBCDField
      FieldName = 'VALOR_BAIXA'
      currency = True
      Precision = 15
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
    Top = 308
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
    end
    object CDS_CPNA_FORVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
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
    Top = 307
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
    end
    object CDS_CPNA_DataVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      currency = True
      Precision = 15
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
    Top = 351
  end
  object Dts_CPNA_FOR: TDataSource
    DataSet = CDS_CPNA_FOR
    Left = 120
    Top = 352
  end
  object DTS_CPA_DATA: TDataSource
    DataSet = CDS_CPA_DATA
    Left = 225
    Top = 352
  end
  object DTS_CPA_FOR: TDataSource
    DataSet = CDS_CPA_FOR
    Left = 321
    Top = 352
  end
  object DTS_CPP_DATA: TDataSource
    DataSet = CDS_CPP_DATA
    Left = 416
    Top = 352
  end
  object DTS_CPP_FOR: TDataSource
    DataSet = CDS_CPP_FOR
    Left = 514
    Top = 353
  end
  object SDS_Est_Atual_Custo: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from V_ESTOQUE_ATUAL_CUSTO ORDER BY DESCRICAO ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 209
    Top = 402
    object SDS_Est_Atual_CustoCODIGO_BARRAS: TStringField
      Alignment = taCenter
      FieldName = 'CODIGO_BARRAS'
      FixedChar = True
      Size = 13
    end
    object SDS_Est_Atual_CustoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_Est_Atual_CustoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      currency = True
      Precision = 15
    end
    object SDS_Est_Atual_CustoESTOQUE_ATUAL: TFMTBCDField
      Alignment = taCenter
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
    end
    object SDS_Est_Atual_CustoVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      currency = True
      Precision = 15
    end
    object SDS_Est_Atual_CustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Est_Atual_CustoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_Est_Atual_CustoVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      currency = True
      Precision = 15
      Size = 6
    end
    object SDS_Est_Atual_CustoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_Est_Atual_CustoDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
  end
  object DTS_Est_Atual_Custo: TDataSource
    DataSet = SDS_Est_Atual_Custo
    Left = 223
    Top = 448
  end
  object SQLD_Entradas: TSQLDataSet
    CommandText = 'select  *  from SP_ENTRADAS_CODIGO(:param)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 502
    Top = 399
    object SQLD_EntradasCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object SQLD_EntradasNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object SQLD_EntradasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object SQLD_EntradasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object SQLD_EntradasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SQLD_EntradasTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      currency = True
      Precision = 15
    end
    object SQLD_EntradasCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object SQLD_EntradasIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object SQLD_EntradasUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SQLD_EntradasDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SQLD_EntradasOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTSP_Entradas: TDataSetProvider
    DataSet = SQLD_Entradas
    Left = 502
    Top = 444
  end
  object CDS_Entradas: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_Entradas'
    Left = 503
    Top = 488
    object CDS_EntradasCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object CDS_EntradasNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Required = True
    end
    object CDS_EntradasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CDS_EntradasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object CDS_EntradasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object CDS_EntradasTOTAL_NOTA: TFMTBCDField
      FieldName = 'TOTAL_NOTA'
      currency = True
      Precision = 15
    end
    object CDS_EntradasCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
    end
    object CDS_EntradasIE: TStringField
      FieldName = 'IE'
      Size = 15
    end
    object CDS_EntradasUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object CDS_EntradasDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CDS_EntradasOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
  end
  object DTS_Entradas: TDataSource
    DataSet = CDS_Entradas
    Left = 504
    Top = 531
  end
  object SDS_EntradasItens: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from NOTASFISCAIS_ITENS order by DESCRICAO asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_NOTA'
    MasterFields = 'CODIGO_NOTA'
    MasterSource = DTS_Entradas
    PacketRecords = 0
    Params = <>
    Left = 413
    Top = 406
    object SDS_EntradasItensCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Required = True
    end
    object SDS_EntradasItensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object SDS_EntradasItensCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 13
    end
    object SDS_EntradasItensCODIGO_NOTA: TIntegerField
      FieldName = 'CODIGO_NOTA'
      Required = True
    end
    object SDS_EntradasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object SDS_EntradasItensNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object SDS_EntradasItensCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object SDS_EntradasItensCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object SDS_EntradasItensDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object SDS_EntradasItensQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object SDS_EntradasItensVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      currency = True
      Precision = 15
    end
    object SDS_EntradasItensVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensDATA: TDateField
      FieldName = 'DATA'
    end
    object SDS_EntradasItensBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPERC_ICMS: TFMTBCDField
      FieldName = 'PERC_ICMS'
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPERC_IPI: TFMTBCDField
      FieldName = 'PERC_IPI'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object SDS_EntradasItensDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object SDS_EntradasItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object SDS_EntradasItensQUANT_FRACIONADA: TFMTBCDField
      FieldName = 'QUANT_FRACIONADA'
      Precision = 15
    end
    object SDS_EntradasItensLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object SDS_EntradasItensMARG_LUCRO: TFMTBCDField
      FieldName = 'MARG_LUCRO'
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object SDS_EntradasItensBASE_ICMS_ST: TFMTBCDField
      FieldName = 'BASE_ICMS_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensALIC_ICMS_ST: TFMTBCDField
      FieldName = 'ALIC_ICMS_ST'
      currency = True
      Precision = 15
      Size = 2
    end
    object SDS_EntradasItensVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_EntradasItens: TDataSource
    DataSet = SDS_EntradasItens
    Left = 413
    Top = 467
  end
  object Sds_Rel_Vendas: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from  REL_VENDAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftDate
        Name = 'datai'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dataf'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pedido'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cliente'
        ParamType = ptInput
      end>
    Params = <>
    Left = 148
    Top = 501
    object Sds_Rel_VendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Sds_Rel_VendasVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
    end
    object Sds_Rel_VendasVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
    end
    object Sds_Rel_VendasVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
    end
    object Sds_Rel_VendasDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object Sds_Rel_VendasCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object Sds_Rel_VendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object Sds_Rel_VendasVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
    end
    object Sds_Rel_VendasCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Required = True
    end
    object Sds_Rel_VendasCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 13
    end
    object Sds_Rel_VendasDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Size = 50
    end
    object Sds_Rel_VendasPRECO_UNITARIO: TFMTBCDField
      FieldName = 'PRECO_UNITARIO'
      Precision = 15
    end
    object Sds_Rel_VendasDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
    end
    object Sds_Rel_VendasQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
    end
    object Sds_Rel_VendasPRECO_TOTAL: TFMTBCDField
      FieldName = 'PRECO_TOTAL'
      Precision = 15
    end
    object Sds_Rel_VendasCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
    end
    object Sds_Rel_VendasDEV: TStringField
      FieldName = 'DEV'
      FixedChar = True
      Size = 1
    end
    object Sds_Rel_VendasQNT_DEV: TFMTBCDField
      FieldName = 'QNT_DEV'
      Precision = 15
    end
    object Sds_Rel_VendasVAL_DEV: TFMTBCDField
      FieldName = 'VAL_DEV'
      Precision = 15
    end
    object Sds_Rel_VendasENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
    end
    object Sds_Rel_VendasPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
  end
  object Dts_Rel_Vendas: TDataSource
    DataSet = Sds_Rel_Vendas
    Left = 160
    Top = 544
  end
  object SDS_Crediario_Contrato: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CREDIARIO order by DATA_VENCIMENTO ASC;'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 45
    Top = 506
    object SDS_Crediario_ContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_Crediario_ContratoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object SDS_Crediario_ContratoDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object SDS_Crediario_ContratoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_Crediario_ContratoDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_Crediario_ContratoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object SDS_Crediario_ContratoUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
    end
    object SDS_Crediario_ContratoUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_Crediario_ContratoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SDS_Crediario_ContratoVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_JUROS: TFMTBCDField
      FieldName = 'VALOR_JUROS'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
    end
    object SDS_Crediario_ContratoCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_Crediario_ContratoPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object SDS_Crediario_ContratoNUMBOLETO: TStringField
      FieldName = 'NUMBOLETO'
    end
    object SDS_Crediario_ContratoBANCO_PORTADOR: TIntegerField
      FieldName = 'BANCO_PORTADOR'
    end
    object SDS_Crediario_ContratoREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 1
    end
    object SDS_Crediario_ContratoDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object SDS_Crediario_ContratoID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
    end
    object SDS_Crediario_ContratoENVIADO: TStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object SDS_Crediario_ContratoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object SDS_Crediario_ContratoNUMBOLETO1: TIntegerField
      FieldName = 'NUMBOLETO1'
    end
    object SDS_Crediario_ContratoCODIGOCEDENTE: TStringField
      FieldName = 'CODIGOCEDENTE'
      Size = 12
    end
    object SDS_Crediario_ContratoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object SDS_Crediario_ContratoCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object SDS_Crediario_ContratoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object SDS_Crediario_ContratoSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
    object SDS_Crediario_ContratoNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 50
    end
    object SDS_Crediario_ContratoANO: TStringField
      FieldName = 'ANO'
      Size = 4
    end
    object SDS_Crediario_ContratoMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
  end
  object Dts_Crediario_contrato: TDataSource
    DataSet = SDS_Crediario_Contrato
    Left = 48
    Top = 552
  end
  object sds_mov_Caixa: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from MOVIMENTO_DIARIO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_VENDA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 112
    Top = 400
    object sds_mov_CaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_mov_CaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object sds_mov_CaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 150
    end
    object sds_mov_CaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
    end
    object sds_mov_CaixaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object sds_mov_CaixaVALOR_ENTRADA: TFMTBCDField
      FieldName = 'VALOR_ENTRADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_mov_CaixaVALOR_SAIDA: TFMTBCDField
      FieldName = 'VALOR_SAIDA'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_mov_CaixaCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object sds_mov_CaixaNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object sds_mov_CaixaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object sds_mov_CaixaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 3
    end
  end
  object Dts_mov_caixa: TDataSource
    DataSet = sds_mov_Caixa
    Left = 115
    Top = 445
  end
  object DTS_CHEQUES: TDataSource
    DataSet = SDS_CHEQUES
    Left = 318
    Top = 455
  end
  object SDS_CHEQUES: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CHEQUES order by DATA_DEPOSITO ASC;'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'CODIGO_COMPRA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 316
    Top = 406
    object SDS_CHEQUESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SDS_CHEQUESCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object SDS_CHEQUESBANCO: TStringField
      FieldName = 'BANCO'
      Size = 40
    end
    object SDS_CHEQUESAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object SDS_CHEQUESCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 15
    end
    object SDS_CHEQUESCONTA_DESDE: TDateField
      FieldName = 'CONTA_DESDE'
    end
    object SDS_CHEQUESTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 50
    end
    object SDS_CHEQUESTIPO_CHEQUE: TStringField
      FieldName = 'TIPO_CHEQUE'
    end
    object SDS_CHEQUESN_CHEQUE: TStringField
      FieldName = 'N_CHEQUE'
      Size = 15
    end
    object SDS_CHEQUESQNT: TStringField
      FieldName = 'QNT'
      Size = 10
    end
    object SDS_CHEQUESVALOR_CHEQUE: TFMTBCDField
      FieldName = 'VALOR_CHEQUE'
      currency = True
      Precision = 15
    end
    object SDS_CHEQUESCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
    object SDS_CHEQUESRETORNARDO: TStringField
      FieldName = 'RETORNARDO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUESRETORNADO_PAGO: TStringField
      FieldName = 'RETORNADO_PAGO'
      FixedChar = True
      Size = 3
    end
    object SDS_CHEQUESMOTIVO_RETORNO: TStringField
      FieldName = 'MOTIVO_RETORNO'
      Size = 50
    end
    object SDS_CHEQUESDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SDS_CHEQUESDATA_DEPOSITO: TDateField
      FieldName = 'DATA_DEPOSITO'
    end
    object SDS_CHEQUESDATA_RETORNO: TDateField
      FieldName = 'DATA_RETORNO'
    end
    object SDS_CHEQUESDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
    end
    object SDS_CHEQUESUSUARIO_CADASTRO: TStringField
      FieldName = 'USUARIO_CADASTRO'
    end
    object SDS_CHEQUESUSUARIO_BAIXA: TStringField
      FieldName = 'USUARIO_BAIXA'
    end
    object SDS_CHEQUESCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      FixedChar = True
      Size = 1
    end
    object SDS_CHEQUESCODIGO_CC: TIntegerField
      FieldName = 'CODIGO_CC'
    end
    object SDS_CHEQUESNUMERO_CC: TStringField
      FieldName = 'NUMERO_CC'
      Size = 10
    end
    object SDS_CHEQUESNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
  end
  object SQLD_LIMITE: TSQLDataSet
    CommandText = 'select  *  from SP_LIMITE_CREDITO(:CLIENTE)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 830
    Top = 15
    object SQLD_LIMITECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_LIMITENOME_RS: TStringField
      FieldName = 'NOME_RS'
      Size = 50
    end
    object SQLD_LIMITEV_CHEQUE_COMPENSAR: TFMTBCDField
      FieldName = 'V_CHEQUE_COMPENSAR'
      Precision = 15
    end
    object SQLD_LIMITEV_CRED_RECEBER: TFMTBCDField
      FieldName = 'V_CRED_RECEBER'
      Precision = 15
      Size = 2
    end
    object SQLD_LIMITELIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object SQLD_LIMITELIMITE_DIPONIVEL: TFMTBCDField
      FieldName = 'LIMITE_DIPONIVEL'
      Precision = 15
      Size = 2
    end
    object SQLD_LIMITEV_CRED_VENCIDO: TFMTBCDField
      FieldName = 'V_CRED_VENCIDO'
      Precision = 15
      Size = 2
    end
  end
  object DSP_LIMITE: TDataSetProvider
    DataSet = SQLD_LIMITE
    Left = 830
    Top = 68
  end
  object CDS_LIMITE: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSP_LIMITE'
    Left = 831
    Top = 112
    object CDS_LIMITECODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_LIMITENOME_RS: TStringField
      FieldName = 'NOME_RS'
      Size = 50
    end
    object CDS_LIMITEV_CHEQUE_COMPENSAR: TFMTBCDField
      FieldName = 'V_CHEQUE_COMPENSAR'
      currency = True
      Precision = 15
    end
    object CDS_LIMITEV_CRED_RECEBER: TFMTBCDField
      FieldName = 'V_CRED_RECEBER'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_LIMITELIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_LIMITELIMITE_DIPONIVEL: TFMTBCDField
      FieldName = 'LIMITE_DIPONIVEL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_LIMITEV_CRED_VENCIDO: TFMTBCDField
      FieldName = 'V_CRED_VENCIDO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTS_LIMITE: TDataSource
    DataSet = CDS_LIMITE
    Left = 832
    Top = 162
  end
  object dts_libera: TDataSource
    DataSet = sds_libera
    Left = 825
    Top = 280
  end
  object sds_libera: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from LIBERACAO_CLIENTE order by Cod_venda asc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 825
    Top = 224
    object sds_liberaCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sds_liberaSOLICITA: TStringField
      FieldName = 'SOLICITA'
      Size = 1
    end
    object sds_liberaLIBERA: TStringField
      FieldName = 'LIBERA'
      Size = 1
    end
    object sds_liberaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object sds_liberaAUTO_LIBERA: TStringField
      FieldName = 'AUTO_LIBERA'
      Size = 1
    end
    object sds_liberaVALOR_SOLICITADO: TFMTBCDField
      FieldName = 'VALOR_SOLICITADO'
      Precision = 15
      Size = 2
    end
  end
  object CDS_Orcamentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTSP_Orcamentos'
    Left = 632
    Top = 496
    object CDS_OrcamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDS_OrcamentosCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object CDS_OrcamentosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CDS_OrcamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDS_OrcamentosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      currency = True
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_OrcamentosDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_OrcamentosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object CDS_OrcamentosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object CDS_OrcamentosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object CDS_OrcamentosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object CDS_OrcamentosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object CDS_OrcamentosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object CDS_OrcamentosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CDS_OrcamentosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object CDS_OrcamentosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object CDS_OrcamentosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object CDS_OrcamentosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object CDS_OrcamentosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object CDS_OrcamentosRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
  end
  object SQLD_Orcamentos: TSQLDataSet
    CommandText = 'select  *  from SP_ORCAMENTOS(:param)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 620
    Top = 399
    object SQLD_OrcamentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object SQLD_OrcamentosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object SQLD_OrcamentosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object SQLD_OrcamentosDATA: TDateField
      FieldName = 'DATA'
    end
    object SQLD_OrcamentosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object SQLD_OrcamentosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object SQLD_OrcamentosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object SQLD_OrcamentosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 150
    end
    object SQLD_OrcamentosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object SQLD_OrcamentosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object SQLD_OrcamentosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object SQLD_OrcamentosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object SQLD_OrcamentosFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object SQLD_OrcamentosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object SQLD_OrcamentosCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
    end
    object SQLD_OrcamentosRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object SQLD_OrcamentosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SQLD_OrcamentosCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object SQLD_OrcamentosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object SQLD_OrcamentosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
  end
  object Qry_clientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from clientes order by nome_rs asc')
    SQLConnection = DM.SQLC
    Left = 817
    Top = 433
    object Qry_clientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object Qry_clientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object Qry_clientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object Qry_clientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Qry_clientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qry_clientesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object Qry_clientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object Qry_clientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object Qry_clientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Qry_clientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object Qry_clientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object Qry_clientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object Qry_clientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Qry_clientesRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object Qry_clientesFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object Qry_clientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object Qry_clientesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object Qry_clientesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Qry_clientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object Qry_clientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object Qry_clientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object Qry_clientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object Qry_clientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object Qry_clientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object Qry_clientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object Qry_clientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object Qry_clientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object Qry_clientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object Qry_clientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object Qry_clientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object Qry_clientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object Qry_clientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object Qry_clientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object Qry_clientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object Qry_clientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object Qry_clientesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object Qry_clientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object Qry_clientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object Qry_clientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object Qry_clientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object Qry_clientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object Qry_clientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object Qry_clientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object Qry_clientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object Qry_clientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object Qry_clientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object Qry_clientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object Qry_clientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object Qry_clientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object Qry_clientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object Qry_clientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object Qry_clientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object Qry_clientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object Qry_clientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object Qry_clientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object Qry_clientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object Qry_clientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object Qry_clientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object Qry_clientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object Qry_clientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object Qry_clientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object Qry_clientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object Qry_clientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object Qry_clientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object Qry_clientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object Qry_clientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object Qry_clientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object Qry_clientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object Qry_clientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object Qry_clientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object Qry_clientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object Qry_clientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object Qry_clientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object Qry_clientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object Qry_clientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object Qry_clientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object Qry_clientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object Qry_clientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object Qry_clientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object Qry_clientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object Qry_clientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object Qry_clientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object Qry_clientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object Qry_clientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object Qry_clientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object Qry_clientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object Qry_clientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object Qry_clientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object Qry_clientesCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object Qry_clientesNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object Qry_clientesNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object Qry_clientesSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object Qry_clientesCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object Qry_clientesSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object Qry_clientesCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object Qry_clientesSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object Qry_clientesCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object Qry_clientesSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object Qry_clientesCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object Qry_clientesDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object Qry_clientesDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object Qry_clientesCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object Qry_clientesFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object Qry_clientesREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object Qry_clientesENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object Qry_clientesRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object Qry_clientesENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object Qry_clientesRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object Qry_clientesENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object Qry_clientesRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object Qry_clientesENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object Qry_clientesRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object Qry_clientesAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object Qry_clientesAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object Qry_clientesAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object Qry_clientesCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object Qry_clientesCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object Qry_clientesCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object Qry_clientesFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object Qry_clientesCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
  end
  object DSP_Clientes: TDataSetProvider
    DataSet = Qry_clientes
    Left = 820
    Top = 489
  end
  object cds_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Clientes'
    Left = 828
    Top = 540
    object cds_ClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_ClientesNOME_RS: TStringField
      FieldName = 'NOME_RS'
      Required = True
      Size = 50
    end
    object cds_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cds_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cds_ClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cds_ClientesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object cds_ClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cds_ClientesTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cds_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cds_ClientesNASCIMENTO_IA: TDateField
      FieldName = 'NASCIMENTO_IA'
    end
    object cds_ClientesSEXO: TStringField
      FieldName = 'SEXO'
      Size = 15
    end
    object cds_ClientesFOTO_LOGOMARCA: TBlobField
      FieldName = 'FOTO_LOGOMARCA'
      Size = 1
    end
    object cds_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds_ClientesRG_IE: TStringField
      FieldName = 'RG_IE'
      FixedChar = True
      Size = 15
    end
    object cds_ClientesFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cds_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cds_ClientesUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object cds_ClientesDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object cds_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object cds_ClientesOBSERVACOES: TBlobField
      FieldName = 'OBSERVACOES'
      Size = 1
    end
    object cds_ClientesCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      Size = 3
    end
    object cds_ClientesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 10
    end
    object cds_ClientesRESIDENCIA_SEDE: TStringField
      FieldName = 'RESIDENCIA_SEDE'
      Size = 10
    end
    object cds_ClientesPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object cds_ClientesMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object cds_ClientesNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object cds_ClientesCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
      FixedChar = True
    end
    object cds_ClientesNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object cds_ClientesTRABALHO_CONJUGE: TStringField
      FieldName = 'TRABALHO_CONJUGE'
      Size = 50
    end
    object cds_ClientesPROFISSAO_CONJUGE: TStringField
      FieldName = 'PROFISSAO_CONJUGE'
      Size = 50
    end
    object cds_ClientesLOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 50
    end
    object cds_ClientesPROFISSAO_RA: TStringField
      FieldName = 'PROFISSAO_RA'
      Size = 50
    end
    object cds_ClientesTELEFONE_TRABALHO: TStringField
      FieldName = 'TELEFONE_TRABALHO'
      Size = 15
    end
    object cds_ClientesFAX_TRABALHO: TStringField
      FieldName = 'FAX_TRABALHO'
      Size = 15
    end
    object cds_ClientesOBSERVACOES_TRABALHO: TBlobField
      FieldName = 'OBSERVACOES_TRABALHO'
      Size = 1
    end
    object cds_ClientesBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object cds_ClientesNOME_AGENCIA: TStringField
      FieldName = 'NOME_AGENCIA'
      Size = 50
    end
    object cds_ClientesNUMERO_AGENCIA: TStringField
      FieldName = 'NUMERO_AGENCIA'
      Size = 10
    end
    object cds_ClientesCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
    end
    object cds_ClientesNOME1_REFERENCIA: TStringField
      FieldName = 'NOME1_REFERENCIA'
      Size = 50
    end
    object cds_ClientesNOME2_REFERENCIA: TStringField
      FieldName = 'NOME2_REFERENCIA'
      Size = 50
    end
    object cds_ClientesTELEFONE1_REFERENCIA: TStringField
      FieldName = 'TELEFONE1_REFERENCIA'
      Size = 15
    end
    object cds_ClientesTELEFONE2_REFERENCIA: TStringField
      FieldName = 'TELEFONE2_REFERENCIA'
      Size = 15
    end
    object cds_ClientesBANCO_REFERENCIA: TStringField
      FieldName = 'BANCO_REFERENCIA'
      Size = 50
    end
    object cds_ClientesAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 30
    end
    object cds_ClientesTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesOBSERVACOES_COMERCIAIS: TBlobField
      FieldName = 'OBSERVACOES_COMERCIAIS'
      Size = 1
    end
    object cds_ClientesOBSERVACOES_BANCO: TBlobField
      FieldName = 'OBSERVACOES_BANCO'
      Size = 1
    end
    object cds_ClientesPG_CREDIARIO: TStringField
      FieldName = 'PG_CREDIARIO'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesPG_CHEQUE: TStringField
      FieldName = 'PG_CHEQUE'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesPG_FINANCEIRA: TStringField
      FieldName = 'PG_FINANCEIRA'
      FixedChar = True
      Size = 1
    end
    object cds_ClientesREMUNERACAO: TFMTBCDField
      FieldName = 'REMUNERACAO'
      Precision = 15
      Size = 2
    end
    object cds_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object cds_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cds_ClientesCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_ClientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 10
    end
    object cds_ClientesDATA_EMISSAO_RG: TDateField
      FieldName = 'DATA_EMISSAO_RG'
    end
    object cds_ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object cds_ClientesNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object cds_ClientesCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object cds_ClientesCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
    end
    object cds_ClientesDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object cds_ClientesCOD_ZONA: TIntegerField
      FieldName = 'COD_ZONA'
    end
    object cds_ClientesPONTO_REFERENCIA: TStringField
      FieldName = 'PONTO_REFERENCIA'
      Size = 60
    end
    object cds_ClientesATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cds_ClientesCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 60
    end
    object cds_ClientesCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 60
    end
    object cds_ClientesCX_POSTAL: TStringField
      FieldName = 'CX_POSTAL'
      Size = 10
    end
    object cds_ClientesVALOR_ALUGUEL: TFMTBCDField
      FieldName = 'VALOR_ALUGUEL'
      Precision = 15
      Size = 2
    end
    object cds_ClientesTEMPO_RESIDENCIA: TStringField
      FieldName = 'TEMPO_RESIDENCIA'
      Size = 10
    end
    object cds_ClientesNUMERO_DEPENDENTES: TIntegerField
      FieldName = 'NUMERO_DEPENDENTES'
    end
    object cds_ClientesENDERECO_REFERENCIA1: TStringField
      FieldName = 'ENDERECO_REFERENCIA1'
      Size = 40
    end
    object cds_ClientesENDERECO_REFERENCIA2: TStringField
      FieldName = 'ENDERECO_REFERENCIA2'
      Size = 40
    end
    object cds_ClientesDATA_ADMISSAO_REFERENCIA1: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA1'
    end
    object cds_ClientesDATA_ADMISSAO_REFERENCIA2: TDateField
      FieldName = 'DATA_ADMISSAO_REFERENCIA2'
    end
    object cds_ClientesRG_CONJUGUE: TStringField
      FieldName = 'RG_CONJUGUE'
      Size = 15
    end
    object cds_ClientesRENDA_CONJUGUE: TFMTBCDField
      FieldName = 'RENDA_CONJUGUE'
      Precision = 15
      Size = 2
    end
    object cds_ClientesDATA_ADMINSSAO_CONJUGUE: TDateField
      FieldName = 'DATA_ADMINSSAO_CONJUGUE'
    end
    object cds_ClientesFONE_CONJUGUE: TStringField
      FieldName = 'FONE_CONJUGUE'
      Size = 15
    end
    object cds_ClientesENDERECO_COBRANCA: TStringField
      FieldName = 'ENDERECO_COBRANCA'
      Size = 40
    end
    object cds_ClientesCEP_COBRANCA: TStringField
      FieldName = 'CEP_COBRANCA'
      FixedChar = True
      Size = 10
    end
    object cds_ClientesCOD_CIDADE_COBRANCA: TIntegerField
      FieldName = 'COD_CIDADE_COBRANCA'
    end
    object cds_ClientesCX_POSTAL_COBRANCA: TStringField
      FieldName = 'CX_POSTAL_COBRANCA'
      FixedChar = True
      Size = 15
    end
    object cds_ClientesLIMITE_DE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_DE_CREDITO'
      Precision = 15
      Size = 2
    end
    object cds_ClientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cds_ClientesPRODUTOR_RURAL: TStringField
      FieldName = 'PRODUTOR_RURAL'
      Size = 1
    end
    object cds_ClientesINSC_PRODUTOR_RURAL: TStringField
      FieldName = 'INSC_PRODUTOR_RURAL'
      Size = 15
    end
    object cds_ClientesCOD_BAIRRO_COBRANCA: TIntegerField
      FieldName = 'COD_BAIRRO_COBRANCA'
    end
    object cds_ClientesCIDADE_COBRANCA: TStringField
      FieldName = 'CIDADE_COBRANCA'
      Size = 40
    end
    object cds_ClientesBAIRRO_COBRANCA: TStringField
      FieldName = 'BAIRRO_COBRANCA'
      Size = 30
    end
    object cds_ClientesUF_COBRANCA: TStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object cds_ClientesCONTA_BANCARIA: TStringField
      FieldName = 'CONTA_BANCARIA'
    end
    object cds_ClientesNOME_PROPRIEDADE: TStringField
      FieldName = 'NOME_PROPRIEDADE'
      Size = 50
    end
    object cds_ClientesNOME_VETERINARIO: TStringField
      FieldName = 'NOME_VETERINARIO'
      Size = 50
    end
    object cds_ClientesSOCIO1: TStringField
      FieldName = 'SOCIO1'
      Size = 40
    end
    object cds_ClientesCPFSOCIO1: TStringField
      FieldName = 'CPFSOCIO1'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO1: TDateField
      FieldName = 'DATANASCSOCIO1'
    end
    object cds_ClientesSOCIO2: TStringField
      FieldName = 'SOCIO2'
      Size = 40
    end
    object cds_ClientesCPFSOCIO2: TStringField
      FieldName = 'CPFSOCIO2'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO2: TDateField
      FieldName = 'DATANASCSOCIO2'
    end
    object cds_ClientesSOCIO3: TStringField
      FieldName = 'SOCIO3'
      Size = 40
    end
    object cds_ClientesCPFSOCIO3: TStringField
      FieldName = 'CPFSOCIO3'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO3: TDateField
      FieldName = 'DATANASCSOCIO3'
    end
    object cds_ClientesSOCIO4: TStringField
      FieldName = 'SOCIO4'
      Size = 40
    end
    object cds_ClientesCPFSOCIO4: TStringField
      FieldName = 'CPFSOCIO4'
      Size = 11
    end
    object cds_ClientesDATANASCSOCIO4: TDateField
      FieldName = 'DATANASCSOCIO4'
    end
    object cds_ClientesDATAFUNDACAO: TDateField
      FieldName = 'DATAFUNDACAO'
    end
    object cds_ClientesCAPITALSOCIAL: TFMTBCDField
      FieldName = 'CAPITALSOCIAL'
      Precision = 15
      Size = 2
    end
    object cds_ClientesFATURAMENTOBRUTO: TFMTBCDField
      FieldName = 'FATURAMENTOBRUTO'
      Precision = 15
      Size = 2
    end
    object cds_ClientesREGJUNTACOM: TStringField
      FieldName = 'REGJUNTACOM'
      Size = 12
    end
    object cds_ClientesENDSOCIO1: TStringField
      FieldName = 'ENDSOCIO1'
      Size = 40
    end
    object cds_ClientesRGSOCIO1: TIntegerField
      FieldName = 'RGSOCIO1'
    end
    object cds_ClientesENDSOCIO2: TStringField
      FieldName = 'ENDSOCIO2'
      Size = 40
    end
    object cds_ClientesRGSOCIO2: TIntegerField
      FieldName = 'RGSOCIO2'
    end
    object cds_ClientesENDSOCIO3: TStringField
      FieldName = 'ENDSOCIO3'
      Size = 40
    end
    object cds_ClientesRGSOCIO3: TIntegerField
      FieldName = 'RGSOCIO3'
    end
    object cds_ClientesENDSOCIO4: TStringField
      FieldName = 'ENDSOCIO4'
      Size = 40
    end
    object cds_ClientesRGSOCIO4: TIntegerField
      FieldName = 'RGSOCIO4'
    end
    object cds_ClientesAUTORIZADO1: TStringField
      FieldName = 'AUTORIZADO1'
      Size = 50
    end
    object cds_ClientesAUTORIZADO2: TStringField
      FieldName = 'AUTORIZADO2'
      Size = 50
    end
    object cds_ClientesAUTORIZADO3: TStringField
      FieldName = 'AUTORIZADO3'
      Size = 50
    end
    object cds_ClientesCPF_AUT1: TStringField
      FieldName = 'CPF_AUT1'
      FixedChar = True
    end
    object cds_ClientesCPF_AUT2: TStringField
      FieldName = 'CPF_AUT2'
      FixedChar = True
    end
    object cds_ClientesCPF_AUT3: TStringField
      FieldName = 'CPF_AUT3'
      FixedChar = True
    end
    object cds_ClientesFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 1
    end
    object cds_ClientesCTPS: TStringField
      FieldName = 'CTPS'
      Size = 15
    end
  end
  object dts_clientes: TDataSource
    DataSet = cds_Clientes
    Left = 829
    Top = 585
  end
  object Sds_DocsFiscais: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from COD_DOCUMENTOS_FISCAIS Order By Codigo ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 240
    Top = 504
    object Sds_DocsFiscaisCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 2
    end
    object Sds_DocsFiscaisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object Dts_DocsFiscais: TDataSource
    DataSet = Sds_DocsFiscais
    Left = 248
    Top = 552
  end
  object sds_parcelas_orc: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from ORCAMENTOS_PARCELAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'ID_ORCAMENTO'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Orcamentos
    PacketRecords = 0
    Params = <>
    Left = 563
    Top = 598
    object sds_parcelas_orcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sds_parcelas_orcID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
      Required = True
    end
    object sds_parcelas_orcDESC_COND_PGTO: TStringField
      FieldName = 'DESC_COND_PGTO'
      Size = 50
    end
    object sds_parcelas_orcQUANT_PARCELAS: TStringField
      FieldName = 'QUANT_PARCELAS'
      Size = 3
    end
    object sds_parcelas_orcVALOR_PARC: TFMTBCDField
      FieldName = 'VALOR_PARC'
      currency = True
      Precision = 15
      Size = 2
    end
    object sds_parcelas_orcPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 4
    end
    object sds_parcelas_orcDATA_VENC: TDateField
      FieldName = 'DATA_VENC'
    end
  end
  object Dts_parcelas_orc: TDataSource
    DataSet = sds_parcelas_orc
    Left = 651
    Top = 611
  end
  object DTS_COND_PAGTO: TDataSource
    DataSet = SDS_COND_PAGTO
    Left = 406
    Top = 591
  end
  object SDS_COND_PAGTO: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DTSP_COND_PAGTO'
    Left = 336
    Top = 572
    object SDS_COND_PAGTOTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object SDS_COND_PAGTOTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      Size = 100
    end
    object SDS_COND_PAGTOPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 4
    end
    object SDS_COND_PAGTODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object SDS_COND_PAGTOVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object DTSP_COND_PAGTO: TDataSetProvider
    DataSet = QRY_COND_PAGTO
    Left = 407
    Top = 528
  end
  object QRY_COND_PAGTO: TSQLDataSet
    CommandText = 'select * from SP_COND_PAGTO_VENDA (:ID_VENDA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_VENDA'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    Left = 327
    Top = 517
    object QRY_COND_PAGTOTITULO: TIntegerField
      FieldName = 'TITULO'
    end
    object QRY_COND_PAGTOTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      Size = 100
    end
    object QRY_COND_PAGTOPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 4
    end
    object QRY_COND_PAGTODATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object QRY_COND_PAGTOVALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object sds_pagto: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from PEDIDOS_FORMAS_PAGAMENTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    IndexFieldNames = 'COD_VENDA'
    MasterFields = 'CODIGO'
    MasterSource = DTS_Pedidos
    PacketRecords = 0
    Params = <>
    Left = 708
    Top = 582
    object sds_pagtoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object sds_pagtoCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
    end
    object sds_pagtoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object sds_pagtoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sds_pagtoDESC_FORMA: TStringField
      FieldName = 'DESC_FORMA'
      Size = 40
    end
  end
  object dts_pagto: TDataSource
    DataSet = sds_pagto
    Left = 768
    Top = 586
  end
end

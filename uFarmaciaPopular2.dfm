object frmFarmaciaPopular: TfrmFarmaciaPopular
  Left = 354
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Farm'#225'cia Popular'
  ClientHeight = 540
  ClientWidth = 610
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 10
    Width = 82
    Height = 13
    Alignment = taRightJustify
    Caption = 'CPF Paciente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 34
    Width = 95
    Height = 13
    Alignment = taRightJustify
    Caption = 'CRM do M'#233'dico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 82
    Width = 98
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da Receita:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 87
    Top = 58
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 315
    Top = 34
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Usu'#225'rio:'
  end
  object Label6: TLabel
    Left = 320
    Top = 58
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object Label7: TLabel
    Left = 280
    Top = 10
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'CNPJ Emitente:'
  end
  object Label8: TLabel
    Left = 11
    Top = 290
    Width = 96
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nro Autoriza'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 446
    Top = 34
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vendedor/Cpf:'
  end
  object Label10: TLabel
    Left = 482
    Top = 58
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
  end
  object Label11: TLabel
    Left = 10
    Top = 502
    Width = 94
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor Solicitado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 201
    Top = 502
    Width = 123
    Height = 13
    Alignment = taRightJustify
    Caption = 'Autorizado Ministerio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 372
    Top = 502
    Width = 117
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor para o Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 312
    Width = 481
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 6
    WordWrap = False
  end
  object cbHomologacao: TCheckBox
    Left = 368
    Top = 80
    Width = 105
    Height = 17
    Caption = 'Homologa'#231#227'o'
    TabOrder = 7
  end
  object edtCpf: TEdit
    Left = 112
    Top = 6
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 3
  end
  object edtCRM: TEdit
    Left = 112
    Top = 30
    Width = 121
    Height = 21
    MaxLength = 6
    TabOrder = 4
  end
  object edtUF: TEdit
    Left = 112
    Top = 54
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 2
    TabOrder = 5
  end
  object edtUsuario: TEdit
    Left = 358
    Top = 30
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edtSenha: TEdit
    Left = 358
    Top = 54
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object edtCNPJ: TEdit
    Left = 358
    Top = 6
    Width = 121
    Height = 21
    Enabled = False
    MaxLength = 14
    TabOrder = 0
  end
  object btnEnviarSolicitacao: TButton
    Left = 496
    Top = 312
    Width = 105
    Height = 89
    Caption = 'Enviar Solicita'#231#227'o'
    TabOrder = 8
    OnClick = btnEnviarSolicitacaoClick
  end
  object edtChave: TEdit
    Left = 111
    Top = 286
    Width = 186
    Height = 21
    MaxLength = 19
    TabOrder = 9
  end
  object edtVendedor: TEdit
    Left = 520
    Top = 30
    Width = 81
    Height = 21
    TabOrder = 10
  end
  object edtSenhaVendedor: TEdit
    Left = 520
    Top = 54
    Width = 81
    Height = 21
    MaxLength = 8
    TabOrder = 12
  end
  object Memo2: TMemo
    Left = 320
    Top = 160
    Width = 297
    Height = 121
    Color = clYellow
    Lines.Strings = (
      'OBSERVACAO:'
      ''
      'Quando erros estranhos de violation estiverem acontecendo'
      'verifique se formulario esta sendo criado junto com o projeto'
      'se sim -> entao tire'
      'em Project -> Options -> Auto Create Forms')
    TabOrder = 11
    Visible = False
  end
  object edtDataReceita: TRzDateTimeEdit
    Left = 112
    Top = 80
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 112
    Width = 601
    Height = 169
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_BARRAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNDADES'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT_SOLICITADA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT_PRESCRITA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_SOLICITACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_CUPON'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 496
    Top = 376
    Width = 105
    Height = 89
    Caption = 'Consultar'
    TabOrder = 15
    Visible = False
    OnClick = Button1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 8
    Top = 515
    Width = 113
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 200
    Top = 516
    Width = 121
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 366
    Top = 517
    Width = 121
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 56
    Top = 384
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 56
    Top = 192
  end
  object Qry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select P.* from PRODUTOS P')
    SQLConnection = DM.SQLC
    Left = 176
    Top = 128
    object QryCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      FixedChar = True
      Size = 13
    end
    object QryDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object QryABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 29
    end
    object QryPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Precision = 15
      Size = 2
    end
    object QryMARGEM_LUCRO: TFMTBCDField
      FieldName = 'MARGEM_LUCRO'
      Precision = 15
      Size = 2
    end
    object QryCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 15
      Size = 2
    end
    object QryUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object QryFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 15
      Size = 2
    end
    object QryICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 15
      Size = 2
    end
    object QryIPI_IRPJ: TFMTBCDField
      FieldName = 'IPI_IRPJ'
      Precision = 15
      Size = 2
    end
    object QryOUTROS_IMPOSTOS: TFMTBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Precision = 15
      Size = 2
    end
    object QryDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      Precision = 15
      Size = 2
    end
    object QryCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Size = 6
    end
    object QrySIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object QryCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 15
      Size = 2
    end
    object QryPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Precision = 15
      Size = 2
    end
    object QryDESCONTO_MAXIMO: TFMTBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Precision = 15
      Size = 2
    end
    object QryCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object QryCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
    end
    object QryCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object QryNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 40
    end
    object QryNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Size = 40
    end
    object QryNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object QryNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 40
    end
    object QryCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
    end
    object QryFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object QryESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 15
      Size = 8
    end
    object QryESTOQUE_VENDIDO: TFMTBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Precision = 15
      Size = 2
    end
    object QryESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
      Size = 8
    end
    object QryVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Precision = 15
      Size = 6
    end
    object QryVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 15
      Size = 6
    end
    object QryESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
    end
    object QryESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object QryDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QryUSERCAD: TStringField
      FieldName = 'USERCAD'
    end
    object QryVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 15
      Size = 6
    end
    object QryULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
    end
    object QryVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Precision = 15
      Size = 6
    end
    object QrySECCAO: TIntegerField
      FieldName = 'SECCAO'
    end
    object QryCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object QryLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object QryAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 250
    end
    object QryESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Size = 50
    end
    object QryGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
    end
    object QryBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object QryETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Size = 1
    end
    object QryATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object QryREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 15
    end
    object QryCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object QryDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Size = 6
    end
    object QryPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 15
      Size = 3
    end
    object QryPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 15
      Size = 3
    end
    object QryFONETICO: TStringField
      FieldName = 'FONETICO'
      Size = 60
    end
    object QryDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
    end
    object QryCUSTOREPOSICAO: TFMTBCDField
      FieldName = 'CUSTOREPOSICAO'
      Precision = 15
      Size = 2
    end
    object QryPRECO_ANT: TFMTBCDField
      FieldName = 'PRECO_ANT'
      Precision = 15
      Size = 2
    end
    object QryPRECO_PROMOCAO: TFMTBCDField
      FieldName = 'PRECO_PROMOCAO'
      Precision = 15
      Size = 2
    end
    object QryFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Size = 1
    end
    object QryDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
    end
    object QryDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
    end
    object QryCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
    end
    object QryLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 70
    end
    object QryPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object QryMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Size = 1
    end
    object QryQTD_FRACIONADA: TFMTBCDField
      FieldName = 'QTD_FRACIONADA'
      Precision = 15
      Size = 2
    end
    object QryQTD_CAIXA: TFMTBCDField
      FieldName = 'QTD_CAIXA'
      Precision = 15
      Size = 0
    end
    object QryMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Size = 3
    end
    object QryLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Size = 10
    end
    object QryVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object QryCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Size = 1
    end
    object QryPRECO_VENDA2: TFMTBCDField
      FieldName = 'PRECO_VENDA2'
      Precision = 15
      Size = 2
    end
    object QryMARGEM_LUCRO2: TFMTBCDField
      FieldName = 'MARGEM_LUCRO2'
      Precision = 15
      Size = 2
    end
    object QryVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object QryPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Size = 1
    end
    object QryUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
    end
    object QryDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Size = 6
    end
    object QryQUANT_SAIDA: TFMTBCDField
      FieldName = 'QUANT_SAIDA'
      Precision = 15
      Size = 8
    end
    object QryQUANT_ENTRADA: TFMTBCDField
      FieldName = 'QUANT_ENTRADA'
      Precision = 15
      Size = 8
    end
    object QryESTOQUE_FRACAO: TFMTBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Precision = 15
      Size = 8
    end
    object QryDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
    end
    object QryFRACAO: TIntegerField
      FieldName = 'FRACAO'
    end
    object QryNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Size = 8
    end
    object QryCOD_MS: TStringField
      FieldName = 'COD_MS'
      Size = 13
    end
    object QryCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Size = 5
    end
    object QryPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object QryTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object QryCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
    end
    object QryCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
    end
    object QryLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Size = 1
    end
    object QryGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
    end
    object QryCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Size = 1
    end
    object QryCOR: TIntegerField
      FieldName = 'COR'
    end
    object QryENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Required = True
    end
    object QryID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
    end
    object QryCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 144
    Top = 168
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 152
    object ClientDataSet1COD_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd Prod.'
      DisplayWidth = 10
      FieldName = 'COD_PRODUTO'
    end
    object ClientDataSet1COD_BARRAS: TStringField
      DisplayLabel = 'Cod. Baras'
      DisplayWidth = 13
      FieldName = 'COD_BARRAS'
      Size = 13
    end
    object ClientDataSet1DESCRICAO: TStringField
      DisplayLabel = 'Nome Produtos'
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object ClientDataSet1UNDADES: TStringField
      DisplayLabel = 'Und'
      DisplayWidth = 2
      FieldName = 'UNDADES'
      Size = 2
    end
    object ClientDataSet1QUANT_SOLICITADA: TFMTBCDField
      DisplayLabel = 'Qtde Sol'
      DisplayWidth = 10
      FieldName = 'QUANT_SOLICITADA'
      currency = True
      Precision = 15
      Size = 2
    end
    object ClientDataSet1QUANT_PRESCRITA: TFMTBCDField
      DisplayLabel = 'Qtde Presc'
      DisplayWidth = 10
      FieldName = 'QUANT_PRESCRITA'
      currency = True
      Precision = 15
      Size = 2
    end
    object ClientDataSet1PRECO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 14
      FieldName = 'PRECO'
      currency = True
      Precision = 13
      Size = 2
    end
    object ClientDataSet1COD_SOLICITACAO: TStringField
      DisplayLabel = 'Solicitacao'
      DisplayWidth = 6
      FieldName = 'COD_SOLICITACAO'
      Size = 6
    end
    object ClientDataSet1N_CUPON: TStringField
      DisplayLabel = 'Cupon'
      DisplayWidth = 6
      FieldName = 'N_CUPON'
      Size = 6
    end
  end
  object QUpdAce: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE PEDIDOS SET  CHAVE_FP =:CHAVE'
      'WHERE CODIGO = :CODVEN;')
    Left = 264
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEN'
        ParamType = ptUnknown
      end>
  end
  object QUpdAce1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE PEDIDOS SET  CHAVE_FP_CANCEL =:CHAVE'
      'WHERE CODIGO = :CODVEN;')
    Left = 328
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEN'
        ParamType = ptUnknown
      end>
  end
end

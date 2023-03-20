object FrmConsCTRAdm: TFrmConsCTRAdm
  Left = 230
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Contas a Receber Administradora'
  ClientHeight = 538
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 161
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 393
      Height = 49
      Caption = 'Consultar por'
      TabOrder = 0
      object ComboCons: TComboBox
        Left = 8
        Top = 16
        Width = 377
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = ComboConsChange
        Items.Strings = (
          'DATA EMISS'#195'O'
          'DATA VENCIMENTO'
          'C'#211'DIGO'
          'BANDEIRA'
          'CLIENTE')
      end
    end
    object GB3: TGroupBox
      Left = 8
      Top = 56
      Width = 393
      Height = 73
      Caption = 'Consultar por'
      TabOrder = 1
      object BtnCons: TSpeedButton
        Left = 68
        Top = 16
        Width = 23
        Height = 21
        Hint = 'Consultar'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF314B62
          AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
          106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
          00FF925D5AB48C80C9A391C28F88FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF3BABFFA1CAE78C7775A38372EBE0B8FEFCCFFEFCCEFCFBCCE3CF
          B1C0998CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBDA4A4CEA58FFF
          EDB2FFFCCAFFFFCFFFFFCFFFFFD5FFFFEAF3EBE5A0746FFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFB67F76F4D9A1F6D095FCF4C2FFFFCFFFFFD8FFFFEEFFFF
          FAFFFFFFD5C2ACFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD0A792FBDC9AEE
          B87FFBF0BDFFFFD0FFFFDCFFFFF7FFFFFAFFFFE6EEEAC2B7847EFF00FFFF00FF
          FF00FFFF00FFFF00FFDCB79AFAD796EAA76CF7DAA3FFFFCEFFFFD4FFFFE1FFFF
          E3FFFFD7F8F6CBB69782FF00FFFF00FFFF00FFFF00FFFF00FFD5AF96FEE2A1EA
          A96AEFBD80FAE9B4FFFFD0FFFFD3FFFFD1FFFFD1F3EEC5B88B80FF00FFFF00FF
          FF00FFFF00FFFF00FFBB8980FCEBB1F8E2B5F0C690F0C286F7DCA5FEF3C1FEF8
          C6FFFFCFDDCEA9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3B499FF
          FFFFFFF4E2EFBD80EBAB6FF0C086FBDEA3FCF3B8AC8676FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFC6ADA7F3EBD1FFEEAFFCDE9DFEE2A1F0D4
          A4C29886FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFBB987EC19983D3AD93D1A592FF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnConsClick
      end
      object EdtCod: TAlignEdit
        Left = 8
        Top = 16
        Width = 57
        Height = 21
        Hint = 'Pressione F2 para Consultar '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnEnter = EdtCodEnter
        OnExit = EdtCodExit
        OnKeyDown = EdtCodKeyDown
        OnKeyPress = EdtConsKeyPress
        Alignment = taRightJustify
        ColorOnFocus = clWindow
        ColorOnNoFocus = clWindow
        FontOnFocus.Charset = DEFAULT_CHARSET
        FontOnFocus.Color = clWindowText
        FontOnFocus.Height = -11
        FontOnFocus.Name = 'MS Sans Serif'
        FontOnFocus.Style = []
        FontOnNoFocus.Charset = DEFAULT_CHARSET
        FontOnNoFocus.Color = clWindowText
        FontOnNoFocus.Height = -11
        FontOnNoFocus.Name = 'MS Sans Serif'
        FontOnNoFocus.Style = []
      end
      object EdtNome: TEdit
        Left = 98
        Top = 16
        Width = 287
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
      end
      object EdtCons: TAlignEdit
        Left = 8
        Top = 16
        Width = 377
        Height = 21
        Color = clSilver
        TabOrder = 2
        OnKeyPress = EdtConsKeyPress
        Alignment = taRightJustify
        ColorOnFocus = clWindow
        ColorOnNoFocus = clWindow
        FontOnFocus.Charset = DEFAULT_CHARSET
        FontOnFocus.Color = clWindowText
        FontOnFocus.Height = -11
        FontOnFocus.Name = 'MS Sans Serif'
        FontOnFocus.Style = []
        FontOnNoFocus.Charset = DEFAULT_CHARSET
        FontOnNoFocus.Color = clWindowText
        FontOnNoFocus.Height = -11
        FontOnNoFocus.Name = 'MS Sans Serif'
        FontOnNoFocus.Style = []
      end
      object ComboBandeira: TComboBox
        Left = 8
        Top = 44
        Width = 377
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
      end
    end
    object GB2: TGroupBox
      Left = 424
      Top = 8
      Width = 233
      Height = 49
      Caption = 'Per'#237'odo'
      TabOrder = 2
      object Label1: TLabel
        Left = 112
        Top = 24
        Width = 7
        Height = 13
        Caption = 'A'
      end
      object EdtDataIni: TDateTimePicker
        Left = 8
        Top = 16
        Width = 97
        Height = 21
        Date = 37920.469548946800000000
        Time = 37920.469548946800000000
        TabOrder = 0
      end
      object EdtDataFin: TDateTimePicker
        Left = 128
        Top = 16
        Width = 97
        Height = 21
        Date = 37920.469548946800000000
        Time = 37920.469548946800000000
        TabOrder = 1
      end
    end
    object BtnOk: TButton
      Left = 472
      Top = 96
      Width = 65
      Height = 25
      Caption = '&OK'
      TabOrder = 3
      OnClick = BtnOkClick
    end
    object BtnSair: TButton
      Left = 560
      Top = 96
      Width = 65
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BtnSairClick
    end
    object CheckEmp: TCheckBox
      Left = 16
      Top = 136
      Width = 153
      Height = 17
      Caption = 'Todas as Empresas'
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 161
    Width = 773
    Height = 358
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 769
      Height = 319
      Align = alTop
      Color = clSilver
      DataSource = DSQConsRecAdm
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'PARC.'
          Width = 41
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 61
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'NOME_CLI'
          Title.Alignment = taCenter
          Title.Caption = 'CLIENTE'
          Width = 261
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'ADMINISTRADORA'
          Title.Alignment = taCenter
          Width = 139
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'BANDEIRA'
          Title.Alignment = taCenter
          Width = 113
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'TAXA'
          Title.Alignment = taCenter
          Width = 54
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'LIQUIDO'
          Title.Alignment = taCenter
          Title.Caption = 'L'#205'QUIDO'
          Width = 62
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Alignment = taCenter
          Width = 91
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DATA_PAGAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'DT PAGAMENTO'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_CAI'
          Title.Alignment = taCenter
          Title.Caption = 'CAIXA'
          Width = 47
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_EMP'
          Title.Alignment = taCenter
          Title.Caption = 'EMP'
          Width = 40
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'COD_VEN'
          Title.Alignment = taCenter
          Title.Caption = 'COD.VENDA'
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'VALOR PAGO'
          Width = 78
          Visible = True
        end>
    end
    object BtnLocalizar: TButton
      Left = 341
      Top = 327
      Width = 65
      Height = 25
      Caption = '&Localizar'
      TabOrder = 1
      OnClick = BtnLocalizarClick
    end
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = 519
    Width = 773
    Height = 19
    AutoHint = True
    Panels = <>
  end
  object QConsRecAdm: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTRAux
    OnCalcFields = QConsRecAdmCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT C.*, (C.VALOR -  ((C.VALOR * C.TAXA) / 100)) LIQUIDO, A.D' +
        'ESCRICAO ADMINISTRADORA, B.DESCRICAO BANDEIRA, B.TIPO_CARTAO, B.' +
        'CODIGO_ADMINISTRADORA, CLI.NOME_RS'
      'FROM CONTAS_RECEBER_ADM_CARTAO C'
      'INNER JOIN BANDEIRAS_CARTAO B'
      'ON (C.CODIGO_BANDEIRA = B.CODIGO)'
      'INNER JOIN ADMINISTRADORA_CARTAO A'
      'ON (B.CODIGO_ADMINISTRADORA = A.CODIGO)'
      'INNER JOIN CLIENTES CLI'
      'ON (C.COD_CLI = CLI.CODIGO)')
    Left = 304
    Top = 208
    object QConsRecAdmCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO'
      Required = True
    end
    object QConsRecAdmCODIGO_BANDEIRA: TIntegerField
      FieldName = 'CODIGO_BANDEIRA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO_BANDEIRA'
      Required = True
    end
    object QConsRecAdmDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.DOCUMENTO'
    end
    object QConsRecAdmEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.EMISSAO'
      Required = True
    end
    object QConsRecAdmVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VALOR'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QConsRecAdmVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VENCIMENTO'
      Required = True
    end
    object QConsRecAdmDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.DATA_PAGAMENTO'
    end
    object QConsRecAdmCOD_CAI: TIntegerField
      FieldName = 'COD_CAI'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_CAI'
      Required = True
    end
    object QConsRecAdmCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_EMP'
      Required = True
    end
    object QConsRecAdmCOD_VEN: TIntegerField
      FieldName = 'COD_VEN'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_VEN'
    end
    object QConsRecAdmVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VALOR_PAGO'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QConsRecAdmACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.ACRESCIMO'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QConsRecAdmDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.DESCONTO'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QConsRecAdmTAXA: TIBBCDField
      FieldName = 'TAXA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.TAXA'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 2
    end
    object QConsRecAdmLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Required = True
      DisplayFormat = ',#0.00'
      Precision = 18
      Size = 4
    end
    object QConsRecAdmADMINISTRADORA: TIBStringField
      FieldName = 'ADMINISTRADORA'
      Origin = 'ADMINISTRADORA_CARTAO.DESCRICAO'
      Required = True
      Size = 50
    end
    object QConsRecAdmBANDEIRA: TIBStringField
      FieldName = 'BANDEIRA'
      Origin = 'BANDEIRAS_CARTAO.DESCRICAO'
      Required = True
      Size = 50
    end
    object QConsRecAdmTIPO_CARTAO: TIBStringField
      FieldName = 'TIPO_CARTAO'
      Origin = 'BANDEIRAS_CARTAO.TIPO_CARTAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QConsRecAdmCALC_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_TIPO'
      Calculated = True
    end
    object QConsRecAdmCODIGO_ADMINISTRADORA: TIntegerField
      FieldName = 'CODIGO_ADMINISTRADORA'
      Origin = 'BANDEIRAS_CARTAO.CODIGO_ADMINISTRADORA'
      Required = True
    end
    object QConsRecAdmCODIGO_DUPLICATA: TIntegerField
      FieldName = 'CODIGO_DUPLICATA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO_DUPLICATA'
    end
    object QConsRecAdmCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_CLI'
      Required = True
    end
    object QConsRecAdmNOME_CLI: TIBStringField
      FieldName = 'NOME_CLI'
      Origin = 'CLIENTE.NOME_CLI'
      Required = True
      Size = 60
    end
    object QConsRecAdmPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.PARCELA'
      Required = True
    end
  end
  object DSQConsRecAdm: TDataSource
    AutoEdit = False
    DataSet = QConsRecAdm
    Left = 304
    Top = 272
  end
end

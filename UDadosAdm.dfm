object FrmDadosAdm: TFrmDadosAdm
  Left = 493
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parcelamento no Cart'#227'o'
  ClientHeight = 408
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 105
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMenu
    TabOrder = 0
    object Label21: TLabel
      Left = 8
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Bandeira'
    end
    object BtnConsBandeira: TSpeedButton
      Left = 76
      Top = 24
      Width = 23
      Height = 21
      Hint = 'Consultar'
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
      OnClick = BtnConsBandeiraClick
    end
    object Label22: TLabel
      Left = 101
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Descri'#231#227'o Bandeira'
    end
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object Label5: TLabel
      Left = 160
      Top = 56
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label2: TLabel
      Left = 264
      Top = 56
      Width = 65
      Height = 13
      Caption = 'Parcelamento'
    end
    object EdtCodBandeira: TAlignEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      Hint = 'Pressione F2 para Consultar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = EdtCodBandeiraEnter
      OnExit = EdtCodBandeiraExit
      OnKeyDown = EdtCodBandeiraKeyDown
      OnKeyPress = EdtCodBandeiraKeyPress
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
    object EdtNomeBandeira: TEdit
      Left = 101
      Top = 24
      Width = 476
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
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
      TabOrder = 6
    end
    object BtnOK: TBitBtn
      Left = 360
      Top = 69
      Width = 65
      Height = 25
      Caption = '&OK'
      TabOrder = 4
      OnClick = BtnOKClick
    end
    object BtnSair: TBitBtn
      Left = 440
      Top = 69
      Width = 65
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
      OnClick = BtnSairClick
    end
    object EdtTipo: TEdit
      Left = 8
      Top = 72
      Width = 129
      Height = 21
      TabStop = False
      Color = clSilver
      ReadOnly = True
      TabOrder = 1
    end
    object EdtValor: TCurrencyEdit
      Left = 160
      Top = 72
      Width = 89
      Height = 21
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FormatOnEditing = True
      ParentFont = False
      TabOrder = 2
      ZeroEmpty = False
    end
    object EdtParcelamento: TAlignEdit
      Left = 264
      Top = 72
      Width = 73
      Height = 21
      TabOrder = 3
      OnEnter = EdtParcelamentoEnter
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
    object EdtVenda: TAlignEdit
      Left = 408
      Top = 8
      Width = 73
      Height = 21
      TabOrder = 7
      Visible = False
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
    object EdtCli: TAlignEdit
      Left = 416
      Top = 48
      Width = 73
      Height = 21
      TabOrder = 8
      Visible = False
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
    object dt_venda: TDBDateEdit
      Left = 482
      Top = 5
      Width = 87
      Height = 21
      DataField = 'DATA_PEDIDO'
      NumGlyphs = 2
      TabOrder = 9
      Visible = False
    end
    object EdtSeq: TAlignEdit
      Left = 504
      Top = 48
      Width = 73
      Height = 21
      TabOrder = 10
      Visible = False
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
    object EdtCli1: TAlignEdit
      Left = 424
      Top = 80
      Width = 73
      Height = 21
      TabOrder = 11
      Visible = False
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 590
    Height = 284
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMenu
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 586
      Height = 247
      Align = alTop
      Color = clSilver
      DataSource = DSQBuscaParc
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'COD.'
          Width = 60
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'TAXA'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'BANDEIRA'
          Width = 182
          Visible = True
        end
        item
          Color = clInactiveBorder
          Expanded = False
          FieldName = 'HISTORICO'
          Visible = True
        end>
    end
    object BtnExcluir: TBitBtn
      Left = 324
      Top = 254
      Width = 77
      Height = 25
      Caption = '&Exclui'
      TabOrder = 1
      OnClick = BtnExcluirClick
    end
    object BtnAlterar: TBitBtn
      Left = 188
      Top = 254
      Width = 77
      Height = 25
      Caption = '&Alterar'
      TabOrder = 2
      OnClick = BtnAlterarClick
    end
    object Memo1: TMemo
      Left = 392
      Top = 104
      Width = 185
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 389
    Width = 590
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'ESC p/ Finalizar'
  end
  object QBuscaParcelas: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTRAux
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT C.CODIGO, C.EMISSAO, C.VENCIMENTO, C.VALOR, C.TAXA,'
      'B.DESCRICAO, C.HISTORICO'
      'FROM CONTAS_RECEBER_ADM_CARTAO C'
      'INNER JOIN BANDEIRAS_CARTAO B'
      'ON (C.CODIGO_BANDEIRA = B.CODIGO)'
      'WHERE C.COD_VEN = :CODVEN'
      'ORDER BY C.CODIGO')
    Left = 248
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODVEN'
        ParamType = ptUnknown
      end>
    object QBuscaParcelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO'
      Required = True
    end
    object QBuscaParcelasEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.EMISSAO'
      Required = True
    end
    object QBuscaParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VENCIMENTO'
      Required = True
    end
    object QBuscaParcelasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BANDEIRAS_CARTAO.DESCRICAO'
      Required = True
      Size = 50
    end
    object QBuscaParcelasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VALOR'
      currency = True
    end
    object QBuscaParcelasTAXA: TFloatField
      FieldName = 'TAXA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.TAXA'
    end
    object QBuscaParcelasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.HISTORICO'
      Size = 500
    end
  end
  object QDelParcela: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'DELETE FROM CONTAS_RECEBER_ADM_CARTAO'
      'WHERE CODIGO = :CODIGO')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object QGravaParcela: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'INSERT INTO CONTAS_RECEBER_ADM_CARTAO (CODIGO,'
      
        'CODIGO_BANDEIRA, EMISSAO, VENCIMENTO, COD_CAI, COD_EMP, COD_VEN,' +
        ' VALOR, VALOR_PAGO, ACRESCIMO, DESCONTO, TAXA, COD_CLI, DOCUMENT' +
        'O, PARCELA, USUARIO, HISTORICO, CODIGO_SEQUENCIA)'
      
        'VALUES(GEN_ID(GNT_COD_CTR_ADM, 1), :BAND, :EMISSAO, :VENCTO, :CA' +
        'I, :EMP, :VEN, :VALOR, 0,  0, 0, :TAXA,'
      ':CODCLI, :DOCUMENTO, :PARCELA, :USUARIO, :HISTORICO, :SEQ)')
    Left = 248
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'BAND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMISSAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENCTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARCELA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HISTORICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEQ'
        ParamType = ptUnknown
      end>
  end
  object DSQBuscaParc: TDataSource
    AutoEdit = False
    DataSet = QBuscaParcelas
    Left = 168
    Top = 224
  end
  object SPC_SEQ: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ATUAL'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'CODIGO_CRED_CARTAO'
    Left = 368
    Top = 24
  end
  object qrcaixa_mov: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from MOVIMENTO_DIARIO')
    Left = 24
    Top = 244
  end
end

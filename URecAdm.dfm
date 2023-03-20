object FrmRECADM: TFrmRECADM
  Left = 271
  Top = 52
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contas a Receber Adm.Cart'#227'o de Cr'#233'dito'
  ClientHeight = 565
  ClientWidth = 835
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 835
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object Label21: TLabel
      Left = 8
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Administradora'
    end
    object BtnConsAdm: TSpeedButton
      Left = 76
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Consultar '
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
      OnClick = BtnConsAdmClick
    end
    object Label22: TLabel
      Left = 106
      Top = 8
      Width = 135
      Height = 13
      Caption = 'Descri'#231#227'o da Administradora'
    end
    object EdtCodAdm: TAlignEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      Hint = 'Pressione F2 para Consultar '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = EdtCodAdmEnter
      OnExit = EdtCodAdmExit
      OnKeyDown = EdtCodAdmKeyDown
      OnKeyPress = EdtCodAdmKeyPress
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
    object EdtNomeAdm: TEdit
      Left = 104
      Top = 24
      Width = 425
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
      TabOrder = 3
    end
    object CheckEmp: TCheckBox
      Left = 8
      Top = 48
      Width = 121
      Height = 17
      TabStop = False
      Caption = 'Todas as Empresas'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object BtnOk: TButton
      Left = 552
      Top = 20
      Width = 65
      Height = 25
      Caption = '&OK'
      TabOrder = 1
      OnClick = BtnOkClick
    end
    object BtnSair: TButton
      Left = 640
      Top = 20
      Width = 65
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 501
    Width = 835
    Height = 45
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object BtnSel: TButton
      Left = 293
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Se&lecionar'
      TabOrder = 0
      OnClick = BtnSelClick
    end
    object BtnRec: TButton
      Left = 446
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Baixar'
      TabOrder = 1
      OnClick = BtnRecClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 546
    Width = 835
    Height = 19
    Panels = <>
  end
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 835
    Height = 380
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 3
    object PC: TPageControl
      Left = 2
      Top = 2
      Width = 831
      Height = 376
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PCChange
      object TabSheet1: TTabSheet
        Caption = 'A Receber'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 823
          Height = 348
          Align = alClient
          Color = clSilver
          DataSource = DSQRecAdm
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16776176
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'COD.'
              Width = 63
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'BANDEIRA'
              Width = 113
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'PARCELA'
              Title.Alignment = taCenter
              Title.Caption = 'PARC.'
              Width = 34
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'EMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'EMISS'#195'O'
              Width = 62
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'VENCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'VENCTO'
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taCenter
              Width = 74
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'TAXA'
              Title.Alignment = taCenter
              Title.Caption = 'TAXA(%)'
              Width = 53
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'LIQUIDO'
              Title.Alignment = taCenter
              Width = 70
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Alignment = taCenter
              Width = 84
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'NOME_RS'
              Title.Alignment = taCenter
              Title.Caption = 'CLIENTE'
              Width = 297
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Alignment = taCenter
              Width = 153
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_CAI'
              Title.Alignment = taCenter
              Title.Caption = 'CAIXA'
              Width = 42
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_EMP'
              Title.Alignment = taCenter
              Title.Caption = 'EMP'
              Width = 31
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_VEN'
              Title.Alignment = taCenter
              Title.Caption = 'VENDA'
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'CODIGO_DUPLICATA'
              Title.Alignment = taCenter
              Title.Caption = 'DUPLICATA'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Recebidas'
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 823
          Height = 348
          Align = alClient
          Color = clGradientInactiveCaption
          DataSource = DSQRecAdm
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16776176
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'COD.'
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'EMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'EMISS'#195'O'
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'VENCIMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'VENCTO'
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DTPAGTO_CTRADM'
              Title.Alignment = taCenter
              Title.Caption = 'PAGTO.'
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'VALOR_CTRADM'
              Title.Alignment = taCenter
              Title.Caption = 'VALOR'
              Width = 69
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'TAXA_CTRADM'
              Title.Alignment = taCenter
              Title.Caption = 'TAXA'
              Width = 34
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'LIQUIDO'
              Title.Alignment = taCenter
              Width = 66
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'ACRESCIMO_CTRADM'
              Title.Alignment = taCenter
              Title.Caption = 'ACR'#201'SC.'
              Width = 57
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DESCONTO_CTRADM'
              Title.Alignment = taCenter
              Title.Caption = 'DESCONTO'
              Width = 63
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'VALORPAGO_CTRADM'
              Title.Alignment = taCenter
              Title.Caption = 'VL.PAGO'
              Width = 67
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Alignment = taCenter
              Width = 155
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'DOCUMENTO_CTRADM'
              Title.Alignment = taCenter
              Title.Caption = 'DOCUMENTO'
              Width = 89
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_VEN'
              Title.Alignment = taCenter
              Title.Caption = 'VENDA'
              Width = 51
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_EMP'
              Title.Alignment = taCenter
              Title.Caption = 'EMP'
              Width = 35
              Visible = True
            end
            item
              Color = 16776176
              Expanded = False
              FieldName = 'COD_CAI'
              Title.Alignment = taCenter
              Title.Caption = 'CAIXA'
              Width = 39
              Visible = True
            end>
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 835
    Height = 56
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 4
    object Label4: TLabel
      Left = 43
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Total Bruto'
    end
    object Label7: TLabel
      Left = 652
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Total L'#237'quido'
    end
    object Label6: TLabel
      Left = 196
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Vl. Ref.Taxa'
    end
    object Label1: TLabel
      Left = 500
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Desconto'
    end
    object Label2: TLabel
      Left = 348
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Acr'#233'scimo'
    end
    object EdtTotalBruto: TCurrencyEdit
      Left = 44
      Top = 24
      Width = 93
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object EdtTotalLiq: TCurrencyEdit
      Left = 652
      Top = 24
      Width = 93
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object EdtValorTaxa: TCurrencyEdit
      Left = 196
      Top = 24
      Width = 93
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object EdtDesc: TCurrencyEdit
      Left = 500
      Top = 24
      Width = 93
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object EdtAcres: TCurrencyEdit
      Left = 348
      Top = 24
      Width = 93
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
  end
  object QRecAdm: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRRecAdm
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT R.*, (R.VALOR -  ((R.VALOR * R.TAXA) / 100)) AS LIQUIDO, ' +
        ' C.NOME_RS, B.DESCRICAO'
      'FROM CONTAS_RECEBER_ADM_CARTAO R'
      'INNER JOIN CLIENTES C'
      'ON (R.COD_CLI = C.CODIGO)'
      'INNER JOIN BANDEIRAS_CARTAO B'
      'ON (R.CODIGO_BANDEIRA = B.CODIGO)'
      'INNER JOIN ADMINISTRADORA_CARTAO A'
      'ON (B.CODIGO_ADMINISTRADORA = A.CODIGO)'
      'LEFT JOIN PEDIDOS V'
      'ON (R.COD_VEN = V.CODIGO)'
      '')
    Left = 152
    Top = 232
    object QRecAdmCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO'
      Required = True
    end
    object QRecAdmCODIGO_BANDEIRA: TIntegerField
      FieldName = 'CODIGO_BANDEIRA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO_BANDEIRA'
    end
    object QRecAdmDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.DOCUMENTO'
    end
    object QRecAdmEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.EMISSAO'
    end
    object QRecAdmVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VENCIMENTO'
    end
    object QRecAdmDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.DATA_PAGAMENTO'
    end
    object QRecAdmCOD_CAI: TIntegerField
      FieldName = 'COD_CAI'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_CAI'
    end
    object QRecAdmCOD_EMP: TIntegerField
      FieldName = 'COD_EMP'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_EMP'
    end
    object QRecAdmCOD_VEN: TIntegerField
      FieldName = 'COD_VEN'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_VEN'
    end
    object QRecAdmVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VALOR'
    end
    object QRecAdmVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VALOR_PAGO'
    end
    object QRecAdmACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.ACRESCIMO'
    end
    object QRecAdmDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.DESCONTO'
    end
    object QRecAdmTAXA: TFloatField
      FieldName = 'TAXA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.TAXA'
    end
    object QRecAdmCODIGO_DUPLICATA: TIntegerField
      FieldName = 'CODIGO_DUPLICATA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO_DUPLICATA'
    end
    object QRecAdmCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_CLI'
    end
    object QRecAdmPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.PARCELA'
    end
    object QRecAdmLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object QRecAdmNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 50
    end
    object QRecAdmDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BANDEIRAS_CARTAO.DESCRICAO'
      Size = 50
    end
  end
  object DSQRecAdm: TDataSource
    AutoEdit = False
    DataSet = QRecAdm
    Left = 152
    Top = 288
  end
  object IBTRRecAdm: TIBTransaction
    Active = False
    DefaultDatabase = DM.IBDatabase
    AutoStopAction = saNone
    Left = 152
    Top = 352
  end
end

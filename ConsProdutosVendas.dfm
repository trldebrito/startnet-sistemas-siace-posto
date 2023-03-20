object FormConsProdutosVendas: TFormConsProdutosVendas
  Left = 391
  Top = 124
  BorderStyle = bsDialog
  Caption = 'Localizar Produto  Cadastrado'
  ClientHeight = 454
  ClientWidth = 790
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
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
    Width = 790
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 129
      Top = 5
      Width = 84
      Height = 13
      Caption = 'Descri'#231'ao - F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 1
      Top = 5
      Width = 96
      Height = 13
      Caption = 'TP Pesquisa - F3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel9: TRxLabel
      Left = 531
      Top = 21
      Width = 40
      Height = 13
      Caption = 'Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText1: TDBText
      Left = 576
      Top = 7
      Width = 208
      Height = 35
      Alignment = taRightJustify
      Color = clBlack
      DataField = 'PRECO_VENDA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 128
      Top = 24
      Width = 309
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object cbxpesquisa: TComboBox
      Left = 5
      Top = 24
      Width = 116
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 1
      Text = 'Qualquer parte desc.'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Inicio da descri'#231#227'o'
        'Qualquer parte desc.'
        'Por Codigo Barras'
        'Por Ref'#234'rencia'
        'Por Codigo')
    end
    object Edit2: TEdit
      Left = 640
      Top = 20
      Width = 121
      Height = 21
      Color = cl3DLight
      TabOrder = 2
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 441
      Top = 17
      Width = 75
      Height = 31
      Caption = '&Buscar'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFDFCFFE2C0FFCC92FFBC6EFF
        BC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6EFFBC6E
        FFCB90FFE2C0FFFDFCFF00FFFF00FFFF00FFFF00FFFF00FFFFF8F0FFC888FFBC
        6EFFC576FFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFFCD7FFF
        CD7FFFCD7FFFCD7FFFC576FFBC6EFFC888FFF8F0FF00FFFF00FFFF00FFFFFEFC
        FFC987FFBE6CFFC37AFABC77F2B775F2B775F2B775F2B775F2B775F2B775F2B7
        75F2B775F2B775F2B775F2B775F2B775FABC77FFC37AFFBE6CFFC987FFFEFCFF
        00FFFF00FFFFE3BFFFBC6CF9BC76F3B875F3B875F3B875F4B975F4B975F4B975
        F4B975F4B975F4B975F4B975F4B975F4B975F4BE80F8D4ACF6C894F3B875F9BC
        76FFBC6CFFE3BFFF00FFFF00FFFFCE8DF3B76FF4BA74F4BA74F6BA74F7BB75F7
        BB75F7BB75F7BB75F7BB75F7BB75F7BB75F7BB75F7BB75F8C588FEF8F0FFFFFF
        FFFFFFF7C993F4BA74F3B76FFFCE8DFF00FFFF00FFFAB96BF5BA73F7BB73F7BB
        73F8BC74F8BC74F8BC74F8BC74F9C383FAD09FFACD98F8BF7AF8BC74F9C588FE
        F8F0FFFFFFFFFFFFFFFFFFFAD8B0F6BA73F4B972FABB6FFF00FFFF00FFF0B265
        F8BC73F9BC73FABD73FABD73FABD73FBD09BFEF7EDFFFFFFFFFFFFFFFFFFFFFF
        FFFEF2E2FEF9F2FFFFFFFFFFFFFFFFFFFFFBF7FBC586F9BC73F8BC73F0B265FF
        00FFFF00FFECB064FBBE72FBBE73FBBE73FBBE73FEE4C5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FCCC90FBBE73FBBE
        72F9BD72EDB064FF00FFFF00FFEDB063FCBF71FDC072FDC072FED7A5FFFFFFFF
        FFFFFFFFFFFFFEFEFEF2E3FFF4E8FFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FECD90
        FDC072FDC072FDC072FBBF71EDB063FF00FFFF00FFEFB262FEC171FEC171FEC5
        7BFFFBF5FFFFFFFFFFFFFFF0DCFEC880FEC171FEC171FECF8FFFF9F2FFFFFFFF
        FFFFFFF2E0FEC171FEC171FEC171FEC171FDC171EEB262FF00FFFF00FFF1B462
        FFC270FFC371FFD8A3FFFFFFFFFFFFFFFBF5FFC87CFFC371FFC371FFC371FFC3
        71FFD194FFFFFFFFFFFFFFFEFEFFC97FFFC371FFC371FFC371FFC270F0B362FF
        00FFFF00FFF2B561FFC36FFFC470FFE3BCFFFFFFFFFFFFFFEACCFFC470FFC470
        FFC470FFC470FFC470FFC470FFFBF5FFFFFFFFFFFFFFD395FFC470FFC470FFC4
        70FFC36FF2B561FF00FFFF00FFF4B760FFC56EFFC56FFFE5BEFFFFFFFFFFFFFF
        EBCCFFC56FFFC56FFFC56FFFC56FFFC56FFFC56FFFFBF5FFFFFFFFFFFFFFD596
        FFC56FFFC56FFFC56FFFC56EF4B660FF00FFFF00FFF6B860FFC76EFFC76EFFDF
        ABFFFFFFFFFFFFFFFBF7FFCC7AFFC76EFFC76EFFC76EFFC76EFFD592FFFFFFFF
        FFFFFFFFFFFFCF85FFC76EFFC76EFFC76EFFC66EF5B760FF00FFFF00FFF7BA5F
        FFC86EFFC86EFFCF81FFFEFEFFFFFFFFFFFFFFF2DBFFCE7DFFC86EFFC86EFFD4
        8EFFF9F0FFFFFFFFFFFFFFF6E7FFC86EFFC86EFFC86EFFC86EFFC86DF7B95FFF
        00FFFF00FFF9BB5EFFCA6DFFCA6DFFCA6DFFE9C3FFFFFFFFFFFFFFFFFFFFFFFF
        FFF4E2FFF7E9FFFFFFFFFFFFFFFFFFFFFFFFFFDA9AFFCA6DFFCA6DFFCA6DFFCA
        6DFFCA6DF9BB5EFF00FFFF00FFFCBE61FFCB6CFFCC6CFFCB6CFFCC71FFF2DDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B7FFCA6CFFCA6C
        FFCB6CFFCB6CFFCC6CFFCB6CFCBE61FF00FFFF00FFFFCF83FFC865FFCD6CFFCD
        6CFFCC6CFFCC6CFFE3AEFFFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0FFDA95FF
        CC6CFFCC6CFFCC6CFFCC6CFFCD6CFFCE6CFFC865FFCF83FF00FFFF00FFFFE6BA
        FFC35EFFD16CFFCF6CFFCE6CFFCD6CFFCD6CFFCF73FFD990FFE4AFFFE1A7FFD6
        89FFCC6CFFCC6CFFCD6CFFCD6CFFCE6CFFCE6CFFD06CFFD16CFFC35EFFE5BAFF
        00FFFF00FFFFFEFBFFD17AFFC75EFFD46CFFD26CFFD16CFFD16BFFD16BFFD16B
        FFD16BFFD16BFFD16BFFD16BFFD16BFFD16BFFD16CFFD16CFFD36CFFD56CFFC7
        5EFFD17AFFFEFBFF00FFFF00FFFF00FFFFF9EEFFD47CFFCA5DFFD165FFD76BFF
        D76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD86CFFD86B
        FFD165FFCA5DFFD47CFFF9EEFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFBFFEA
        BAFFDA85FFD061FFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFF
        CE5EFFCF5EFFD061FFDA85FFEABAFFFEFBFF00FFFF00FFFF00FF}
    end
    object CheckBox1: TCheckBox
      Left = 221
      Top = 3
      Width = 218
      Height = 17
      Caption = '&Descric'#227'o com N'#250'meros e Letras?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 790
    Height = 192
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 782
      Height = 184
      Align = alClient
      DataSource = DM.Dts_produtos_c
      FixedStyle = fsMild
      FixedTheme = ftButtons
      FocusRect = frMild
      Gradient.Direction = gdHorizontal
      Gradient.StartColor = cl3DLight
      GridStyle.VisualStyle = vsXPStyle
      MarkerStyle = msMild
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle, dgForceSequence, dgThumbTracking]
      OptionsEx = [dgBlankRow, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgLoadCurrentOrder, dgAutoUpdateOrder, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden]
      TabOrder = 0
      Totals.Color = 10930928
      OnDblClick = suiDBGrid1DblClick
      OnDrawColumnCell = XDBGrid1DrawColumnCell
      OnKeyPress = suiDBGrid1KeyPress
      OnOrderChanged = XDBGrid1OrderChanged
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 58
        end
        item
          Expanded = False
          FieldName = 'CODIGO_BARRAS'
          Title.Caption = 'C'#243'd. Barras'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 6
          Visible = True
          Width = 97
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Ref'#234'rencia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 4
          Visible = True
          Width = 76
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 2
          Visible = True
          Width = 245
        end
        item
          Expanded = False
          FieldName = 'DESC_UNIDADE'
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 30
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Title.Caption = 'Est. I.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 44
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_FRACAO'
          Title.Caption = 'Est. F'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 37
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA'
          Title.Caption = 'Pre'#231'o Vda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 67
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA2'
          Title.Caption = 'Pre'#231'o Vda2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 69
        end
        item
          Alignment = taCenter
          CheckBox = True
          CheckBoxValues = 'A;I'
          Expanded = False
          FieldName = 'ATIVO'
          ReadOnly = True
          Title.Caption = 'Ativo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 29
        end>
      OrderFields = 'DESCRICAO,REFERENCIA,CODIGO_BARRAS'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 242
    Width = 790
    Height = 181
    Align = alBottom
    Enabled = False
    TabOrder = 2
    object RxLabel27: TRxLabel
      Left = 170
      Top = 64
      Width = 63
      Height = 13
      Caption = 'Aplica'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel26: TRxLabel
      Left = 170
      Top = 83
      Width = 87
      Height = 13
      Caption = 'Especifica'#231#227'o,'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel38: TRxLabel
      Left = 170
      Top = 95
      Width = 91
      Height = 13
      Caption = 'Cod. Auxiliares:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel3: TRxLabel
      Left = 170
      Top = 111
      Width = 50
      Height = 13
      Caption = 'Sec'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel28: TRxLabel
      Left = 6
      Top = 6
      Width = 69
      Height = 13
      Caption = 'Gar/Meses:'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 6
      Top = 32
      Width = 56
      Height = 13
      Caption = 'Validade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel36: TRxLabel
      Left = 6
      Top = 60
      Width = 63
      Height = 13
      Caption = 'Quant. Cx:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel37: TRxLabel
      Left = 6
      Top = 87
      Width = 67
      Height = 13
      Caption = 'Qtde Frac.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 170
      Top = 8
      Width = 89
      Height = 13
      Caption = 'Principio Ativo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel6: TRxLabel
      Left = 170
      Top = 36
      Width = 71
      Height = 13
      Caption = 'Laborat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 6
      Top = 114
      Width = 73
      Height = 13
      Caption = 'Data Fabric:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 6
      Top = 137
      Width = 46
      Height = 13
      Caption = 'Fra'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 447
      Top = 110
      Width = 55
      Height = 13
      Caption = 'Cod. MS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 7
      Top = 161
      Width = 64
      Height = 13
      Caption = 'Cod. NCM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 457
      Top = 141
      Width = 181
      Height = 32
      Color = clBlack
      DataField = 'NOME_MARCA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 458
      Top = 127
      Width = 40
      Height = 13
      Caption = 'Marca:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel19: TRxLabel
      Left = 318
      Top = 128
      Width = 98
      Height = 13
      Caption = 'Estoque Vendido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel13: TRxLabel
      Left = 172
      Top = 128
      Width = 83
      Height = 13
      Caption = 'Estoque Atual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 261
      Top = 57
      Width = 370
      Height = 23
      DataField = 'APLICACAO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 261
      Top = 81
      Width = 370
      Height = 25
      DataField = 'ESP_COD_AUX'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit11: TDBEdit
      Left = 77
      Top = 1
      Width = 85
      Height = 22
      Hint = 'Meses de Garantia'
      CharCase = ecUpperCase
      DataField = 'GARANTIA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 77
      Top = 31
      Width = 85
      Height = 22
      Hint = 'Validade do medicamento/produto'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'VALIDADE'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 77
      Top = 59
      Width = 85
      Height = 22
      Hint = 'Quantidade na Caixa do Medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_CAIXA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 77
      Top = 85
      Width = 85
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_FRACIONADA'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBMemo3: TDBMemo
      Left = 261
      Top = 2
      Width = 371
      Height = 26
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBMemo4: TDBMemo
      Left = 338
      Top = 31
      Width = 293
      Height = 22
      DataField = 'LABORATORIO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 261
      Top = 32
      Width = 75
      Height = 22
      Hint = 'Digite o ano de Validade'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'COD_LABORATORIO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit6: TDBEdit
      Left = 77
      Top = 134
      Width = 86
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'FRACAO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit7: TDBEdit
      Left = 78
      Top = 110
      Width = 85
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DATA_FABRICACAO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit8: TDBEdit
      Left = 506
      Top = 107
      Width = 125
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'COD_MS'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object DBEdit9: TDBEdit
      Left = 77
      Top = 157
      Width = 86
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'NCM_SH'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object suiDBEdit15: TsuiDBEdit
      Left = 317
      Top = 142
      Width = 130
      Height = 32
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE_VENDIDO'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object suiDBEdit1: TsuiDBEdit
      Left = 172
      Top = 143
      Width = 137
      Height = 32
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE_ATUAL'
      DataSource = DM.Dts_produtos_c
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object DBImage1: TsuiDBImage
      Left = 640
      Top = 4
      Width = 145
      Height = 165
      Hint = 'Foto do Produto'
      Color = 15263976
      DataField = 'FOTO'
      DataSource = DM.Dts_produtos_c
      Stretch = True
      TabOrder = 15
      TabStop = False
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object DBEdit1: TDBEdit
      Left = 261
      Top = 108
      Width = 178
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM.dts_seccao2
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 423
    Width = 790
    Height = 31
    Align = alBottom
    TabOrder = 3
    object Label1: TLabel
      Left = 9
      Top = 11
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator: TsuiDBNavigator
      Left = 641
      Top = 3
      Width = 144
      Height = 24
      UIStyle = FromThemeFile
      DataSource = DM.DTS_PRODUTOS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'ltimo Registro'
        ''
        '')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
    end
  end
end

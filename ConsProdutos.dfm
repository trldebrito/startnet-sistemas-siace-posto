object FormConsProdutos: TFormConsProdutos
  Left = 328
  Top = 79
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar Produto  Cadastrado'
  ClientHeight = 488
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 296
    Top = 427
    Width = 3
    Height = 13
  end
  object lUltimaLeitura: TLabel
    Left = 624
    Top = 41
    Width = 139
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 8
      Top = 6
      Width = 158
      Height = 13
      Caption = 'Entre Com a Descri'#231'ao  - F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 8
      Top = 53
      Width = 201
      Height = 13
      Caption = 'Selecione a Op'#231#227'o de Pesquisa - F3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel9: TRxLabel
      Left = 489
      Top = 53
      Width = 92
      Height = 13
      Caption = 'Pre'#231'o de Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText1: TDBText
      Left = 590
      Top = 41
      Width = 171
      Height = 35
      Alignment = taRightJustify
      DataField = 'PRECO_VENDA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 491
      Top = 21
      Width = 40
      Height = 13
      Caption = 'Marca:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object DBText2: TDBText
      Left = 590
      Top = 6
      Width = 171
      Height = 35
      Alignment = taRightJustify
      DataField = 'NOME_MARCA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 8
      Top = 25
      Width = 417
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
      Left = 223
      Top = 52
      Width = 202
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Pesquisa inicio da descri'#231#227'o produto'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Pesquisa inicio da descri'#231#227'o produto'
        'Pesquisa qualquer parte da descric'#227'o'
        'Pesquisa Por Codigo Barras'
        'Pesquisa Por Referencia'
        'Pesquisa Por C'#243'digo')
    end
    object Edit2: TEdit
      Left = 648
      Top = 28
      Width = 121
      Height = 21
      Color = cl3DLight
      TabOrder = 2
      Visible = False
    end
    object suiButton2: TsuiButton
      Left = 617
      Top = 2
      Width = 29
      Height = 24
      Hint = 'F12 - Lan'#231'a Cliente n'#227'o Cadastrado'
      AutoSize = False
      Visible = False
      UIStyle = FromThemeFile
      TabOrder = 3
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000130B0000130B00000000000000000000F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F3F2F2E7E6E6D8D6D4D3D0CDDBCECAE7D5
        D2F2EEEDF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F7F7F7EDEDEDD4D2D0C0BDB9B6B3AFB9B3AFC08B7CC5644BD7A699
        F1EDEBF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F9F8F8F8F7F9F9F8F8F8F8F8F8F8
        F8EEEEEDD0CECBBFBBB9C1BFBDC4C4C3C9C2C0DAA48CE17446C37C61DCD2CEF8
        F8F8F8F7F9F8F8F8F8F8F8F9F8F8F8F8F8F9F8F8F9F8F8F9F7F9F8F7F8DAD8D6
        C2BFBBCAC8C6CFCDCDCFCECED2CDCBDCB098D88356CCA28ECDC7C2F9F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F3F1F1EDEDEAE9EBE9CAC6C1CFCCC8D6
        D5D5C9C7C7BBB9B7DBCFCBD08F79CD8568D2BDB4C9C5BFF8F6F6F6F6F6F8F7F9
        F8F7F8F8F8F8F4F3F2DFD8D2D4B8A78AA36D51A15597B18FD8D6D1DEDEDCC1BE
        BDA39E9CC2A99ECC7953CD8D71DACEC8D0C8BFDDBBA6CEBAB0C0CEDBE1E7EFF6
        F6F7DDE3DAB4C0A4E7CEB48FB46B38B54469B86CC3D2BCD9DAD6D7D9D9ACC2CD
        84AEC3A59C98BB9788D2C4BED9B8A1D47337A880634D95BD82A8C4EAE9EAC2D6
        BE8BC284D6D5B6A7C68566D06866C96B8BCD88BACFB6BACED58AC5E368BCE474
        B0D0A9B3B8D3BBA9E6AC87F2A473C0B09A5CB7DA859EAAE1D2CABAD4B491D486
        B5CB97A6BC8493D18886B38185D08580BD9D7CBED66CBEE863BDE766B9E37EB8
        D6BFC1BED7B8A5E6C5B0B3C0C662A9D2B7BCBFE0CFC2C2D9BB9DD890C0DAB0D9
        D9CBBAC4B8B0B9AE7CA58670B6BD6EC6EC6AC6F164C0EC5FB9E861B7E47FB9D8
        A5AAACA8AAAB75B8D569ACD2CFD6DBE3DBD3E8EFE4B7D4ACA7BCAA95BED275C0
        E589ADC15E7D8A65A5C888CEF381CFF76CC5EF60BAE85EB6E560B2DF9EC4D788
        B7CF66B2DC79A8C7C9CDCFE3E0DAF7F8F7DBE9E996C7D873BEE462BAE45596BA
        31698D4E8FBC83BBE08FC8E983CEF463BBEA5FB6E55DB2E075B8DB71C1E86AB7
        E092BACFD2D8D9F2F2F1F1F5F6BADCED7AC7ED6CC5F063BFEA529DC53078A33C
        8CBF3988BE428CBF85D2F665C0EC5EB7E55CB1DF66BCE666C1ED62BBE86DB9E2
        A9D1E7EEF3F7ECF2F6AED6EC96D5F588D2F56CC3EE58A6D0428BB43595C9268D
        C62183C162B7E569C1EE60B7E662B1DE7BC7EF70C6F263BCEA5FB6E570B6DCD8
        E9F3EDF3F6BBDCEEB9E3F8B0E3F97DC6E83A718A4A85A44CA1C836A5D6269CD2
        2592CF2F96D32F95D051A3D389C8E790D6F76AC2ED5EB6E563B2DDC6DFEEF1F3
        F5C6DBE7B4DAEFA2D8F16BA1B64D5D633E545D4C6F7F6FAFCA62BEE050B8DF4D
        B3DC3CB5D834B6D41BA5C756B5D970C5F05FB8E769B4DCD4E7F2F5F5F5C4CCD0
        809CA87199AB4D69756365666266677B8183BBC3C8CADCE3C1DAE3B2CDD76FC4
        CF2BD9EC0CD5EF21A8D153B5E44DAEDE76B7D9E4EEF3F7F7F7DDDEDF999FA170
        797E6A70747777788D8D8DC6C5C5F1F1F1F8F8F8F9F8F8EEEFF0B6CED468C6D9
        34CBEF20B2E526A2D939A6D591C6DDEDF2F4F9F8F8F6F6F6EAEAEAD8D8D7CBCB
        CACCCCCCDCDCDCF2F2F2F8F8F8F8F8F8F8F9F7F7F7F7EAECEDC7D8DE9DC8DA80
        C4E383C6E6AEDAEDE2EFF5F7F7F8F8F8F8F8F8F8F7F8F8F7F8F7F5F6F6F6F6F6
        F6F7F7F8F8F8F8F8F8F8F8F8F8F9F7F8F8F8F7F7F8F4F5F5EEF1F1E9F0F3EBF1
        F5F4F6F7F7F8F8F8F7F9}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object CheckBox1: TCheckBox
      Left = 181
      Top = 4
      Width = 97
      Height = 17
      Caption = 'Ativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 246
      Top = 4
      Width = 97
      Height = 17
      Caption = 'Inativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 317
      Top = 4
      Width = 97
      Height = 17
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 381
      Top = 4
      Width = 218
      Height = 17
      Caption = '&Descric'#227'o com N'#250'meros e Letras?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 792
    Height = 186
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    Color = 15263976
    TabOrder = 1
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 784
      Height = 178
      Align = alClient
      DataSource = DM.DTS_PRODUTOS
      FixedStyle = fsMild
      FixedTheme = ftButtons
      FocusRect = frMild
      Gradient.Direction = gdHorizontal
      Gradient.StartColor = cl3DLight
      GridStyle.VisualStyle = vsXPStyle
      ListBorder = lbMild
      MarkerStyle = msDefault
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
          Title.Caption = 'Cod. Prod'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 57
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
          Width = 91
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
          Width = 79
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
          Width = 233
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
          Width = 32
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
          Width = 42
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_FRACAO'
          Title.Caption = 'Est. F.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 41
        end
        item
          Expanded = False
          FieldName = 'PRECO_VENDA'
          Title.Caption = 'P'#231' Venda'
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
          Title.Caption = 'P'#231' Venda2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 71
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsEllipsis
          CheckBox = True
          CheckBoxStyle = cbLoweredGray
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
          Width = 37
        end
        item
          Expanded = False
          FieldName = 'NCM_SH'
          Title.Caption = 'C'#243'digo NCM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 90
        end>
      OrderFields = 'DESCRICAO,REFERENCIA,CODIGO_BARRAS'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 267
    Width = 792
    Height = 180
    Align = alBottom
    Enabled = False
    TabOrder = 2
    object RxLabel27: TRxLabel
      Left = 188
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
      Left = 188
      Top = 92
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
      Left = 188
      Top = 104
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
      Left = 188
      Top = 142
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
      Top = 10
      Width = 97
      Height = 13
      Caption = 'Garantia/Meses:'
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
      Left = 5
      Top = 38
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
      Left = 2
      Top = 66
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
      Left = 3
      Top = 93
      Width = 101
      Height = 13
      Caption = 'Qtde Fracionada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel4: TRxLabel
      Left = 188
      Top = 10
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
      Left = 188
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
    object RxLabel10: TRxLabel
      Left = 5
      Top = 153
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
    object RxLabel7: TRxLabel
      Left = 3
      Top = 125
      Width = 46
      Height = 13
      Caption = 'Frac'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 279
      Top = 57
      Width = 345
      Height = 22
      DataField = 'APLICACAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 279
      Top = 90
      Width = 345
      Height = 35
      DataField = 'ESP_COD_AUX'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit11: TDBEdit
      Left = 107
      Top = 9
      Width = 77
      Height = 22
      Hint = 'Meses de Garantia'
      CharCase = ecUpperCase
      DataField = 'GARANTIA'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 107
      Top = 37
      Width = 77
      Height = 22
      Hint = 'Validade do medicamento/produto'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'VALIDADE'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 107
      Top = 65
      Width = 77
      Height = 22
      Hint = 'Quantidade na Caixa do Medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_CAIXA'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 107
      Top = 92
      Width = 77
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'QTD_FRACIONADA'
      DataSource = DM.DTS_PRODUTOS
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
      Left = 279
      Top = 6
      Width = 345
      Height = 22
      DataField = 'PRINCIPIO_ATIVO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBMemo4: TDBMemo
      Left = 356
      Top = 31
      Width = 268
      Height = 22
      DataField = 'LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 278
      Top = 32
      Width = 75
      Height = 22
      Hint = 'Digite o ano de Validade'
      BevelEdges = [beRight]
      BiDiMode = bdRightToLeft
      CharCase = ecUpperCase
      DataField = 'COD_LABORATORIO'
      DataSource = DM.DTS_PRODUTOS
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
    object DBEdit8: TDBEdit
      Left = 64
      Top = 150
      Width = 122
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'COD_MS'
      DataSource = DM.DTS_PRODUTOS
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
    object DBEdit6: TDBEdit
      Left = 107
      Top = 124
      Width = 77
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'FRACAO'
      DataSource = DM.DTS_PRODUTOS
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
    object DBImage1: TsuiDBImage
      Left = 628
      Top = 4
      Width = 157
      Height = 165
      Hint = 'Foto do Produto'
      Color = 15263976
      DataField = 'FOTO'
      DataSource = DM.DTS_PRODUTOS
      Stretch = True
      TabOrder = 11
      TabStop = False
      UIStyle = WinXP
      BorderColor = 6842472
    end
    object DBEdit1: TDBEdit
      Left = 279
      Top = 138
      Width = 345
      Height = 22
      Hint = 'Quant. Fracionada na Caixa do medicamento'
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM.DTS_SECCAO1
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 447
    Width = 792
    Height = 41
    Align = alBottom
    TabOrder = 3
    object RxLabel8: TRxLabel
      Left = 275
      Top = 14
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
    object suiButton1: TsuiButton
      Left = 524
      Top = 8
      Width = 120
      Height = 27
      Caption = 'Cadastro - F4'
      AutoSize = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
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
        00FFFF00FFFFE3BFFFBC6CF9BC76F3B875FBBD77FEBF78FFC278FFC378FFC378
        FFC378FFC378FFC378FFC378FFC378FFC378FFC178FDBE77F9BC76F3B875F9BC
        76FFBC6CFFE3BFFF00FFFF00FFFFCE8DF3B76FF4BA74FBBE75FFC177FFEDD6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD6
        FFC176FABD75F4BA74F3B76FFFCE8DFF00FFFF00FFFAB96BF5BA73F7BB73FEBF
        75FFECD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEDD6FDBF75F6BA73F4B972FABB6FFF00FFFF00FFF0B265
        F8BC73F9BC73FCBE74FFFFFFFFFFFFFDDEBAFABD73FABD73FFC878FFCD79FFCC
        78FFC576FABD73FABD73FDDEBAFFFFFFFFFFFFFEC074F9BC73F8BC73F0B265FF
        00FFFF00FFECB064FBBE72FBBE73FBBE73FFFFFFFFFFFFFBBE73FBBE73FBBE73
        FFCB77FFFFFFFFFFFFFFC976FBBE73FBBE73FBBE73FFFFFFFFFFFFFEC073FBBE
        72F9BD72EDB064FF00FFFF00FFEDB063FCBF71FDC072FDC072FFFFFFFFFFFFFD
        C072FDC072FDC072FFC975FFFFFFFFFFFFFFCC76FDC072FDC072FDC072FFFFFF
        FFFFFFFEC172FDC072FBBF71EDB063FF00FFFF00FFEFB262FEC171FEC171FEC1
        71FFFFFFFFFFFFFFCE75FFD477FFD478FFCF75FFFFFFFFFFFFFFD678FFD878FF
        D277FFCA74FFFFFFFFFFFFFFC271FEC171FDC171EEB262FF00FFFF00FFF1B462
        FFC270FFC371FFC371FFFFFFFFFFFFFFCE74FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFCC73FFFFFFFFFFFFFFC371FFC371FFC270F0B362FF
        00FFFF00FFF2B561FFC36FFFC470FFC470FFFFFFFFFFFFFFC570FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC570FFFFFFFFFFFFFFC570FFC4
        70FFC36FF2B561FF00FFFF00FFF4B760FFC56EFFC56FFFC56FFFFFFFFFFFFFFF
        C66FFFC56FFFC56FFFC56FFFFFFFFFFFFFFFC56FFFC56FFFC56FFFC56FFFFFFF
        FFFFFFFFC66FFFC56FFFC56EF4B660FF00FFFF00FFF6B860FFC76EFFC76EFFC7
        6EFFFFFFFFFFFFFFC86FFFC76EFFC76EFFC76EFFFFFFFFFFFFFFC76EFFC76EFF
        C76EFFC76EFFFFFFFFFFFFFFC86EFFC76EFFC66EF5B760FF00FFFF00FFF7BA5F
        FFC86EFFC86EFFC86EFFFFFFFFFFFFFFCC6FFFCD6FFFC86EFFC86EFFFFFFFFFF
        FFFFC86EFFC86EFFCB6EFFCA6EFFFFFFFFFFFFFFC96EFFC86EFFC86DF7B95FFF
        00FFFF00FFF9BB5EFFCA6DFFCA6DFFCA6DFFFFFFFFFFFFFFE9B7FFD570FFD670
        FFD570FFD570FFD570FFD570FFD570FFD36FFFE7B7FFFFFFFFFFFFFFCA6DFFCA
        6DFFCA6DF9BB5EFF00FFFF00FFFCBE61FFCB6CFFCC6CFFCB6CFFEFD3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF0D3FFCB6CFFCC6CFFCB6CFCBE61FF00FFFF00FFFFCF83FFC865FFCD6CFFCD
        6CFFCC6CFFF0D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF0D3FFCC6CFFCD6CFFCE6CFFC865FFCF83FF00FFFF00FFFFE6BA
        FFC35EFFD16CFFCF6CFFCE6CFFCD6CFFCD6CFFCC6CFFCC6CFFCC6CFFCC6CFFCC
        6CFFCC6CFFCC6CFFCD6CFFCD6CFFCE6CFFCE6CFFD06CFFD16CFFC35EFFE5BAFF
        00FFFF00FFFFFEFBFFD17AFFC75EFFD46CFFD26CFFD16CFFD16BFFD16BFFD16B
        FFD16BFFD16BFFD16BFFD16BFFD16BFFD16BFFD16CFFD16CFFD36CFFD56CFFC7
        5EFFD17AFFFEFBFF00FFFF00FFFF00FFFFF9EEFFD47CFFCA5DFFD165FFD76BFF
        D76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD76CFFD86CFFD86B
        FFD165FFCA5DFFD47CFFF9EEFF00FFFF00FFFF00FFFF00FFFF00FFFFFEFBFFEA
        BAFFDA85FFD061FFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFFCE5EFF
        CE5EFFCF5EFFD061FFDA85FFEABAFFFEFBFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object DBNavigator: TsuiDBNavigator
      Left = 3
      Top = 8
      Width = 260
      Height = 27
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
      TabOrder = 1
      TabStop = True
    end
    object suiButton3: TsuiButton
      Left = 660
      Top = 8
      Width = 120
      Height = 27
      Caption = 'Custos - F5'
      AutoSize = False
      UIStyle = FromThemeFile
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFD3E5FFB6D5FFA9CDFFA9CDFFA9CDFFA9
        CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFFA9CDFF
        A9CDFFA9CDFFC2DCFFF3F8FFFF00FFFF00FFFDFEFF9AC6FF6FAEFF6FAEFF73B1
        FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73B1FF73
        B1FF73B1FF73B1FF73B1FF73B1FF6FAEFF7BB4FFE5F0FFFF00FFCEE4FF6EAFFF
        7CB6FF79AFFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78AC
        FF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF78ACFF7AB2FF70AFFF95C4FFFF
        00FFB3D7FF669CFF72A4FF72A4FF72A4FF9BBEFFC7DAFFC7DAFFC7DAFFC7DAFF
        C7DAFFC7DAFFC7DAFFC7DAFFC7DAFFC7DAFFC7DAFFBED5FF7AA9FF72A4FF72A4
        FF71A4FF76B2FFFF00FFCCE2FF6499FF72A7FF72A7FF95BDFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE6EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D2E3FF72A7FF72A7FF6BA0FF85B3FFFF00FFFCFDFF74A8FF6CA4FF71AAFFA5C8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DBAFF6794FF8DAFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEDF4FF71ABFF72ABFF639DFFCADEFFFF00FFFF00FFC6DDFF
        63A1FF71AEFF7EB5FFFAFCFFFFFFFFFFFFFFFFFFFFFFFFFF88AFFF689AFF7CA7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCD8FF71AFFF67A5FF83B4FFFF00FFFF
        00FFFF00FFFDFEFF80B5FF68A9FF70B0FFBCD9FFFFFFFFFFFFFFFFFFFFFFFFFF
        E6F0FFA7C8FFE3EDFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9FF7AB5FF71B2FF62A4
        FFDAEAFFFF00FFFF00FFFF00FFFF00FFD0E5FF62A7FF70B3FF78B6FFF5F9FFFF
        FFFFFFFFFFFFFFFFE7F1FFA7CBFFCFE2FFFFFFFFFFFFFFFFFFFFFFFFFFAED3FF
        70B4FF64A9FF90C1FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8ABFFF63AB
        FF6EB5FFAFD6FFFFFFFFFFFFFFFFFFFF98C5FF6FAFFF71B0FFF8FBFFFFFFFFFF
        FFFFEBF4FF73B7FF6EB7FF63AAFFE5F1FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFE1F0FF60ADFF6EBAFF71BAFFECF6FFFFFFFFFFFFFF93C8FF72B7FF72B7
        FFEEF7FFFFFFFFFFFFFFA1D1FF6EBBFF60AEFFA2CFFFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF98CCFF60B0FF6DBCFFA0D3FFFFFFFFFFFFFF
        95CEFF74BEFF74BEFFEFF7FFFFFFFFE0F1FF6EBDFF6BBBFF67B4FFEEF7FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE9F4FF62B4FF6CBFFF6C
        BEFFE4F2FFFFFFFF97D3FF77C5FF77C5FFEFF8FFFFFFFF8FCEFF6DC1FF5EB3FF
        AED9FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFA4D6FF5EB5FF6CC2FF91D1FFFFFFFFA3DBFF78CAFF7CCCFFFAFDFFD2ECFF6C
        C3FF67BFFF6FBEFFF8FCFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFF3FAFF64BCFF68C3FF6BC4FFD5EEFFF0F9FFB2E3FFD6F0
        FFFEFEFF80CDFF6CC7FF5DBAFFBCE2FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3E0FF5CBBFF6AC8FF86D1FF
        FEFEFFFFFFFFFFFFFFC2E8FF6BC9FF62C2FF77C7FFFDFEFFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF8FCFF6D
        C5FF64C7FF69CAFFA9E0FFF4FBFFD3F0FF73CEFF6ACCFF5BBFFFCFECFFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFC0E7FF5BC1FF69CEFF69CCFF69CCFF69CCFF69CEFF5EC4FF81
        D0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFDFEFF75CDFF60C8FF68D0FF68CFFF69D0
        FF69D2FF5AC4FFDEF3FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEEFFF59C8FF
        68D6FF68D6FF69D6FF5AC8FF94DBFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF8FDCFF5ACCFF63D6FF5CCFFF6AD0FFECF9FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFBFEFFA7E6FF7BDAFF92E0FFE4F7FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton3Click
      ResHandle = 0
    end
    object suiDBEdit1: TsuiDBEdit
      Left = 386
      Top = 4
      Width = 131
      Height = 32
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ESTOQUE_VENDIDO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
  end
  object ACBrLCB4: TACBrLCB
    Porta = 'COM1'
    Sufixo = ' '
    Intervalo = 300
    OnLeCodigo = ACBrLCB4LeCodigo
    Left = 678
    Top = 9
  end
end

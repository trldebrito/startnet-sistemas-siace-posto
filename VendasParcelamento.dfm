object FormParcelamento: TFormParcelamento
  Left = 400
  Top = 119
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Finaliza'#231#227'o de Venda '
  ClientHeight = 542
  ClientWidth = 723
  Color = clBtnFace
  Constraints.MinHeight = 33
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 32
    Top = 200
    Width = 649
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
  object Panel4: TPanel
    Left = 0
    Top = 160
    Width = 257
    Height = 328
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 4
    object PanelOK: TPanel
      Left = 2
      Top = 194
      Width = 253
      Height = 132
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = cl3DLight
      TabOrder = 0
      object RxLabel3: TRxLabel
        Left = 2
        Top = 46
        Width = 43
        Height = 16
        Caption = 'Troco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape8: TShape
        Left = 69
        Top = 36
        Width = 180
        Height = 42
        Brush.Color = clBlack
        Pen.Color = clSilver
        Pen.Width = 3
        Shape = stRoundRect
      end
      object RxLabel11: TRxLabel
        Left = 2
        Top = 6
        Width = 69
        Height = 16
        Caption = 'Diferen'#231'a:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel14: TRxLabel
        Left = 4
        Top = 94
        Width = 39
        Height = 16
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape9: TShape
        Left = 67
        Top = 84
        Width = 182
        Height = 42
        Brush.Color = clBlack
        Pen.Color = clSilver
        Pen.Width = 3
        Shape = stRoundRect
      end
      object edtDiferenca: TCurrencyEdit
        Left = 72
        Top = 6
        Width = 178
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clInactiveCaptionText
        DisplayFormat = ',#0.00'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ZeroEmpty = False
      end
      object EdtTroco: TCurrencyEdit
        Left = 72
        Top = 42
        Width = 172
        Height = 30
        AutoSize = False
        BorderStyle = bsNone
        Color = clBlack
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = DBComboClienteKeyPress
      end
      object EdtTotalGeral: TCurrencyEdit
        Left = 72
        Top = 91
        Width = 172
        Height = 30
        AutoSize = False
        BorderStyle = bsNone
        Color = clBlack
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel8: TPanel
      Left = 2
      Top = 2
      Width = 253
      Height = 191
      Align = alCustom
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 16710131
      TabOrder = 1
      object Label13: TLabel
        Left = 1
        Top = 1
        Width = 251
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Formas de Pagamentos'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBGridFormas: TXDBGrid
        Left = 1
        Top = 17
        Width = 251
        Height = 173
        Align = alClient
        DataSource = formVendas.DSFormas
        GridStyle.VisualStyle = vsXPStyle
        Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
        OptionsEx = [dgBlankRow, dgTotalValues, dgTotalFields, dgTotalFooter, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden, dgClickSelectOff]
        TabOrder = 0
        OnColEnter = DBGridFormasColEnter
        OnColExit = DBGridFormasColExit
        OnDrawColumnCell = DBGridFormasDrawColumnCell
        OnEnter = DBGridFormasEnter
        OnExit = DBGridFormasExit
        OnKeyDown = DBGridFormasKeyDown
        OnKeyPress = DBGridFormasKeyPress
        OnRowSelect = DBGridFormasRowSelect
        OnTotalsUpdated = DBGridFormasTotalsUpdated
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Formas de Pagto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            TotalFooter.Alignment = taCenter
            TotalFooter.Caption = 'Total Pago'
            Visible = True
            Width = 150
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            TotalFooter.Format = '%n'
            TotalFooter.TotalResult = trCalcValue
            Visible = True
            Width = 77
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 256
    Top = 259
    Width = 465
    Height = 229
    Align = alCustom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel7: TRxLabel
      Left = 152
      Top = 198
      Width = 123
      Height = 13
      Caption = 'Valor Total  das Parcelas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 8
      Top = 2
      Width = 182
      Height = 23
      Caption = 'Parcelas da Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel2: TRxLabel
      Left = 200
      Top = 8
      Width = 46
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#186' Dias:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel6: TRxLabel
      Left = 317
      Top = 8
      Width = 84
      Height = 13
      AutoSize = False
      Caption = 'N'#186' de Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object suiDBNavigator1: TsuiDBNavigator
      Left = 5
      Top = 191
      Width = 136
      Height = 27
      UIStyle = Protein
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 301
      Top = 190
      Width = 156
      Height = 29
      AutoSize = False
      Color = 15263976
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 2
      Top = 32
      Width = 459
      Height = 151
      Align = alCustom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 15263976
      TabOrder = 2
      DesignSize = (
        459
        151)
      object DBGrid1: TsuiDBGrid
        Left = 2
        Top = 2
        Width = 455
        Height = 147
        Align = alClient
        BorderStyle = bsNone
        DataSource = DataSource1
        Enabled = False
        FixedColor = 12874553
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid1KeyDown
        UIStyle = MacOS
        BorderColor = 8355711
        FocusedColor = clGreen
        SelectedColor = clYellow
        FontColor = clBlack
        TitleFontColor = clWhite
        FixedBGColor = 12874553
        BGColor = clWindow
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CodigoCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' do Carn'#234
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DataCompra'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Parcela'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DataVencimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data Vcto/Deposito'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorParcela'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor da Parcela'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Caption = 'Comiss'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = False
          end>
      end
      object edCod: TEdit
        Left = 216
        Top = 67
        Width = 33
        Height = 21
        Cursor = crIBeam
        TabOrder = 1
        Visible = False
      end
      object Edit6: TEdit
        Left = 120
        Top = 67
        Width = 121
        Height = 21
        TabOrder = 2
        Visible = False
      end
      object Edit5: TEdit
        Left = 152
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 3
        Visible = False
        OnChange = Edit5Change
      end
      object mFormas: TMemo
        Left = 247
        Top = 76
        Width = 153
        Height = 44
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 4
        Visible = False
      end
      object cbxModelo: TComboBox
        Left = 228
        Top = 47
        Width = 125
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        Text = 'Procurar'
        Visible = False
        OnChange = cbxModeloChange
        Items.Strings = (
          'Procurar'
          'ecfNaoFiscal'
          'ecfBematech'
          'ecfSweda'
          'ecfDaruma'
          'ecfSchalter'
          'ecfMecaf'
          'ecfYanco'
          'ecfDataRegis'
          'ecfUrano'
          'ecfICash'
          'ecfQuattro'
          'ecfSwedaSTX')
      end
      object Button3: TButton
        Left = 43
        Top = 94
        Width = 108
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Gravar Dados Z'
        TabOrder = 6
        Visible = False
        OnClick = Button3Click
      end
      object Edit3: TEdit
        Left = 160
        Top = 107
        Width = 81
        Height = 21
        TabOrder = 7
        Visible = False
      end
    end
    object DBEdit4: TDBEdit
      Left = 250
      Top = 5
      Width = 41
      Height = 19
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'VARIACAO_DIAS'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 411
      Top = 4
      Width = 46
      Height = 19
      CharCase = ecUpperCase
      Color = 15263976
      Ctl3D = False
      DataField = 'NUMERO_PAR'
      DataSource = DM.DTS_CondPagamento
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 488
    Width = 723
    Height = 54
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 1
    object suiButton1: TsuiButton
      Left = 268
      Top = 6
      Width = 170
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Cancela/Fecha - F5'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 2
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFF8F8FE84343D80000C90000C20000C20000C94343D88F8FE8FEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656DC0000C40000C30808CB2F2FD34343
        D74343D72E2ED30707CB0000C30000C45656DCFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3F20000C600
        00C53D3DD76161DE4444D82121D10707CB0A0ACC2424D14646D86363DE3A3AD7
        0000C50000C6C3C3F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFACACED0000C11313CE6767DF1D1DD00000C80000C80000C90000
        C90000C90000C90000C80000C82020D06969DF1212CE0000C1ACACEDFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFC7C7F30000C21D1DD05959DC00
        00C80000C80000C90000CA0000CA0000CA0000CA0000CA0000C90000C90000C8
        0000C95D5DDD1C1CD00000C2C7C7F3FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF0000C61010CD5A5ADC0000C70000C90000CA0000CA0000CA0000CA0000
        CA0000CA0000CA0000CA0000CA0000CA0000C90000C75E5EDD0F0FCD0000C6FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF6363E00000C56868DF0000C80000C900
        00CA0000CA0000CA0000CA0000CA0000CA0000CA0000CA0000CA0000CA0000CA
        0000CA0000C90000C86C6CE00000C46262DEFFFFFFFFFFFF0000FFFFFFFFFFFF
        0000CC3A3AD82020D10000C80000C90000CA0000CA0000CA0000CA0000CA0000
        CB0000CB0000CB0000CB0000CB0000CB0000CB0000CB0000C82424D13939D600
        00C4FFFFFFFFFFFF0000FFFFFF9F9FEF0000D06565E20000CC0000CA0000C900
        00BD0000BE0000BF0000BD0000BC0000BB0000B90000B80000B80000B80000B8
        0000B80000BB0000CB0000C76767DF0000C39999EAFFFFFF0000FFFFFF5555E6
        0909D85252E12727D83838D99393EAF2F2F6EAEAF5E8E8F4E7E7F4E6E6F4E4E4
        F3E1E1F2E0E0F1E0E0F2E0E0F2E0E0F2EDEDF67070C90000C90000C84A4ADA01
        01CA4949DAFFFFFF0000FFFFFF1414DF6262E87E7EEA6565E45050DFACACEFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8383D20000C80000C92424D12F2FD40303CBFFFFFF0000FFFFFF2D2DE6
        AFAFF57777EB6E6EE95E5EE4AFAFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FD10000C80000C90303CA48
        48D90000C2FFFFFF0000FFFFFF4A4AECB4B4F57E7EEE7B7BED6B6BE8B5B5F3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080D00000C80000C90000C94C4CDA0000C1FFFFFF0000FFFFFF4F4FEF
        B7B7F89292F28888F07878ECC1C1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898DB0000C80000C91212CE3E
        3ED70000C5FFFFFF0000FFFFFF6969F4B4B4F8ADADF79292F28B8BF09595F1A1
        A1F09898EF9393EC8C8CEA8686E88181E57B7BE37575E27171E16D6DE06767E0
        6767DF4646D91515CF0000C73434D51C1CD02424D2FFFFFF0000FFFFFF8080F6
        B1B1FAC4C4FA9D9DF59999F48F8FF18686EF7F7FEC7777E96F6FE76666E45F5F
        E15656DE4E4EDA4848D94141D83A3AD63434D53131D43333D40000C85A5ADC00
        00C56D6DE1FFFFFF0000FFFFFFCACAFC8181F8D3D3FCABABF8A4A4F69E9EF497
        97F39090F08888EE8181EC7A7AE97171E66A6AE36262E05A5ADD5353DB4E4EDA
        4747D84040D73C3CD61B1BCF5858DC0000C2D1D1F6FFFFFF0000FFFFFFFFFFFF
        5959F8CFCFFCCBCBFBADADF8AAAAF7A2A2F59C9CF39595F28E8EEF8686ED7F7F
        EA7878E87070E46767E16060DE5858DC5252DB4C4CD93F3FD77979E30404CB0F
        0FCDFFFFFFFFFFFF0000FFFFFFFFFFFFB5B5FD8C8CFADCDCFDC2C2FBB3B3F9AE
        AEF7A8A8F6A1A1F49A9AF29393F08C8CEE8484EB7D7DE97575E66E6EE36565E0
        5E5EDE5454DB6666DE8989E60000C1BCBCF1FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF6363FBC5C5FCE0E0FDC3C3FBB8B8F9B4B4F8ADADF7A6A6F59F9FF39898
        F19191EF8A8AED8383EA7A7AE77272E56767E16F6FE09A9AEA4A4ADA4646D8FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF5151FCCECEFCE4E4FECE
        CEFCBCBCFAB7B7F9B1B1F7ABABF6A3A3F49D9DF29696F08E8EEE8585EA7C7CE8
        8F8FEAA7A7EE6161DE4646D8FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF5353FCBBBBFDE4E4FDDFDFFCCACAFBBDBDF9B5B5F8AFAF
        F6A7A7F5A0A0F39A9AF1A3A3F1B9B9F3A5A5F06E6EE44747DCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7EFE7B
        7BFCD4D4FCE3E3FDE0E0FDD7D7FBCFCFFBCCCCFAC9C9F9CACAF8BCBCF69797EF
        4646E17676E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7FE7878FC6B6BFA9A9AFAC6C6FCC8C8
        FBBFBFF9BCBCF88686F14A4AE86E6EEBE7E7FBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDBDBFEA1A1FAA1A1F9A4A4F7A3A3F7D9D9FBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
    object suiButton2: TsuiButton
      Left = 538
      Top = 5
      Width = 170
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Finalizar - F10'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEBF8F39CE4C547C99219B87315B57116B37019B57347C6919CE4C6EAF7F2
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF6FCF95AD09E14BC7410B67031BC8051C39360C5
        9A60C39952BB8E33AD7914A26517B06F5BCD9EF6FCF9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5EAD318BE771C
        BD795CCF9E79D8B060CFA042C38D2EBA7E30B77E47BC8A63C59B7CCCAA5CBA91
        1BA16818B371B6E9D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF9DE3C516BD7641C88F82DBB545C99125BF7E22BE7C22BD7C25BB
        7B25B97A24B57822B17423AE7445B78682CDAC3AAC7B12AC6A9DE2C4FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB9EAD619BF794DCE977BDAB12C
        C3832BC3832DC3822BC18229C18027C07F26BD7D26BA7C27B77A28B47924AF74
        26AD7377CBA742AF8013AD6CB7E9D4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FEFEFE1FC17C49CD957EDCB32EC58534C68833C58730C4862EC38428C18023BE
        7C28C18026BE7E26BB7C27B97B28B67A27B37720AC7178CCA838AC7B1AB773FD
        FEFEFFFFFFFFFFFF0000FFFFFFFFFFFF66D4A52FC7878DE0BE37C98B38C88B38
        C88B36C78934C68829C38145CA926BC49E20BB7A29C18027C07F26BD7C27BA7C
        27B77A27B37820AE7184D0B018A66A64D2A3FFFFFFFFFFFF0000FFFFFFF9FDFC
        1EC27C6ED9AC58D39F3BCB8E3CCB8E39C98C37C88B2EC5853AC68BFFFEFFFFFF
        FF2AAE7628C1812AC18128C08026BE7E26BB7C27B97B23B47746BE8A58BF9412
        B26EF8FCFBFFFFFF0000FFFFFF9CE3C530C9888CE1BE39CC8D3DCC9042CC9145
        CD943FCB9047CC93FBFCFBFFFFFFFFFFFFDAF0E616AD6C2CC5832BC18229C07F
        27C07F26BD7C26BA7C1DB3737FD2AE12AD6A9DE3C5FFFFFF0000FFFFFF58D19E
        4BD2997EDFB55FD6A372DAAE71DAAE6CD9AA6ED8ABFCFDFCFFFFFFFFFFFFFFFF
        FFFFFFFF94D4B920B7772DC4842CC1822AC18128C08026BE7E20B97866CDA22A
        B57B55CD9AFFFFFF0000FFFFFF27C6828EE3C09FE7C88CE3BE86E0BA7FDEB66E
        D9ABD5F4E7FFFFFFFFFFFFAFE7CFFBFEFDFFFFFFFFFFFF5CBF9433C48630C485
        2CC2822BC18229C07F23BE7D45C68F50C6941ABA75FFFFFF0000FFFFFF4ED099
        C6F2DF9AE6C693E4C28FE3C089E1BC7ADDB3BEEED9FFFFFFD5F1E552D09B8FE1
        BFFFFFFFFFFFFFFCFDFC3DB78340CA8F34C5882CC2832CC18229C0802AC18163
        D0A10EB86FFFFFFF0000FFFFFF67D6A7CAF3E1A0E8CA9EE7C999E6C592E4C189
        E1BCAAE9CEFCFDFC70D9AC74DAAF5ED4A2C8F0DFFFFFFFFFFFFFCDEADE3ABC84
        48CD9535C5892DC3842CC28228C18068D3A50DBA71FFFFFF0000FFFFFF5DD4A1
        CDF4E4AFECD3A7EACEA1E9CA9CE7C796E5C49CE6C795E4C383DFB880DEB578DC
        B266D6A7F5FCF9FFFFFFFFFFFF90D2B645C6904ECE9832C5862DC3843DC78C5F
        D0A011BB73FFFFFF0000FFFFFF60D5A4CDF4E4C3F1DDAFECD2ABECD0A6EACDA1
        E8CA99E6C594E4C290E2C08AE1BB84DFB87ADCB184DEB9FFFFFFFFFFFFFFFFFF
        63C39956CF9B49CC952CC3835BD19E47CA9330C585FFFFFF0000FFFFFF7DDAB2
        CAF4E3D5F5E8B7EFD7B4EDD5AFECD2AAEBCFA5EACC9FE7C999E6C594E4C28EE3
        BF89E1BB78DCB1B1EBD2FFFFFFFFFFFFECF6F154CD9960D3A32FC5857CDAB223
        C17E7DDAB2FFFFFF0000FFFFFFB6ECD598E5C4E0F8EEC2F1DDBDF0DAB8EFD8B3
        EDD5AEECD2A9EACEA4E8CB9EE7C898E6C493E3C18DE2BE76DCB1E6F8F1FFFEFF
        8ADEBB6BD8A96AD7A84DCE987CDAB21ABF79BFEDDAFFFFFF0000FFFFFFFFFFFF
        55D19CE1FAF0D9F7EBC3F2DFC1F1DDBDEFD9B7EED7B2EDD4ADEBD1A8EACDA2E8
        CB9CE7C797E5C48FE3BF90E2BF95E3C379DBB27ADBB16ED8AA99E4C440CB902A
        C482FFFFFFFFFFFF0000FFFFFFFFFFFFA2E5C8A0E7C9E8FAF3D3F5E7C8F3E1C5
        F2DFBFF1DCBBEFD9B6EED6B1ECD3ACEBD0A6E9CDA0E8CA9BE6C694E4C28DE2BD
        8AE1BC81DEB68DE1BEA7E8CC1AC179AFE8CFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF58D29DD8F7EAE9FAF3D4F6E8CBF4E3C8F3E1C3F1DEBEF0DBB9EFD9B4ED
        D5AFECD3AAEBCFA5E9CD9FE7C999E5C691E3C097E4C4B6ECD57CDCB456CF9BFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFCFEFD4BCF97E0F9EFEDFCF6DC
        F8EBCFF5E5CAF4E3C7F2E1C2F1DDBDF0DBB8EED7B3EDD5AEEBD1A7E9CEA1E8CA
        AEEAD0C0EFDC90E2BF5CD29FFCFEFDFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFBFEFD49CE96CDF4E3F0FDF7E7FAF2D9F7EBCFF5E4C9F3E2C4F2
        DEC0F1DCBBEFD9B7EED6BDEFDACDF3E2C0F1DC97E5C457D19DF9FDFCFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BD7A986
        DFBAE5FAF1EFFCF6EAFBF4E2F8EFDDF7EDDBF6ECD8F7E9DAF7EBD2F5E6B7EED7
        68D6A775D9AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5F4E76BD8AA6ED8ABACE9D0D6F6EAD9F7
        EAD2F6E6CFF4E5A0E7C85ED3A36ED7AAD6F4E8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFC5F0DE98E2C3A8E6CBABE7CD9EE4C6C4EFDDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
    object suiButton3: TsuiButton
      Left = 7
      Top = 6
      Width = 180
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Gerar Parcelas - F3'
      AutoSize = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004EAB004EAB004EAB004E
        AB004EAB004EABFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0077F1006DE40063D8
        005FCD0060C8005CC10054B7004EAB004794003A76FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF007DFD0077F800
        75F32988ED67A9EC91C1F0A3CAF1A2C9F18BBCEC5C9DE01C73CD0053B3004797
        003D7CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF007C
        FF0078FF3597FDAAD3FCF4F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA
        F3FD93BFED2274CB004CA7003C7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF027FFF0982FF8EC5FFF5FAFFFFFFFFFFFFFFFFFFFFFFFFFFF5FAFFFAFD
        FFFFFFFFFFFFFFFFFFFFFFFFFFE7F1FC6CA5E00054B1003D7EFF00FFFF00FFFF
        00FFFF00FFFF00FF0A84FF0A84FFA6D2FFFFFFFFFFFFFFFFFFFFE3F1FF8CC2FB
        479AF4489BF13A93EF56A1F199C7F7EEF7FFFFFFFFFFFFFFFFFFFF72A8E1004E
        AB003E7EFF00FFFF00FFFF00FFFF00FF0380FF7CBDFFFFFFFFFFFFFFFFFFFFA1
        CFFF1B89FE006BF8248AF5C5E0FC298BEE0066E5006DE72988EDB7D9FBFFFFFF
        FFFFFFF3F8FC2F7DCC004DA5FF00FFFF00FFFF00FF0F86FF2390FFE6F3FFFFFF
        FFFFFFFF95C9FF017FFF0075FF3D9DFFE5F2FFFFFFFF79B8F8006DEA0073E800
        6DE70874E9ADD3FAFFFFFFFFFFFFB6D2EE025ABA0053A9FF00FFFF00FF0A84FF
        79BBFFFFFFFFFFFFFFC7E3FF1087FF007CFF53A8FFEEF7FFFFFFFFFFFFFFCAE5
        FF0379F20073EB0073E8006DE7147DEBDCEDFDFFFFFFFDFDFD3F89D40058BEFF
        00FF1B8CFF188BFFC5E1FFFFFFFFFEFFFF5AACFF027FFF69B3FFF7FBFFFFFFFF
        FFFFFFFFFFFFFCFEFF3597F90073F20075ED0073E8006AE66BAFF4FFFFFFFFFF
        FF91BDE90061CF0053A91B8CFF3097FFF1F8FFFFFFFFDFEFFF2792FF81BFFFFC
        FEFFFFFFFFFFFFFF93C8FF7DBEFFFFFFFF8BC4FE0074F90078F50076EE0070E9
        1C83ECF3F9FFFFFFFFC9DFF60470DE0069D71D8DFF52A7FFFCFDFFFFFFFFB8DB
        FF2A94FFCEE6FFFFFFFFF9FCFF7CBDFF0681FF1087FFDBEDFFE5F2FF0B83FF00
        79FA0078F50075EF0477ECD2E6FCFFFFFFEAF3FD0E7CEC0073ED2591FF70B7FF
        FEFFFFFFFFFFB4D9FF2591FF49A3FFC7E3FF65B2FF1087FF168AFF0782FF5AAC
        FFFFFFFF57AAFF0078FF007DFB0079F70379F1C8E1FBFFFFFFF1F8FF1081F400
        77F12E95FF82C0FFFFFFFFFFFFFFC1E0FF3097FF2D95FF2E96FF218FFF2390FF
        1F8EFF188BFF0C85FFB5DAFFC1E0FF027FFF017FFF007BFC067EF8D7EBFDFFFF
        FFE8F4FF0D82F70078F53297FF86C2FFFAFDFFFFFFFFE8F3FF3D9DFF3097FF30
        97FF2E96FF2A94FF2591FF218FFF1388FF2E96FFDFEFFF3D9DFF017FFF007CFF
        2791FFF7FBFFFFFFFFC7E3FF047DFA0079F757AAFF75BAFFEEF7FFFFFFFFFFFF
        FF79BBFF2792FF3398FF3398FF3097FF2B93FF2591FF218FFF0F86FF6DB5FF99
        CCFF0480FF007AFF82C0FFFFFFFFFFFFFF8CC5FF0076FD0079F7FF00FF58ABFF
        D9ECFFFFFFFFFFFFFFDCEDFF3D9DFF2D95FF3398FF3398FF3097FF2D95FF2792
        FF218FFF188BFF82C0FF2D95FF2D95FFECF5FFFFFFFFFCFEFF389BFF007AFFFF
        00FFFF00FF5DADFFACD5FFFEFFFFFFFFFFFFFFFFBDDEFF3699FF2993FF3297FF
        3398FF3297FF2E95FF2993FF1E8DFF1F8EFF58ABFFCAE5FFFFFFFFFFFFFFACD5
        FF017FFF017FFFFF00FFFF00FFFF00FF6FB7FFE8F4FFFFFFFFFFFFFFFFFFFFCC
        E5FF5AACFF2D95FF2591FF2993FF2792FF218FFF2792FF5EAEFFD9EBFFFFFFFF
        FFFFFFEDF6FF2A94FF027FFFFF00FFFF00FFFF00FFFF00FF77BAFFA3D0FFFAFD
        FFFFFFFFFFFFFFFFFFFFFAFDFFC0DFFF8FC6FF7BBCFF7CBDFF95C9FFCAE5FFFF
        FFFFFFFFFFFFFFFFFCFEFF64B1FF017FFF0A84FFFF00FFFF00FFFF00FFFF00FF
        FF00FF76B9FFAFD7FFF5FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDCEDFF60AFFF0782FF0F86FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF79BBFF91C8FFDBEDFFFAFDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDF6FFA1CFFF3599FF0E85FF1489FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF97CAFF75B9FF9E
        CEFFCAE5FFE3F1FFEDF6FFEDF6FFE6F3FFD4E9FFABD4FF6DB5FF3097FF1D8DFF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF95C9FF75B9FF75B9FF7BBCFF7BBCFF6DB5FF58ABFF44A1FF2D
        95FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton3Click
      ResHandle = 0
    end
  end
  object pnldados: TPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 59
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    TabOrder = 2
    object RxLabel4: TRxLabel
      Left = 5
      Top = 61
      Width = 112
      Height = 13
      AutoSize = False
      Caption = 'Pagto -F2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RxLabel13: TRxLabel
      Left = 316
      Top = 101
      Width = 92
      Height = 13
      Caption = 'Total  da Venda:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel5: TRxLabel
      Left = 6
      Top = 37
      Width = 58
      Height = 13
      AutoSize = False
      Caption = 'Cliente F9:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 316
      Top = 180
      Width = 65
      Height = 13
      Caption = 'Valor Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 6
      Top = 185
      Width = 66
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 6
      Top = 94
      Width = 91
      Height = 13
      Caption = 'Valor dos Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 6
      Top = 142
      Width = 86
      Height = 13
      Caption = 'Total  c/ Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 316
      Top = 135
      Width = 64
      Height = 13
      Caption = 'Descontos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 429
      Top = 221
      Width = 200
      Height = 42
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object RxLabel16: TRxLabel
      Left = 316
      Top = 228
      Width = 43
      Height = 16
      Caption = 'Troco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel17: TRxLabel
      Left = 6
      Top = 241
      Width = 106
      Height = 13
      Caption = 'Perc. de comiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object RxLabel18: TRxLabel
      Left = 183
      Top = 241
      Width = 20
      Height = 13
      Caption = 'OS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Shape4: TShape
      Left = 112
      Top = 88
      Width = 200
      Height = 41
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape5: TShape
      Left = 112
      Top = 131
      Width = 200
      Height = 41
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape6: TShape
      Left = 113
      Top = 175
      Width = 200
      Height = 41
      Brush.Color = clBlack
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 428
      Top = 85
      Width = 200
      Height = 41
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape3: TShape
      Left = 428
      Top = 128
      Width = 200
      Height = 41
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Shape7: TShape
      Left = 428
      Top = 174
      Width = 200
      Height = 41
      Brush.Color = clNavy
      Pen.Color = clSilver
      Pen.Width = 3
      Shape = stRoundRect
    end
    object Label3: TLabel
      Left = 8
      Top = 9
      Width = 360
      Height = 24
      Caption = 'F E C H A M E N T O    D A    V E N D A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 435
      Top = 94
      Width = 188
      Height = 25
      AutoSize = False
      BorderStyle = bsNone
      Color = clNavy
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 119
      Top = 182
      Width = 186
      Height = 27
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 433
      Top = 179
      Width = 190
      Height = 30
      AutoSize = False
      BorderStyle = bsNone
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit4Exit
    end
    object CurrencyEdit5: TCurrencyEdit
      Left = 119
      Top = 94
      Width = 187
      Height = 27
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object Desc_cond_pagto: TDBEdit
      Left = 154
      Top = 59
      Width = 269
      Height = 21
      Color = 7991028
      DataField = 'PAGAMENTO'
      Enabled = False
      TabOrder = 5
    end
    object CurrencyEdit6: TCurrencyEdit
      Left = 118
      Top = 137
      Width = 186
      Height = 26
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 2
      Top = 116
      Width = 85
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object suiButton4: TsuiButton
      Left = 555
      Top = 3
      Width = 161
      Height = 31
      Hint = 'Novo Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Desbloquear  Cliente'
      AutoSize = False
      Visible = False
      ParentFont = False
      UIStyle = WinXP
      TabOrder = 8
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        2E0A0000424D2E0A00000000000036000000280000001D0000001D0000000100
        180000000000F8090000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFEEF0F3DFDE
        DFE1E0E2E1E0E2E1E0E2E1E0E2E1E0E2E1E0E2E1E0E2E1DFE1E3E2E3E5E7E8E5
        E7E8E3E2E3E1DFE1E1E0E2E1E0E2E1E0E2E1E0E2E1E0E2E1E0E2E1E0E2E1E0E1
        E1E1E3F9FAFCFFFFFF00FFFFFFFFFFFFECEEF0B09B8DC0B29CBFAF9BBFAF9BBF
        AF9BBFAF9BBFAF9BBFAF9BBEAE99C8BEA9C0B6A5B09B8AB09A89BDB3A2CAC4AD
        BFB09BBEAF9BC0AF9BBFAF9BBFAF9BBFAF9BC0AF9BC0B19CB9A691CBBDB6FDFD
        FE00FFFFFFFFFFFFD2C8C6CDBB9DD7CFB1D7CDAFD7CDAED7CDAFD7CDAFD7CCAF
        D7CDAFE9EACDB79A85A36246A86347A45C40A05239B18872E1E0C3D8CCB0D6CD
        AFD7CDAED7CDAFD7CDAFD6CDAFD7CDB0D6CBACCEBDAAFAF8F800FFFFFFFFFFFF
        D8CDC9D6CCAFD8CFB7D9CFB6D8CFB6D9CFB6D9CFB6D9D1B8E1DCC49B705E924D
        2FA9684DAB6D53B16C52814E3B824030AB8471DEDDC2D9CFB5D8CFB6D8CFB6D8
        CFB6D9CFB6D8CFB6D8D0B4D9CEBCFCFAFA00FFFFFFFFFFFFD7CDC8D9CCB2DCD2
        BADBD2B9DAD2B9DBD2B9DCD2BAE2DDC4A6836C8544289F694DB07F64B88569AC
        7963566C729A5B49935644D1C7B1DED5BDDAD2B9DBD2B9DBD2B9DBD2B9DBD2B9
        DBD3B8DBCEBDFCFAFA00FFFFFFFFFFFFD6CDC8DBD1B7DED6BEDED6BDDED6BDDE
        D6BDE2D9C2D8CDB68E6046905B3DA6795CAF8366D3AC978E8C8C647177A86E57
        8E503DCABCA7E2DCC3DED5BDDED6BDDED6BEDED6BDDED6BDDED6BDDCD1BEFCFA
        F900FFFFFFFFFFFFD6CDC8DFD3BBE1D9C3E2DAC2E2D9C2E0DAC2E6DEC7D4C7B0
        85593C996F4FB18B6CB48E77D7C3BD646565787879CE9875A47059CABCA7E5DF
        C7E2DAC2E2DAC2E2DAC1E1DAC2E2DAC2E2DAC2DED3C2FBFAFA00FFFFFFFFFFFF
        D8CCC7E2D9C1E5DDC9E6DEC8E5DEC8E6DDC8E5DEC8E8E3CEB69D89A98664D0AF
        8DFFFFFFFFFFFF8A8B8BEED8CFDEB488AA8D76D1CAB7E9E2CBE6DDC8E6DDC8E6
        DEC8E6DEC8E6DDC8E6DEC8E1D6C5FBFAFA00FFFFFFFFFFFFD7CDC7E6DBC5E9E3
        CEE8E1CDE9E1CDE8E1CDE8E0CDEAE4CEF4F2E0D2BBA1D3C7BB87C6EA3C9ED446
        ABE5AFD8EFB49980DAD6C3F0EAD5E8E1CCE8E2CDE8E1CDE8E1CDE8E1CDE8E1CD
        E9E4CDE2D8C8FCFAF900FFFFFFFFFFFFD7CDC6E8DFCAECE5D2ECE5D1ECE5D1EC
        E5D1ECE5D2EBE5D1F1E7D1F8EFD960B9E752C1F85CBAEC51B0E432A1E074B2D3
        F8EBD1EEE6D2EBE5D1ECE5D2ECE5D2ECE5D1ECE5D1ECE4D1EDE7D2E5DBCBFCFA
        FA00FFFFFFFFFFFFD7CCC7EBE2CEEEE8D6EEE8D5EEE8D5EEE8D5EEE8D6EDE7D5
        FFF8DB83AAC193E0FF7FD5FE65C6F753B0E44EAADF3FA0D9B4C7C7FBEFD7EDE8
        D5EEE8D6EEE8D6EEE8D5EEE8D5EEE8D5F1EBD6E6DCCDFCFAFA00FFFFFFFFFFFF
        D7CDC6EFE8D4F7F0DDF7EFDBF6EFDCF4EEDCF2EDDCF8F0DDE4E8DA0D2267ADD4
        EBCBF2FE9AE4FF5ABBED4DA9DE3C9EDA94BCD0FFF1D8F0EADAF1EBDAF1EBDAF1
        EBDAF1EBDAF0EADAF3EEDAE8DFD1FBFAFA00FFFFFFFFFFFFDDCEC5F5DFC3DFDA
        CADFD4C9E6D6C8F1DBC8FCE4CFFFF8DAC9D4D104519876A9CF003B8387C8E47C
        DBFF54B2E543A3DBA6C6D0FFF9E2F6F1E0F2EDDDF3EDDEF3EEDDF3EDDDF3EDDD
        F6F1E0EAE0D2FBFAF900FFFFFFEFE2DE949CA06A9BB23095CB2FB4D23BB5CD4E
        B7C964B5CC8EBCC6AAB4B82F74A71080C10B6EB33D8CBE59AAD93588C44594C8
        F4F2E4EAE2D5F1E8DCF9F4E4F5F0E0F5F0E1F5F1E1F5F0E0F8F5E3EBE2D5FCFA
        FA00EBE8E75CA2BD43B1E41296E80092ED00D8FF00D9FF00DCFF00DAFF07CAFB
        14B1E211A4DB4193BE39B3E31B8AC9026BB41390CF3DA7D9FFF4EC74886C808E
        79FFFFFFF6F1E3F7F2E5F7F3E4F7F1E4FAF6E7ECE2D7FCFAFA00E0DDDD44A7D3
        4ABEF81D95E20090E501D2FF02D2FF00DFFF54BFCA56808F09CAFF00CEF703CE
        F964A8CE3BC4F24EC5EF71C2E2FFF3ED949283308A33247E2AD5C4C7FFFFFAF8
        F4E8F8F4E8F8F4E8FBF8EBEDE5DAFCFAFA00E1DEDC48A8D34BBBF51D95E10091
        E501D2FF00D2FF00E7FF64A3AA7B8D9624D3FD00C3F204CBFFFFF6D9FDF1E7FF
        FFEFFFF1F07F86732A812E40A1443CA23E457A43EBDFDFFFFFF6FAF7EBFAF7EB
        FEFCF0EEE7DCFCFAF900DFDDDC48A8D34BBBF51D95E10091E501D2FF00D1FF0A
        F3FF4F727C595C6134D4FE00C4F302C9FBFFF4DFFFFEF9D7CBCD667C622D8730
        3DA1418FB88E5BA55D2E92306F8D6BF9F2F0FFFFF5FAF8EEFEFDF3EFE6DEFCFA
        F900E0DDDC48A8D34BBBF51E96E1008FE301D2FF01D3FF00DBFF2DD6F028AAC3
        08BDF100C7F407C8F9FFFCE99BAB962F72312D902F3C9E3E2B862CC8D6C76792
        66359F37328A34859481FFFFFFFFFDF3FFFEF6EFE8E0FCFAFA00DEDCDB4AA7D2
        4CB8F40E8FE80097F100D5FF00D8FF01D9FF00D2FC00BDF100B1E700C9F40FC5
        F7FFFEECF7F8F7699A6855A35852A955579956F4F3F3F1ECED11761441A3432A
        832C8D8C89FFFFFFFFFFFEEDE3DEFBF9F900E3E0DE36A6CF3DD7FF5AA5B4E3CE
        C3AAC5DA13C2FF06D7FF00DCFF02C0F300BAEC00CCF912BFF1FFFFEFFFFFFBFF
        FFFFD8DCD5709F70A5C0A5FFFFFFFFFFFF7DA17C30923242A344228324888C85
        F7F1F7F8F2F1FDFDFC00FAF8F689CAD96ED0EC726059E8DCD6CECBC937DCFF00
        E9FF41A7C08EC3CC59E4F300CDED49B8D4FFF3EEFCFCFDF9F8F8FFFFFFF6EFF5
        F2F0F2FDFBFCFFFFFFDFDDE0448D46409E423FA0412F87325D755DCDCCCDFFFF
        FF00FFFFFFFFFFFFB7B9BB636361D6D2CEBFBDBC8FCDDC3AC6DF836A62D5BEB3
        DFDBD7B1DFE2E4F0F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA1B8A23C933D449D463E9D402C8E2E799C7AFDFAFD00FFFFFFFFFFFF
        C7C6C564625FD1CECCBDB9B7F4EDEDDFD8D862605CBEBBB8D6D2D0F9F3F2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF69
        996A44A047419B432B8D2DA5BFA5FFFFFF00FFFFFFFFFFFFC9C9C9787773CBC9
        C7C5C3C1BDBDBC8888886E6E6CC5C1BECECCCBF1F2F2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A8E5A4CA74E
        2C882EB5C7B6FFFFFF00FFFFFFFFFFFFF3F3F3B3B1B0ABA8A5D6D1CEFEFEFCFD
        FEFEE8E5E2D7D4D1D2D1D0F6F6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF639964228424A2BDA3FFFF
        FF00FFFFFFFFFFFFFFFFFFF5F5F6D7D7D6BEBDBCC4C5C3D1D1D2D9D7D6D9D7D5
        F5F5F5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFBF5FA74A375829F82FEFCFE00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6F7F7F3F4F4F5F5F5F7F7F7FBFBFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFDFEF2F4F2FFFFFF00}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton4Click
      ResHandle = 0
    end
    object CurrencyEdit7: TCurrencyEdit
      Left = 433
      Top = 133
      Width = 190
      Height = 30
      AutoSize = False
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit7Exit
    end
    object RbPercentual: TRadioButton
      Left = 367
      Top = 151
      Width = 58
      Height = 17
      Caption = '&Perc. %'
      TabOrder = 9
      OnExit = RbPercentualExit
    end
    object RbValor: TRadioButton
      Left = 319
      Top = 151
      Width = 48
      Height = 17
      Caption = '&Reais'
      TabOrder = 10
      OnExit = RbValorExit
    end
    object DBComboPgto: TComboEdit
      Left = 65
      Top = 59
      Width = 85
      Height = 21
      Alignment = taCenter
      ClickKey = 113
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      TabOrder = 11
      OnButtonClick = DBComboPgtoButtonClick
      OnEnter = DBComboPgtoEnter
      OnExit = DBComboPgtoExit
      OnKeyPress = DBComboPgtoKeyPress
    end
    object CurrencyEdit8: TCurrencyEdit
      Left = 112
      Top = 238
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '% ,0.00;-R$ ,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      Visible = False
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit8Exit
    end
    object Edit20: TEdit
      Left = 210
      Top = 237
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      Visible = False
      OnEnter = CurrencyEdit4Enter
      OnExit = Edit20Exit
    end
    object EDIT62: TCurrencyEdit
      Left = 433
      Top = 227
      Width = 190
      Height = 30
      AutoSize = False
      BorderStyle = bsNone
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnEnter = CurrencyEdit4Enter
      OnExit = CurrencyEdit4Exit
    end
    object DBComboCliente: TComboEdit
      Left = 70
      Top = 34
      Width = 110
      Height = 21
      Alignment = taCenter
      CharCase = ecUpperCase
      ClickKey = 120
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 15
      OnButtonClick = DBComboClienteButtonClick
      OnChange = DBComboClienteChange
      OnEnter = DBComboClienteEnter
      OnExit = DBComboClienteExit
      OnKeyPress = DBComboClienteKeyPress
    end
    object Desc_cliente: TDBEdit
      Left = 187
      Top = 34
      Width = 297
      Height = 21
      TabStop = False
      Color = 7991028
      DataField = 'NOME_CLIENTE'
      DataSource = formVendas.Dts_pedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
  end
  object PanelDesconto: TPanel
    Left = 0
    Top = 58
    Width = 257
    Height = 103
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = cl3DLight
    TabOrder = 3
    object Label1: TLabel
      Left = 165
      Top = 56
      Width = 17
      Height = 16
      Caption = 'R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 170
      Top = 27
      Width = 12
      Height = 16
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 2
      Top = 2
      Width = 253
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Descontos'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 18
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Sub Total'
    end
    object Label11: TLabel
      Left = 1
      Top = 56
      Width = 63
      Height = 13
      Caption = 'Total L'#237'quido'
    end
    object RxLabel19: TRxLabel
      Left = 13
      Top = 77
      Width = 52
      Height = 16
      Caption = 'Acresc:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtPercentualDesconto: TCurrencyEdit
      Left = 186
      Top = 27
      Width = 65
      Height = 21
      Hint = 'Percentual de Desconto (Tecla F4)'
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ZeroEmpty = False
      OnExit = t
      OnKeyPress = EdtPercentualDescontoKeyPress
    end
    object EdtValorDesconto: TCurrencyEdit
      Left = 185
      Top = 51
      Width = 65
      Height = 21
      Hint = 'Valor do desconto (Tecla F6)'
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',#0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ZeroEmpty = False
      OnExit = EdtValorDescontoExit
      OnKeyPress = EdtValorDescontoKeyPress
    end
    object EdtSubTotal: TCurrencyEdit
      Left = 70
      Top = 27
      Width = 89
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object EdtTotalLiquido: TCurrencyEdit
      Left = 70
      Top = 50
      Width = 89
      Height = 21
      Hint = 'Total liquido da venda (Tecla F2)'
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clSilver
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      ZeroEmpty = False
      OnExit = EdtTotalLiquidoExit
      OnKeyPress = EdtTotalLiquidoKeyPress
    end
    object EDTJUROS: TCurrencyEdit
      Left = 70
      Top = 75
      Width = 180
      Height = 21
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clInactiveCaptionText
      DisplayFormat = ',#0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
  end
  object Panel5: TPanel
    Left = 256
    Top = 57
    Width = 465
    Height = 201
    BevelInner = bvRaised
    Caption = 'Panel5'
    TabOrder = 5
    object XDBGrid1: TXDBGrid
      Left = 2
      Top = 2
      Width = 461
      Height = 197
      Align = alClient
      DataSource = DTS_PAGTO
      GridStyle.VisualStyle = vsXPStyle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
      TabOrder = 0
      OnCellClick = XDBGrid1CellClick
      OnDrawColumnCell = XDBGrid1DrawColumnCell
      OnKeyDown = XDBGrid1KeyDown
      Columns = <
        item
          CheckBox = True
          Expanded = False
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 32
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 53
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Nome Cond. Pagto'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 150
        end
        item
          Expanded = False
          FieldName = 'NUMERO_PAR'
          Title.Alignment = taCenter
          Title.Caption = 'Parcelas'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 92
        end
        item
          Expanded = False
          FieldName = 'JUROS_DIA'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Color = clScrollBar
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 83
        end>
    end
    object Edit2: TEdit
      Left = 352
      Top = 0
      Width = 97
      Height = 21
      TabOrder = 1
      Visible = False
    end
  end
  object Panel9: TPanel
    Left = 106
    Top = 181
    Width = 577
    Height = 121
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelWidth = 4
    TabOrder = 6
    Visible = False
    object Label17: TLabel
      Left = 32
      Top = 48
      Width = 515
      Height = 52
      Caption = 'Imprimindo Cupom Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 31
      Top = 47
      Width = 515
      Height = 52
      Caption = 'Imprimindo Cupom Fiscal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 32
      Top = 16
      Width = 109
      Height = 29
      Caption = 'Aguarde...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 644
    Top = 382
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    AfterPost = ClientDataSet1AfterPost
    Left = 608
    Top = 371
    object ClientDataSet1CodigoCliente: TIntegerField
      FieldName = 'CodigoCliente'
    end
    object ClientDataSet1CodigoCompra: TIntegerField
      FieldName = 'CodigoCompra'
    end
    object ClientDataSet1Vendedor: TStringField
      FieldName = 'Vendedor'
    end
    object ClientDataSet1Historico: TStringField
      FieldName = 'Historico'
      Size = 50
    end
    object ClientDataSet1DataCompra: TDateField
      FieldName = 'DataCompra'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet1Parcela: TStringField
      FieldName = 'Parcela'
      Size = 10
    end
    object ClientDataSet1DataVencimento: TDateField
      FieldName = 'DataVencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet1Comissao: TCurrencyField
      FieldName = 'Comissao'
    end
    object ClientDataSet1ValorParcela: TFMTBCDField
      FieldName = 'ValorParcela'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object ErroGravacao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Erro !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiStop
    Text = 'Ocorreu um Erro! Tente Novamente!'
    Left = 274
    Top = 95
  end
  object MSGA: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Aten'#231#227'o !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiWarning
    Text = 'Hello world!'
    Left = 480
    Top = 39
  end
  object SPC_CREDIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_SACADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_GRAFICA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'N_OS'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CREDIARIO'
    Left = 268
    Top = 20
  end
  object Impressao: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o para Impress'#227'o'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Impress'#227'o da Duplicata?'
    Left = 448
    Top = 7
  end
  object boleto: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Gera'#231#227'o de Boleto Bancario...'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Deseja Gerar o Boleto?'
    Left = 278
    Top = 1
  end
  object Contrato: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Impress'#227'o do contrato...'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Deseja Imprimir o Contrato de Venda?'
    Left = 483
    Top = 11
  end
  object SPC_MOV_DIARIO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_ENTRADA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_SAIDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO_CC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORIGEM'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_MOVIMENTO_DIARIO'
    Left = 399
    Top = 1
  end
  object ecfimprimir: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Confirma'#231#227'o para Impress'#227'o'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 2
    Button1Caption = 'Sim'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 7
    Button3ModalResult = 2
    IconType = suiHelp
    Text = 'Confirma Impress'#227'o do Cupom Fiscal?'
    Left = 672
    Top = 8
  end
  object QryPedidos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from V_pedidos')
    SQLConnection = DM.SQLC
    Left = 241
    Top = 8
    object QryPedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QryPedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object QryPedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object QryPedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object QryPedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object QryPedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object QryPedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object QryPedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object QryPedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object QryPedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object QryPedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object QryPedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object QryPedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object QryPedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object QryPedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object QryPedidosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object QryPedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object QryPedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object QryPedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object QryPedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object QryPedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object QryPedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object QryPedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object QryPedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object QryPedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object QryPedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object QryPedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object QryPedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object QryPedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
  end
  object cds_pedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_pedidos'
    Left = 314
    Top = 6
    object cds_pedidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cds_pedidosVALOR_ITENS: TFMTBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 15
      Size = 2
    end
    object cds_pedidosVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cds_pedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 15
      Size = 2
    end
    object cds_pedidosVALOR_COMISSAO: TFMTBCDField
      FieldName = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object cds_pedidosUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cds_pedidosDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object cds_pedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object cds_pedidosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cds_pedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 50
    end
    object cds_pedidosPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 35
    end
    object cds_pedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cds_pedidosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cds_pedidosUSUARIO_ENTREGA: TStringField
      FieldName = 'USUARIO_ENTREGA'
    end
    object cds_pedidosENC_FINANCEIRO: TFMTBCDField
      FieldName = 'ENC_FINANCEIRO'
      Precision = 15
      Size = 2
    end
    object cds_pedidosTP: TStringField
      FieldName = 'TP'
      FixedChar = True
      Size = 1
    end
    object cds_pedidosOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 99
    end
    object cds_pedidosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object cds_pedidosCOD_PAGTO: TIntegerField
      FieldName = 'COD_PAGTO'
    end
    object cds_pedidosN_CUPOM: TStringField
      FieldName = 'N_CUPOM'
      Size = 18
    end
    object cds_pedidosN_ECF: TStringField
      FieldName = 'N_ECF'
      Size = 5
    end
    object cds_pedidosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cds_pedidosHORA: TTimeField
      FieldName = 'HORA'
    end
    object cds_pedidosVALOR_ACRESCIMOS: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMOS'
      Precision = 15
      Size = 2
    end
    object cds_pedidosCOD_ORCAMENTO: TIntegerField
      FieldName = 'COD_ORCAMENTO'
    end
    object cds_pedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
    end
    object cds_pedidosCOD_OS: TSmallintField
      FieldName = 'COD_OS'
    end
    object cds_pedidosNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cds_pedidosSERIE_NOTA: TStringField
      FieldName = 'SERIE_NOTA'
      Size = 3
    end
  end
  object Dsp_pedidos: TDataSetProvider
    DataSet = QryPedidos
    Left = 285
    Top = 4
  end
  object Dts_pedidos: TDataSource
    DataSet = cds_pedidos
    Left = 339
    Top = 2
  end
  object MSGI: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'Cancel'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Hello world!'
    Left = 443
    Top = 40
  end
  object MSG_CD: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o!!!'
    UIStyle = WinXP
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    ButtonCursor = crHandPoint
    ButtonCount = 1
    Button1Caption = 'OK'
    Button2Caption = 'N'#227'o'
    Button3Caption = 'Cancel'
    Button1ModalResult = 6
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'limite de Cr'#233'dito Ultrapassado ... Continua com a venda?'
    Left = 636
    Top = 8
  end
  object SPC_CHEQUE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_COMPRA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'QNT'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_CHEQUE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'RETORNARDO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'RETORNADO_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_CADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_DEPOSITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO_CADASTRO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'COMPENSADO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CHEQUES'
    Left = 368
    Top = 4
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Porta = 'Procurar'
    DescricaoGrande = True
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO     DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="5" face="Fixed">')
    ArqLOG = 'log.txt'
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 3
    ConfigBarras.Altura = 10
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 314
    Top = 40
  end
  object SPC_N_CUPOM: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMEROCUMPOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMEROECF'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_CUPOM_FISCAL'
    Left = 369
    Top = 32
  end
  object RDprint1: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Pr'#233' Visualiza'#231#227'o da Venda'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 3
    Margens.Bottom = 3
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Deltress Inform'#225'tica Ltda'
    RegistroUsuario.SerieProduto = 'SITE - USO INTERNO'
    RegistroUsuario.AutorizacaoKey = 'COYL-7054-DRSU-0796-VEBX'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Configura'#231#227'o da Impressora'
    TitulodoRelatorio = 'Impress'#227'o da Venda'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 347
    Top = 320
  end
  object qFormas: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CONDICAO_PAGTO_FORMAS ORDER By COD_FORMA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 28
    Top = 174
    object qFormasCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
      Required = True
    end
    object qFormasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object qFormasTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object qFormasMOSTRA_VENDA: TStringField
      FieldName = 'MOSTRA_VENDA'
      Size = 1
    end
    object qFormasTELA_TROCO: TStringField
      FieldName = 'TELA_TROCO'
      Size = 1
    end
  end
  object qPGTO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * FROM CONDICAO_PAGAMENTO')
    SQLConnection = DM.SQLC
    Left = 76
    Top = 165
    object qPGTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qPGTONUMERO_PAR: TIntegerField
      FieldName = 'NUMERO_PAR'
    end
    object qPGTOVARIACAO_DIAS: TIntegerField
      FieldName = 'VARIACAO_DIAS'
    end
    object qPGTOPIMEIRA_PAR: TIntegerField
      FieldName = 'PIMEIRA_PAR'
    end
    object qPGTOJUROS_DIA: TFMTBCDField
      FieldName = 'JUROS_DIA'
      Precision = 15
      Size = 8
    end
    object qPGTOMEDIA_DIAS: TIntegerField
      FieldName = 'MEDIA_DIAS'
    end
    object qPGTOJUROS_BASE: TFMTBCDField
      FieldName = 'JUROS_BASE'
      Precision = 15
      Size = 2
    end
    object qPGTOTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object qPGTOSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qPGTOUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object qPGTODATA: TDateField
      FieldName = 'DATA'
    end
    object qPGTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object qPGTOPG_ECF: TStringField
      FieldName = 'PG_ECF'
      Size = 2
    end
  end
  object DTS_PAGTO: TDataSource
    DataSet = CDS_PAGTO
    Left = 84
    Top = 132
  end
  object DSP_PAGTO: TDataSetProvider
    DataSet = qPGTO
    Left = 108
    Top = 164
  end
  object CDS_PAGTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_PAGTO'
    Left = 116
    Top = 132
    object CDS_PAGTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDS_PAGTONUMERO_PAR: TIntegerField
      FieldName = 'NUMERO_PAR'
    end
    object CDS_PAGTOVARIACAO_DIAS: TIntegerField
      FieldName = 'VARIACAO_DIAS'
    end
    object CDS_PAGTOPIMEIRA_PAR: TIntegerField
      FieldName = 'PIMEIRA_PAR'
    end
    object CDS_PAGTOJUROS_DIA: TFMTBCDField
      FieldName = 'JUROS_DIA'
      Precision = 15
      Size = 8
    end
    object CDS_PAGTOMEDIA_DIAS: TIntegerField
      FieldName = 'MEDIA_DIAS'
    end
    object CDS_PAGTOJUROS_BASE: TFMTBCDField
      FieldName = 'JUROS_BASE'
      Precision = 15
      Size = 2
    end
    object CDS_PAGTOTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object CDS_PAGTOSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object CDS_PAGTOUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object CDS_PAGTODATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_PAGTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object CDS_PAGTOPG_ECF: TStringField
      FieldName = 'PG_ECF'
      Size = 2
    end
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
  object IBTRAce: TIBTransaction
    Active = False
    DefaultDatabase = DM.IBDatabase
    AutoStopAction = saNone
    Left = 472
    Top = 8
  end
  object QBuscaItens: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRAce
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT I.*, P.ICMS, P.COD_ANP, P.COMBUSTIVEL,P.APLICACAO, P.IPI_' +
        'IRPJ, P.OUTROS_IMPOSTOS, P.NCM_SH, P.QTD_CAIXA, P.UND_TRIB,'
      
        'P.ML_QUANT_BEB, G.SIT_COFINS_VENDA_EST, G.SIT_PIS_VENDA_INTER_ES' +
        'T, G.SIT_COFINS_VENDA_INTER_EST, G.SIT_PIS_VENDA_EST,'
      
        'G.CST_IPI_SAIDA, G.CST_VENDA_INTER, G.PERC_ALIQUOTA_PIS, G.PERC_' +
        'ALIQUOTA_COFINS, G.CFOP_INTER_VENDA, G.FLAG_PIS_COFINS,'
      
        'G.CFOP_EST_VENDA, G.CST_VENDA, GR.NCM_SH, GR.PERC_TRIBU, GR.FONT' +
        'E, ncm.alic_nac, ncm.alic_imp, P.VEICULO, P.CHASSI, P.COR,'
      
        'P.COR_DESC, P.N_MOTOR, P.ANO_FAB, P.ANO_MOD_FAB, P.TIPO_VEIC, P.' +
        'N_SERIE, P.COD_MODELO, P.ESPECIE_VEICULO, P.COD_COR_DENATRAN,'
      'P.TIPO_COMBUSTIVEL, P.PESOBRUTO, P.PESOLIQUIDO'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PROD = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PROD = :CODPRO and codigo_id = :Cod_Ven')
    Left = 504
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cod_Ven'
        ParamType = ptUnknown
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PEDIDOS_ITENS.CODIGO'
      Required = True
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'PEDIDOS_ITENS.CODIGO_ID'
      Required = True
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'PEDIDOS_ITENS.ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'PEDIDOS_ITENS.CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TIBStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TIBStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.DESCRICAO_PRODUTO'
      Size = 50
    end
    object QBuscaItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'PEDIDOS_ITENS.DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      Precision = 18
      Size = 4
    end
    object QBuscaItensPRECO_TOTAL: TIBBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PEDIDOS_ITENS.PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'PEDIDOS_ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TIBStringField
      FieldName = 'DEV'
      Origin = 'PEDIDOS_ITENS.DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TIBBCDField
      FieldName = 'QNT_DEV'
      Origin = 'PEDIDOS_ITENS.QNT_DEV'
      Precision = 18
      Size = 4
    end
    object QBuscaItensVAL_DEV: TIBBCDField
      FieldName = 'VAL_DEV'
      Origin = 'PEDIDOS_ITENS.VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TIBBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'PEDIDOS_ITENS.ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PEDIDOS_ITENS.UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'PEDIDOS_ITENS.SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'PEDIDOS_ITENS.VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'PEDIDOS_ITENS.FRACAO'
    end
    object QBuscaItensCOD_NCM: TIBStringField
      FieldName = 'COD_NCM'
      Origin = 'PEDIDOS_ITENS.COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = 'PEDIDOS_ITENS.PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TIBBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PEDIDOS_ITENS.PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TIBBCDField
      FieldName = 'BASE_ISS'
      Origin = 'PEDIDOS_ITENS.BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TIBBCDField
      FieldName = 'VL_ISS'
      Origin = 'PEDIDOS_ITENS.VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TIBBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PEDIDOS_ITENS.PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TIBBCDField
      FieldName = 'VL_ICM'
      Origin = 'PEDIDOS_ITENS.VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TIBBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PEDIDOS_ITENS.PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = 'PEDIDOS_ITENS.BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TIBBCDField
      FieldName = 'VL_IPI'
      Origin = 'PEDIDOS_ITENS.VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TIBBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PEDIDOS_ITENS.PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TIBBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'PEDIDOS_ITENS.BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TIBBCDField
      FieldName = 'VL_COFINS'
      Origin = 'PEDIDOS_ITENS.VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TIBBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TIBBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TIBBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PEDIDOS_ITENS.PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TIBBCDField
      FieldName = 'BASE_PIS'
      Origin = 'PEDIDOS_ITENS.BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TIBBCDField
      FieldName = 'VL_PIS'
      Origin = 'PEDIDOS_ITENS.VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TIBStringField
      FieldName = 'IMPRIME'
      Origin = 'PEDIDOS_ITENS.IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'PEDIDOS_ITENS.COD_EMPRESA'
      Required = True
    end
    object QBuscaItensICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'PRODUTOS.ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'PRODUTOS.IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'PRODUTOS.OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_PIS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_COFINS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFLAG_PIS_COFINS: TIBStringField
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.FLAG_PIS_COFINS'
      Required = True
      Size = 1
    end
    object QBuscaItensCFOP_EST_VENDA: TIBStringField
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_EST_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA: TIBStringField
      FieldName = 'CST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA'
      Size = 3
    end
    object QBuscaItensNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = 'PRODUTOS.NCM_SH'
      Size = 8
    end
    object QBuscaItensNCM_SH1: TIBStringField
      FieldName = 'NCM_SH1'
      Origin = 'GRUPOS.NCM_SH'
      Size = 8
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensCST_IPI_SAIDA: TIBStringField
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_IPI_SAIDA'
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TIBStringField
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_INTER_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA_INTER: TIBStringField
      FieldName = 'CST_VENDA_INTER'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA_INTER'
      Size = 3
    end
    object QBuscaItensCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = 'PRODUTOS.COD_ANP'
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'PRODUTOS.COMBUSTIVEL'
      Size = 1
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'PRODUTOS.QTD_CAIXA'
    end
    object QBuscaItensUND_TRIB: TIBStringField
      FieldName = 'UND_TRIB'
      Origin = 'PRODUTOS.UND_TRIB'
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TIBBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'PRODUTOS.ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPERC_TRIBU: TIBBCDField
      FieldName = 'PERC_TRIBU'
      Origin = 'GRUPOS.PERC_TRIBU'
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TIBStringField
      FieldName = 'FONTE'
      Origin = 'GRUPOS.FONTE'
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TIBBCDField
      FieldName = 'ALIC_NAC'
      Origin = 'TABELA_NCM.ALIC_NAC'
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TIBBCDField
      FieldName = 'ALIC_IMP'
      Origin = 'TABELA_NCM.ALIC_IMP'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = 'PRODUTOS.VEICULO'
      Size = 1
    end
    object QBuscaItensCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'PRODUTOS.CHASSI'
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'PRODUTOS.COR'
    end
    object QBuscaItensCOR_DESC: TIBStringField
      FieldName = 'COR_DESC'
      Origin = 'PRODUTOS.COR_DESC'
      Size = 30
    end
    object QBuscaItensN_MOTOR: TIBStringField
      FieldName = 'N_MOTOR'
      Origin = 'PRODUTOS.N_MOTOR'
      Size = 30
    end
    object QBuscaItensANO_FAB: TIBStringField
      FieldName = 'ANO_FAB'
      Origin = 'PRODUTOS.ANO_FAB'
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TIBStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'PRODUTOS.ANO_MOD_FAB'
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TIBStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'PRODUTOS.TIPO_VEIC'
      Size = 10
    end
    object QBuscaItensN_SERIE: TIBStringField
      FieldName = 'N_SERIE'
      Origin = 'PRODUTOS.N_SERIE'
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TIBStringField
      FieldName = 'COD_MODELO'
      Origin = 'PRODUTOS.COD_MODELO'
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TIBStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'PRODUTOS.ESPECIE_VEICULO'
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TIBStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'PRODUTOS.COD_COR_DENATRAN'
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TIBStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'PRODUTOS.TIPO_COMBUSTIVEL'
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PRODUTOS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PRODUTOS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'PRODUTOS.APLICACAO'
      Size = 500
    end
    object QBuscaItensPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
      Origin = '"PEDIDOS_ITENS"."PRECO_UNITARIO"'
    end
    object QBuscaItensID_BICO: TIntegerField
      FieldName = 'ID_BICO'
      Origin = '"PEDIDOS_ITENS"."ID_BICO"'
    end
    object QBuscaItensID_TANQUE: TIBStringField
      FieldName = 'ID_TANQUE'
      Origin = '"PEDIDOS_ITENS"."ID_TANQUE"'
      Size = 5
    end
    object QBuscaItensID_BOMBA: TIBStringField
      FieldName = 'ID_BOMBA'
      Origin = '"PEDIDOS_ITENS"."ID_BOMBA"'
      Size = 5
    end
    object QBuscaItensBICO: TIBStringField
      FieldName = 'BICO'
      Origin = '"PEDIDOS_ITENS"."BICO"'
      Size = 2
    end
  end
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 536
    Top = 8
  end
  object SPC_N_NFE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMERONFE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIENFE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_NFE'
    Left = 393
    Top = 88
  end
end

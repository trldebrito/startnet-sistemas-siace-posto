object FormCustos: TFormCustos
  Left = 216
  Top = 250
  Width = 661
  Height = 255
  Caption = 'Custos e Dados dos Produtos'
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 645
    Height = 135
    Align = alClient
    Enabled = False
    TabOrder = 0
    object RxLabel7: TRxLabel
      Left = 5
      Top = 5
      Width = 104
      Height = 13
      Caption = 'Pre'#231'o Custo (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 5
      Top = 27
      Width = 89
      Height = 13
      Caption = 'Mar. Lucro (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel50: TRxLabel
      Left = 5
      Top = 54
      Width = 100
      Height = 13
      Caption = 'Mar. Lucro (%) 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel10: TRxLabel
      Left = 5
      Top = 83
      Width = 81
      Height = 13
      Caption = 'Comiss'#227'o (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel14: TRxLabel
      Left = 5
      Top = 106
      Width = 58
      Height = 13
      Caption = 'ICMS (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel17: TRxLabel
      Left = 215
      Top = 5
      Width = 44
      Height = 13
      Caption = 'IPI (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 215
      Top = 30
      Width = 57
      Height = 13
      Caption = 'Frete (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 215
      Top = 53
      Width = 93
      Height = 13
      Caption = 'Outros Imp. (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 215
      Top = 79
      Width = 88
      Height = 13
      Caption = 'Descontos (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel16: TRxLabel
      Left = 413
      Top = 5
      Width = 77
      Height = 13
      Caption = 'Custo M'#233'dio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel18: TRxLabel
      Left = 413
      Top = 28
      Width = 98
      Height = 13
      Caption = 'Pre'#231'o de Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel51: TRxLabel
      Left = 413
      Top = 54
      Width = 109
      Height = 13
      Caption = 'Pre'#231'o de Venda 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 413
      Top = 81
      Width = 107
      Height = 13
      Caption = 'Desconto M'#225'ximo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel13: TRxLabel
      Left = 413
      Top = 106
      Width = 84
      Height = 13
      Caption = 'Sit. Tribut'#225'ria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiDBEdit1: TDBEdit
      Left = 110
      Top = 5
      Width = 96
      Height = 21
      Hint = 'Pre'#231'o de Custo'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'PRECO_CUSTO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object suiDBEdit3: TDBEdit
      Left = 110
      Top = 27
      Width = 96
      Height = 21
      Hint = 'Margem de Lucro (%)'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'MARGEM_LUCRO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit14: TDBEdit
      Left = 109
      Top = 50
      Width = 96
      Height = 21
      Hint = 'Margem de Lucro (%)'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'MARGEM_LUCRO2'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object suiDBEdit5: TDBEdit
      Left = 110
      Top = 76
      Width = 96
      Height = 21
      Hint = '% de Comiss'#227'o'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'COMISSAO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object suiDBEdit9: TDBEdit
      Left = 110
      Top = 102
      Width = 96
      Height = 21
      Hint = '% do ICMS'
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'ICMS'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object suiDBEdit4: TDBEdit
      Left = 310
      Top = 76
      Width = 96
      Height = 21
      Hint = '% de Descontos '
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'DESCONTOS'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object suiDBEdit13: TDBEdit
      Left = 310
      Top = 52
      Width = 96
      Height = 21
      Hint = '% de Outros Impostos'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'IPI_IRPJ'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object suiDBEdit7: TDBEdit
      Left = 310
      Top = 29
      Width = 96
      Height = 21
      Hint = '% do Frete'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'FRETE'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object suiDBEdit10: TDBEdit
      Left = 310
      Top = 5
      Width = 96
      Height = 21
      Hint = '% do IPI'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'OUTROS_IMPOSTOS'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object suiDBEdit12: TDBEdit
      Left = 524
      Top = 3
      Width = 96
      Height = 21
      Hint = 'Desconto M'#225'ximo Permitido Na Venda'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'CUSTO_MEDIO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object suiDBEdit14: TDBEdit
      Left = 524
      Top = 26
      Width = 96
      Height = 21
      Hint = 'Pre'#231'o de Venda'
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'PRECO_VENDA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object DBEdit20: TDBEdit
      Left = 524
      Top = 52
      Width = 96
      Height = 21
      Hint = 'Pre'#231'o de Venda'
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'PRECO_VENDA2'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object suiDBEdit6: TDBEdit
      Left = 524
      Top = 77
      Width = 96
      Height = 21
      Hint = 'Desconto M'#225'ximo Permitido Na Venda'
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'DESCONTO_MAXIMO'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object suiDBEdit8: TDBEdit
      Left = 524
      Top = 103
      Width = 95
      Height = 21
      Hint = 'Situa'#231#227'o Tribut'#225'ria (Al'#237'quota do ICMS) '
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = clGradientInactiveCaption
      DataField = 'SIT_TRIBUTARIA'
      DataSource = DM.DTS_PRODUTOS
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 41
    Align = alTop
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 184
      Top = 8
      Width = 292
      Height = 19
      Caption = 'Dados dos Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'BatmanForeverAlternate'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 176
    Width = 645
    Height = 41
    Align = alBottom
    TabOrder = 2
    object suiButton1: TsuiButton
      Left = 284
      Top = 7
      Width = 97
      Height = 27
      Caption = 'Fechar'
      AutoSize = False
      UIStyle = FromThemeFile
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D8DAA7B0
        B4BEC1C3D2D3D4E4E5E4EDEDECF5F5F5FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7FAFB1A6EA302619B065E920E5F8F1A618A2D698B3D72905C7F946C8A9C8C9E
        A7A5AEB2DCDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E1EC30
        7AA72775A32876A42775A305649E1975C41877C21676BE1472BA0F6EB20E6CB0
        0B69AD0867A60863A202629C718B9BFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFCFDA9C8DC065385113B64113B64103E680864A12283D1258AD42488D323
        87D32385D22284D12082D02080D01F7ECE1270B65D8297FCFCFCFFFFFFFFFFFF
        FFFFFFFFFFFFD9E2D973987497B7CB07528313386012365A105F390B68A9298D
        D6298FD72A90D82A91D8278ED7288ED6278ED6268CD62489D41877C3567B92FA
        FBFAFFFFFFFFFFFFFFFFFFB7CAB730A0373688397394A90A40680A4A32268938
        65C18B0C69A82D91D92B91D82D94DA2E95DB2A90D82B91D92C92D9298FD7288F
        D71C7EC44E768EF8F8F8FFFFFFFCFDFC94B59519A52830BF4222A12D2A9A3538
        A64560C7707EDA9556B682106CAD3194DC2B91D83198DC3298DC2C92D92E95DA
        2F96DB2C92D92B92D92082C83F718FF6F6F6FFFFFF79B07912AA1F21BA322FBD
        403EC45151CA655FCF746DD38269CC7B0F5E381172B63498DD2E93D9369BDE37
        9DE02E95DB3097DC3399DD2F96DB2E94DA2687D0376C8BF4F4F5FFFFFFA6D1A8
        1DA92721BA322FBD403EC4514FCA635ECF7352BB601465330E416B1475B53796
        D51D6AA71C61962F88C23298DD339ADE389DE03299DE3197DC298CD4306A8AF2
        F2F2FFFFFFFFFFFFCEE1CE2DA5352FBE412AAC362198361B6C410D4846133860
        0E4370197AB91A6DB41872BF156DB919547F3296D8379DE03BA1E3379DE03198
        DD2E92D72B688EEEEEEEFFFFFFFFFFFFFFFFFFE9F4E951AD563A8C3C2A709D0E
        43701338601338600D46731C7CC0166BB6348FD52D89CF0F59973495D43AA0E2
        3FA5E53AA1E2349ADE3397DE276891EAEAE8FFFFFFFFFFFFFFFFFFFFFFFFFCFD
        FCB8DABC1E6FA0113D661338601338600B48752285C5337FB6B4D1ED97BEDE1F
        70AD389FE13DA3E542A8E63FA5E5349ADE389CE0236892E4E5E4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F8FA12679A113B64133860133860094B79278ACA3EA2
        E24596CD4099D349ACE83CA2E440A6E647ACEB45ABE9369BDF3CA3E4206B9BDF
        E0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F1F6055E9213375D13375D133860
        084F7F2E90D14BB1EE389FE24EB4F04BB1EE3DA4E542A9E84AB0ED49AEEC369B
        DF42A8E7196AA0DADADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EBF205588F06
        5A250A323512365A0751823497D953B5EF44A4E160B9EC60BAEC59ACE269B6E2
        6FBDE771BCE564AEDB53AEE8186CA4D2D3D4FFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCB5BFC4064D50258F32349A42082E2D095081369BDFD0DBD5F9F1E1FBF0E1F9
        F0E2F9F1E4E9E2E5E0DCE7F4EFE8E4DCE6B3D0DA136DA9CCCECEFFFFFFFFFFFF
        FFFFFFD3DCD3559B572EA0373CB74A5DC96E75D68C48B156065F7745A4E1C1BB
        E0453FF16B66F35B56F28D89F68480F64D49F2D7D5FB8883F2B9D8E11370ADC3
        C5C6FFFFFFFFFFFFC8DAC824A22D31BE4343C55651CA6562D07772D58881DB97
        1A769851ADE7B8B3E3726EF4C9C7FBA7A3F85651F2EDECFD827FF6DBD9FB8783
        F5BDDCE51475B3B9BEC0FFFFFFF0F1F1279D2E26BB3731C14441C55451CA6563
        D07874D58A78D58C12719355B1EBBAB4E35651F2B3B0F98784F65752F2CCCAFB
        6662F39B98F78880C295B4C7187AB8AFB6BAFFFFFF9DC99F17B5271DB42C2CA1
        35469D6411654D349D4462C775186A3006619461B7ECC7C0E5524CF27B77F48D
        8AF6D2D1FAA5A3F7A8A6F7B9B4F2E2DED060BDF31B7EBBA3ADB1FFFFFF53AE55
        20A128A2C3A3F6F6F68CB4CF094C7D127826105B3413386009639A66B9EEFEF0
        DCFFFBF2FFF9EEFFF7EBFFF5E7FEF4E2FBF0E1F2E9DC80C0E552B8F51D7FBD9A
        A7ACFFFFFF49A04BADC1AEFFFFFFFFFFFF8CB4CF055587055073094C7B094C7B
        0A669F4EB2F2B2D0D9B5D2DCA7CEE093C7E57DC0E963B7EB4DACE83FA2E23599
        D93092D01070AFA5AFB5FFFFFFA6CCA6F9F9F9FFFFFFFFFFFFE9F2F5A4C5D9A4
        C5D9A4C5D9A2C3D80C69A02B8DCD2587C71E81BE1A7AB51774B10D6CAA0B68A0
        11679B307AA7518BB075A6C295BAD1F2F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE3F85AE3B7FA85D97B885B0C9AECADDC5
        D7E1DAE4E7E9EFF2F9FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
  end
end

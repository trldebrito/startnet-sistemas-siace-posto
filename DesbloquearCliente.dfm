object FormDesbloquearCliente: TFormDesbloquearCliente
  Left = 461
  Top = 94
  Width = 508
  Height = 488
  Caption = 'Desbloqueio e/ou Desbloqueio de Clientes !'
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
    Width = 492
    Height = 68
    Align = alTop
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 9
      Top = 7
      Width = 169
      Height = 13
      Caption = 'Entre com o C'#243'digo do Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 5
      Top = 5
      Width = 178
      Height = 55
    end
    object ComboEdit1: TComboEdit
      Left = 10
      Top = 25
      Width = 168
      Height = 30
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 0
      OnButtonClick = ComboEdit1ButtonClick
      OnEnter = ComboEdit1Enter
      OnExit = ComboEdit1Exit
      OnKeyPress = ComboEdit1KeyPress
    end
    object suiButton2: TsuiButton
      Left = 193
      Top = 7
      Width = 286
      Height = 54
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Bloquear / Desbloquear'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 1
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
        FFFF00FFFF00FFFF00FF95320999320899320899320899320899320899320899
        320899320899320899320899320899320899320899330A953209FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF953209953209993106B8370BE043
        28F24833F74B36F75039F85B40FA5D43F7533EFB4A37F44B35D041289D340D98
        3209953209FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF953209953209
        9A3107C03910E2452AF04C37F85C41FA6D4AFA6E48FA7E60FAA093F66B5AF444
        2FE6462FB73D2098330A953209FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF9532099532099F320AC93B14E7492EF76444FB7751FB724BF8603FFA9682
        FEFCFFF8B1A5F04B34D94027AF3B1C96340D953209FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF953209A3340DD13F19F25A3CFE7652FB744DFB
        6641FB6E50FCC6BCFFFFFFFFD1C7FA694ED54327A5361796340D953209FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF953209A03511CC421FFC68
        47FF7B56FF6F46FF6D48FFAB98FFFEFCFFFFFFFFD1C7FF7D5DE65937A63A1893
        310C953209FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        9E350FBF4622E05B35F87041EF643ECC6C58C1B8B7CCDCDEE2E6E2F7B09DFE75
        52F76E49B2441F96310AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFC54A25C04622813425602D41302F5B28396E33406D
        5156768C534CD1532CD8592EA53A12FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF070C5900157300
        167A001172000E6B000E650F114A5E2930FF00FFFF00FFFF00FF000000000000
        000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1117
        500224AA042C9E082C98092D98072A97032392001A8409176CFF00FFFF00FFFF
        00FF000109FF00FF0126FFFF00FF000316FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF01030C03227A0D43C20D37A30C37A30C38A40D36A30D36A00B35A10223
        92001384FF00FFFF00FF0004210125FFFF00FF0126FF00107EFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF020A1D0D3CA60F47C50D3DAA0D40B20D41B40E41B5
        0E41B20F44B70D3EAF092384FF00FFFF00FF00031DFF00FFFF00FFFF00FF0122
        F4FF00FFFF00FFFF00FFFF00FFFF00FF01010105183F145AE91156E01152D310
        4ECA0F4AC1104CC5104BC4114FC91150CA0C35A1FF00FFFF00FF000000000104
        000000000003000E6B0122FEFF00FFFF00FFFF00FFFF00FF000001051C40186C
        FE1869F31358CF1356CC1152CA0C38A41150C6135AD5145AD50F41B0FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF001CDE0120FFFF00FFFF00FFFF00FF
        01000101060D07234C09234E071F41124DA70C38A41762D90C38A4186AE61865
        DD0F3BA4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0303030707060403030000010719311D78D8208EFF1C78F6
        1C78F31F86FE1B78F00C3497FF00FFFF00FF0000000000000000000000000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1E1C1B252624080705000F2218
        73D326A0FF2395FF249AFF2396FF1553C5FF00FFFF00FFFF00FF000109FF00FF
        0126FFFF00FF000316FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1F1C1B4547
        465A5957262729051326092F63114C901356A00C3E81091A5AFF00FFFF00FFFF
        00FF0004210125FFFF00FF0126FF00107EFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3938375758586A696758534E2F2B280B0C0D030202090708FF00
        FFFF00FFFF00FFFF00FF00031DFF00FFFF00FFFF00FF0122F4FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6C6B77777663605F3B3B3C
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000104000000000003000E
        6B0122FEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF001CDE0120FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton2Click
      ResHandle = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 68
    Width = 492
    Height = 341
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15263976
    Enabled = False
    TabOrder = 1
    object RxLabel2: TRxLabel
      Left = 5
      Top = 264
      Width = 118
      Height = 13
      Caption = 'Observa'#231#245'es do Cliente:'
    end
    object RxLabel6: TRxLabel
      Left = 5
      Top = 208
      Width = 100
      Height = 13
      Caption = 'Limite de Credito R$:'
    end
    object suiDBRadioGroup11: TsuiDBRadioGroup
      Left = 5
      Top = 60
      Width = 478
      Height = 41
      UIStyle = MacOS
      Caption = 'Autoriza'#231#227'o Para Realizar Compras Com Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      TabStop = True
      Items.Strings = (
        'Sim'
        'N'#227'o')
      Columns = 2
      TopMargin = 8
      FontColor = clBlack
      BorderColor = 8355711
      OnEnter = suiDBRadioGroup11Enter
      OnExit = suiDBRadioGroup11Exit
      ItemIndex = 1
      DataField = 'PG_CHEQUE'
      DataSource = DM.DTS_CLI
      Values.Strings = (
        'S'
        'N')
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 488
      Height = 54
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15263976
      Enabled = False
      TabOrder = 1
      object RxLabel3: TRxLabel
        Left = 5
        Top = 5
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel4: TRxLabel
        Left = 5
        Top = 30
        Width = 103
        Height = 13
        Caption = 'Data do Cadastro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel5: TRxLabel
        Left = 239
        Top = 30
        Width = 85
        Height = 13
        Caption = 'Usu'#225'rio (Cad.):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object suiDBEdit1: TsuiDBEdit
        Left = 55
        Top = 5
        Width = 68
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'CODIGO'
        DataSource = DM.DTS_CLI
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit2: TsuiDBEdit
        Left = 130
        Top = 5
        Width = 348
        Height = 20
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'NOME_RS'
        DataSource = DM.DTS_CLI
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object DBDateEdit1: TDBDateEdit
        Left = 130
        Top = 30
        Width = 93
        Height = 20
        DataField = 'DATACAD'
        DataSource = DM.DTS_CLI
        Color = 15263976
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object suiDBEdit3: TsuiDBEdit
        Left = 325
        Top = 30
        Width = 153
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'USERCAD'
        DataSource = DM.DTS_CLI
        DragCursor = -26568
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
    end
    object DBMemo2: TDBMemo
      Left = 5
      Top = 288
      Width = 478
      Height = 49
      Color = 15263976
      DataField = 'OBSERVACOES'
      DataSource = DM.DTS_CLI
      TabOrder = 2
      OnEnter = DBMemo2Enter
      OnExit = DBMemo2Exit
    end
    object suiDBRadioGroup2: TsuiDBRadioGroup
      Left = 5
      Top = 109
      Width = 478
      Height = 41
      UIStyle = MacOS
      Caption = 'Autoriza'#231#227'o Para Realizar Compras Com Credi'#225'rio Pr'#243'prio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 3
      TabStop = True
      Items.Strings = (
        'Sim'
        'N'#227'o')
      Columns = 2
      TopMargin = 8
      FontColor = clBlack
      BorderColor = 8355711
      OnEnter = suiDBRadioGroup11Enter
      OnExit = suiDBRadioGroup11Exit
      ItemIndex = 1
      DataField = 'PG_CREDIARIO'
      DataSource = DM.DTS_CLI
      Values.Strings = (
        'S'
        'N')
    end
    object suiDBRadioGroup3: TsuiDBRadioGroup
      Left = 5
      Top = 158
      Width = 478
      Height = 41
      UIStyle = MacOS
      Caption = 'Autoriza'#231#227'o Para Realizar Compras Com Financeira:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 4
      TabStop = True
      Items.Strings = (
        'Sim'
        'N'#227'o')
      Columns = 2
      TopMargin = 8
      FontColor = clBlack
      BorderColor = 8355711
      OnEnter = suiDBRadioGroup11Enter
      OnExit = suiDBRadioGroup11Exit
      ItemIndex = 1
      DataField = 'PG_FINANCEIRA'
      DataSource = DM.DTS_CLI
      Values.Strings = (
        'S'
        'N')
    end
    object suiDBEdit4: TsuiDBEdit
      Left = 6
      Top = 229
      Width = 99
      Height = 28
      BorderStyle = bsNone
      Color = 15263976
      DataField = 'LIMITE_DE_CREDITO'
      DataSource = DM.DTS_CLI
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      UIStyle = DeepBlue
      BorderColor = clBlack
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 409
    Width = 492
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    Color = 15263976
    TabOrder = 2
    object suiButton5: TsuiButton
      Left = 355
      Top = 5
      Width = 125
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Cancela'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C005800581F7C005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        005800581F7C1F7C0058005800581F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058
        00581F7C1F7C1F7C00580058005800581F7C1F7C1F7C1F7C1F7C1F7C00580058
        1F7C1F7C1F7C1F7C1F7C0068005C005800581F7C1F7C1F7C1F7C005800581F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0058005800581F7C0058005800581F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800600060006400581F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00600060006C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C005800680064006C00741F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0070006C00681F7C1F7C007000741F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C007C006C00741F7C1F7C1F7C1F7C007C00781F7C
        1F7C1F7C1F7C1F7C1F7C00780078007C1F7C1F7C1F7C1F7C1F7C1F7C00780078
        1F7C1F7C1F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        00781F7C1F7C0078007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C007800781F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton5Click
      ResHandle = 0
    end
    object suiButton4: TsuiButton
      Left = 217
      Top = 5
      Width = 125
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = 'Confirma'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000012000000130000000100
        040000000000E4000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333330000003333422433333333330000003334222243333333330000003342
        2222243333333300000034222A2222433333330000003222A2A2224333333300
        00003A2A222A222433333300000034A22222A2224333330000004222A2222A22
        243333000000222A3A2224A2224333000000A2A333A2224A2224330000003A33
        333A2224A2224300000033333333A2224A2243000000333333333A2224A22300
        00003333333333A2224A3300000033333333333A222433000000333333333333
        A224330000003333333333333A223300000033333333333333A333000000}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton4Click
      ResHandle = 0
    end
  end
  object MessageCanClose: TsuiMessageDialog
    Position = poScreenCenter
    Caption = 'Informa'#231#227'o !!!'
    UIStyle = WinXP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
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
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiInformation
    Text = 'Antes de sair voc'#234' deve salvar ou cancelar!'
    Left = 416
    Top = 2
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
    Left = 383
    Top = 1
  end
  object MessageCli: TsuiMessageDialog
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
    Button1ModalResult = 1
    Button2ModalResult = 2
    Button3ModalResult = 2
    IconType = suiInformation
    Text = 'Digite o C'#243'digo do Cliente!!!'
    Left = 352
    Top = 1
  end
  object MessageLocCli: TsuiMessageDialog
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
    Text = 'Cliente N'#227'o Consta no Cadastro !'
    Left = 320
    Top = 1
  end
end

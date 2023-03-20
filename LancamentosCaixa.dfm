object FormLancamentosCaixa: TFormLancamentosCaixa
  Left = 344
  Top = 224
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amentos no Caixa - Entrada de Capital'
  ClientHeight = 177
  ClientWidth = 603
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Width = 603
    Height = 129
    Align = alClient
    Color = 15263976
    TabOrder = 0
    object RxLabel10: TRxLabel
      Left = 5
      Top = 48
      Width = 122
      Height = 13
      Caption = 'Data do Lan'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel11: TRxLabel
      Left = 139
      Top = 48
      Width = 145
      Height = 13
      Caption = 'Hist'#243'rico do Lan'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 460
      Top = 48
      Width = 124
      Height = 13
      Caption = 'Valor do Lan'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object myLabel3d1: TmyLabel3d
      Left = 112
      Top = 8
      Width = 352
      Height = 25
      Caption = 'Lan'#231'amentos no Caixa ( Entrada)'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      AStyle3D = Raised3d
      AShadeLTSet = False
    end
    object Label34: TLabel
      Left = 9
      Top = 88
      Width = 58
      Height = 13
      Caption = 'Cod. Plano'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel1: TRxLabel
      Left = 139
      Top = 88
      Width = 111
      Height = 13
      Caption = 'Descricao do Plano:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateEdit1: TDateEdit
      Left = 5
      Top = 63
      Width = 119
      Height = 20
      Ctl3D = False
      DialogTitle = 'Selecione a Data'
      Enabled = False
      NumGlyphs = 2
      ParentCtl3D = False
      YearDigits = dyFour
      TabOrder = 0
      OnEnter = DateEdit1Enter
      OnExit = DateEdit1Exit
    end
    object Edit1: TsuiEdit
      Left = 139
      Top = 63
      Width = 298
      Height = 20
      UIStyle = DeepBlue
      BorderColor = clBlack
      CharCase = ecUpperCase
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 460
      Top = 63
      Width = 128
      Height = 20
      AutoSize = False
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = CurrencyEdit1Enter
      OnExit = CurrencyEdit1Exit
    end
    object plano_desc: TEdit
      Left = 140
      Top = 102
      Width = 447
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object codigo_plano: TComboEdit
      Left = 6
      Top = 102
      Width = 116
      Height = 23
      CharCase = ecUpperCase
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnButtonClick = codigo_planoButtonClick
      OnExit = codigo_planoExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 603
    Height = 48
    Align = alBottom
    Color = 15263976
    TabOrder = 1
    object BTNSALVAR: TsuiButton
      Left = 341
      Top = 6
      Width = 120
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Salvar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 1
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C131DF21CD118F23DF65AF75EF85EF75AF65E1442B014
        B014D2181F7C1F7C7529382538251421903135461B63DF7BFF7FDD7B784E6F0C
        700C1621F31C1F7C75293725382514219031B014742D5C6BFF7BFF7F99526F0C
        700C1521F31C1F7C7529372538251421B23590109010B756BD77FF7FDB5A6F0C
        700C1521F31C1F7C7529372538251421D339B1146F0C12425967FF7FFB5E6F0C
        6F0CF51CF31C1F7C7529372538251521D639F63DB335D2393446FB5E5A4A9110
        91101621F31C1F7C752937253725372537253725372537251721172117213725
        37253825F21C1F7C7529F418131DB6353846594A594A594A3946594A594A794A
        18423725F21C1F7C7529D318FB5EDF7BDE77DE7BDE7BDE7BDE7BDE7BDE7BFF7F
        BA561621F31C1F7C7529D3183C67FF7FBE77BE77BE77BE77BE77BE77BE77DF7B
        BA561621F31C1F7C7529D3183C63BD7739633967396739673967396739679C73
        BA561621F31C1F7C7529D3183C67BD773A675A6B5A6B5A6B5A6B5A6B3A67BD77
        BA561621F31C1F7C7529D3183C67DE775B6B7B6B7B6B7B6B7B6B7B6B5B6BBD77
        BA561621F31C1F7C7529D3183C67BD7739673967396739673967396739679C73
        BB561621F31C1F7C7529D3183C63FF7FBF77BF77BF77BF77BF77BF77BF77FF7B
        BA561621F31C1F7C1F7CD2189752386318631863186318631863186318631863
        774ED1181F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = BTNSALVARClick
      ResHandle = 0
    end
    object BTNCANCELAR: TsuiButton
      Left = 471
      Top = 6
      Width = 120
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Cancelar'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      Enabled = False
      TabOrder = 2
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
      OnClick = BTNCANCELARClick
      ResHandle = 0
    end
    object suiButton1: TsuiButton
      Left = 169
      Top = 6
      Width = 162
      Height = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Caption = '&Novo Lan'#231'amento'
      AutoSize = False
      ParentFont = False
      UIStyle = FromThemeFile
      TabOrder = 0
      Transparent = False
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36A209A2096A361F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C6A36A209A209A209A209A2094F3B841EA209A209A209A209
        A2096A361F7C1F7C2926841E841E841E841E841E841E841E841E841E841E841E
        841EA2091F7C1F7C29264F3B4F3B4F3B4F3B4F3B4F3B841E4F3B4F3B4F3B4F3B
        4F3BA2091F7C1F7C6A36292629262926292629264F3B841EA209A209A209A209
        A2096A361F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C29264F3B841EA2091F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C6A36292629266A361F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = suiButton1Click
      ResHandle = 0
    end
  end
  object MessageCanClose: TsuiMessageDialog
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
    Button2ModalResult = 0
    Button3ModalResult = 0
    IconType = suiInformation
    Text = 'Antes de Sair Voc'#234' Deve Salvar ou Cancelar!'
    Left = 74
    Top = 32
  end
  object MSGErro: TsuiMessageDialog
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
    Text = 'Erro na grava'#231#227'o! Digite um valor v'#225'lido!!!'
    Left = 42
    Top = 33
  end
  object SPC_MovimentoBancario: TSQLStoredProc
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
    Left = 9
    Top = 33
  end
  object MSG: TsuiMessageDialog
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
    Text = 'Hello world!'
    Left = 106
    Top = 32
  end
  object aux: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 56
  end
end

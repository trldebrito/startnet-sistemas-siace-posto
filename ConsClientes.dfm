object FormConsClientes: TFormConsClientes
  Left = 277
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Localizar Cliente Cadastrado'
  ClientHeight = 425
  ClientWidth = 944
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 158
      Top = 9
      Width = 138
      Height = 13
      Caption = 'Entre Com o Nome - F2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object RxLabel2: TRxLabel
      Left = 9
      Top = 5
      Width = 99
      Height = 13
      Caption = 'Tipo de Pesquisa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 158
      Top = 21
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 488
      Top = 16
      Width = 80
      Height = 27
      Caption = '&Buscar'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FFECD6FFD6A6FFD8ACFFF6ECFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFFE0BBFFBC6EFFC071FFBD6EFFC077FFF8F0FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFFE0BAFFBE6CFFC377FFC078FFC078FFBB6CFFE0BAFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFBF6FFE7C8FFD39BFFCB8A
        FFCB8AFFCB8AFFD7A5FFEBD2FFFEFDFFE1BAFFBE6CFFBF75F3B875F3B875F3B8
        75E8AC67FFDFB7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFE3BDFFC475FF
        C16CFFC672FFCB76FFCB76FFCB76FFC46FFFC16CFFC678FFC16CFFC174F4BA74
        F7BB75FBBE75F2B46CEEB36EFFF7EEFF00FFFF00FFFF00FFFF00FFFFFCF8FFD3
        95FFC16BFFCC76FFC878FFC176FDBF75FBBD73FCBE75FFC376FFCA79FFCF78FF
        C578F6BA73F9BC74FEBF75F7B76CF4B66CFCECDAFF00FFFF00FFFF00FFFF00FF
        FFFEFDFFD698FFC36AFFC877FCBE74F7B86BF7B567F9B767F9BB70F7B667F4B4
        66F7B86DFEC074F9BC73FBBE73FEC074F7B76AF6B86CFDEDDAFF00FFFF00FFFF
        00FFFF00FFFF00FFFFE6BEFFC369FFC374FEC173F7B665FDCA8AFFEED8FFFCF8
        FF00FFFFF9F1FFE8CBFAC37DF5B565FFC273FFC173FFC173F4B76AFDEDD9FF00
        FFFF00FFFF00FFFF00FFFF00FFFFFCF6FFCA73FFC16FFFC172F7B765FDD5A1FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFCF8FAC989F5B665FFC373F9BB6C
        F4C384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFECCAFFBD65FEC171FCBD
        6BFAC37AFFFDFAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFF9F2F7
        BB6BFFC371FFC271F0B362FFF8EDFF00FFFF00FFFF00FFFF00FFFF00FFFFDC9E
        F6B865FFC371F7B762FDE6C8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFBD6A5F7B865FFC270F7B762FFEAC4FF00FFFF00FFFF00FFFF
        00FFFF00FFFFD188F9BC68FFC570F6B762FFF8EEFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFDE8CDF5B762FFC36FF3B662FFE1AAFF00
        FFFF00FFFF00FFFF00FFFF00FFFFCA80FEBF69FFC56FF4B760FFFBF4FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFEED5F5B760FFC56F
        F7B962FFDCA4FF00FFFF00FFFF00FFFF00FFFF00FFFFCF8BFEC067FFC66EF5B7
        60FFF5E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        E7BDF5B760FFC76EF7B960FFE0AFFF00FFFF00FFFF00FFFF00FFFF00FFFFDBA5
        FBBC61FFC76DF9BC62FFE2A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFFFEFDFFD583FEC167FFCA6EFBBC60FFEED0FF00FFFF00FFFF00FFFF
        00FFFF00FFFFF1DAFEBE5FFFCA6DFFC86CFFCD61FFF4D7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFFEAB6FFC860FFC96CFFCB6CFEC164FFFDFAFF00
        FFFF00FFFF00FFFF00FFFF00FFFFFEFDFFCC7DFFC362FFC96CFFC964FFD66BFF
        F0C8FF00FFFF00FFFF00FFFF00FFFFFEFBFFE8ADFFD363FFCA69FFCC6CFFC15E
        FFDA9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFF1D7FFC35FFFCA
        68FFCA6BFFD667FFD560FFDE84FFEAB1FFEEBFFFE8A9FFDA75FFD560FFD56CFF
        CD6CFFC762FFC96CFFFAF1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFFE5B5FFC55EFFCA67FFCC6CFFDC6FFFDF6AFFD660FFD660FFD762FFE2
        6DFFD76EFFD06CFFC962FFC762FFF2DBFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFFE8BAFFCA61FFC860FFD16BFFD36CFFD96D
        FFDD6EFFD86DFFD36CFFD36BFFC85EFFCF6DFFF2D9FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFF7E5FFDD90FF
        CB5DFFCA5DFFC85DFFCC60FFCA5DFFCB5DFFCE62FFE2A2FFFBF3FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFFFAF0FFEEC4FFE7ADFFE29EFFE9B5FFF0CCFFFDFAFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object cbxpesquisa: TComboBox
      Left = 7
      Top = 21
      Width = 143
      Height = 21
      AutoDropDown = True
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Qualquer Parte do Nome'
      OnChange = cbxpesquisaChange
      Items.Strings = (
        'Qualquer Parte do Nome'
        'Nome de Fantasia'
        'Cpf/Cnpj'
        'Fone'
        'C'#244'njugue'
        'Celular'
        'RG/IE'
        'Pai'
        'M'#227'e'
        'Endereco '
        'Local de trabalho')
    end
    object BitBtn2: TBitBtn
      Left = 668
      Top = 15
      Width = 80
      Height = 27
      Caption = '&Cadastro'
      Enabled = False
      TabOrder = 3
      OnClick = BitBtn2Click
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
    end
    object BitBtn3: TBitBtn
      Left = 577
      Top = 15
      Width = 80
      Height = 27
      Caption = '&Hit'#243'rico'
      TabOrder = 4
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFB7D6FF6FACFF6FACFF6FACFF6FACFF6F
        ACFF6FACFF6FACFF6FACFF6FACFF6FACFF6FACFF6FACFF6FACFF6FACFF6FACFF
        6FACFF6FACFF6FACFFB7D6FFFF00FFFF00FFFF00FFB7D7FF6EAFFF7EBFFF81C3
        FF81C3FF81C3FF81C3FF81C3FF81C3FF81C3FF81C3FF81C3FF81C3FF81C3FF81
        C3FF81C3FF81C3FF81C3FF81C3FF7EBFFF6EAFFFB7D7FFFF00FFFF00FF6DB1FF
        75AEFF72A3FF72A3FF72A3FF72A3FF72A3FF72A3FF72A3FF72A3FF72A3FF72A3
        FF72A3FF72A3FF72A3FF72A3FF72A3FF72A3FF72A3FF72A3FF75AEFF6DB1FFFF
        00FFFF00FF68A4FF72A5FF72A5FF72A5FF72A6FF72A6FF72A6FF72A6FF72A6FF
        72A6FF72A6FF72A6FF72A6FF72A6FF72A6FF72A6FF72A6FF72A6FF72A5FF72A5
        FF72A5FF68A4FFFF00FFFF00FF6399FF71A8FF71A8FF72A9FF72A9FF72A9FF72
        A9FF72A9FF72A9FF72A9FF72A9FF72A9FF72A9FF72A9FF72A9FF72A9FF72A9FF
        72A9FF72A9FF71A8FF71A7FF6399FFFF00FFFF00FF629CFF71ABFF71ABFF71AB
        FF71ABFF71ABFF71ABFF71ABFF71ABFF71ABFF71ABFF71ABFF71ABFF71ABFF71
        ABFF71ABFF71ABFF71ABFF71ABFF71ABFF71ABFF629CFFFF00FFFF00FF629EFF
        70ADFF71AEFF71AEFF71AEFF71AEFF71AEFF71AEFF71AEFF71AEFF71AEFF71AE
        FF71AEFF71AEFF71AEFF71AEFF71AEFF71AEFF71AEFF71AEFF70ADFF629EFFFF
        00FFFF00FF61A1FF6FB0FF70B0FF70B0FF70B0FF70B0FF70B0FF70B0FF70B0FF
        70B0FF70B0FF70B0FF70B0FF70B0FF70B0FF70B0FF70B0FF70B0FF70B0FF70B0
        FF6FB0FF61A1FFFF00FFFF00FF60A4FF6EB2FF6FB3FF6FB3FF6FB3FF6FB3FF6F
        B3FF6FB3FF6FB3FF6FB3FF6FB3FF6FB3FF6FB3FF6FB3FF6FB3FF6FB3FF6FB3FF
        6FB3FF6FB3FF6FB3FF6EB2FF60A4FFFF00FFFF00FF60A7FF6EB5FF6EB6FF6EB6
        FF6EB6FF6EB6FF6EB6FF6EB6FF6EB6FF6EB6FF6EB6FF6EB6FF6EB6FF6EB6FF6E
        B6FF6EB6FF6EB6FF6EB6FF6EB6FF6EB6FF6EB5FF60A7FFFF00FFFF00FF5FAAFF
        6DB8FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9
        FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6EB9FF6DB8FF5FA9FFFF
        00FFFF00FF5EADFF6CBBFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF
        6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBCFF6CBC
        FF6CBBFF5EACFFFF00FFFF00FF5DB0FF6BBEFF6CBEFF6CBEFF6CBEFF6CBEFF6C
        BEFF6CBEFF6CBEFF6CBEFF6CBEFF6CBEFF6CBEFF6CBEFF6CBEFF6CBEFF6CBEFF
        6CBEFF6CBEFF6CBEFF6BBEFF5DB0FFFF00FFFF00FF5CB2FF6AC1FF6BC1FF6BC1
        FF6BC1FF6BC1FF6BC1FF6BC1FF6BC1FF6BC1FF6BC1FF6BC1FF6BC1FF6BC1FF6B
        C1FF6BC1FF6BC1FF6BC2FF6BC2FF6BC2FF6BC2FF5CB3FFFF00FFFF00FF5BB5FF
        69C3FF6AC3FF6AC3FF6AC3FF6AC3FF6AC3FF6AC3FF6AC4FF6AC4FF6AC4FF6AC5
        FF6AC5FF6AC5FF6AC5FF6AC5FF6AC5FF6AC5FF6BC6FF6BC7FF68C4FF5CB7FFFF
        00FFFF00FF5BB7FF69C5FF69C6FF69C6FF69C6FF69C6FF69C6FF69C7FF69C7FF
        69C8FF6ACAFF6ACCFF6BCDFF6BCDFF6BCEFF6BCEFF6BCEFF6BCEFF6BCFFF68CC
        FF5CBEFFAEDEFFFF00FFFF00FF5ABAFF68C8FF68C8FF68C8FF68C8FF68C8FF68
        C8FF69C9FF69CAFF69CBFF5BC0FF5BC3FF5BC5FF5BC6FF5BC6FF5BC6FF5BC6FF
        5BC6FF5BC6FF5BC5FFAEE1FFFF00FFFF00FFFF00FF5ABCFF68CBFF69CCFF68CB
        FF68CBFF68CBFF68CBFF69CCFF69CCFF69CFFF5BC3FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF59C0FF
        68CFFF68CFFF68CEFF67CDFF67CDFF68CEFF68CFFF68CFFF69D1FF5AC4FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF59C3FF65D0FF68D3FF67D2FF67D1FF67D1FF67D1FF68D3FF68D3FF
        65D1FF59C5FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFACE4FF59CAFF65D6FF68D9FF68D8FF68D8FF68
        D8FF68D9FF65D6FF59CAFFACE3FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFADE7FF59D1FF59D1
        FF59D1FF59D1FF59D1FF59D1FF59D0FFADE6FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object Edit2: TEdit
    Left = 352
    Top = 0
    Width = 97
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 944
    Height = 181
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 2
    TabStop = True
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 741
      Height = 173
      Align = alLeft
      Color = clWhite
      DataSource = DM.DTS_Clientes
      DefaultDrawing = False
      FixedStyle = fsMild
      FixedTheme = ftNone
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
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 47
        end
        item
          Expanded = False
          FieldName = 'NOME_RS'
          Title.Caption = 'Nome/Raz'#227'o Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Marker = tmAscend
          Title.MarkerIndex = 2
          Visible = True
          Width = 239
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ'
          QuickDraw = False
          ShowBlob = False
          ShowEdit = False
          Title.Caption = 'Cpf/Cnpj'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          ToolTips = False
          Visible = True
          Width = 104
        end
        item
          Expanded = False
          FieldName = 'APELIDO'
          Title.Caption = 'Apelido/ Nome Fantasia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 161
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'TP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 20
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Title.Caption = 'Telefone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 83
        end
        item
          ButtonStyle = cbsEllipsis
          CheckBox = True
          CheckBoxStyle = cbLoweredGray
          CheckBoxValues = 'A;I'
          Color = clWindow
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
        end>
      OrderFields = 'NOME_RS'
    end
    object DBImage2: TDBImage
      Left = 748
      Top = 3
      Width = 187
      Height = 169
      DataField = 'FOTO_LOGOMARCA'
      DataSource = DM.DTS_Clientes
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 230
    Width = 944
    Height = 195
    Align = alBottom
    TabOrder = 3
    object RxLabel6: TRxLabel
      Left = 6
      Top = 9
      Width = 33
      Height = 13
      Caption = 'R.G.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel32: TRxLabel
      Left = 214
      Top = 11
      Width = 72
      Height = 13
      Caption = 'Org. Emisor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel7: TRxLabel
      Left = 400
      Top = 59
      Width = 61
      Height = 13
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel9: TRxLabel
      Left = 400
      Top = 5
      Width = 46
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel12: TRxLabel
      Left = 400
      Top = 31
      Width = 31
      Height = 13
      Caption = 'CEP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel8: TRxLabel
      Left = 400
      Top = 85
      Width = 40
      Height = 13
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel16: TRxLabel
      Left = 592
      Top = 82
      Width = 25
      Height = 13
      Caption = 'Cel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel15: TRxLabel
      Left = 216
      Top = 35
      Width = 27
      Height = 13
      Caption = 'Fax:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel20: TRxLabel
      Left = 6
      Top = 36
      Width = 73
      Height = 13
      Caption = 'Nascimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel57: TRxLabel
      Left = 6
      Top = 82
      Width = 64
      Height = 13
      Caption = 'Ponto Ref:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel75: TRxLabel
      Left = 693
      Top = 59
      Width = 21
      Height = 13
      Caption = 'N'#186':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel17: TRxLabel
      Left = 7
      Top = 60
      Width = 41
      Height = 13
      Caption = 'E-mail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel25: TRxLabel
      Left = 7
      Top = 106
      Width = 60
      Height = 13
      Caption = 'C'#244'njugue:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel26: TRxLabel
      Left = 400
      Top = 104
      Width = 54
      Height = 13
      Caption = 'Cpf conj:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel76: TRxLabel
      Left = 9
      Top = 127
      Width = 78
      Height = 13
      Caption = 'Autorizado 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel77: TRxLabel
      Left = 9
      Top = 149
      Width = 78
      Height = 13
      Caption = 'Autorizado 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel78: TRxLabel
      Left = 8
      Top = 169
      Width = 78
      Height = 13
      Caption = 'Autorizado 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel79: TRxLabel
      Left = 399
      Top = 131
      Width = 60
      Height = 13
      Caption = 'Cpf Aut 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel80: TRxLabel
      Left = 399
      Top = 152
      Width = 60
      Height = 13
      Caption = 'Cpf Aut 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxLabel81: TRxLabel
      Left = 399
      Top = 171
      Width = 60
      Height = 13
      Caption = 'Cpf Aut 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 402
      Top = 200
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object suiDBEdit3: TDBEdit
      Left = 90
      Top = 9
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'RG_IE'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 289
      Top = 7
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ORGAO_EMISSOR'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object suiDBEdit4: TDBEdit
      Left = 459
      Top = 56
      Width = 229
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'ENDERECO'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object suiDBEdit8: TDBEdit
      Left = 459
      Top = 6
      Width = 286
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CIDADE'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object suiDBEdit7: TDBEdit
      Left = 459
      Top = 30
      Width = 285
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CEP'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
    end
    object suiDBEdit11: TDBEdit
      Left = 626
      Top = 78
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CELULAR'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 5
    end
    object suiDBEdit10: TDBEdit
      Left = 289
      Top = 32
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'FAX'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 6
    end
    object DBDateEdit1: TDBDateEdit
      Left = 90
      Top = 34
      Width = 118
      Height = 21
      DataField = 'NASCIMENTO_IA'
      DataSource = DM.DTS_Clientes
      Color = 15263976
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 89
      Top = 80
      Width = 306
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'PONTO_REFERENCIA'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 459
      Top = 80
      Width = 127
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'BAIRRO'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit30: TDBEdit
      Left = 709
      Top = 54
      Width = 35
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NUMERO'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 10
    end
    object suiDBEdit12: TDBEdit
      Left = 89
      Top = 57
      Width = 306
      Height = 21
      CharCase = ecLowerCase
      Color = 15263976
      DataField = 'EMAIL'
      DataSource = DM.DTS_Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object suiDBEdit13: TDBEdit
      Left = 89
      Top = 102
      Width = 306
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'NOME_CONJUGE'
      DataSource = DM.DTS_Clientes
      TabOrder = 12
    end
    object suiDBEdit16: TDBEdit
      Left = 459
      Top = 102
      Width = 285
      Height = 21
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_CONJUGE'
      DataSource = DM.DTS_Clientes
      MaxLength = 14
      TabOrder = 13
    end
    object DBEdit31: TDBEdit
      Left = 88
      Top = 124
      Width = 307
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'AUTORIZADO1'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object DBEdit32: TDBEdit
      Left = 88
      Top = 146
      Width = 307
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'AUTORIZADO2'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit33: TDBEdit
      Left = 88
      Top = 168
      Width = 307
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'AUTORIZADO3'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit34: TDBEdit
      Left = 459
      Top = 124
      Width = 285
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_AUT1'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object DBEdit35: TDBEdit
      Left = 459
      Top = 147
      Width = 284
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_AUT2'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit36: TDBEdit
      Left = 459
      Top = 169
      Width = 285
      Height = 21
      HelpType = htKeyword
      CharCase = ecUpperCase
      Color = 15263976
      DataField = 'CPF_AUT3'
      DataSource = DM.DTS_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object DBImage1: TDBImage
      Left = 749
      Top = 6
      Width = 187
      Height = 183
      DataField = 'DOCUMENTOS'
      DataSource = DM.DTS_Clientes
      TabOrder = 20
    end
  end
end

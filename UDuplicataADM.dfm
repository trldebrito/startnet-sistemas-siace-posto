object FrmDuplicataADM: TFrmDuplicataADM
  Left = 411
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contas a Receber Cart'#227'o [Duplicata]'
  ClientHeight = 434
  ClientWidth = 611
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 415
    Width = 611
    Height = 19
    Panels = <>
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 611
    Height = 294
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 607
      Height = 255
      Align = alTop
      Color = clSilver
      DataSource = DSQParcelas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
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
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'PARC.'
          Width = 36
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
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO_DUPLICATA'
          Title.Alignment = taCenter
          Title.Caption = 'DUPLICATA'
          Width = 86
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'BANDEIRA'
          Width = 154
          Visible = True
        end>
    end
    object PanelDoc: TPanel
      Left = 168
      Top = 80
      Width = 217
      Height = 97
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      TabOrder = 4
      object GroupBox1: TGroupBox
        Left = 2
        Top = 2
        Width = 213
        Height = 93
        Align = alClient
        Caption = 'N'#250'mero do Documento'
        Color = 16710131
        ParentColor = False
        TabOrder = 0
        object EdtDoc: TEdit
          Left = 16
          Top = 24
          Width = 169
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 0
        end
        object BtnOK: TButton
          Left = 24
          Top = 56
          Width = 73
          Height = 25
          Caption = '&OK'
          TabOrder = 1
          OnClick = BtnOKClick
        end
        object BtnCancelar: TButton
          Left = 112
          Top = 56
          Width = 73
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 2
          OnClick = BtnCancelarClick
        end
      end
    end
    object BtnDoc: TButton
      Left = 186
      Top = 262
      Width = 105
      Height = 25
      Caption = '&Num.Documento'
      Enabled = False
      TabOrder = 2
      OnClick = BtnDocClick
    end
    object BtnImpressao: TButton
      Left = 319
      Top = 260
      Width = 105
      Height = 25
      Caption = '&Impress'#227'o Duplicata'
      Enabled = False
      TabOrder = 3
      OnClick = BtnImpressaoClick
    end
    object BtnSelecionar: TButton
      Left = 53
      Top = 262
      Width = 105
      Height = 25
      Caption = 'Selecionar Totas'
      Enabled = False
      TabOrder = 1
      OnClick = BtnSelecionarClick
    end
    object BtnAltera: TButton
      Left = 453
      Top = 260
      Width = 105
      Height = 25
      Caption = '&Alterar Parcela'
      Enabled = False
      TabOrder = 5
      OnClick = BtnAlteraClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 611
    Height = 121
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Venda'
    end
    object Label2: TLabel
      Left = 440
      Top = 22
      Width = 57
      Height = 13
      Caption = 'Data Venda'
    end
    object Label3: TLabel
      Left = 440
      Top = 46
      Width = 58
      Height = 13
      Caption = 'Total Venda'
    end
    object Label4: TLabel
      Left = 8
      Top = 72
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object BtnConsVenda: TSpeedButton
      Left = 84
      Top = 24
      Width = 23
      Height = 22
      Hint = 'Consultar Cliente'
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
      OnClick = BtnConsVendaClick
    end
    object Label6: TLabel
      Left = 444
      Top = 70
      Width = 53
      Height = 13
      Caption = 'Nota Fiscal'
    end
    object Label7: TLabel
      Left = 436
      Top = 94
      Width = 63
      Height = 13
      Caption = 'Cupom Fiscal'
    end
    object EdtCodVenda: TAlignEdit
      Left = 8
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
      OnEnter = EdtCodVendaEnter
      OnKeyDown = EdtCodVendaKeyDown
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
    object EdtData: TMaskEdit
      Left = 504
      Top = 16
      Width = 89
      Height = 21
      TabStop = False
      Color = clSilver
      EditMask = '99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '  /  /    '
    end
    object EdtTotalVenda: TCurrencyEdit
      Left = 504
      Top = 40
      Width = 89
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
    object EdtCodCli: TAlignEdit
      Left = 8
      Top = 88
      Width = 49
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
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
    object EdtNomeCli: TEdit
      Left = 64
      Top = 88
      Width = 361
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdtNF: TEdit
      Left = 504
      Top = 64
      Width = 89
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object BtnConfirma: TButton
      Left = 120
      Top = 20
      Width = 65
      Height = 25
      Caption = '&OK'
      TabOrder = 1
      OnClick = BtnConfirmaClick
    end
    object BtnSair: TButton
      Left = 192
      Top = 20
      Width = 65
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
    object EdtCOO: TEdit
      Left = 504
      Top = 88
      Width = 89
      Height = 21
      TabStop = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object RDprint: TRDprint
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
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Duplicatas'
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
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Distr.de Carnes e Prod. Alim. Cricare Ltda'
    RegistroUsuario.SerieProduto = 'SINGLE-0906/01398'
    RegistroUsuario.AutorizacaoKey = 'CMRJ-8848-RCNO-2094-IKCJ'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Duplicatas'
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
    TamanhoQteLinhas = 36
    TamanhoQteColunas = 140
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 24
    Top = 240
  end
  object QDuplicata: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM SP_DUPLICATA_CARTAO(:CODIGO)')
    Left = 24
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QDuplicataCOD_DUPLICATA: TIntegerField
      FieldName = 'COD_DUPLICATA'
      Origin = 'SP_DUPLICATA.COD_DUPLICATA'
    end
  end
  object QParcelas: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRParcelas
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT R.CODIGO, R.PARCELA, R.VALOR, R.EMISSAO, R.VENCIMENTO,  R' +
        '.COD_CLI, R.DOCUMENTO, R.COD_VEN, R.CODIGO_DUPLICATA,'
      
        'C.NOME_RS, C.ENDERECO, C.BAIRRO, C.CIDADE, C.CEP, C.UF, C.CPF_CN' +
        'PJ, C.RG_IE, C.TIPO, B.DESCRICAO'
      'FROM CONTAS_RECEBER_ADM_CARTAO R'
      'INNER JOIN CLIENTES C'
      'ON (R.COD_CLI = C.CODIGO)'
      'INNER JOIN BANDEIRAS_CARTAO B'
      'ON (R.CODIGO_BANDEIRA = B.CODIGO)'
      'WHERE R.COD_VEN = :CODVEN'
      'ORDER BY R.CODIGO')
    Left = 440
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODVEN'
        ParamType = ptUnknown
      end>
    object QParcelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO'
      Required = True
    end
    object QParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.PARCELA'
    end
    object QParcelasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VALOR'
    end
    object QParcelasEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.EMISSAO'
    end
    object QParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.VENCIMENTO'
    end
    object QParcelasCOD_CLI: TIntegerField
      FieldName = 'COD_CLI'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_CLI'
    end
    object QParcelasDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.DOCUMENTO'
    end
    object QParcelasCOD_VEN: TIntegerField
      FieldName = 'COD_VEN'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.COD_VEN'
    end
    object QParcelasCODIGO_DUPLICATA: TIntegerField
      FieldName = 'CODIGO_DUPLICATA'
      Origin = 'CONTAS_RECEBER_ADM_CARTAO.CODIGO_DUPLICATA'
    end
    object QParcelasNOME_RS: TIBStringField
      FieldName = 'NOME_RS'
      Origin = 'CLIENTES.NOME_RS'
      Required = True
      Size = 50
    end
    object QParcelasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTES.ENDERECO'
      Size = 44
    end
    object QParcelasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTES.BAIRRO'
      Size = 30
    end
    object QParcelasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTES.CIDADE'
      Size = 40
    end
    object QParcelasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTES.CEP'
      FixedChar = True
      Size = 10
    end
    object QParcelasUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CLIENTES.UF'
      Size = 2
    end
    object QParcelasCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CLIENTES.CPF_CNPJ'
      Required = True
      FixedChar = True
    end
    object QParcelasRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = 'CLIENTES.RG_IE'
      FixedChar = True
      Size = 15
    end
    object QParcelasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BANDEIRAS_CARTAO.DESCRICAO'
      Size = 50
    end
    object QParcelasTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'CLIENTES.TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object DSQParcelas: TDataSource
    AutoEdit = False
    DataSet = QParcelas
    Left = 440
    Top = 280
  end
  object IBTRParcelas: TIBTransaction
    Active = False
    DefaultDatabase = DM.IBDatabase
    AutoStopAction = saNone
    Left = 512
    Top = 232
  end
end

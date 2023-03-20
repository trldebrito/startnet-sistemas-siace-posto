object FormEmEcf: TFormEmEcf
  Left = 278
  Top = 267
  HorzScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = 'Emissor de Cupom Fiscal'
  ClientHeight = 192
  ClientWidth = 550
  Color = clBtnFace
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    550
    192)
  PixelsPerInch = 96
  TextHeight = 13
  object RzLEDDisplay1: TRzLEDDisplay
    Left = 9
    Top = 44
    Width = 512
    Caption = '    Cupom Fiscal Impresso...'
  end
  object RzDBProgressBar1: TRzDBProgressBar
    Left = 10
    Top = 13
    Width = 511
    BaseField = 'CODIGO'
    BaseValue = 100.000000000000000000
    DataField = 'CODIGO'
    DataSource = DMC.DTS_Pedido_Itens
    BorderWidth = 0
    InteriorOffset = 0
  end
  object Edit1: TEdit
    Left = 16
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edCod: TEdit
    Left = 208
    Top = 114
    Width = 33
    Height = 21
    Cursor = crIBeam
    TabOrder = 0
    Visible = False
  end
  object mResp: TMemo
    Left = 1
    Top = 117
    Width = 328
    Height = 3
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 13
    Font.Name = 'Courier'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    WantReturns = False
    WordWrap = False
  end
  object mFormas: TMemo
    Left = 295
    Top = 123
    Width = 153
    Height = 44
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
  end
  object suiButton2: TsuiButton
    Left = 244
    Top = 77
    Width = 69
    Height = 27
    Caption = 'Fechar'
    AutoSize = False
    UIStyle = Protein
    TabOrder = 3
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton2Click
    ResHandle = 0
  end
  object suiButton1: TsuiButton
    Left = 444
    Top = 121
    Width = 69
    Height = 27
    Caption = 'Emitir'
    AutoSize = False
    UIStyle = Protein
    TabOrder = 5
    Transparent = False
    ModalResult = 0
    FocusedRectMargin = 2
    Layout = blGlyphLeft
    Spacing = 4
    MouseContinuouslyDownInterval = 100
    OnClick = suiButton1Click
    ResHandle = 0
  end
  object Button3: TButton
    Left = 35
    Top = 91
    Width = 108
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Gravar Dados Z'
    TabOrder = 6
    Visible = False
    OnClick = Button3Click
  end
  object cbxModelo: TComboBox
    Left = 404
    Top = 87
    Width = 125
    Height = 21
    ItemHeight = 13
    TabOrder = 7
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
  object Edit6: TEdit
    Left = 112
    Top = 155
    Width = 121
    Height = 21
    TabOrder = 8
    Visible = False
  end
  object Edit5: TEdit
    Left = 112
    Top = 179
    Width = 121
    Height = 21
    TabOrder = 9
    Visible = False
    OnChange = Edit5Change
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
    Left = 393
    Top = 16
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
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 178
    Top = 80
  end
end

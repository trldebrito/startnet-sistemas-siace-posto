object ImprimirPedidos: TImprimirPedidos
  Left = 384
  Top = 111
  Width = 798
  Height = 617
  Caption = 'Impress'#227'o de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 1
    Top = 71
    Width = 744
    Height = 13
    Caption = 
      '________________________________________________________________' +
      '____________________________________________________________'
  end
  object RLReport1: TRLReport
    Left = -17
    Top = -20
    Width = 794
    Height = 528
    DataSource = DMC.DTS_Pedido_Itens
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 139.700000000000000000
    PreviewOptions.ShowModal = True
    PreviewOptions.Caption = 'Venda de Produtos'
    PreviewOptions.Defaults = pdIgnoreDefaults
    ShowTracks = False
    ExpressionParser = RLExpressionParser1
    Transparent = False
    BeforePrint = RLReport1BeforePrint
    OnPageStarting = RLReport1PageStarting
    object RLBand1: TRLBand
      Left = 30
      Top = 19
      Width = 745
      Height = 174
      BandType = btTitle
      Transparent = False
      object Label5: TLabel
        Left = 1
        Top = 166
        Width = 744
        Height = 13
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------------'
      end
      object Label2: TLabel
        Left = 1
        Top = 144
        Width = 744
        Height = 13
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------------'
      end
      object Label8: TLabel
        Left = 1
        Top = 76
        Width = 744
        Height = 13
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------------'
      end
      object Label1: TLabel
        Left = 0
        Top = 13
        Width = 744
        Height = 13
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------------'
      end
      object Label3: TLabel
        Left = 1
        Top = 51
        Width = 744
        Height = 13
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------------'
      end
      object RLLabel1: TRLLabel
        Left = 288
        Top = 2
        Width = 196
        Height = 17
        Caption = 'COMPROVANTE DE VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 65
        Top = 24
        Width = 137
        Height = 18
        DataField = 'NOME_FANTASIA'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 552
        Top = 24
        Width = 72
        Height = 16
        DataField = 'TELEFONE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 24
        Width = 60
        Height = 16
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 0
        Top = 66
        Width = 38
        Height = 14
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 57
        Top = 66
        Width = 43
        Height = 14
        DataField = 'CODIGO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 120
        Top = 66
        Width = 78
        Height = 14
        Caption = 'Data da Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 198
        Top = 67
        Width = 74
        Height = 14
        DataField = 'DATA_PEDIDO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 551
        Top = 67
        Width = 54
        Height = 14
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 359
        Top = 66
        Width = 93
        Height = 14
        Caption = 'Data para Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 460
        Top = 66
        Width = 86
        Height = 14
        DataField = 'DATA_ENTREGA'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 614
        Top = 67
        Width = 49
        Height = 14
        DataField = 'USUARIO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 156
        Width = 36
        Height = 14
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 90
        Top = 156
        Width = 107
        Height = 14
        AutoSize = False
        Caption = 'Descricao do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 435
        Top = 156
        Width = 26
        Height = 14
        AutoSize = False
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 552
        Top = 156
        Width = 41
        Height = 14
        AutoSize = False
        Caption = 'Vlr Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel18: TRLLabel
        Left = 354
        Top = 156
        Width = 47
        Height = 14
        AutoSize = False
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel19: TRLLabel
        Left = 619
        Top = 156
        Width = 34
        Height = 14
        AutoSize = False
        Caption = 'Desc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel20: TRLLabel
        Left = 692
        Top = 156
        Width = 46
        Height = 14
        AutoSize = False
        Caption = 'Vlr Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel24: TRLLabel
        Left = 0
        Top = 88
        Width = 38
        Height = 14
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText21: TRLDBText
        Left = 112
        Top = 88
        Width = 78
        Height = 14
        DataField = 'NOME_CLIENTE'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText22: TRLDBText
        Left = 13
        Top = 88
        Width = 89
        Height = 14
        Alignment = taRightJustify
        DataField = 'CODIGO_CLIENTE'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel25: TRLLabel
        Left = 104
        Top = 88
        Width = 6
        Height = 13
        Caption = '-'
        Transparent = False
      end
      object RLLabel26: TRLLabel
        Left = 0
        Top = 104
        Width = 47
        Height = 14
        Caption = 'Cpf/Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText23: TRLDBText
        Left = 408
        Top = 88
        Width = 46
        Height = 14
        DataField = 'APELIDO'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel27: TRLLabel
        Left = 0
        Top = 120
        Width = 52
        Height = 14
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText24: TRLDBText
        Left = 72
        Top = 120
        Width = 57
        Height = 14
        DataField = 'ENDERECO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText25: TRLDBText
        Left = 72
        Top = 104
        Width = 53
        Height = 14
        DataField = 'CPF_CNPJ'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel28: TRLLabel
        Left = 408
        Top = 104
        Width = 30
        Height = 14
        Caption = 'Rg/IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText26: TRLDBText
        Left = 456
        Top = 104
        Width = 32
        Height = 14
        DataField = 'RG_IE'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel29: TRLLabel
        Left = 408
        Top = 120
        Width = 35
        Height = 14
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText27: TRLDBText
        Left = 456
        Top = 120
        Width = 42
        Height = 14
        DataField = 'BAIRRO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel30: TRLLabel
        Left = 0
        Top = 136
        Width = 39
        Height = 14
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText28: TRLDBText
        Left = 72
        Top = 136
        Width = 40
        Height = 14
        DataField = 'CIDADE'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rlbl1: TRLLabel
        Left = 475
        Top = 156
        Width = 26
        Height = 14
        AutoSize = False
        Caption = 'Und.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel48: TRLLabel
        Left = 280
        Top = 66
        Width = 29
        Height = 14
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText29: TRLDBText
        Left = 312
        Top = 67
        Width = 33
        Height = 14
        DataField = 'HORA'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 40
        Width = 34
        Height = 16
        Caption = 'Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 66
        Top = 41
        Width = 37
        Height = 16
        DataField = 'CNPJ'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 241
        Top = 41
        Width = 31
        Height = 16
        Caption = 'End:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 280
        Top = 41
        Width = 77
        Height = 16
        DataField = 'ENDERECO'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 553
        Top = 42
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 718
        Top = 41
        Width = 21
        Height = 16
        DataField = 'UF'
        DataSource = DM.DTS_Empresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 705
        Top = 41
        Width = 8
        Height = 16
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 30
      Top = 193
      Width = 745
      Height = 16
      AutoSize = True
      Transparent = False
      object RLDBText11: TRLDBText
        Left = 0
        Top = 2
        Width = 65
        Height = 14
        AutoSize = False
        DataField = 'CODIGO_PRODUTO'
        DataSource = DMC.DTS_Pedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText12: TRLDBText
        Left = 88
        Top = 2
        Width = 262
        Height = 12
        AutoSize = False
        DataField = 'DESCRICAO_PRODUTO'
        DataSource = DMC.DTS_Pedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText13: TRLDBText
        Left = 424
        Top = 2
        Width = 37
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QUANTIDADE'
        DataSource = DMC.DTS_Pedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText14: TRLDBText
        Left = 512
        Top = 2
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_UNITARIO'
        DataSource = DMC.DTS_Pedido_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 352
        Top = 2
        Width = 69
        Height = 14
        AutoSize = False
        DataField = 'NOME_MARCA'
        DataSource = DMC.DTS_Pedido_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText16: TRLDBText
        Left = 593
        Top = 2
        Width = 59
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DESCONTO'
        DataSource = DMC.DTS_Pedido_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText17: TRLDBText
        Left = 653
        Top = 2
        Width = 84
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_TOTAL'
        DataSource = DMC.DTS_Pedido_Itens
        DisplayMask = '#.###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rldbtxtQUANTIDADE: TRLDBText
        Left = 466
        Top = 2
        Width = 43
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'UNIDADE'
        DataSource = DMC.DTS_Pedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 30
      Top = 209
      Width = 745
      Height = 56
      BandType = btSummary
      Transparent = False
      object Label6: TLabel
        Left = 1
        Top = 47
        Width = 744
        Height = 13
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------------'
        Transparent = False
      end
      object Label9: TLabel
        Left = 1
        Top = -5
        Width = 744
        Height = 13
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------------------------------------------'
      end
      object RLDBText18: TRLDBText
        Left = 648
        Top = 4
        Width = 89
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_ITENS'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText20: TRLDBText
        Left = 657
        Top = 39
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_TOTAL'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 528
        Top = 4
        Width = 105
        Height = 14
        Caption = 'Valor Total dos Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel23: TRLLabel
        Left = 529
        Top = 39
        Width = 105
        Height = 14
        Caption = 'Valor total da Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel37: TRLLabel
        Left = 0
        Top = 39
        Width = 81
        Height = 14
        Caption = 'Forma de Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel42: TRLLabel
        Left = 123
        Top = 39
        Width = 31
        Height = 14
        Caption = 'Parc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel43: TRLLabel
        Left = 393
        Top = 39
        Width = 32
        Height = 14
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 234
        Top = 39
        Width = 71
        Height = 14
        Caption = 'Pagto/Vencto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel32: TRLLabel
        Left = 58
        Top = 21
        Width = 111
        Height = 14
        Caption = 'Acrescimo/Financeiro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object RLDBText31: TRLDBText
        Left = 171
        Top = 20
        Width = 102
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ENC_FINANCEIRO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object RLLabel45: TRLLabel
        Left = 289
        Top = 6
        Width = 64
        Height = 14
        Caption = 'Quant. Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel46: TRLLabel
        Left = 0
        Top = 3
        Width = 120
        Height = 14
        Caption = 'Total de Itens na Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult1: TRLDBResult
        Left = 54
        Top = 3
        Width = 184
        Height = 14
        Alignment = taCenter
        DataFormula = 'count(CODIGO_PRODUTO)'
        DataSource = DMC.DTS_Pedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 314
        Top = 5
        Width = 147
        Height = 14
        Alignment = taRightJustify
        DataFormula = 'sum(QUANTIDADE)'
        DataSource = DMC.DTS_Pedido_Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel47: TRLLabel
        Left = 576
        Top = 21
        Width = 58
        Height = 14
        Caption = 'Descontos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBText39: TRLDBText
        Left = 635
        Top = 22
        Width = 102
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DESCONTO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 265
      Width = 745
      Height = 36
      DataSource = DMC.DTS_COND_PAGTO
      FooterMeasuring = fmBeforeDetail
      Positioning = btSummary
      Transparent = False
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 745
        Height = 17
        Background.Align = faNone
        Transparent = False
        object RLDBText19: TRLDBText
          Left = 385
          Top = 2
          Width = 40
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR'
          DataSource = DMC.DTS_COND_PAGTO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText36: TRLDBText
          Left = 202
          Top = 2
          Width = 103
          Height = 14
          Alignment = taRightJustify
          DataField = 'DATA_VENCIMENTO'
          DataSource = DMC.DTS_COND_PAGTO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText37: TRLDBText
          Left = 103
          Top = 2
          Width = 51
          Height = 14
          Alignment = taRightJustify
          DataField = 'PARCELA'
          DataSource = DMC.DTS_COND_PAGTO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText38: TRLDBText
          Left = 0
          Top = 3
          Width = 67
          Height = 14
          DataField = 'TIPO_PAGTO'
          DataSource = DMC.DTS_COND_PAGTO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 17
        Width = 745
        Height = 16
        Background.Align = faNone
        Background.AutoSize = False
        BandType = btFooter
        Transparent = False
        object Label11: TLabel
          Left = 1
          Top = -6
          Width = 744
          Height = 13
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '--------------------------------------------------------'
          Transparent = False
        end
        object RLLabel22: TRLLabel
          Left = 119
          Top = 3
          Width = 125
          Height = 14
          Caption = 'Total Parcelado/Recebido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBResult4: TRLDBResult
          Left = 307
          Top = 2
          Width = 118
          Height = 14
          Alignment = taRightJustify
          DataFormula = 'sum(VALOR)'
          DataSource = DMC.DTS_COND_PAGTO
          DisplayMask = 'R$: ##,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 30
      Top = 301
      Width = 745
      Height = 65
      DataSource = DMC.DTS_Pedido_Itens
      Positioning = btSummary
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 745
        Height = 59
        BandType = btFooter
        Transparent = False
        object Label7: TLabel
          Left = 497
          Top = 24
          Width = 228
          Height = 13
          Caption = '______________________________________'
        end
        object Label10: TLabel
          Left = 1
          Top = -6
          Width = 744
          Height = 13
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '--------------------------------------------------------'
          Transparent = False
        end
        object RLDBText30: TRLDBText
          Left = 0
          Top = 26
          Width = 82
          Height = 14
          DataField = 'OBSERVACOES'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel39: TRLLabel
          Left = 0
          Top = 10
          Width = 72
          Height = 14
          Caption = 'Observa'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel34: TRLLabel
          Left = 552
          Top = 38
          Width = 121
          Height = 13
          Caption = 'Assinatura do Comprador'
          Transparent = False
        end
        object RLLabel31: TRLLabel
          Left = 328
          Top = 44
          Width = 80
          Height = 14
          Caption = 'SIACE Sistemas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 182
          Top = 3
          Width = 62
          Height = 14
          Caption = 'Em Dinheiro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          Visible = False
        end
        object RLDBText33: TRLDBText
          Left = 248
          Top = 3
          Width = 57
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          Visible = False
        end
        object RLLabel6: TRLLabel
          Left = 315
          Top = 3
          Width = 34
          Height = 14
          Caption = 'Troco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          Visible = False
        end
        object RLDBText32: TRLDBText
          Left = 352
          Top = 3
          Width = 73
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_TROCO'
          DataSource = DMC.DTS_Pedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          Visible = False
        end
      end
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 628
    Top = 3
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 656
    Top = 3
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 683
    Top = 6
  end
  object RLDraftFilter1: TRLDraftFilter
    LineDrawMethod = ldGraphicCharset
    FormSelection = fs80Cols
    DisplayName = 'Matricial'
    Left = 589
    Top = 1
  end
end

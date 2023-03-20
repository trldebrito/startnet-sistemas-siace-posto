object FormContratoVenda: TFormContratoVenda
  Left = 143
  Top = 69
  Width = 842
  Height = 545
  Caption = 'FormContratoVenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 816
    Height = 1056
    DataSource = DMC.Dts_Crediario_contrato
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 740
      Height = 155
      BandType = btHeader
      object RLLabel22: TRLLabel
        Left = 0
        Top = 12
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel20: TRLLabel
        Left = 0
        Top = 136
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel14: TRLLabel
        Left = 0
        Top = 100
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLLabel1: TRLLabel
        Left = 240
        Top = 8
        Width = 218
        Height = 16
        Caption = 'CONTRATO DE COMPRA E VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 30
        Width = 38
        Height = 14
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 128
        Top = 30
        Width = 54
        Height = 14
        DataField = 'NOME_RS'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 66
        Top = 30
        Width = 45
        Height = 14
        Alignment = taRightJustify
        DataField = 'CODIGO'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 115
        Top = 30
        Width = 7
        Height = 14
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 50
        Width = 47
        Height = 14
        Caption = 'Cpf/Cnpj:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 74
        Top = 50
        Width = 53
        Height = 14
        DataField = 'CPF_CNPJ'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 0
        Top = 72
        Width = 52
        Height = 14
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 72
        Top = 72
        Width = 57
        Height = 14
        DataField = 'ENDERECO'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 328
        Top = 72
        Width = 42
        Height = 16
        Caption = 'Bairro:'
      end
      object RLLabel7: TRLLabel
        Left = 488
        Top = 72
        Width = 39
        Height = 14
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 632
        Top = 72
        Width = 19
        Height = 14
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 376
        Top = 72
        Width = 42
        Height = 14
        DataField = 'BAIRRO'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 536
        Top = 72
        Width = 40
        Height = 14
        DataField = 'CIDADE'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 664
        Top = 72
        Width = 16
        Height = 14
        DataField = 'UF'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 328
        Top = 48
        Width = 32
        Height = 14
        Caption = 'IE/RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 377
        Top = 48
        Width = 32
        Height = 14
        DataField = 'RG_IE'
        DataSource = DMC.DTS_Cliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 456
        Top = 29
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
      end
      object RLLabel10: TRLLabel
        Left = 624
        Top = 8
        Width = 22
        Height = 16
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 655
        Top = 8
        Width = 56
        Height = 16
        Alignment = taRightJustify
        DataField = 'CODIGO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 96
        Width = 60
        Height = 14
        Caption = 'Vlr Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 74
        Top = 96
        Width = 84
        Height = 14
        Alignment = taCenter
        DataField = 'VALOR_TOTAL'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 208
        Top = 99
        Width = 71
        Height = 14
        Caption = 'Parcelamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 528
        Top = 99
        Width = 63
        Height = 14
        Caption = 'Data Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 288
        Top = 98
        Width = 68
        Height = 14
        DataField = 'PAGAMENTO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 599
        Top = 99
        Width = 74
        Height = 14
        Alignment = taCenter
        DataField = 'DATA_PEDIDO'
        DataSource = DMC.DTS_Pedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 0
        Top = 117
        Width = 88
        Height = 16
        Caption = 'Parcelamento:'
      end
      object RLLabel16: TRLLabel
        Left = 0
        Top = 136
        Width = 31
        Height = 14
        Caption = 'Parc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 75
        Top = 136
        Width = 32
        Height = 14
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 120
        Top = 136
        Width = 63
        Height = 14
        Caption = 'Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 643
        Top = 136
        Width = 47
        Height = 14
        Caption = 'Vlr Pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 200
        Top = 136
        Width = 48
        Height = 14
        Caption = 'Hist'#243'rico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 193
      Width = 740
      Height = 16
      object RLLabel29: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        Caption = 
          '________________________________________________________________' +
          '______________________________________'
      end
      object RLDBText14: TRLDBText
        Left = -1
        Top = 0
        Width = 51
        Height = 14
        DataField = 'PARCELA'
        DataSource = DMC.Dts_Crediario_contrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 79
        Top = 0
        Width = 103
        Height = 14
        Alignment = taRightJustify
        DataField = 'DATA_VENCIMENTO'
        DataSource = DMC.Dts_Crediario_contrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 615
        Top = 0
        Width = 76
        Height = 14
        Alignment = taCenter
        DataField = 'VALOR_PAGO'
        DataSource = DMC.Dts_Crediario_contrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 28
        Top = 0
        Width = 80
        Height = 14
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = DMC.Dts_Crediario_contrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 200
        Top = 0
        Width = 57
        Height = 14
        DataField = 'HISTORICO'
        DataSource = DMC.Dts_Crediario_contrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 209
      Width = 740
      Height = 16
      BandType = btSummary
      object RLDBMemo1: TRLDBMemo
        Left = 8
        Top = 0
        Width = 705
        Height = 14
        Behavior = [beSiteExpander]
        DataField = 'OBSERVACAO'
        DataSource = DM.DTS_Contrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 225
      Width = 740
      Height = 160
      BandType = btFooter
      object RLLabel36: TRLLabel
        Left = 85
        Top = 72
        Width = 67
        Height = 16
        Caption = 'Comprador'
      end
      object RLLabel30: TRLLabel
        Left = 5
        Top = 56
        Width = 235
        Height = 16
        Caption = '_________________________________'
      end
      object RLLabel33: TRLLabel
        Left = 245
        Top = 56
        Width = 221
        Height = 16
        Caption = '_______________________________'
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
      object RLLabel32: TRLLabel
        Left = 317
        Top = 72
        Width = 89
        Height = 16
        Caption = 'Avalista/Fiador'
      end
      object RLDBText26: TRLDBText
        Left = 504
        Top = 24
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = DM.DTS_Empresa
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 592
        Top = 24
        Width = 105
        Height = 16
      end
      object RLLabel35: TRLLabel
        Left = 480
        Top = 56
        Width = 228
        Height = 16
        Caption = '________________________________'
        Color = clWhite
        ParentColor = False
      end
      object RLLabel34: TRLLabel
        Left = 568
        Top = 72
        Width = 59
        Height = 16
        Caption = 'Vendedor'
        Color = clWhite
        ParentColor = False
      end
      object RLLabel41: TRLLabel
        Left = 479
        Top = 120
        Width = 228
        Height = 16
        Caption = '________________________________'
      end
      object RLLabel40: TRLLabel
        Left = 557
        Top = 136
        Width = 75
        Height = 16
        Caption = 'Testemunha'
      end
      object RLLabel38: TRLLabel
        Left = 325
        Top = 136
        Width = 75
        Height = 16
        Caption = 'Testemunha'
      end
      object RLLabel39: TRLLabel
        Left = 245
        Top = 120
        Width = 221
        Height = 16
        Caption = '_______________________________'
      end
      object RLLabel37: TRLLabel
        Left = 5
        Top = 120
        Width = 235
        Height = 16
        Caption = '_________________________________'
      end
      object RLLabel31: TRLLabel
        Left = 85
        Top = 136
        Width = 64
        Height = 16
        Caption = 'Financeira'
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Matricial'
    Left = 574
    Top = 5
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 598
    Top = 5
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 622
    Top = 5
  end
end

object FormRelValeTroco: TFormRelValeTroco
  Left = 166
  Top = 109
  Width = 842
  Height = 537
  Caption = 'FormRelValeTroco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 4
    Top = 2
    Width = 794
    Height = 528
    DataSource = DM1.DtsConsValeTroco
    DefaultFilter = RLDraftFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 139.700000000000000000
    PreviewOptions.FormStyle = fsStayOnTop
    Transparent = False
    OnPageStarting = RLReport1PageStarting
    object RLSubDetail1: TRLSubDetail
      Left = 19
      Top = 19
      Width = 756
      Height = 482
      DataSource = DM1.DtsConsValeTroco
      object RLBand5: TRLBand
        Left = 0
        Top = 114
        Width = 756
        Height = 118
        AutoExpand = False
        object rlbl2: TRLLabel
          Left = 3
          Top = 80
          Width = 147
          Height = 16
          Caption = 'Valor por extenso Saldo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel19: TRLLabel
          Left = 512
          Top = 0
          Width = 152
          Height = 16
          Caption = 'Saldo a Receber / Utilizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel18: TRLLabel
          Left = 306
          Top = 0
          Width = 64
          Height = 16
          Caption = 'Valor Vale'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel17: TRLLabel
          Left = 416
          Top = 0
          Width = 88
          Height = 16
          Caption = 'Valor Utilizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel16: TRLLabel
          Left = 171
          Top = 0
          Width = 68
          Height = 16
          Caption = 'Valor Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel15: TRLLabel
          Left = 32
          Top = 0
          Width = 75
          Height = 16
          Caption = 'Valor Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object rldbtxt1: TRLDBText
          Left = 156
          Top = 78
          Width = 54
          Height = 18
          DataSource = DMC.Dts_Crediario_contrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 258
          Top = 26
          Width = 114
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_VALETROCO'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBText18: TRLDBText
          Left = 162
          Top = 26
          Width = 73
          Height = 14
          Alignment = taRightJustify
          DataField = 'TOTAL_PAGO'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText14: TRLDBText
          Left = 27
          Top = 26
          Width = 79
          Height = 14
          Alignment = taRightJustify
          DataField = 'TOTAL_VENDA'
          DataSource = DM1.DtsConsValeTroco
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
          Left = 405
          Top = 26
          Width = 99
          Height = 14
          Alignment = taRightJustify
          DataField = 'VALOR_UTILIZADO'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText16: TRLDBText
          Left = 583
          Top = 26
          Width = 83
          Height = 14
          DataField = 'SALDO_ATUAL'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 232
        Width = 756
        Height = 249
        AutoExpand = False
        Transparent = False
        object RLLabel26: TRLLabel
          Left = 43
          Top = 3
          Width = 48
          Height = 16
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText22: TRLDBText
          Left = 115
          Top = 3
          Width = 46
          Height = 16
          DataField = 'COD_CLIENTE'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel27: TRLLabel
          Left = 154
          Top = 3
          Width = 8
          Height = 16
          Caption = '-'
          Transparent = False
        end
        object RLDBText21: TRLDBText
          Left = 160
          Top = 3
          Width = 68
          Height = 16
          DataField = 'NOME_RS'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel28: TRLLabel
          Left = 43
          Top = 22
          Width = 57
          Height = 16
          Caption = 'Cpf/Cnpj:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText25: TRLDBText
          Left = 115
          Top = 22
          Width = 70
          Height = 16
          DataField = 'CPF_CNPJ'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel29: TRLLabel
          Left = 43
          Top = 42
          Width = 63
          Height = 16
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText24: TRLDBText
          Left = 115
          Top = 42
          Width = 77
          Height = 16
          DataField = 'ENDERECO'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel30: TRLLabel
          Left = 43
          Top = 64
          Width = 48
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText28: TRLDBText
          Left = 115
          Top = 64
          Width = 52
          Height = 16
          DataField = 'CIDADE'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText23: TRLDBText
          Left = 451
          Top = 3
          Width = 60
          Height = 16
          DataField = 'APELIDO'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel31: TRLLabel
          Left = 451
          Top = 22
          Width = 40
          Height = 16
          Caption = 'Rg/IE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText26: TRLDBText
          Left = 499
          Top = 22
          Width = 42
          Height = 16
          DataField = 'RG_IE'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel32: TRLLabel
          Left = 451
          Top = 42
          Width = 42
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText27: TRLDBText
          Left = 499
          Top = 42
          Width = 53
          Height = 16
          DataField = 'BAIRRO'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel33: TRLLabel
          Left = 451
          Top = 64
          Width = 25
          Height = 16
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText29: TRLDBText
          Left = 499
          Top = 64
          Width = 21
          Height = 16
          DataField = 'UF'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel35: TRLLabel
          Left = 43
          Top = 118
          Width = 432
          Height = 16
          Caption = 
            'Reconhe'#231'o(emos) a exatid'#227'o deste VALE TROCO, na importancia acim' +
            'a.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel38: TRLLabel
          Left = 3
          Top = 190
          Width = 32
          Height = 16
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel39: TRLLabel
          Left = 43
          Top = 190
          Width = 325
          Height = 16
          Caption = 'OBRIGADO PELA PREFER'#202'NCIA - VOLTE SEMPRE.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel43: TRLLabel
          Left = 579
          Top = 230
          Width = 70
          Height = 16
          Caption = 'Assinatura '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel44: TRLLabel
          Left = 494
          Top = 213
          Width = 228
          Height = 16
          Caption = '________________________________'
          Transparent = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 756
        Height = 114
        AutoExpand = False
        Transparent = False
        object RLLabel1: TRLLabel
          Left = 267
          Top = 4
          Width = 139
          Height = 19
          Caption = 'VALE TROCO   N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 257
          Top = 24
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
        object RLDBText1: TRLDBText
          Left = 67
          Top = 24
          Width = 114
          Height = 16
          Alignment = taCenter
          DataField = 'NOME_FANTASIA'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 330
          Top = 26
          Width = 37
          Height = 16
          DataField = 'CNPJ'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 72
          Top = 46
          Width = 102
          Height = 16
          Alignment = taCenter
          DataField = 'RAZAO_SOCIAL'
          DataSource = DM.DTS_Empresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 88
          Top = 69
          Width = 72
          Height = 16
          Alignment = taCenter
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
        object RLLabel5: TRLLabel
          Left = 257
          Top = 41
          Width = 63
          Height = 16
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 330
          Top = 42
          Width = 77
          Height = 16
          DataField = 'ENDERECO'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText6: TRLDBText
          Left = 331
          Top = 59
          Width = 52
          Height = 16
          DataField = 'CIDADE'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText7: TRLDBText
          Left = 617
          Top = 58
          Width = 21
          Height = 16
          DataField = 'UF'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 257
          Top = 57
          Width = 48
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 544
          Top = 24
          Width = 28
          Height = 16
          Caption = 'I.E.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 544
          Top = 40
          Width = 42
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 544
          Top = 56
          Width = 25
          Height = 16
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText8: TRLDBText
          Left = 617
          Top = 42
          Width = 53
          Height = 16
          DataField = 'BAIRRO'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText9: TRLDBText
          Left = 617
          Top = 26
          Width = 16
          Height = 16
          DataField = 'IE'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 257
          Top = 73
          Width = 59
          Height = 16
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel11: TRLLabel
          Left = 544
          Top = 72
          Width = 63
          Height = 16
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLLabel12: TRLLabel
          Left = 640
          Top = 58
          Width = 31
          Height = 16
          Caption = 'Cep:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
        end
        object RLDBText10: TRLDBText
          Left = 676
          Top = 58
          Width = 31
          Height = 16
          DataField = 'CEP'
          DataSource = DM.DTS_Empresa
          Transparent = False
        end
        object RLDBText12: TRLDBText
          Left = 618
          Top = 75
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
        object RLDBText11: TRLDBText
          Left = 331
          Top = 73
          Width = 94
          Height = 16
          DataField = 'DATA_PEDIDO'
          DataSource = DMC.DTS_Pedidos
        end
        object RLDBText13: TRLDBText
          Left = 421
          Top = 4
          Width = 68
          Height = 19
          DataField = 'CODIGO'
          DataSource = DM1.DtsConsValeTroco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Commands.Strings = (
      'CR=13'
      'LF=10'
      'BS=8'
      'FF=12'
      'Reset=27,'#39'@'#39',27,'#39'x0'#39
      'MicroOn=27,'#39'A'#39',#'
      'MicroOff=27,'#39'2'#39
      'Space=32'
      'CPP10=27,'#39'P'#39',18'
      'CPP12=27,'#39'M'#39',18'
      'CPP17=27,'#39'P'#39',15'
      'CPP20=27,'#39'M'#39',15'
      'ExpandOn=27,'#39'W'#39',1'
      'ExpandOff=27,'#39'W'#39',0'
      'BoldOn=27,'#39'G'#39
      'BoldOff=27,'#39'H'#39
      'ItalicOn=27,'#39'4'#39
      'ItalicOff=27,'#39'5'#39
      'UnderlineOn=27,'#39'-1'#39
      'UnderlineOff=27,'#39'-0'#39
      'RAW=27,'#39'L'#39',#l,#h')
    PrinterFamily = fmCustom
    DisplayName = 'Matricial'
    Left = 584
    Top = 8
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 624
    Top = 8
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport (Open Source) v3.69B \251 Copyright '#169' 1999-2009 For' +
      'tes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 659
    Top = 3
  end
end

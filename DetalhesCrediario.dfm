object FormDetCrediario: TFormDetCrediario
  Left = 424
  Top = 205
  BorderStyle = bsDialog
  Caption = 'Detalhes da Parcela do Credi'#225'rio'
  ClientHeight = 149
  ClientWidth = 531
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 149
    Align = alClient
    BevelInner = bvRaised
    Color = 15263976
    Enabled = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 527
      Height = 145
      Align = alClient
      BevelOuter = bvNone
      Color = 15263976
      Enabled = False
      TabOrder = 0
      object Label16: TLabel
        Left = 5
        Top = 50
        Width = 98
        Height = 13
        Caption = 'Valor da Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 186
        Top = 50
        Width = 161
        Height = 13
        Caption = 'Valor de Juros/ Enc. Finan.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 5
        Top = 95
        Width = 82
        Height = 13
        Caption = 'Valor a Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 186
        Top = 95
        Width = 67
        Height = 13
        Caption = 'Valor Pago:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 366
        Top = 95
        Width = 111
        Height = 13
        Caption = 'Valor Total a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 366
        Top = 50
        Width = 152
        Height = 13
        Caption = 'Valor de Desc/Devolu'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 5
        Top = 5
        Width = 92
        Height = 13
        Caption = 'Data da Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 129
        Top = 5
        Width = 87
        Height = 13
        Caption = 'Data do Vecto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 410
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 2
        Top = 47
        Width = 519
        Height = 86
      end
      object Label1: TLabel
        Left = 243
        Top = 5
        Width = 48
        Height = 13
        Caption = 'Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 304
        Top = 5
        Width = 87
        Height = 13
        Caption = 'Data do Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object suiDBEdit1: TsuiDBEdit
        Left = 5
        Top = 20
        Width = 100
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'DATA_COMPRA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit2: TsuiDBEdit
        Left = 129
        Top = 20
        Width = 100
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'DATA_VENCIMENTO'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit4: TsuiDBEdit
        Left = 410
        Top = 20
        Width = 106
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'USUARIO_VENDA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit5: TsuiDBEdit
        Left = 5
        Top = 65
        Width = 150
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_COMPRA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit6: TsuiDBEdit
        Left = 186
        Top = 65
        Width = 150
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_JUROS'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit7: TsuiDBEdit
        Left = 366
        Top = 65
        Width = 150
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_DESCONTO'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit8: TsuiDBEdit
        Left = 5
        Top = 110
        Width = 150
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_PAGAR'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit9: TsuiDBEdit
        Left = 186
        Top = 110
        Width = 150
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_PAGO'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit10: TsuiDBEdit
        Left = 366
        Top = 110
        Width = 150
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'VALOR_TOTAL'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit3: TsuiDBEdit
        Left = 243
        Top = 20
        Width = 46
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'PARCELA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
      object suiDBEdit11: TsuiDBEdit
        Left = 304
        Top = 20
        Width = 90
        Height = 19
        BorderStyle = bsNone
        Color = 15263976
        DataField = 'DATA_BAIXA'
        DataSource = DMB.DTS_Crediario_Baixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        UIStyle = DeepBlue
        BorderColor = clBlack
      end
    end
  end
end

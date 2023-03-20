object FormConsValetroco: TFormConsValetroco
  Left = 262
  Top = 274
  Width = 702
  Height = 319
  Caption = 'Consulta Vale Troco'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 686
    Height = 237
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object XDBGrid1: TXDBGrid
      Left = 4
      Top = 4
      Width = 678
      Height = 229
      Align = alClient
      DataSource = DM1.dts_vale_troco
      EditorColor = clInfoText
      FillerColor = 16776176
      FixedStyle = fsMild
      FixedTheme = ftButtons
      FocusRect = frMild
      GridStyle.VisualStyle = vsXPStyle
      HeaderColor = clMaroon
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
      TabOrder = 0
      OnDblClick = XDBGrid1DblClick
      OnDrawColumnCell = XDBGrid1DrawColumnCell
      OnKeyPress = XDBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'N'#186' Vale'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 58
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUPOM'
          Title.Caption = 'Cupom'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 56
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 222
        end
        item
          Expanded = False
          FieldName = 'VALOR_VALETROCO'
          Title.Caption = 'Valor Vale'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 70
        end
        item
          Expanded = False
          FieldName = 'VALOR_UTILIZADO'
          Title.Caption = 'Valor Utilizado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 87
        end
        item
          Expanded = False
          FieldName = 'SALDO_ATUAL'
          Title.Caption = 'Saldo Vale'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
          Width = 78
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 15263976
    TabOrder = 1
    object RxLabel1: TRxLabel
      Left = 138
      Top = 0
      Width = 104
      Height = 13
      Caption = 'Entre com o Filtro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clWindow
    end
    object Edit1: TEdit
      Left = 136
      Top = 13
      Width = 537
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 16
      Width = 65
      Height = 17
      Caption = 'N'#186' Vale'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 80
      Top = 16
      Width = 55
      Height = 17
      Caption = 'Cliente'
      TabOrder = 2
    end
  end
end

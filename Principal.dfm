object FormPrincipal: TFormPrincipal
  Left = 185
  Top = 2
  Width = 1024
  Height = 728
  Caption = 'Siace - Monitor de Bombas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 35
    Width = 7
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label2: TLabel
    Left = 18
    Top = 43
    Width = 7
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label3: TLabel
    Left = 26
    Top = 51
    Width = 7
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 650
    Width = 1008
    Height = 19
    Panels = <
      item
        Text = 'Empresa'
        Width = 250
      end
      item
        Text = 'Usu'#225'rio'
        Width = 150
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 650
    Align = alClient
    Caption = 'Panel11'
    TabOrder = 1
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 1006
      Height = 41
      Align = alTop
      Caption = 'Panel10'
      TabOrder = 0
      object Shape1: TShape
        Left = 1
        Top = -17
        Width = 1004
        Height = 57
        Align = alBottom
        Brush.Color = clBlack
      end
      object myLabel3d1: TmyLabel3d
        Left = 235
        Top = -7
        Width = 538
        Height = 48
        Caption = 'Siace - Monitor de Bombas'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -40
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        AStyle3D = Resit3d
        AShadeLTSet = False
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 376
      Width = 1006
      Height = 273
      Align = alClient
      AutoSize = True
      Caption = 'Panel6'
      TabOrder = 1
      object Label14: TLabel
        Left = 1
        Top = 1
        Width = 1004
        Height = 17
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = '[ ABASTECIMENTOS PENDENTES ]'
        Color = clHotLight
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object XDBGrid1: TXDBGrid
        Left = 1
        Top = 18
        Width = 1004
        Height = 254
        Align = alClient
        DataSource = dts_abstecidas
        GridStyle.VisualStyle = vsXPStyle
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = XDBGrid1CellClick
        OnDblClick = XDBGrid1DblClick
        OnDrawColumnCell = XDBGrid1DrawColumnCell
        OnKeyDown = XDBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CHECK_BOX'
            Title.Alignment = taCenter
            Title.Caption = 'X'
            Visible = True
            Width = 28
          end
          item
            Expanded = False
            FieldName = 'REGISTRO'
            Title.Caption = 'Reg.'
            Visible = True
            Width = 84
          end
          item
            Expanded = False
            FieldName = 'ID_TANQUE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Tanque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_BICO'
            Title.Caption = 'Bico'
            Visible = True
            Width = 40
          end
          item
            Expanded = False
            FieldName = 'ID_BOMBA'
            Title.Caption = 'Bomba'
            Visible = True
            Width = 49
          end
          item
            Expanded = False
            FieldName = 'PRODUTOS_DESC'
            Title.Caption = 'Produto'
            Visible = True
            Width = 261
          end
          item
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Caption = 'Und'
            Visible = True
            Width = 41
          end
          item
            Expanded = False
            FieldName = 'ENC_LITROS'
            Title.Caption = 'Litros'
            Visible = True
            Width = 75
          end
          item
            Expanded = False
            FieldName = 'PRECO'
            Title.Caption = 'R$ Litro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENC_DINHEIRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'R$ Total'
            Visible = True
            Width = 104
          end
          item
            Expanded = False
            FieldName = 'DATAHORA'
            Title.Caption = 'Data e Hora'
            Visible = True
            Width = 129
          end>
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 42
      Width = 1006
      Height = 334
      Align = alTop
      AutoSize = True
      Caption = 'Panel7'
      TabOrder = 2
      object PageControl: TPageControl
        Left = 0
        Top = 1
        Width = 857
        Height = 332
        ActivePage = Abastecimentos
        TabOrder = 0
        object Abastecimentos: TTabSheet
          Caption = 'Abastecimentos'
          object GroupBox5: TGroupBox
            Left = 4
            Top = 1
            Width = 845
            Height = 296
            Color = clBtnFace
            ParentColor = False
            TabOrder = 0
            object Label6: TLabel
              Left = 8
              Top = 60
              Width = 50
              Height = 16
              Caption = 'Tempo :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 8
              Top = 35
              Width = 72
              Height = 16
              Caption = 'Canal/Bico :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 8
              Top = 86
              Width = 35
              Height = 16
              Caption = 'Data :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 8
              Top = 111
              Width = 36
              Height = 16
              Caption = 'Hora :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 8
              Top = 161
              Width = 57
              Height = 16
              Caption = 'Registro :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 8
              Top = 138
              Width = 71
              Height = 16
              Caption = 'Encerrante :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 8
              Top = 186
              Width = 40
              Height = 16
              Caption = 'String :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label4: TLabel
              Left = 350
              Top = 11
              Width = 87
              Height = 13
              Caption = 'BOMBAS/BICOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditTempo: TEdit
              Left = 100
              Top = 57
              Width = 90
              Height = 21
              ReadOnly = True
              TabOrder = 0
            end
            object EditCanal: TEdit
              Left = 100
              Top = 31
              Width = 90
              Height = 21
              Hint = 'L'#234' posi'#231#227'o especificada ao lado'
              ReadOnly = True
              TabOrder = 1
            end
            object EditData: TEdit
              Left = 100
              Top = 82
              Width = 90
              Height = 21
              ReadOnly = True
              TabOrder = 2
            end
            object EditHora: TEdit
              Left = 100
              Top = 108
              Width = 90
              Height = 21
              ReadOnly = True
              TabOrder = 3
            end
            object EditRegistro: TEdit
              Left = 100
              Top = 159
              Width = 90
              Height = 21
              ReadOnly = True
              TabOrder = 4
            end
            object EditEnc: TEdit
              Left = 100
              Top = 135
              Width = 90
              Height = 21
              ReadOnly = True
              TabOrder = 5
            end
            object EditString: TEdit
              Left = 56
              Top = 182
              Width = 234
              Height = 21
              ReadOnly = True
              TabOrder = 6
              Visible = False
            end
            object GroupBox1: TGroupBox
              Left = 16
              Top = 209
              Width = 185
              Height = 72
              Caption = ' Campos L'#243'gicos '
              TabOrder = 7
              Visible = False
              object Check: TCheckBox
                Left = 13
                Top = 19
                Width = 65
                Height = 17
                Caption = 'Check'
                TabOrder = 0
                Visible = False
              end
              object value: TCheckBox
                Left = 91
                Top = 19
                Width = 46
                Height = 17
                Caption = 'Value'
                TabOrder = 1
                Visible = False
              end
              object integridade: TCheckBox
                Left = 11
                Top = 43
                Width = 74
                Height = 17
                Caption = 'Integridade'
                TabOrder = 2
                Visible = False
              end
            end
            object Panel4: TPanel
              Left = 616
              Top = 8
              Width = 217
              Height = 281
              Color = clBlack
              TabOrder = 8
              object Label17: TLabel
                Left = 16
                Top = 24
                Width = 131
                Height = 13
                Caption = 'TOTAL A PAGAR (R$):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 16
                Top = 96
                Width = 50
                Height = 13
                Caption = 'LITROS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 16
                Top = 176
                Width = 150
                Height = 13
                Caption = 'PRE'#199'O POR LITRO (R$): '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelProduto: TLabel
                Left = 16
                Top = 8
                Width = 185
                Height = 13
                Alignment = taCenter
                AutoSize = False
                Caption = 'PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Panel2: TPanel
                Left = 16
                Top = 40
                Width = 185
                Height = 49
                BevelOuter = bvLowered
                BevelWidth = 4
                Color = clMoneyGreen
                Enabled = False
                TabOrder = 0
                object EditTotaisDin: TCurrencyEdit
                  Left = 5
                  Top = 4
                  Width = 175
                  Height = 41
                  AutoSize = False
                  BorderStyle = bsNone
                  Color = clMoneyGreen
                  DisplayFormat = ',###,##0.00;'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -43
                  Font.Name = 'LED.Font'
                  Font.Style = [fsBold]
                  MaxValue = 9999.990000000000000000
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object Panel3: TPanel
                Left = 16
                Top = 112
                Width = 185
                Height = 49
                BevelOuter = bvLowered
                BevelWidth = 4
                Color = clMoneyGreen
                Enabled = False
                TabOrder = 1
                object EditTotaisLT: TCurrencyEdit
                  Left = 5
                  Top = 4
                  Width = 175
                  Height = 41
                  AutoSize = False
                  BorderStyle = bsNone
                  Color = clMoneyGreen
                  DecimalPlaces = 3
                  DisplayFormat = ',###,##0.000;'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -43
                  Font.Name = 'LED.Font'
                  Font.Style = [fsBold]
                  MaxValue = 9999.999000000000000000
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object Panel5: TPanel
                Left = 16
                Top = 192
                Width = 185
                Height = 39
                BevelOuter = bvLowered
                BevelWidth = 4
                Color = clMoneyGreen
                Enabled = False
                TabOrder = 2
                object EditPPL: TCurrencyEdit
                  Left = 5
                  Top = 5
                  Width = 175
                  Height = 28
                  AutoSize = False
                  BorderStyle = bsNone
                  Color = clMoneyGreen
                  DecimalPlaces = 3
                  DisplayFormat = ',###,##0.000;'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -24
                  Font.Name = 'LED.Font'
                  Font.Style = [fsBold]
                  MaxValue = 9999.999000000000000000
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
            object EditBomba: TEdit
              Left = 204
              Top = 14
              Width = 90
              Height = 21
              Hint = 'L'#234' posi'#231#227'o especificada ao lado'
              ReadOnly = True
              TabOrder = 9
              Visible = False
            end
            object EditTanque: TEdit
              Left = 204
              Top = 38
              Width = 90
              Height = 21
              Hint = 'L'#234' posi'#231#227'o especificada ao lado'
              ReadOnly = True
              TabOrder = 10
              Visible = False
            end
            object EditProduto: TEdit
              Left = 204
              Top = 62
              Width = 90
              Height = 21
              Hint = 'L'#234' posi'#231#227'o especificada ao lado'
              ReadOnly = True
              TabOrder = 11
              Visible = False
            end
            object EditId_produto: TEdit
              Left = 204
              Top = 86
              Width = 90
              Height = 21
              Hint = 'L'#234' posi'#231#227'o especificada ao lado'
              ReadOnly = True
              TabOrder = 12
              Visible = False
            end
            object EditUnid: TEdit
              Left = 204
              Top = 110
              Width = 90
              Height = 21
              Hint = 'L'#234' posi'#231#227'o especificada ao lado'
              ReadOnly = True
              TabOrder = 13
              Visible = False
            end
            object grid_bico: TNextGrid
              Left = 200
              Top = 29
              Width = 393
              Height = 260
              AppearanceOptions = [aoHighlightSlideCells]
              HideScrollBar = False
              Options = [goGrid, goHeader, goSelectFullRow]
              TabOrder = 14
              TabStop = True
              object NxTextColumn13: TNxNumberColumn
                Alignment = taLeftJustify
                DefaultValue = '0'
                DefaultWidth = 28
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Tq.'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 0
                SortType = stNumeric
                Width = 28
                Increment = 1.000000000000000000
                Precision = 0
              end
              object NxTextColumn6: TNxNumberColumn
                Alignment = taLeftJustify
                DefaultValue = '0'
                DefaultWidth = 38
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Bomba'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 1
                SortType = stNumeric
                Width = 38
                Increment = 1.000000000000000000
                Precision = 0
              end
              object NxTextColumn7: TNxTextColumn
                DefaultWidth = 57
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Bico'
                ParentFont = False
                Position = 2
                SortType = stAlphabetic
                Width = 57
              end
              object NxTextColumn8: TNxTextColumn
                DefaultWidth = 123
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Status'
                ParentFont = False
                Position = 3
                SortType = stAlphabetic
                Width = 123
              end
              object NxNumberColumn19: TNxNumberColumn
                DefaultValue = '0'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Codigo'
                ParentFont = False
                Position = 4
                SortType = stNumeric
                Visible = False
                Increment = 1.000000000000000000
                Precision = 0
              end
              object NxNumberColumn26: TNxNumberColumn
                DefaultValue = '0'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'posicao'
                ParentFont = False
                Position = 5
                SortType = stNumeric
                Increment = 1.000000000000000000
                Precision = 0
              end
              object NxTextColumn17: TNxTextColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'bomba'
                ParentFont = False
                Position = 6
                SortType = stAlphabetic
                Visible = False
              end
              object NxTextColumn18: TNxTextColumn
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'bico'
                ParentFont = False
                Position = 7
                SortType = stAlphabetic
                Visible = False
              end
            end
            object Button4: TButton
              Left = 74
              Top = 227
              Width = 125
              Height = 25
              Caption = 'Envia Comando'
              TabOrder = 15
              Visible = False
              OnClick = Button9Click
            end
            object Button69: TButton
              Left = 82
              Top = 279
              Width = 125
              Height = 25
              Caption = 'Envia Comando2'
              TabOrder = 16
              Visible = False
              OnClick = Button69Click
            end
            object SpinEdit2: TNxSpinEdit
              Left = 100
              Top = 184
              Width = 90
              Height = 21
              TabOrder = 17
              Text = '0'
              Increment = 1.000000000000000000
            end
            object MostraBicos: TListView
              Left = 3
              Top = 8
              Width = 607
              Height = 284
              Align = alCustom
              BorderStyle = bsNone
              Color = clBtnFace
              Columns = <>
              IconOptions.Arrangement = iaLeft
              Items.Data = {
                9E0000000500000000000000FFFFFFFFFFFFFFFF000000000000000025303120
                2D204249434F203031202D204741534F4C494E4120434F4D554D20522420352C
                323500000000FFFFFFFFFFFFFFFF000000000000000002303200000000FFFFFF
                FFFFFFFFFF000000000000000002303300000000FFFFFFFFFFFFFFFF00000000
                0000000002303400000000FFFFFFFFFFFFFFFF0000000000000000023035}
              LargeImages = ImagensBicos
              ShowColumnHeaders = False
              TabOrder = 19
            end
            object Panel12: TPanel
              Left = 224
              Top = 144
              Width = 609
              Height = 89
              Caption = 'Panel12'
              TabOrder = 18
              Visible = False
              object pb: TsGauge
                Left = 24
                Top = 35
                Width = 537
                Height = 30
                SkinData.SkinSection = 'GAUGE'
                ForeColor = clBlack
                Progress = 0
                Suffix = '%'
              end
              object sLabel1: TsLabel
                Left = 256
                Top = 67
                Width = 69
                Height = 14
                Caption = 'Progresso....'
                ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
              end
              object Label5: TLabel
                Left = 24
                Top = 8
                Width = 264
                Height = 16
                Caption = 'Aguarde Gerando livro do dia Anterior'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbpreco: TLabel
                Left = 413
                Top = 70
                Width = 26
                Height = 13
                Caption = '0,00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Edit3: TEdit
                Left = 456
                Top = 64
                Width = 121
                Height = 21
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Status'
          ImageIndex = 2
          object ListBox2: TListBox
            Left = 0
            Top = 0
            Width = 673
            Height = 214
            Columns = 4
            ItemHeight = 13
            TabOrder = 0
          end
          object Button11: TButton
            Left = 474
            Top = 220
            Width = 180
            Height = 25
            Caption = 'LeStatus'
            TabOrder = 1
            OnClick = Button11Click
          end
          object Edit1: TEdit
            Left = 0
            Top = 250
            Width = 673
            Height = 21
            TabOrder = 2
          end
          object Button12: TButton
            Left = 474
            Top = 276
            Width = 180
            Height = 25
            Caption = 'LeStStatus'
            TabOrder = 3
            OnClick = Button12Click
          end
          object Button27: TButton
            Left = 156
            Top = 220
            Width = 180
            Height = 25
            Caption = 'LeStatusFid'
            TabOrder = 4
            OnClick = Button27Click
          end
          object Button34: TButton
            Left = 156
            Top = 276
            Width = 180
            Height = 25
            Caption = 'LeStStatus2'
            TabOrder = 5
            OnClick = Button34Click
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Comandos'
          ImageIndex = 4
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 673
            Height = 61
            Caption = 'ConsultaEncerrantes'
            TabOrder = 0
            object Label24: TLabel
              Left = 8
              Top = 16
              Width = 21
              Height = 13
              Caption = 'Bico'
            end
            object Label25: TLabel
              Left = 48
              Top = 16
              Width = 27
              Height = 13
              Caption = 'Tipo :'
            end
            object Label26: TLabel
              Left = 184
              Top = 16
              Width = 48
              Height = 13
              Caption = 'Resposta:'
            end
            object Edit13: TEdit
              Left = 8
              Top = 32
              Width = 37
              Height = 21
              MaxLength = 2
              TabOrder = 0
            end
            object ComboBox2: TComboBox
              Left = 48
              Top = 32
              Width = 120
              Height = 21
              ItemHeight = 13
              TabOrder = 1
              Text = 'L - Litros'
              Items.Strings = (
                'L - Litros'
                '$ - Dinheiro')
            end
            object Edit14: TEdit
              Left = 184
              Top = 32
              Width = 361
              Height = 21
              MaxLength = 2
              TabOrder = 2
            end
            object Button13: TButton
              Left = 560
              Top = 32
              Width = 97
              Height = 21
              Caption = 'Envia'
              TabOrder = 3
              OnClick = Button13Click
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 61
            Width = 673
            Height = 61
            Caption = 'AlteraPreco'
            TabOrder = 1
            object Label27: TLabel
              Left = 8
              Top = 16
              Width = 21
              Height = 13
              Caption = 'Bico'
            end
            object Label28: TLabel
              Left = 48
              Top = 16
              Width = 43
              Height = 13
              Caption = 'Decimais'
            end
            object Label29: TLabel
              Left = 184
              Top = 16
              Width = 48
              Height = 13
              Caption = 'Resposta:'
            end
            object Label30: TLabel
              Left = 96
              Top = 16
              Width = 28
              Height = 13
              Caption = 'Pre'#231'o'
            end
            object Edit15: TEdit
              Left = 8
              Top = 32
              Width = 37
              Height = 21
              MaxLength = 2
              TabOrder = 0
            end
            object Edit16: TEdit
              Left = 184
              Top = 32
              Width = 361
              Height = 21
              MaxLength = 2
              TabOrder = 1
            end
            object Button21: TButton
              Left = 560
              Top = 32
              Width = 97
              Height = 21
              Caption = 'Envia'
              TabOrder = 2
              OnClick = Button21Click
            end
            object Edit17: TEdit
              Left = 96
              Top = 32
              Width = 69
              Height = 21
              MaxLength = 4
              TabOrder = 3
            end
            object SpinEdit3: TSpinEdit
              Left = 48
              Top = 32
              Width = 45
              Height = 22
              MaxValue = 3
              MinValue = 2
              TabOrder = 4
              Value = 2
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 122
            Width = 673
            Height = 61
            Caption = 'Modo de opera'#231#227'o'
            TabOrder = 2
            object Label31: TLabel
              Left = 8
              Top = 16
              Width = 21
              Height = 13
              Caption = 'Bico'
            end
            object Label32: TLabel
              Left = 184
              Top = 16
              Width = 48
              Height = 13
              Caption = 'Resposta:'
            end
            object Label33: TLabel
              Left = 48
              Top = 16
              Width = 32
              Height = 13
              Caption = 'Op'#231#227'o'
            end
            object Edit18: TEdit
              Left = 8
              Top = 32
              Width = 37
              Height = 21
              MaxLength = 2
              TabOrder = 0
            end
            object Button22: TButton
              Left = 560
              Top = 32
              Width = 97
              Height = 21
              Caption = 'Envia'
              TabOrder = 1
              OnClick = Button22Click
            end
            object Edit19: TEdit
              Left = 184
              Top = 32
              Width = 361
              Height = 21
              MaxLength = 2
              TabOrder = 2
            end
            object ComboBox3: TComboBox
              Left = 48
              Top = 32
              Width = 120
              Height = 21
              ItemHeight = 13
              TabOrder = 3
              Text = 'Liberar'
              Items.Strings = (
                'Liberar'
                'Autorizar'
                'Bloquear')
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 183
            Width = 673
            Height = 61
            Caption = 'Leitura de eventos '
            TabOrder = 3
            object Label36: TLabel
              Left = 8
              Top = 16
              Width = 29
              Height = 13
              Caption = #205'ndice'
            end
            object Label37: TLabel
              Left = 52
              Top = 16
              Width = 48
              Height = 13
              Caption = 'Resposta:'
            end
            object Edit21: TEdit
              Left = 8
              Top = 32
              Width = 37
              Height = 21
              MaxLength = 2
              TabOrder = 0
            end
            object Button29: TButton
              Left = 560
              Top = 28
              Width = 97
              Height = 24
              Caption = 'Envia'
              TabOrder = 1
              OnClick = Button29Click
            end
            object Edit22: TEdit
              Left = 52
              Top = 32
              Width = 493
              Height = 21
              MaxLength = 2
              TabOrder = 2
            end
          end
          object GroupBox7: TGroupBox
            Left = 0
            Top = 244
            Width = 673
            Height = 59
            Caption = 'LePPL'
            TabOrder = 4
            object Label39: TLabel
              Left = 8
              Top = 15
              Width = 21
              Height = 13
              Caption = 'Bico'
            end
            object Label40: TLabel
              Left = 52
              Top = 15
              Width = 48
              Height = 13
              Caption = 'Resposta:'
            end
            object Edit24: TEdit
              Left = 8
              Top = 31
              Width = 37
              Height = 21
              MaxLength = 2
              TabOrder = 0
            end
            object Edit25: TEdit
              Left = 52
              Top = 31
              Width = 493
              Height = 21
              MaxLength = 2
              TabOrder = 1
            end
            object Button33: TButton
              Left = 560
              Top = 27
              Width = 97
              Height = 25
              Caption = 'Envia'
              TabOrder = 2
              OnClick = Button33Click
            end
          end
        end
      end
      object PageControl1: TPageControl
        Left = 858
        Top = 1
        Width = 154
        Height = 332
        ActivePage = TabSheet14
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Porta Serial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          object Label21: TLabel
            Left = 8
            Top = 12
            Width = 54
            Height = 16
            Caption = 'N'#250'mero :'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object SpinEdit1: TSpinEdit
            Left = 93
            Top = 8
            Width = 49
            Height = 22
            MaxValue = 99
            MinValue = 1
            TabOrder = 0
            Value = 1
          end
          object Button1: TButton
            Left = 3
            Top = 37
            Width = 139
            Height = 25
            Caption = 'Abre serial'
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 3
            Top = 65
            Width = 139
            Height = 25
            Caption = 'Fecha serial'
            TabOrder = 2
            OnClick = Button2Click
          end
          object Panel1: TPanel
            Left = 3
            Top = 96
            Width = 140
            Height = 101
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 3
            object RadioButton1: TRadioButton
              Left = 12
              Top = 14
              Width = 113
              Height = 17
              Caption = 'Porta Aberta'
              TabOrder = 0
            end
            object RadioButton2: TRadioButton
              Left = 12
              Top = 38
              Width = 113
              Height = 17
              Caption = 'Porta Fechada'
              TabOrder = 1
            end
            object Button3: TButton
              Left = 7
              Top = 68
              Width = 125
              Height = 25
              Caption = 'Consultar Serial'
              TabOrder = 2
              OnClick = Button3Click
            end
          end
          object Panel9: TPanel
            Left = 3
            Top = 204
            Width = 140
            Height = 65
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 4
            object RadioButton9: TRadioButton
              Left = 8
              Top = 10
              Width = 113
              Height = 17
              Caption = 'Comunicando'
              TabOrder = 0
            end
            object Button23: TButton
              Left = 7
              Top = 32
              Width = 125
              Height = 25
              Caption = 'Atualiza'
              TabOrder = 1
              OnClick = Button23Click
            end
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Rede'
          ImageIndex = 1
          object Label38: TLabel
            Left = 1
            Top = 5
            Width = 10
            Height = 13
            Caption = 'IP'
          end
          object sh_status_conexao: TShape
            Left = 6
            Top = 223
            Width = 20
            Height = 17
            Brush.Color = clGray
            Shape = stCircle
          end
          object lb_status_conexao: TLabel
            Left = 31
            Top = 225
            Width = 70
            Height = 13
            Caption = 'Desconectado'
          end
          object Edit23: TEdit
            Left = 2
            Top = 20
            Width = 141
            Height = 21
            TabOrder = 0
            Text = '192.168.0.91'
          end
          object Button30: TButton
            Left = 2
            Top = 45
            Width = 141
            Height = 25
            Caption = 'Conectar'
            TabOrder = 1
            OnClick = Button30Click
          end
          object Button31: TButton
            Left = 2
            Top = 74
            Width = 141
            Height = 25
            Caption = 'Desconectar'
            TabOrder = 2
            OnClick = Button31Click
          end
          object Panel8: TPanel
            Left = 3
            Top = 106
            Width = 140
            Height = 101
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 3
            object RadioButton6: TRadioButton
              Left = 12
              Top = 14
              Width = 113
              Height = 17
              Caption = 'Conectado'
              TabOrder = 0
            end
            object RadioButton7: TRadioButton
              Left = 12
              Top = 38
              Width = 113
              Height = 17
              Caption = 'Desconectado'
              TabOrder = 1
            end
            object Button32: TButton
              Left = 7
              Top = 68
              Width = 125
              Height = 25
              Caption = 'Consultar Rede'
              TabOrder = 2
              OnClick = Button32Click
            end
          end
          object Edit2: TEdit
            Left = 8
            Top = 280
            Width = 121
            Height = 21
            TabOrder = 4
            Text = 'Edit2'
            Visible = False
          end
          object Edit30: TEdit
            Left = 9
            Top = 257
            Width = 121
            Height = 21
            TabOrder = 5
            Text = '(&S)'
            Visible = False
          end
          object Button5: TButton
            Left = 48
            Top = 200
            Width = 75
            Height = 25
            Caption = 'Venda'
            TabOrder = 6
            Visible = False
            OnClick = Button5Click
          end
        end
      end
    end
  end
  object dts_abstecidas: TDataSource
    DataSet = cds_abastecidas
    Left = 85
    Top = 472
  end
  object Timer1: TTimer
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 574
    Top = 340
  end
  object RxTrayIcon1: TRxTrayIcon
    Hint = 'Monitor de Bombas Companytec'
    Icon.Data = {
      0000010001008080000001002000280801001600000028000000800000000001
      0000010020000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB49F0E5
      DAA0C0BBC1AFBDC1C5CFC2BBACFFA5896BFF5B3938FF252326FF1D2124FF1D21
      23FF1E2021FF1D1F20FF1C1E1FFF1D1E1FFF1D1F20FF1E2122FF1D2123FF1F21
      24FF36272BFF845D4CFFB7A68DFFC7C6C3FCB4B7BFACD5C5C5A1F9F5EE8CFEFE
      FE07000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF01FFFFFF0CFAFAFA38F2E7DAC5AAA5A7D49E9E9FF37E6E
      5CFF2F292CFF1F2324FF1B1E1EFF171A1BFF16191BFF161A1BFF171A1BFF171A
      1CFF171A1BFF161A1CFF161A1CFF161A1CFF161A1BFF171B1BFF171B1CFF171A
      1BFF16191BFF161A1BFF191B1CFF1E2122FF212426FF543D3BFF978F87FF9B9C
      A2DDD0BEBCD4FAF8F07CFFFFFF0AFFFFFF030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF06F4F4F431F4F2EF77D0BEB9FB827F84FE655C54FF262422FF171A1BFF1619
      1AFF171A1BFF1D1E1FFF1E2123FF2C2528FF573837FF7E624BFF907D65FF998D
      78FF9C9584FF9D988AFF9E998DFF9E998CFF9D9788FF9B9380FF96876FFF8A73
      58FF6D4D41FF3F2C2EFF222325FF1E2121FF1A1C1DFF16191AFF161A1BFF191B
      1DFF413735FF747473FF9F9893FEEFE6DBD8F3F3F341FEFEF51B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F1ED4BE1E0
      E0A6B8A5A1FF5A575AFF343130FF181A1BFF16191AFF1D1D1EFF2C2C2BFF3A35
      36FF825C4FFFB59E80FFC1B6A0FFCBBCA9FFDFC5AFFFEBD5B5FFF1DEBCFFF3E2
      BFFFF4E3C2FFF4E4C3FFF4E4C5FFF4E4C4FFF4E4C3FFF3E3C1FFF2E0BCFFEFDB
      B8FFE6CDB2FFD5BFACFFC4B9A7FFBDAF94FFA38267FF58423FFF303131FF2625
      24FF171A1BFF16191AFF21211FFF484746FF7D756EFFDCD4C6DFE1DFE169F9F9
      F92E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBF84FCBC7CB9DB6A69BFB4844
      42FF222324FF16191BFF181A1CFF342F2AFF4B4946FF936F62FFD4C09EFFDFD2
      B9FFEDDAC0FFF3E3C4FFF4E5C6FFF5E7CCFFF7EBD3FFF8EEDBFFF9F0E0FFF9F2
      E4FFFAF4E8FFFAF4EAFFFAF5ECFFFAF5EBFFFAF5EAFFFAF4E9FFF9F2E4FFF9F0
      E0FFF8EEDAFFF6EAD3FFF5E7CBFFF4E4C4FFF1E0C2FFE6D5BCFFDCCEB2FFBFA0
      80FF655451FF433F3AFF242021FF16191AFF191C1CFF303030FF716764FFC8C5
      C2DAF0E9DE8CFFFFFF0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF10E9E5DFBBA5A3A3F2464041FF1C1F1FFF1619
      1BFF1B1C1EFF4F4438FF796E66FFCAAE8DFFECDCBCFFF2E3C6FFF5E6C9FFF6E9
      CFFFF8EEDBFFF9F3E5FFFBF6EDFFFBF6EEFFF8F0E1FFF4E6CAFFE6D1C1FDD9BF
      BDFFD3B7BAFFD1B4B9FFD0B3B8FFD1B4BAFFD2B5BBFFD5B8BBFADEC7BEF4F1E0
      C3F0F6EDD9F4FBF8F1FFFCFAF6FFFBF7F0F9F9F2E5FDF7EDD8FFF6E8CEFFF4E5
      C9FFF0E1C4FFE4CDAAFFA48478FF675E55FF332728FF171A1BFF171A1BFF2628
      28FF8A7E6FFEC6B5B3CAF4F0ED47FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE13F8F6F279BBB8B4F664615CFF1A1D1EFF16191AFF1C1E1FFF5B42
      3EFF9C9080FFDBC4A2FFF4E3C3FFF5E7CBFFF6EAD1FFF9F0DFFFFAF4EAFFFAF5
      EEFFF5E8D0FFDFC3A7FFBD9497FFB48684FFAE7C66FFA06B4CFF8D5346FF8043
      43FF7C3E43FF7B3C42FF7A3B42FF7A3B42FF7B3D42FF7D3F43FF864B44FF9A64
      48FFAA785AFFB3837BFFB88D93FFCDA89EF6F0DEBEF7FAF6F1FEFBF8F5F2FAF5
      EBF5F8EFDEFFF6EAD2FFF5E6C9FFEEDABAFFBEA494FF857662FF2E2929FF181B
      1CFF161A1BFF3E312FFF928483FCE3D1CFB8F8F8F826FFFFFF02000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F22AE5E1DDD0727274FF30302FFF16191BFF1F2020FF443D38FFB09C82FFDEC7
      AFFFF3E2C1FFF5E7CCFFF8EDD9FFFAF2E5FFF6EEE6FFEFDFCCFFCCA689FFA36D
      71FF975C54FF844941FF75393EFF73353CFF72343DFF72343CFF72343CFF7235
      3CFF73353CFF73353CFF73353CFF73353CFF73353CFF72353CFF72343CFF7235
      3CFF73343DFF74343DFF73363DFF7A413EFF905749FF9E6669FFBA8C80FFECD8
      BCFFF4EDEBF9FAF6F0F0FAF5EBFFF8EDD9FFF5E6C9FFEEDBB9FFC7B8A1FF8565
      5CFF2E2B2BFF181B1CFF1E1D1EFF504A4BFFC1A8A2FEEBEBE96BFEFEFE160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3E7E06CBBB6
      B7E7443D3FFF1A1C1DFF181A1CFF3D3835FF937E6FFFDECEB2FFF3E2C1FFF5E6
      C9FFF8EEDBFFF9F2E4FFEFE2D8FFDCC0A7FFAA7466FF8A4A4DFF7A3D3DFF7135
      3CFF73343DFF74353DFF74353DFF75353DFF75353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF75353DFF74353DFF74353DFF72343CFF70343CFF73393BFF8446
      45FF965A5BFFCEA98CFFE8D8D5FAF7F1EAF3FBF7F0FFF8EEDCFFF5E6C8FFECD9
      BDFFCBB29AFF66544DFF282423FF161A1BFF262627FF90887BFFD1D1D1B4FEFE
      FA37000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF08E7E7E4B095857FF8302C
      2AFF161A1BFF242423FF6E6157FFD2BEA1FFF1E1C2FFF4E5C7FFF7EDD9FFF9F1
      E2FFE9D7C6FFCCA796FF9D6254FF7F3C41FF74353CFF73343DFF74343DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7334
      3DFF6E353BFF75373DFF884849FFBC917AFFDBC2BBEDFAF5EAEFFBF8F1FAF7ED
      D9FFF4E5C8FFEBD9BBFFAA8D7BFF4A3C3AFF191B1CFF191C1DFF4B4D4EFFCCBC
      B7E9F7F0F0440000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE13D9C2C2CA766E6BFF181B1DFF171A
      1BFF483E34FFA19381FFEFDDBAFFF4E5C7FFF6EAD1FFF9F2E4FFF3E4C8FFC29A
      8EFF995E50FF7C393FFF75343DFF77343DFF79353DFF79343DFF77343DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF74343DFF6F343CFF73343CFF864A45FFB58679FFE0C9BAF5FBF9
      F6EEF9F5EBF6F7EBD4FFF4E4C5FFD6B8A1FF786A60FF222021FF16191AFF3D2F
      2EFF9E9D9EF3F9F6F395FFFFFF05000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBF7F044D0D0CEF8464245FF1A1B1CFF1F2020FF6B4F
      4CFFD1BFA5FFF2E1C0FFF5E7CBFFF8EFDCFFF6EBDCFFD4B193FF9B615AFF7C3C
      3FFF77343DFF78343DFF79353DFF79353DFF79353DFF79353DFF79353DFF7834
      3DFF77343DFF76343DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF75353DFF72353CFF74353DFF894E4AFFB383
      7DFFF0E4DAFDFAF7F4EAF9F2E4FFF5E6CAFFE7D4B7FFAD997FFF312F2EFF181A
      1BFF27292AFF987F78FFE5DEE096FFFFFF060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECFE
      FE0E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0F00000000000000000000000000000000000000000000
      000000000000E9E5E93CC4B3A2EA45423CFF16191BFF292525FF887C6CFFE6D0
      B4FFF3E3C2FFF6EAD1FFF8EEDBFFE5CFBBFFAE7A66FF854243FF7B363EFF7935
      3DFF79353DFF79353DFF79353DFF79353DFF79353DFF79353DFF79353DFF7935
      3DFF79343DFF77343DFF75353DFF75353DFF75353DFF74353DFF74353DFF7335
      3DFF6F343CFF6F343CFF6F343CFF73343DFF74353DFF74353DFF72343CFF7334
      3DFF73343DFF73343DFF73343DFF73343DFF73343DFF73343DFF73343DFF7334
      3DFF73343DFF75343DFF76353DFF76353DFF76353DFF75353DFF73343DFF7338
      3CFF935652FFD4B5AAFFF7EFE6E7FAF7F0F9F6EAD2FFF1E1C0FFC5AC98FF5A46
      41FF191B1CFF1F1E1FFF66686DFFE8E6E4B4FEFEFE2100000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE0E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      379D1D1D1FC126282B707F85852A6D6D713827272A602B2D2F92131416A00707
      0AA808080AAD0D0F10A81F1F22992F3133712D2D2F602D2D2F602D2D2F602D2D
      2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D
      2F602D2D2F60262829B2191A1DC7333337812D2D2F602D2D2F602426295C3131
      349117171BA039393CE1171415FF090A0CFF0F0F10FF5F4641FFA39885FFA89D
      88FFAAA192FFAAA399FF9A8771FF673D3BFF57272BFF55252BFF55252BFF5525
      2BFF55252BFF54252BFF53252BFF53242BFF53242BFF53242BFF52242BFF5124
      2BFF51242BFF4F242AFF4C242AFF4B242AFF4A2429FF472429FF442328FF4423
      28FF412327FF412327FF412327FF442328FF452328FF452328FF472429FF4A24
      29FF4B242AFF4D242AFF4F242BFF4F242BFF4F242BFF4F242BFF4F242BFF4F24
      2BFF4F242BFF51242BFF51252BFF51252BFF51252BFF51252BFF51252BFF5124
      2BFF4D242AFF582D2EFF896D5EFFA49F9CF0AAA8A6F4AAA294FFA79B87FF9587
      72FF2F2C2BFF111214FF121416FF68635DFF918B89C92C2C2F612D2D2F602D2D
      2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602224
      26C51C1D20BD2222256E2D2D2F602D2D2F6027272A672B2B2E93131316A00707
      09A808080BAD0A0A0DA5202123973434376A9A9AA12600000000000000002828
      2BA406061FFF06061DFF010103FF000002FF050619FF0C0E3DFF111358FF1417
      66FF15176BFF131662FF0E1049FF05061AFF000002FF000002FF000004FF0506
      1DFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF05061CFF000003FF050519FF070823FF000002FF000002FF040516FF0B0D
      3AFF111356FF141666FF15176BFF131663FF0F114CFF06071FFF000002FF0000
      02FF000002FF000002FF010104FF05061DFF05061EFF05061EFF05061EFF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061DFF010105FF000002FF0202
      0AFF05061DFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF010108FF040415FF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF05061DFF040414FF05061EFF05061DFF040415FF05061EFF05061EFF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061DFF05061DFF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061DFF030413FF05061DFF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1DFF070822FF05061AFF000002FF000002FF05061BFF0C0E3FFF111358FF1417
      67FF14176BFF131561FF0E1047FF050518FF040407F92527299BA2A2B90B2828
      2BA411135AFF2C32E4FF252ABDFF282DCDFF2C32E5FF2B31DEFF262CC6FF2429
      B9FF2429B9FF272CC9FF2C32E4FF2C32E4FF2125A9FF060721FF000002FF0A0C
      35FF2126ABFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2025
      A6FF090B30FF000002FF0D0F45FF2C32E5FF252BC1FF272CC9FF2C32E4FF2B31
      E0FF272CC8FF2429BAFF2429B9FF262CC7FF2C32E3FF2C32E4FF2327B2FF0809
      2BFF1E1313FF32171BFF030103FF0B0D38FF2227AEFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2328B3FF0C0E3DFF010103FF0C090AFF0101
      04FF101251FF262BC3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF0A0B33FF040516FF191D81FF2B31DEFF2C32E5FF2C32E5FF2C32E5FF292E
      D2FF131661FF1C208DFF2C32E5FF2C32E5FF12155BFF1A1E86FF2B31E1FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF252ABEFF0E114AFF12155FFF2A30
      D8FF2C32E5FF2C32E5FF2C32E5FF292ED2FF131560FF010107FF0E1047FF2328
      B5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E4FF1F24A1FF090A
      2FFF131662FF2C32E4FF2429BBFF282ECFFF2C32E5FF2B31DDFF262BC6FF2429
      B9FF2429B9FF272DCAFF2C32E4FF2C32E3FF2024A4FF05061DFF2D2E31AA2828
      2BA411135AFF2C32E5FF252ABDFF141769FF08092AFF010105FF010105FF0304
      12FF060720FF0A0B32FF2024A3FF2C32E5FF2C32E5FF2227B1FF000002FF2F31
      33CA020205FD0F104AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0D0F41FF0404
      06FE1A1C1DAD2A2B2DAE0D0F45FF2C32E5FF262BC4FF16196FFF090A2FFF0101
      07FF010104FF030410FF06071FFF090B30FF1D2194FF2C32E5FF2C32E5FF262C
      C5FF000002FF703139FF662E35FF271417FF010103FF101250FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF121459FF000103FF120F0DFF2C251EFF332B22FF1E1B
      16FF020203FF010106FF181C7DFF2C32E5FF2C32E5FF2C32E5FF2A30DCFF0A0C
      36FF0A0C36FF0A0C36FF0A0C36FF0A0C36FF0D0F40FF1B1F8CFF2C32E3FF2C32
      E5FF0A0B33FF0C0B0CFF040405FF05061CFF262BC4FF2C32E5FF2126ABFF0303
      0FFF070824FF2B31E1FF2C32E5FF2C32E5FF2429BBFF000004FF070825FF292F
      D6FF2C32E5FF2C32E5FF2C32E5FF161971FF010105FF211013FF140A0CFF0506
      1CFF2429B8FF2C32E5FF2C32E4FF111355FF0B0C39FF0B0C39FF0B0C39FF0B0D
      39FF2328B2FF2C32E5FF2C32E5FF2C32E5FF262CC6FF0A0B32FF030305FB0A0B
      0DEE131662FF2C32E5FF2429B9FF141766FF080928FF010105FF010105FF0304
      12FF060721FF0A0B33FF2126AAFF2C32E5FF2C32E5FF2025A7FF060709F62828
      2BA50F114DFF16196DFF15186BFF1E239CFF252ABDFF292FD4FF2C32E3FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2126ABFF040507FCC6CF
      CF1B43434871050519FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF030410FF2626
      295C000000002F3133900C0E3EFF171A74FF141767FF1E2299FF2429BAFF292E
      D3FF2C32E2FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF252A
      BFFF000002FF34191DFF5E3237FF523132FF2E1F1DFF06071FFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF080929FF1A1915FF2A2A22FF292821FF161613FF0101
      03FF111210FF111210FF101252FF2C32E5FF2C32E5FF2C32E5FF2A30DCFF0B0D
      3AFF0B0D3AFF0B0D3AFF111458FF2328B2FF161970FF000002FF090B30FF2227
      B0FF0A0B33FF1A1618FF222221FF020204FF2226ADFF2C32E5FF1B1E8BFF0000
      02FF1E229AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0F124FFF000002FF272D
      CBFF2C32E5FF2C32E5FF2C32E5FF0D0F42FF3A1B1FFF73343CFF71353CFF361E
      1EFF050519FF272DCAFF2C32E5FF2C32E5FF282ECEFF272CC9FF272CC9FF2B31
      E1FF2C32E5FF2C32E5FF2C32E5FF292FD4FF070825FF1A1A1DC75A5A5A2D2325
      26B3101353FF15186AFF15186DFF1F239EFF252ABEFF292FD5FF2C32E3FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1F24A1FF060609F41D1D
      20DD101251FF2B31DEFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E3FF1F24A2FF05061BFF2A2C2FB20000
      000036363954050519FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF030410FF0808
      0C3F000000001B1C1EC20D0F41FF2A30DAFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E4FF2126ACFF0708
      24FF06061EFF06061DFF0D080AFF31241FFF271F1AFF06071FFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF080929FF191B17FF1F211CFF070808FF05061AFF0607
      21FF131513FF121412FF101252FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF161970FF050507FF010103FF0303
      0DFF010208FF635752FF6E615BFF050406FF2226ADFF2C32E5FF1B1E8BFF0A0B
      32FF2C32E4FF2C32E5FF2C32E5FF292ED2FF2C32E5FF252BC1FF010105FF272D
      CBFF2C32E5FF2C32E5FF2C32E5FF0D0F42FF421E23FF76353DFF74343DFF7537
      3CFF281514FF08092AFF2A2FD8FF2C32E5FF1C208FFF000002FF0F124FFF2C32
      E4FF2C32E5FF2C32E5FF2B31DDFF0B0C37FF141518D49D9D9D15FFFFFF061515
      17E5111459FF2B31E0FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E3FF1E239DFF040517FF313134A50505
      08FE2429B8FF2C32E5FF2C32E5FF2B31DEFF252ABEFF2126AAFF1E229BFF1B1F
      8CFF181B7BFF141665FF101252FF181B79FF0D0F44FF1A1A1CCB9494AA0C7878
      7F221D1D20AC050519FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF030410FF1A1B
      1DA687878E220B0B0DED2024A4FF2C32E5FF2C32E5FF2B31E0FF252BC1FF2126
      ACFF1E229CFF1B1F8EFF181B7DFF141767FF101251FF171A74FF101251FF0201
      03FF090A2CFF2A30D9FF13155FFF010104FF080708FF06071FFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF080929FF060708FF010103FF111459FF292FD6FF0A0C
      36FF111211FF09090AFF101252FF2C32E5FF2C32E5FF2C32E5FF2A30DAFF0505
      18FF050518FF050518FF0A0B32FF191C7FFF12155BFF000003FF111355FF272C
      C7FF000002FF918A7CFF928579FF050405FF2226ADFF2C32E5FF1B1E8BFF2126
      ABFF2C32E5FF2C32E5FF272DCCFF090A2CFF2B31E1FF2C32E5FF111356FF272D
      CBFF2C32E5FF2C32E5FF2C32E5FF0D0F42FF210F13FF682F36FF76353DFF7434
      3DFF6D333AFF180C0FFF0D0F41FF2B31E1FF2C32E5FF1A1E85FF2B30DCFF2C32
      E5FF2C32E5FF2C32E3FF0F114EFF0D0D0FE351515B1C000000006262620D0000
      02FF262BC2FF2C32E5FF2C32E5FF2B31DDFF252ABDFF2125A9FF1E229AFF1B1F
      8CFF181B7AFF131663FF101252FF181C7BFF0C0D3DFF18191CBCA9C6C6091A1B
      1DEA171A76FF2C32E5FF2C32E5FF141767FF060721FF05061BFF070824FF0C0D
      3CFF131664FF1E239DFF2A30DCFF2C32E5FF111358FF28282AB8232426910405
      07F3070825FF1E229AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1D2195FF0607
      22FF060608F4060609F8131661FF2C32E5FF2C32E5FF171B78FF070823FF0506
      1BFF070822FF0B0D39FF131560FF1D2197FF2A30D8FF2C32E5FF15186DFF0504
      06FF050619FF2C32E5FF2C32E5FF2226ADFF161971FF191C7FFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF1A1D84FF161971FF2125A8FF2C32E5FF2C32E5FF0708
      22FF000002FF0C0E3FFF2429B8FF2C32E5FF2C32E5FF2C32E5FF2B31DEFF1214
      5DFF12145DFF12145DFF12145DFF12145DFF12155EFF2327B2FF2C32E5FF2B31
      DEFF000002FF0D0C0DFF02030DFF16196FFF2A30DAFF2C32E5FF262CC6FF2C32
      E5FF2C32E5FF2C32E5FF12145AFF000002FF1C2090FF2C32E5FF262CC7FF282E
      D0FF2C32E5FF2C32E5FF2C32E5FF2227B1FF0B0C37FF030204FF32171BFF6A30
      37FF6A3038FF241115FF010106FF2025A4FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2227AFFF020209FF1F1F21DA5B606035FFFFFF02FEFEFE071112
      14F0191C7FFF2C32E5FF2C32E5FF13165FFF060721FF05061BFF070824FF0C0E
      3DFF141766FF1F23A0FF2B31DDFF2C32E5FF0F114EFF17191B8C00000000484B
      4D5F050508FC101251FF2125A8FF2A2FD6FF2C32E5FF2C32E5FF2C32E5FF2A30
      DAFF2429B9FF1A1E86FF191C7FFF2429B8FF111356FF000002FF000003FF1012
      4EFF1F24A1FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF1F24
      A0FF0F1149FF000003FF000002FF0E1046FF1F24A2FF292FD4FF2C32E5FF2C32
      E5FF2C32E5FF2B30DCFF252ABDFF1B1F8BFF181B7AFF2327B3FF141768FF0506
      08FF010107FF2024A4FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF0505
      17FF15186BFF2024A4FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF1F24
      A0FF000002FF080928FF1C2091FF2024A5FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF1D2195FF010106FF241417FF060721FF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A4FF141763FF020209FF0402
      04FF080406FF02030CFF181C7BFF2024A5FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF1A1E83FF030412FF060608FB292A2C8FA9A9B8124343
      486D030306FD111356FF2126AAFF2A30D8FF2C32E5FF2C32E5FF2C32E5FF2A30
      D9FF2428B7FF1A1D84FF191C81FF2429BAFF0F114CFF17191B8C000000000000
      0000535357431E1F22C1060609FA000002FF02030BFF030411FF02020BFF0000
      02FF010103FE121216E70C0D0FF4020204FE000002FF040406FB0A0A0CF60A0A
      0CF60A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A
      0CF60C0C0EF80F0E10FF020204FF020204FF000002FF000002FF02020AFF0304
      11FF02030CFF000003FF010002FF13090CFF180C0EFF000002FF000003FF0607
      09FF020204FF020204FF020204FF020204FF020204FF020204FF030305FF0303
      05FF030305FF030305FF030305FF020205FF020204FF020204FF020204FF0202
      04FF020204FF020204FF020204FF020204FF020204FF020204FF020204FF0202
      04FF020204FF020305FF030305FF030305FF030305FF0B0809FF121110FF1211
      10FF121111FF121111FF0D0D0EFF020204FF070607FF070607FF030305FF0303
      05FF010203FF010103FF181211FF4A2E2EFF0E080AFF080407FF090407FF0904
      07FF090407FF090407FF090407FF090407FF090407FF090407FF090407FF0904
      07FF090407FF090407FF090407FF090407FF0C0809FF111112FE101012FC1211
      11FF11100FFF070607FF020204FF040406FF101012FE0A0A0CF6202023DC5D60
      64474D50534C1D1D20C6060608FC000002FF02030CFF030411FF02020BFF0000
      02FF020204FE101012DE111214DD010104FE000002FF17191B8C000000000000
      000000000000FFFFFF02AFAFAF105A5A5E3E363639501D1D204E2D31344E585C
      604593939C1AFEFEFE09FFFFFF088B8B922137373A6046494C61E2FEFE09E2FE
      FE09E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FE
      FE09E8EAEC7D6A6B69FF171A1BFF3A3A38FF131212FF050506FFA29987FFA490
      80FF6C3D3EFF693236FF4B2428FF1A0D0FFF010003FF000002FF000002FF0607
      09FF171A1BFF171A1BFF171A1BFF171A1BFF181A1BFF1A1C1DFF212221FF1F21
      20FF1B1D1DFF191C1CFF1A1C1DFF1C1E1EFF212223FF242627FF26282AFF2428
      2AFF23272AFF24272AFF24272AFF24272AFF23272AFF23282AFF25282AFF2426
      27FF1F2121FF1B1D1DFF191C1DFF202221FF222321FF9A785DFFF1E0BFFFF3E2
      BFFFF3E3C1FFF3E3C3FFDBC8ACFF423C37FF41302DFF463533FF151616FF0707
      08FF000002FF000002FF040405FF1C1413FF442C2AFF5A3235FF6A343BFF7434
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF74343DFF814344FFD8BBABFFFBFAF7E3F8EF
      DCFFF1DEBDFF9C7969FF211E20FF202021FFBCA29EFEFAFAFA3AE2FEFE09DFDF
      DF0800000000FFFFFF03A5A5B4115A5A5E412D31314E1D1D214D3134374E5B5B
      5F438B969616FFFFFF06FFFFFF0689899025353538643D404353000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2EA
      EE3E8A8A91F41C1F21FF282826FFB7A88EFF1D1B19FF030411FF504A42FFA66F
      69FF7A3B3FFF241215FF03030FFF161971FF2328B5FF252AC0FF1B1E89FF0405
      17FF08090AFF171A1BFF131517FF121416FF111415FF111315FF121416FF1718
      1AFF1A1D1FFF211F22FF513833FF7D6F5DFF8B867EFF8F908FFF919496FF898C
      91ED84888EE5888C91ED929498FF919497FF919498FF919497FF919494FF8F8E
      8AFF888073FF665242FF1A1A1CFF151718FF191A19FF725946FFB3A68FFFB4A8
      8FFFB4A88FFFB4A88FFFD4C5A8FF5A5852FF1D1C1EFF130E11FF030411FF171A
      77FF2428B7FF252AC1FF1D2194FF090A2DFF080607FF3E2927FF573134FF5027
      2DFF56272EFF58282FFF58282FFF58282FFF58282FFF58282FFF58282FFF5828
      2FFF58282FFF58282FFF58282FFF58282FFF56272EFF6C3F40FFB2A9A3FFB4B3
      B1E5B6AD9AFFA79583FF3F2F30FF171A1BFF564C46FFEAE4D7CAFFFFFF060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE15D3C4
      C0D7362A2DFF1C1C1DFF8B725CFFEFDCBAFF1D1C19FF1A1D82FF02020AFF552B
      2EFF180C0EFF0A0B33FF272DCCFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF272D
      CAFF05061AFF0C0E0FFF0A0B0CFF000003FF020208FF020208FF020208FF0202
      08FF020208FF020208FF020208FF020208FF020208FF020208FF020208FF0202
      08FF020208FF020208FF020208FF020208FF020208FF010207FF010207FF0202
      08FF020208FF020208FF020208FF020208FF020208FF020208FF020208FF0202
      08FF010207FF000002FFB4A992FF5C5B56FF060709FF08092AFF272DCBFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2B31E0FF101253FF090608FF422C29FF0C07
      09FF010104FF020208FF020208FF020208FF020208FF020208FF020208FF0202
      08FF020208FF020208FF020208FF020208FF020208FF020208FF020208FF0202
      08FF020208FF010105FF22201FFF2F2F2EFF1A1C1DFF868788FFE9E9EC540000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F359837D
      71FF171A1BFF3F3534FFDABDA6FFF3E2C0FF1D1C1AFF2024A3FF171B78FF0000
      02FF0B0C37FF2A30DBFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2025A6FF010103FF4C4B47FE02020AFF2A2FD7FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E4FF292FD4FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2126ABFF1F24A2FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF1C208EFF1F1E1CFFEBD6B6FF423B34FF05061AFF282ECFFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31E0FF0A0B31FF171210FF2018
      15FF0A0C35FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D84FF3E3A33FF9F927AFF212121FF212325FFC1ADAFE7FEFE
      FE15000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F723A7AAAEF02326
      27FF1E2121FFA49887FFF3E3C2FFF4E3C3FF1E1C1BFF2024A3FF2B31E0FF0E10
      48FF292FD4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0B0D3AFF595959D50C0C0EE61B1F8CFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2227B1FF1A1D85FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF12155DFF0E1048FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF0B0D38FF57403CFF725E56FF040305FF2025A6FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2429B8FF010104FF2520
      1AFF010103FF262BC3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D84FF3F3B35FFEAD5B2FF614742FF171A1CFF685956FFF5F1
      E9A8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EADFD19361564AFF181B
      1CFF73624FFFEBD9B8FFF3E1BEFFF1DFBEFF1C1917FF2024A3FF2C32E5FF2C32
      E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1D2195FF0C0C0EEE343437A10B0D39FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF12155EFF0D0F42FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31E0FF040413FF010106FF282D
      CDFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF262B
      C4FF020204FF977062FF1A1517FF0E114AFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0E0F46FF1212
      10FF0B0B0BFF161970FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D84FF403E3BFFF4E4C6FFB7A391FF232425FF212324FF9C99
      9CD6F8F2F2280000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F92BA6A7A8F31F2020FF2D28
      28FFC4A693FFF3E2BFFFF3E1BEFFDABA9BFF130D0EFF2024A3FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2A30D9FF010107FF5B5B5F7E010104FE272CC7FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DEFF030411FF010209FF2A30
      DBFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2024A3FF020204FF060608FF171A
      77FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1619
      6FFF3F3B34FFCEBDA3FF030205FF242ABCFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1F23A0FF0303
      05FF181A16FF06061DFF2C32E3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D84FF3E3F40FCF8EFDEFFEFDEBEFF7F7061FF1A1B1DFF4D3A
      3DFFE5DDDCBEFFFFFF0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE9DFB23D3D3EFF191B1CFF7C70
      5FFFF2E1C0FFF3E2C0FFF0DBB3FFAC775FFF11090BFF2024A3FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E4FF282DCCFF292FD4FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF0A0B34FF6D6D6EBD373738FB171A74FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E229AFF040405FF040405FF1F23
      9EFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF101355FF0E0F0FFF161816FF0607
      1FFF2C32E3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E2FF0506
      1CFF938372FF70695CFF0C0E3FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DFFF0303
      0EFF1B1D19FF020204FF2125A9FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D84FF3B3A39F8FCFAF5DDF5E7CCFFD5B89DFF2F2B2AFF1C1E
      1FFFA3A3A0FFF7F7FF2000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F6F6F61DA19F9BE91F2121FF2F2829FFD3BE
      A0FFF3E2C0FFF3E2BFFFCCA58BFF8A4947FF10080BFF2024A3FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF1F239DFF060721FF000002FF000003FF111459FF2C32
      E4FF2C32E5FF2C32E5FF131561FF616160FD7A7670FF060722FF2C32E4FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0E1046FF111211FF0F100FFF1214
      5BFF2C32E5FF2C32E5FF2C32E5FF2B31DDFF03030EFF1B1E1AFF232721FF0202
      04FF2025A5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2025A6FF0202
      04FF554842FF121112FF1D2298FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E2FF2B31DEFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0D0F
      45FF131412FF0E100FFF111355FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D84FF3B3531FFFBF9F5F1F9F2E5FFF0E1C2FF867A69FF191B
      1CFF474440FFEEE3D2B900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1D0CD94574543FF191B1CFF857769FFEEDD
      BBFFF3E2BFFFECD5AFFFA46B5AFF854243FF10080BFF2024A3FF2C32E5FF2C32
      E5FF2C32E5FF1A1E86FF030205FF442124FF72383AFF663234FF060305FF2227
      B1FF2C32E5FF2C32E5FF191D83FF2D2D2EEAD6D3CCE308080AFF2227B0FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF282ED1FF010106FF22221CFF1B1C18FF0506
      19FF2C32E4FF2C32E5FF2C32E5FF1E229BFF040405FF252822FF252822FF0F11
      10FF0F114BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF101250FF0A0B
      0CFF121416FF02020CFF2B30DCFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31
      DEFF131560FF02020BFF000004FF0C0D3CFF262BC4FF2C32E5FF2C32E5FF171A
      76FF0B0C0CFF1C1E1AFF02020CFF2A30D9FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D84FF271719FFD7BCB9FAFBFAF5FEF6E8CEFFD5BBA2FF3B2C
      2DFF1F201FFF9D9795DBF2ECF22A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F2F828B3ABACF11E1E1FFF362C2BFFD2B29AFFF3E2
      C0FFF3E2C0FFCBA27FFF894746FF854243FF10090AFF2024A3FF2C32E5FF2C32
      E5FF2227AEFF020206FF5C2D30FF844042FF844042FF844042FF1E0F11FF1B1F
      8DFF2C32E5FF2C32E5FF1E239DFF0B0B0DE4FAFAFA3C2B2B2DC912145CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF191D82FF0C090AFF362C24FF2A2821FF0101
      03FF2429B8FF2C32E5FF2C32E5FF121560FF0E0F0EFF252822FF252822FF1C1F
      1BFF010208FF2C32E3FF2C32E5FF2C32E5FF2C32E5FF292FD5FF020209FF1416
      17FF0B0D0EFF0E1047FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1114
      58FF030406FF131516FF1A1C1BFF0C0D0DFF050518FF282DCDFF2C32E5FF1E23
      9DFF050506FF242722FF050506FF1C208FFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF0B0D38FF070825FF070825FF070825FF070825FF070825FF2227B1FF2C32
      E5FF2C32E5FF1A1D84FF1F0E12FFAE7C62FFF7F2EBF4F9F3E5FFF1E0C1FF8476
      69FF1A1C1CFF513D40FFDED2D485000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EEEEEE7959494CFF181B1CFF776959FFF2E1C0FFF3E2
      C0FFEDD7ADFF9D6259FF854344FF854244FF10090AFF2024A3FF2C32E5FF2B31
      E0FF070825FF3F1F22FF844043FF844043FF844042FF834042FF170C0EFF1C20
      92FF2C32E5FF2C32E5FF2227AFFF0C0D0EFBF9F9F92B36363962040515FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0C0D3BFF361C20FF503030FF3D2D26FF0F0C
      0BFF171B79FF2C32E5FF2C32E5FF171A78FF080909FF1A1C19FF1A1C19FF1314
      12FF06071EFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1B1F8DFF060607FF2325
      22FF070809FF191D82FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF252ABDFF0303
      05FF56463FFF221E20FF1A1C1DFF212321FF0A0B0BFF0F114CFF2C32E5FF2429
      BCFF010103FF222321FF111113FF0E104BFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF2B171BFF422126FF492127FF4A2127FF0F070AFF131662FF2C32
      E5FF2C32E5FF1A1D84FF1E0E12FF7E3D43FFE0C9BBFFFCFBF8DEF5E8CDFFD8BC
      9CFF2E2C2AFF1F2122FFB7AAADF1FFFFFF0C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BAADB0E2272728FF222323FFCBB698FFF3E2C0FFF3E2
      BFFFCBA387FF8A4947FF864344FF864344FF11090BFF2024A3FF2C32E5FF1A1E
      88FF0F080AFF804041FF844143FF6E3639FF422123FF140A0DFF030411FF272C
      C9FF2C32E5FF2C32E5FF2429BBFF030305FFB2B2B3F9A8A8A8A802030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF432025FF72343CFF5D3236FF2417
      17FF101251FF2C32E5FF2C32E5FF1F239FFF040412FF040412FF040412FF0404
      12FF0F114BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF131662FF0F100FFF2427
      22FF010203FF2328B5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF15186DFF443C
      2EFFD7B28AFF91755EFF252424FF191C1DFF1A1C1CFF010103FF252ABDFF292F
      D3FF000002FF252422FF484035FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF3A2424FF5E3237FF6D343BFF602B33FF000002FF050519FF2C32
      E3FF2C32E5FF1A1D84FF1F0E12FF74353CFFAC796CFFFAF7F2F9F9F2E4FFEFDF
      BFFF766654FF181A1CFF63595CFFFAF7F5690000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F5F5517E787AFC181B1CFF6B5B49FFEAD8B8FFF3E2BFFFEED9
      B3FFA9725DFF864445FF864344FF864344FF11090BFF2024A3FF2C32E3FF0608
      22FF4C2628FF542A2CFF190D0FFF000003FF0A0B32FF181C7EFF292ED2FF2C32
      E5FF2C32E5FF2C32E5FF252AC0FF000002FF2E3030FF695356FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF1A1517FF432B2CFF70343BFF4721
      27FF080A2BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0C0D3CFF151714FF1F22
      1DFF010105FF2B31DDFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0C34FF8E84
      72FFE7CA98FFDCBB89FFA58267FF423330FF191B1CFF08090BFF141665FF2C32
      E2FF000104FF332E2DFF72695BFF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF2C211CFF4B2F2EFF5D3237FF251216FF060720FF000002FF2227
      AFFF2C32E5FF1A1D84FF1F0E12FF75353DFF814445FFDCC3BEF3FCF9F4FFF5E6
      CAFFBCAC93FF202021FF2E292BFFC2ACB0C50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1BFC19D413133FF1E1E1EFFA49582FFF3E2BFFFF3E2C0FFD8B6
      96FF8C4B4AFF874445FF874445FF864445FF11090BFF2024A3FF2125A8FF0000
      02FF160C0EFF040413FF171A74FF272CC8FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF252AC0FF000002FF282122FF161718FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF222120FF1D1F1EFF292323FF3D24
      27FF020209FF2B31E2FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF040516FF1B1D19FF1A1C
      18FF060720FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E3FF02020CFFA49D
      95FFF1E0C1FFE4C492FFDBB682FFC19E72FF4D3F38FF161416FF060721FF2C32
      E5FF02020BFF674640FF7C7063FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF201F1AFF382C24FF3F2927FF010104FF1A1E86FF000002FF1316
      64FF2C32E5FF1A1D84FF1F0E12FF76353DFF75353DFFBB9085FFF9F7F3FDF8EE
      DCFFE9D5B2FF5F5244FF191B1CFF918787EDF5F1F13800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F8F126B7ADA3EB1A1C1EFF423B35FFE4CBA9FFF3E2C0FFF1E0BFFFB481
      68FF874545FF874445FF874445FF874445FF11090BFF2024A3FF111459FF0000
      02FF0F114CFF292FD4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2429BBFF020104FF6E373AFF362124FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF8C8176FF837F79FF38352EFF1A1B
      1DFF000002FF262BC3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF292ED3FF000002FF21241FFF1517
      14FF0C0E3DFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF282DCDFF000002FF2F2D
      2EFFB9B09EFFEFDAB5FFDFBD8AFFDAB47FFFC99E76FF725748FF000002FF282E
      D0FF03030FFF8A6F54FF817665FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF1D1E1AFF2B2A22FF15110FFF0E1046FF2226AFFF000002FF0506
      1BFF2C32E3FF1A1D84FF1F0E12FF76353DFF74343DFF88494BFFF0E3DDFFFBF7
      EFFFF4E5C6FF968374FF1C1D1DFF513E3CFFDBD1D38200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E740685F56FF181A1CFF7C615AFFF3E2C1FFF3E2C0FFE9CFA2FF9457
      51FF874544FF874544FF874445FF874445FF11090BFF2024A1FF040415FF1013
      53FF2C32E3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2227B0FF080406FF854243FF673235FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF2C2F3177F9F4EC60C5BFB5E57C77
      6FFF08080AFF1E239DFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2126ACFF030304FF252822FF1113
      11FF101254FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2328B7FF020204FF1A1C
      1DFF33302BFF968074FFE7D1ACFFDCB785FFD5AC7AFFD2AB7AFF0D0B0AFF2126
      ACFF03030DFF927C5EFF827866FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF1A1D19FF22241EFF010103FF2227B2FF2226AFFF040305FF0402
      04FF2227B1FF1A1D84FF1F0E12FF76353DFF76353DFF78383EFFCDAA9CFFFCFB
      F9FFF6EAD2FFDBC1A1FF322F2DFF202223FFD4CDC1F4EFEFEF10000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E2DCD9333435FF222223FFC6AD93FFF3E2C0FFF3E2BFFFC59C86FF8A49
      47FF874544FF874544FF874544FF874445FF11090BFF171A75FF05061BFF2A30
      DBFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF1F239FFF12090BFF844043FF693436FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF84827EEAEFEDE865FEFEFE17EDEA
      E3A52A2A2DE5171A78FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1A1E86FF090A0AFF252822FF0F10
      0FFF131664FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2025A6FF050506FF2325
      21FF1C1E1EFF212021FF7E7565FFE0C398FFD6AF7EFFD3AA79FF261F18FF1C20
      90FF010104FF8D7255FF817664FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF000002FF000002FF0C0D3BFF2C32E5FF2226AFFF060406FF1B10
      12FF141766FF1A1D84FF1F0E12FF76353DFF76353DFF74343DFFA26B67FFFBF7
      F0FFF9F1E3FFEEDDBEFF634A48FF181A1CFF757271FFF8F8FE29000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000928B8DEF1B1D1EFF3E3532FFDECDB2FFF3E2BFFFEFDAB4FFAC765FFF8846
      45FF874544FF874544FF874544FF874544FF11090BFF0C0E3DFF1A1E86FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF1A1E86FF201012FF844043FF683336FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF202224FF9A8D7BFFD4CFC9ADF8F4
      ED4B1F1F229C101252FF2C32E5FF2C32E5FF2A30DCFF282ECFFF282ECFFF292F
      D6FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF131560FF0F110FFF252922FF0D0E
      0DFF15186FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E229AFF070708FF2729
      22FF252622FF1D1F1FFF1F2020FF6E4E48FFCBAE89FFD6AE7CFF33291EFF1518
      6AFF000002FF6B4B44FF7D7163FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF252ABDFF2429B8FF2429B8FF282ED0FF2C32E5FF2226AFFF050405FF2C1F
      1CFF05061CFF1A1D83FF1F0E12FF76353DFF76353DFF75353DFF874A44FFE7D4
      C2FFFBF8F0FFF4E4C6FFAF9B82FF1A1C1EFF4B4949FFF3EBE7AA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF7
      F161767571FA181A1CFF897A64FFF1DFBBFFF3E2BFFFE0C3A5FF93544DFF8846
      45FF874545FF874544FF874544FF874544FF11090BFF050517FF2A30D9FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF141666FF32191BFF854243FF693436FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF151415FF1B1D1EFF4C443AFFA69E
      98E7827974DE090A2CFF2C32E5FF2C32E5FF1D2197FF000002FF000002FF1215
      5FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0B0D3AFF161715FF262822FF0D0D
      0DFF171A75FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C2093FF090909FF2E2A
      22FF2F2A22FF2D2922FF212120FF1A1C1CFF534C45FFCFB289FF382E23FF0B0D
      37FF030305FF353232FF736B5FFF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226AFFF040305FF342A
      22FF020203FF101352FF1C0E12FF72343CFF76353DFF76353DFF78363EFFC8A4
      9AFFFCF9F4FFF6EAD2FFCEBCA5FF312928FF2A2424FFBCA9A6D0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1CC
      C9A3423E39FF201D1FFFAC9789FFF3E2C0FFF3E2BFFFCEA67CFF894846FF8846
      45FF884645FF884645FF874545FF874544FF160C0DFF0E1048FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF0B0D3BFF492526FF854243FF693536FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF432225FF4D2C2FFF1E1F1FFF2020
      20FF4A403AFF02020AFF2C32E2FF2C32E5FF2429BAFF020103FF1C1A19FF1A1D
      84FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF040414FF201F1AFF2B2A22FF0E0E
      0DFF171A76FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C208FFF0D0A0AFF3F2D
      27FF402D28FF432E29FF422D2AFF262322FF181B1CFF716358FF2F2922FF0101
      05FF0A0B0DFF252424FF5A4640FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226AFFF030305FF2F2B
      22FF100E0CFF03030EFF180D10FF633339FF70343CFF75343DFF74343DFFA46F
      5FFFF7F1EBFFF9F1E1FFEDD8B7FF695A4DFF171A1BFF959695F5FEFEFA3F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0DB5B5
      B8C01C1E20FF403832FFE0C5A5FFF3E2C0FFF1DEBEFFAB7565FF884645FF8846
      45FF884645FF884646FF884645FF884646FF211113FF191D81FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2B31DFFF02030CFF673435FF854243FF693536FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF53292BFF823F42FF6E373AFF3627
      27FF1B1B1CFF000002FF262BC4FF2C32E5FF2A30DBFF000003FF040405FF2125
      A8FF2C32E5FF2C32E5FF2C32E5FF282ED0FF000002FF362922FF382C24FF1410
      0EFF161972FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C208FFF120B0DFF5731
      34FF5B3235FF5E3236FF613338FF5A3134FF232121FF252122FF140E0FFF0000
      02FF302121FF191B1CFF231B1CFF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226AFFF030305FF2E2A
      22FF1D1B16FF000002FF120C0DFF4D302FFF603338FF6D343BFF73343DFF8343
      47FFEDDFD8FFFBF7EEFFF4E4C4FF84796DFF181B1CFF6C5452FFE7D6D66B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF6F139AB9F
      93FF171A1BFF55504BFFF2E0BFFFF3E2C0FFEBD3A6FF965951FF884645FF8846
      45FF884646FF884746FF894847FF894847FF080406FF2226AEFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2125A8FF080406FF834243FF854344FF693536FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF52282BFF844043FF844143FF7F3D
      41FF593033FF070507FF1F239EFF2C32E5FF2C32E5FF05061CFF000002FF282D
      CEFF2C32E5FF2C32E5FF2C32E5FF2126AAFF080407FF563133FF4E3030FF1F13
      14FF141768FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C2093FF180B0EFF7735
      3DFF78353DFF7A363DFF7A363DFF7B363DFF5E3134FF1F1F1FFF040305FF0000
      02FF1A1615FF262524FF0D0E10FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226AFFF040305FF312B
      22FF151411FF000002FF0D0C0BFF3A2D25FF4B2F2EFF5D3236FF6A343BFF7939
      3EFFD8B897FFFCFAF7FFF6E9CEFFC9AB8DFF2A2624FF2B2A2CFFC4C4CA820000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDAE23F5549
      4CFF191B1CFF8E6F61FFF3E2C2FFF3E2C1FFD8B590FF8E4E49FF884645FF8947
      47FF894847FF8A4947FF8A4947FF7E4341FF000002FF282ED1FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF111357FF31191BFF864344FF864344FF6A3537FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF52282BFF844043FF844043FF8441
      43FF844143FF231114FF171B79FF2C32E5FF2C32E5FF0C0E3FFF030410FF2C32
      E4FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF1E0E11FF75353CFF6F343CFF3217
      1CFF11145AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1D2299FF160B0DFF803B
      3CFF803B3CFF803B3DFF803B3DFF803B3CFF7F3B3DFF492B2EFF010204FF0607
      1BFF3A332AFF82745CFF121213FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226AFFF050405FF382C
      24FF060606FF010208FF0B0B0BFF2C2A22FF382C24FF4A2F2DFF5C3236FF6B34
      3BFFA97575FFFCFAF8FFF7EDD9FFE7D4B1FF383735FF202223FFD6CFC5F9FFFF
      FF0C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF01EDEDEAAA383A
      3DFF212222FFCBB492FFF3E2C0FFF3E1BDFFBC8E7BFF8A4847FF884646FF8948
      47FF8A4947FF8A4947FF894947FF6F3B3AFF020209FF2C32E4FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF282ECFFF02020AFF462425FF874445FF864344FF6A3537FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF52292BFF844143FF844143FF8440
      43FF844143FF3D1F20FF101253FF2C32E5FF2C32E5FF131662FF0A0C35FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF12155EFF35191BFF7F3A3DFF7E393DFF431E
      21FF0E1047FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2024A3FF11080AFF7F3B
      3CFF7F393CFF7F393CFF7F3A3CFF7F3A3CFF7F3A3CFF6F3439FF000002FF0E11
      48FF3E3C38FFE6CFA8FF51473BFF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226AFFF050405FF3024
      1FFF010208FF0C0E3DFF0A0B0BFF272822FF2B2A22FF382C24FF4D302FFF6233
      38FF99605BFFF8F2E3FFF9F2E4FFEEDDBFFF594444FF181B1CFF91847AFFF7F7
      F724000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF01DFD1BBE42D2C
      29FF292829FFD8C9AEFFF3E2BFFFF0DCB3FFAE795FFF884746FF894847FF8A49
      47FF894847FF8A4947FF8A4947FF653635FF050619FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E3FF0E114AFF020209FF462425FF874445FF874445FF6A3637FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF532A2CFF864344FF854344FF8542
      43FF854243FF532A2BFF090A2EFF2C32E5FF2C32E5FF1A1D84FF11145AFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0B0C37FF4B2427FF813C41FF803C3FFF5126
      29FF090A2DFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2227B2FF090407FF7B36
      3DFF79353DFF77353DFF75343DFF74343CFF71343CFF622D34FF010105FF181B
      78FF3E3E3FFEF5EAD4FB7F725BFF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF141766FF111357FF111357FF1C2091FF2C32E5FF2226AFFF050405FF1C15
      13FF0D0F45FF0F114BFF0A0B0BFF252822FF272922FF2F2A22FF422E29FF5932
      35FF824B43FFE8D5C0FFFAF6ECFFF3E3C5FF9F8169FF181B1CFF56585DFFF0F7
      F723000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF03968A8BF31B1C
      1DFF583D3AFFE7D1B5FFF3E2BFFFE8D0AFFF9E6354FF884646FF894847FF8A49
      47FF8A4947FF8A4947FF8B4B48FF603432FF070824FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2A30DBFF1013
      53FF030411FF0D0F41FF462425FF874445FF874445FF6B3638FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF492327FF74373CFF73373CFF7437
      3CFF76393DFF5E2E32FF02020AFF2C32E3FF2C32E5FF2025A7FF191C7FFF2C32
      E5FF2C32E5FF2C32E5FF2C32E4FF030412FF623032FF834042FF823D41FF632F
      33FF03030EFF2C32E4FF2C32E5FF2C32E5FF2C32E5FF262BC5FF010002FF7633
      3CFF75343DFF6A343BFF613338FF5F3337FF573134FF331D20FF090B30FF1A1D
      85FF39373AFDFAF8F1E0847E70FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF140E0EFF171010FF02030EFF282ED0FF2226AFFF040305FF0806
      07FF1C2090FF0F114BFF0A0B0BFF252822FF272922FF2F2A22FF402E28FF5932
      34FF74393EFFCEAEACFFFBF8F1FFF5E7CAFFBCAF95FF1B1E1FFF4C4C4CFFF8F4
      EEA9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4FFFF18777A7EF3171A
      1BFF87735CFFF0DDBAFFF3E2BFFFDCBEA4FF8F504CFF894847FF8A4947FF8A49
      47FF8B4B48FF8C4B47FF8C4B47FF5E3331FF080928FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DDFF1C208FFF06071FFF0000
      02FF131663FF0E1049FF462425FF874445FF874545FF6B3737FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF151415FF211F21FF211F21FF211F
      20FF222021FF221F20FF000002FF262BC5FF2C32E5FF272CCAFF2024A4FF2C32
      E5FF2C32E5FF2C32E5FF282DCEFF000002FF572C31FF683438FF6C373AFF6434
      36FF000002FF272DCBFF2C32E5FF2C32E5FF2C32E5FF2B31DEFF000104FF682D
      35FF76343DFF6A343BFF5F3337FF5B3236FF4E3030FF160E0FFF161970FF1A1D
      85FF343538FEFCFCFBCC878582FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF2B211CFF392C24FF0E0B0BFF12155EFF2226AFFF000002FF0101
      07FF292FD5FF0F114BFF111110FF282922FF2B2A22FF352C23FF452E2BFF5D32
      37FF73353CFFC39C8CFFFBF7F1FFF6EAD2FFC7B7A3FF242023FF37312DFFDFCC
      BED3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF8F47E757370FF171A
      1BFF988F7EFFF3E2BFFFF3E2C0FFD2AD85FF8A4947FF894847FF8B4B47FF8C4B
      47FF8C4B47FF8C4B47FF8C4B47FF5E3331FF070926FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C31E2FF2024A3FF111356FF030310FF0A0608FF30191BFF0001
      04FF262BC2FF0E1049FF462425FF884645FF7E3E40FF4C292BFF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF504E4BFF84827CFF84827CFF807C
      73FF7C766CFF787062FF12100FFF1F23A0FF2C32E5FF2C32E4FF282ED0FF2C32
      E5FF2C32E5FF2C32E5FF2025A8FF030305FF1D1E1FFF1C1E1EFF1C1E1EFF1C1F
      1EFF030305FF1F239FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF060720FF5425
      2BFF7A353DFF72343CFF613338FF5D3336FF4B2D2EFF020103FF2429B8FF1A1D
      85FF353535FFFCFBF8FF888684FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF2A211BFF372C23FF2B231CFF010106FF1B1F8AFF000002FF0D0F
      42FF2C32E5FF0F114BFF191613FF322B22FF372C23FF412E29FF523032FF6433
      39FF73343DFFB38162FFF9F3E7FFF8EEDBFFE1C7ABFF4D3932FF1C1C1EFFA095
      9BD8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEE0CE8E5E5244FF1B1C
      1DFFA39487FFF3E2C0FFF3E1C0FFC89C6FFF894847FF8A4947FF8C4B47FF8C4B
      47FF8C4B47FF8C4B47FF8C4B48FF623634FF060721FF2C32E5FF2C32E5FF2C32
      E5FF2328B6FF070824FF060305FF2E1819FF5C3030FF844443FF30191BFF0E11
      4AFF2C32E5FF0E1049FF462425FF6B3539FF352527FF161718FF02030CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF82817ECBFBF8F2A8FBF8F2A7FAF6
      EDACFAF4E9AFF9F0E2B1333230E7181B7AFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF191D81FF303030FFAEAAA1FFA29682FF866B57FF553B
      3CFF121113FF15186CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0F114DFF1F14
      16FF422C2BFF4E2F2FFF633339FF653339FF321C1FFF080929FF2C32E4FF1A1D
      85FF322F2AFFF9F3E6FF878481FF0D0F45FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF2B211CFF3A2D25FF382C23FF14100EFF05061AFF000002FF1B1F
      8DFF2C32E5FF0F114BFF221817FF462E2BFF4C302FFF563133FF643339FF7034
      3CFF77343DFF935651FFF2E8E2FFF9F1E1FFEFDAB6FF6D5E4CFF16191BFF8E92
      96DCFFFFFF0A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B7AAAC8E2E2727FF2E24
      24FFC7A591FFF3E2C0FFF2E0BFFFB58369FF894847FF8B4A48FF8C4B47FF8C4B
      47FF8C4B47FF8C4C48FF8D4D49FF693B37FF040517FF2C32E5FF2C32E5FF2C32
      E4FF060720FF371D1EFF804241FF884645FF884645FF6C3838FF020105FF252A
      BDFF2C32E5FF0E1049FF221618FF211F20FF2A2A2BFF4F3D3FFF02030DFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B33FF2323257A00000000000000000000
      000000000000000000001B1B1E9D101354FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF12145BFF3A3A3BC0FAF8F677F9F3E980EFE1D581D4C5
      C785535357BA0A0B32FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1B1E89FF0405
      07FF181B1CFF1C1D1EFF292323FF2E2623FF080507FF1B1F8CFF2C32E5FF1A1D
      85FF2A201AFFEDDDCCFF807C76FF0D0F46FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF30221EFF422E29FF422E29FF3C2926FF020204FF010106FF292F
      D4FF2C32E5FF0F114BFF301A1DFF623338FF69333AFF72343CFF78353DFF7B35
      3DFF7B363DFF87454AFFEDDFDAFFFAF4E8FFF3E2C0FF777163FF16191AFF9796
      93FFFEF7F0240000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A9EA78E1A1D1FFF433A
      30FFE4C8A2FFF3E2C0FFF0DCB9FFA1685EFF894847FF8B4A48FF8C4B47FF8C4C
      48FF8E4E49FF8E4E49FF8E4E49FF733F3CFF010107FF2C32E3FF2C32E5FF282D
      CFFF000002FF7D4140FF884645FF884645FF834443FF180D0FFF131662FF2C32
      E5FF2C32E5FF0E1049FF0D0E10FF4D4948FFB6A8A9FF666566F40D0F44FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF15186AFF141417C67F7F7F02000000000000
      0000000000000000000023262872090A2FFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF0A0C35FF28282A7D0000000000000000000000000000
      000066666A3E010104FF282ED1FF2C32E5FF2C32E5FF2C32E5FF292ED3FF0202
      0AFF3D3E42FF54524FFF2D2725FF090A0CFF080929FF2B31E0FF2C32E5FF1A1D
      85FF180E10FFD0BDB8FF353332FF181B7BFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF432528FF5D3236FF5F3237FF623338FF251316FF0C0E40FF2C32
      E5FF2C32E5FF0F114BFF3E1B21FF7A353DFF7B353DFF7C363DFF7C363DFF7C36
      3DFF7C363DFF844042FFE8D4C1FFFBF6EDFFF4E4C5FF7E766DFF16191BFF897F
      6CFFF2E6D3290000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000999EA48F191D1EFF4D49
      41FFEFDBB5FFF3E2C0FFEDD7AFFF995D54FF8A4847FF8C4B48FF8C4C48FF8E4E
      49FF8E4E49FF8E4E49FF8E4E49FF804642FF000002FF292ED2FF2C32E5FF282D
      CFFF000002FF7D4140FF884645FF854544FF2E1819FF070826FF2A30DAFF2C32
      E5FF2C32E5FF0E1049FF3B3D40FFDFDDD7ECEBEBEB400B0B0DF11E2298FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF252ABEFF020305FEDEDDDBD3FCFBF7D4FCFA
      F6D4FCFAF5D4FCF8F4D4B2B0ADE203030FFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF040515FF1B1B1F520000000000000000000000000000
      0000FFFFFF05151518E91B1E89FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF161A
      72FF151517FE7C766EFF312623FF030411FF252ABDFF2C32E5FF2C32E5FF1A1D
      85FF09090BFF8C8A88FF010105FF282DCCFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF050619FF070406FF090507FF0A0507FF0A0507FF030204FF1B1F8BFF2C32
      E5FF2C32E5FF0F114BFF401D21FF7C363DFF7C363DFF7C363DFF7C363DFF7C36
      3DFF7C363DFF813D3FFFE0C59DFFFBF7EFFFF5E6C9FF987D74FF1A1B1CFF6C53
      44FFD7BAA92D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF05BCBDBDE7181B1CFF504F
      4AFFF2E1BFFFF3E2C1FFEAD0A0FF95574FFF8A4947FF8D4D49FF8E4E49FF8E4E
      49FF8E4F49FF90514AFF91524AFF8D4D49FF050305FF2328B4FF2C32E5FF2C32
      E4FF05061CFF381D1EFF522B2BFF1C0F11FF06071EFF262CC6FF2C32E5FF2C32
      E5FF2C32E5FF0E1049FF6F6E6BEAFEFEFE1642444764030411FF2B31DDFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF090B2FFF898783FFFAF4EAFFFAF3
      E7FFFAF2E5FFF9F0E0FF817C75FF0C0D3CFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF0D0F43FF767473F9FBFAF5E0FDFBF997FCFCF958FEFA
      FA36FEFEFE17292A2C950B0C37FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E3FF181B7AFF0A0C36FF101355FF262BC3FF2C32E5FF2C32E5FF2C32E5FF1A1D
      85FF08080AFF343333FF0C0E40FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2025A5FF1F239EFF1F239EFF1F239EFF1F239EFF1F239EFF2A2FD8FF2C32
      E5FF2C32E5FF0F114BFF411E20FF7E383CFF7D373DFF7C363DFF7C363DFF7C36
      3DFF7C363DFF7F3A3EFFD6B286FFFBF7F0FFF6E8CDFFBE9682FF242020FF3A29
      2AFFB29E9E320000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF05B6AE9EEE171A1BFF5250
      4DFFF2E2C1FFF3E3C1FFE7CA94FF93544CFF8B4A48FF8F5049FF8F5049FF9051
      4AFF91524AFF92534AFF92544AFF8D4D49FF1B0F10FF1B1F8DFF2C32E5FF2C32
      E5FF2226ADFF0A0B32FF070824FF131662FF292ED3FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0E1049FF4A4B4BAFFFFFFF0219191CBB12155DFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF191D83FF2D2C2CFFFAF4E8FFFAF3
      E7FFFAF2E5FFF9F0E0FF353432FF191C81FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF1B1E89FF2B2823FFF2DFB9FFF3E3C2FFF4E5C6FFF7EC
      D8FFF9F5EBFBDBD7D2EB030305FF252ABDFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1A1D
      85FF151213FF080709FF1D2195FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0F114BFF421F20FF803A3BFF7E393CFF7E383CFF7C363DFF7C36
      3DFF7C363DFF7D383DFFBB8E7DFFFBF8F2FFF6E9D0FFD6B690FF2E2925FF201F
      22FF999999350000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0CA38B70F7171A1BFF5A53
      50FFF3E2C2FFF3E3C1FFE1C28FFF91524BFF8D4C49FF92534AFF92534AFF9254
      4AFF92544AFF92544AFF93554BFF8D4D49FF371E1FFF12145BFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0E1049FF141618868A8A9123060608FC2227B1FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF292ED2FF010107FFCBC6C0FFFAF4
      E9FFFAF3E7FFE2DCD0FF020204FF262CC5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF282DCEFF010104FFD0BF9BFFEFD9ACFFEBD19EFFEAD0
      9CFFECD4A5FFEDD5A7FF4B4436FF111458FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E4FF2C32E5FF1A1D
      85FF080809FF03030FFF2A30DCFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0F114BFF421F20FF803B3BFF7F3A3BFF7F393CFF7E393CFF7D37
      3DFF7C363DFF7D373DFFAB7877FFFBF8F3FFF7EBD3FFE0C7A0FF34312CFF1A1E
      20FF959999350000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0C73504AF7171A1BFF6F57
      55FFF3E2C2FFF3E3C2FFDAB88FFF90514BFF8D4D49FF92534AFF92544AFF9254
      4AFF92544AFF93564CFF94574DFF8C4C48FF5B3031FF06061DFF2C32E4FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0E1049FF141618863234367F070823FF2C32E4FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0E1047FF6E6D6BFFFAF5
      EBFFFAF4E8FF98958FFF080927FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF877C67FFF1DCB3FFEFD9ABFFEFD7
      A7FFEFD8A9FFE9CD97FFB49B6EFF020207FF262BC3FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E239CFF2328B7FF1A1D
      85FF000002FF12145AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0F114BFF421F20FF803B3BFF803B3BFF803B3BFF7F3A3CFF7F39
      3CFF7E383DFF7C373DFFA46E73FFFBF7F0FFF7EBD4FFE6D0ABFF373632FF1A1E
      20FF979B9B360000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0E423539FB181A1CFF8C62
      5EFFF3E3C2FFF3E3C1FFD4B08EFF8F504BFF8F4F49FF92544AFF93544AFF9355
      4BFF94564CFF94574DFF94574DFF8C4B48FF824444FF050305FF2227AFFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DDFF2C32
      E3FF2C32E5FF0E1049FF181A1C88151619D5171A76FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E229BFF161618FFF6F1
      E9FFFAF4E9FF4D4C4AFF15186BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF171B78FF3A3429FFEFD9AFFFF1DCB2FFF0DB
      B1FFF0DBAFFFEDD4A2FFE8CD9BFF4E4639FF0D0F42FF2C32E4FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DDFF070823FF12145AFF1A1D
      85FF000002FF2227AEFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0F114BFF421F20FF803B3BFF803B3BFF803B3BFF803B3BFF7F3A
      3BFF7F3A3CFF7E393CFFA26B6EFFFAF5ECFFF7ECD6FFE9D7B4FF383936FF1A1E
      1FFF939393340000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF10333436FD191B1CFF9A6D
      64FFF3E3C2FFF3E3C1FFCEA88CFF8E4F4AFF90514AFF94564CFF94564CFF9457
      4DFF94574DFF94574DFF95574DFF8E4E49FF8E4F4AFF38211FFF0E1048FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF131662FF171B
      78FF2C32E5FF0E1049FF2E2F31C2010104FF272CC8FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DFFF030412FFB0AD
      A9FFF2EDE5FF0B0B0CFF2227B0FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF252ABEFF030304FFDCC8A5FFF2DEB7FFF1DE
      B6FFECD4A9FFEFD9ABFFECD3A4FFD5C199FF100F0EFF191C80FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF12155EFF131213FF02020CFF171A
      77FF060721FF2C32E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0F114BFF421F21FF803B3CFF803B3BFF803B3BFF803B3BFF803B
      3BFF803B3BFF7F3A3CFFA16A6BFFFAF4E9FFF7EDD8FFEADAB8FF383A38FF1B1D
      1EFF8E8E8E320000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0E303336FE1A1B1CFFA377
      68FFF3E3C2FFF3E2C1FFCAA38BFF8E4E4AFF91524AFF94574DFF94574DFF9457
      4DFF985B50FFA26856FFB17C60FFA26959FFA3695BFF8C5B4FFF050405FF1F23
      9EFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1B1F8AFF010103FF0101
      05FF2126ABFF0E1049FF07080AF902020AFF0D0F43FF0D0F43FF0D0F43FF0D0F
      43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF040415FF5352
      52FFB1AFABFF000002FF0D0E40FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F
      43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF010104FF998E7BFFF2E0BAFFF0DC
      B9FFDEBD94FFF1DCB2FFEFD9ACFFEED6A6FFA99978FF050407FF191D81FF2C32
      E4FF2C32E5FF2C32E5FF2B31E1FF141768FF0A0808FFB69D81FF252321FF0809
      26FF05061AFF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F
      43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F
      43FF0D0F43FF040517FF421F21FF803B3DFF803B3DFF803B3BFF803B3BFF803B
      3BFF803B3BFF7F3A3CFFA06867FFF9F2E5FFF7EDD8FFEBDBBBFF383A39FF1A1D
      1EFF989898370000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF112B2F31F81A1B1DFFA97F
      6CFFF3E3C2FFF3E2C1FFC79E89FF8E4E4AFF91524BFF94574DFF985B50FFA870
      59FFC19063FFDAB269FFE0BA68FFB98666FFAB7460FFA76F5EFF604038FF0202
      0CFF1D2193FF2C32E2FF2C32E5FF282ED1FF141665FF030205FF26191CFF1213
      16FF040517FF0A0C33FF090A0BC6030305860303058603030586030305860303
      058603030586646466DA767678F87A7B7CFF7A7B7CFF7A7A7BFF7A7979FF8180
      7FFFB5B4B1FF665D52FF424142FF797672FF78746EFF3C3838FF726D63FF7874
      6DFF625450FF5D483AFF777066FF766F63FF5C4639FF9E8E7FFFF3E3C2FFEBD6
      B9FFC29682FFF2DEB7FFF1DCB4FFE7CA99FFEAD0A1FFA29170FF0E0C0CFF090A
      2DFF15186DFF141769FF070823FF171512FFA07F5CFFC6986FFF7F6F54FF0000
      02FF1D1A16FF766F62FF787570FF726652FF69573EFF65513AFF68553DFF6A5E
      4AFF171717FF231518FF3F1E21FF3F1E22FF3F1E21FF3F1E21FF3E1E20FF3E1E
      20FF3E1E20FF3E1D1FFF602D2FFF803B3DFF803B3DFF803B3DFF803B3CFF803B
      3BFF803B3BFF7F3A3CFF9F6766FFF9F2E4FFF7EDD8FFEBDCBDFF383B3AFF191C
      1DFF959595350000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE122D3133FB1A1B1CFFA77D
      6AFFF3E3C2FFF3E2C1FFCBA38BFF8E4F4AFF93554CFFA87059FFC79964FFDDB8
      6BFFE4C16CFFE5C16CFFE3BE69FFBE8C68FFB27D64FFAF7963FFAB7561FF6242
      38FF080507FF030411FF06071FFF010105FF1A1011FF6D413AFF292223FF6151
      56FF353537EE000002FF14161886000000000000000000000000000000000000
      000000000000FCFDFFCCFCFDFEFAFDFEFDFFFDFDFCFFFDFDFBFFFDFDFBFFFCFB
      F8FFFCFAF5FFAB887EFF8D8685FFFAF5EBFFF6EAD6FF726F6AFFEFE7D7FFF9F1
      E1FFAEA29BFFBB9E7EFFF7EAD3FFF2E2CBFFA66E5EFFDABFAEFFF4E5C7FFE6D0
      B3FFAB867CFFF2E1BDFFF2E0BAFFD6B28AFFE6C999FFECD4A3FFD8C49CFF6E5D
      49FF433C31FF443B2BFF7E7056FFDCC598FFDBB682FFD4AB77FFD7BC89FF0807
      07FF332921FFE9D1B1FFFAF4EAFFF0DCB5FFDDB87FFFD5AC78FFD4AA76FFDBC3
      97FF313130FF372728FF803D40FF813D41FF813C42FF813C42FF813C41FF803C
      40FF803C3FFF803C3EFF803C3EFF803C3EFF803B3DFF803B3DFF803B3DFF803B
      3CFF803B3CFF803B3CFF9F6766FFF9F1E3FFF7ECD6FFEBDBBDFF383B3AFF1A1C
      1DFF959595350000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF10303235FC191B1CFF9F73
      66FFF3E3C2FFF3E3C1FFD2AD8DFF92544CFFB7845DFFDCB86DFFE2C270FFE2C3
      71FFE3C370FFE2C370FFE3C06BFFC3936AFFB68366FFB37F65FFB27D64FFAF7A
      63FFA16F5BFF744E43FF6A463DFF81554AFFA0675AFF884E4AFF202020FFB7AA
      9FFFBBBBBB4F0E0E10F114161886000000000000000000000000000000000000
      000000000000FCFDFFCCFCFDFCFEFDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFDFC
      FAFFFBFBF9FF706166FFB39492FFFBF6EEFFE2CCB9FF665C58FFF0EBE0FFF9F1
      E1FFA19C92FFBBAE96FFF7EDD8FFEBDCCDFF864C4DFFDDC3B3FFF5E8CDFFDDCA
      ABFF908078FFF4E4C3FFF3E2BFFFBE907DFFE2C498FFEFD9ACFFF1DCB2FFC69B
      7FFFEBD3ABFFE6C78FFFE9CE9FFFE7CB9BFFE2C291FFDCB881FFEACF9FFF564A
      38FF2C1F1BFFCCA27CFFF2E2C3FFF3E2C0FFE0BD82FFD8B07CFFD2A875FFDBC4
      9DFF2F3232FF2A2423FF7E3D40FF823E42FF813D41FF813D41FF813C42FF813C
      41FF813C40FF803C3FFF803C3FFF803C3FFF803B3DFF803B3DFF803B3DFF803B
      3DFF803B3DFF803B3CFFA06867FFF9F1E1FFF7EBD4FFEBDBBCFF383A39FF1A1D
      1EFF989898370000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF10363437FD181B1CFF9568
      62FFF3E3C2FFF3E3C1FFD5B18EFF985C50FFD7B16EFFDFC475FFE0C474FFE0C4
      74FFE0C474FFE0C474FFE3C26EFFCDA06BFFC3946BFFBD8C69FFB88567FFB581
      66FFB37F65FFB17B63FFAC7661FFA9725FFFAA735FFF733F41FF212224FFBFC1
      C2B5FEFEFE074545485119191D82000000000000000000000000000000000000
      000000000000FDFDFECDFDFEFDFFFDFEFDFFFDFDFCFFFDFCFBFFFDFCFBFFFDFC
      FAFFFAF7F0FF6D6964FFE1CCB6FFFCFAF6FFB2A8A7FF57484CFFF2EDE4FFF9F0
      E0FF9A8F7AFFBFB9ACFFF8EEDBFFE1DACDFF6F4E4AFFE4CCB9FFF6E9D0FFD6C0
      9CFF857E79FFF5E6CAFFF5E6C8FFA27B72FFDFC198FFF1DDB5FFF2DFB8FFAE80
      73FFEBD5B2FFE9CD97FFE4C8A1FFDBB88CFFE7CA9BFFE0BE86FFE6CBA1FFB29C
      7CFF31251EFFD0A779FFE5C795FFF0DBB1FFE3C289FFDBB57CFFD4AB78FFDCC5
      A0FF323233FF262321FF7D3D40FF823E42FF823E42FF823E41FF813D41FF813C
      41FF813C42FF813C41FF803C40FF803C3FFF803C3FFF803B3EFF803B3DFF803B
      3DFF803B3DFF803B3CFFA16A6AFFF9F1E3FFF7EBD4FFEAD9B7FF383A37FF1B1D
      1EFF97979B360000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0E553E41FD171A1BFF805D
      5AFFF3E3C2FFF3E3C1FFDAB88FFF995C50FFD5AF70FFDFC579FFDFC578FFDFC5
      78FFDFC578FFDFC577FFE1C473FFD4A96BFFCA9D6CFFC7996BFFC4956BFFC08F
      6AFFBB8868FFB68266FFB58165FFB27D64FFB37E63FF4B362CFF3B332EFFC4BC
      BA7E000000000000000086868D24000000000000000000000000000000000000
      0000FEFEFE34FCFDFDF9FDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFDFCFAFFFDFC
      F9FFEAD9CDFF685C55FFF0E9DBFFFCFBF7FFA0A1A2FF7B5B58FFF7F2ECFFF5EB
      E0FF816656FFC1C1BCFFF9F1E3FFDFDACFFF726053FFEDDBC1FFF7ECD6FFCAAD
      8CFF807E7AFFF6E9CFFFF6E9CFFF7F736DFFDCC098FFF2E0BCFFF2E1BEFF8C74
      6BFFE8D8BAFFECD3A3FFDFC2A6FFCDA37BFFEDD6ACFFE8CB97FFDFC3ACFFE1C8
      B4FF685F4FFFEDD7AFFFF3E3C4FFF4E5C9FFE8CB94FFDFBB7EFFD6AE79FFDFC5
      A0FF493839FF252221FF7D3C40FF823E42FF823E42FF823E42FF823E42FF813D
      41FF813D41FF813C42FF813C42FF813C41FF803C3FFF803C3FFF803C3EFF803C
      3EFF803B3DFF803B3DFFA26B6DFFF9F2E5FFF6EAD1FFE8D5B0FF383835FF1A1E
      1FFF939398340000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0B8D6B58F7171A1BFF6355
      52FFF3E2C2FFF3E2C1FFE1C18FFF985B4FFFCFA86FFFDFC77DFFDFC77DFFDEC6
      7CFFDFC67CFFDFC67DFFE0C577FFD7AD6BFFCEA26CFFCC9F6CFFCA9C6CFFC798
      6BFFC3946BFFBE8C69FFB98667FFB78467FFAE7860FF3D2D28FF776C61FFF6EE
      E47C00000000000000000000000000000000000000000000000000000000FFFF
      FF0CFCFDFFCCFDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFDFCFAFFFDFCF9FFFCFB
      F8FFB6A9A9FF4D4849FFF2F0EAFFFBF9F3FF9A9488FFA98C72FFFBF6EFFFE7E2
      E0FF4B3B3FFFC2C4C4FFFBF6EDFFDFDACEFF7B7263FFF6EAD6FFFAF3E6FFB790
      80FF7E7D7FFFF8F0DFFFF9F0E0FF767473FFE0CAABFFF6E9CFFFF6EAD1FF7D75
      6FFFEAE2D3FFF4E4C3FFE9D5BFFFD0A77CFFF6EAD4FFF4E4C5FFE2CCC2FDE4CF
      C5FFD1CBBDFFF6EAD1FFEDDDCDFFECD9C6FFECD3A5FFE0BE83FFD9B27CFFE5C9
      A2FF744F49FF252121FF7C3B3FFF823F42FF823E42FF823E42FF823E42FF823E
      42FF823E42FF813D41FF813C42FF813C42FF813C41FF813C40FF803C3FFF803C
      3FFF803C3EFF803B3DFFA56F71FFF9F3E7FFF6E9CFFFE4CDA6FF36342FFF1A1E
      20FF8A8F8F300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE09AF9F85F3171A1BFF5552
      4EFFF3E3C2FFF3E3C1FFE5C892FF985B4FFFC9A16DFFDEC881FFDEC880FFDEC7
      7FFFDEC880FFDEC880FFDFC67CFFDBB36BFFD2A66BFFD0A46CFFCEA26CFFCC9F
      6CFFCA9D6CFFC6976BFFC1906AFFBE8D69FFA16758FF2D2125FF858789F3FAFA
      FA3500000000000000000000000000000000000000000000000000000000FEFE
      FE17FCFDFEFEFCFDFCFEFDFDFCFFFDFDFBFFFDFCFBFFFDFCF9FFFCFBF8FFFCFB
      F7FF9B9C9AFF444549FFF3F2EEFFF6EFE7FF7E6655FFB9AB93FFFBF7F0FFDFDF
      DDFF343438FFC4C3C4FFFBF6EEFFD9CCB5FF7D7466FFF8F0DFFFFAF5EBFF8A70
      70FF7B7B7FFFFAF3E7FFFAF5EAFF747675FFE3D2B8FFF8EFDEFFF9F0E0FF7877
      73FFEBE9E2FFF7EBD4FFEEDDC8FFB6856EFFF4EADFFEF6E8CDFFDAC2BEEFDABE
      AFFFF9F0E1FFF5E8CDFFDDC7C3FEDDC4BBFFF0DDB6FFE2C187FFDCB67DFFE8CD
      A4FF957A5EFF242021FF79393EFF834042FF823E42FF823E42FF823E42FF823E
      42FF823E42FF823E42FF823E42FF813D41FF813C42FF813C42FF813C40FF803C
      3FFF803C3FFF803C3EFFAB7775FFFAF3E7FFF6E8CEFFDDC199FF312E28FF1C1E
      20FF959999350000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF04B9B7AFEE171A1BFF5050
      4DFFF2E2C1FFF3E2C1FFE9CE99FF985B4FFFC29769FFDECA87FFDECA86FFDEC9
      85FFDECA86FFDECA87FFDEC882FFE0BB6BFFD8AF6BFFD4AA6BFFD1A66BFFD0A4
      6CFFCFA36CFFCC9F6CFFCA9C6CFFC99B6CFF8D6447FF1E1D1FFF938C8EE30000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF22FDFDFDF9FDFEFDFFFDFDFBFFFDFDFBFFFDFCFBFFFDFCF9FFFCFBF8FFFBF7
      F0FF8B8072FF604E4EFFF6F3F0FFE4E0DEFF403536FFC0BAADFFFBF7F1FFDDD8
      CDFF3C3134FFCDC5C4FFFBF6EDFFC3A48BFF7A7265FFF9F0E0FFFAF5EAFF6664
      68FF777A7DFFF9F2E3FFFAF3E6FF74736FFFE0CCAFFFF8EEDBFFF7EDDAFF7575
      6EFFEAE8DFFFF6EAD1FFECD9C5FF85655AFFECE5DCFDF4E4C5FFD9C0BEFFC9A1
      8AFFF8EFDEFFF4E5C5FFD6BEBEF9D3B7AEFFF4E4C6FFE4C489FFDEB97EFFEAD1
      A4FFA89980FF211F20FF74373CFF844042FF834042FF834042FF823F42FF823E
      42FF823E42FF823E42FF823E42FF823E42FF813D41FF813C42FF813C42FF813C
      41FF803C40FF813D3EFFB7887AFFFAF2E5FFF5E7CBFFCDA98AFF2A2522FF2721
      24FF988E93320000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01A1A4A9A1191C1DFF4F4E
      47FFF1DFBCFFF3E2C0FFECD4A8FF9A5E53FFBE9166FFDFCD90FFDFCD90FFDFCD
      8FFFDFCD8FFFDFCD90FFDFCC8BFFE3C06DFFDDB66AFFDBB36BFFD9B16BFFD6AC
      6BFFD2A76BFFD0A46CFFCFA36CFFCFA26CFF7C6140FF302B29FFD8BCB1D80000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE71FDFEFDFFFDFEFDFFFDFDFBFFFDFCFBFFFDFCFAFFFCFBF8FFFCFBF7FFEDE8
      E3FF57463DFF9D7F6CFFFBF7F2FFDCDBD6FF2E3033FFC3C1BBFFFBF7F0FFD3C2
      AAFF4C3333FFE0CDC7FFFAF5ECFF8D6E6EFF777068FFF9F0E0FFFAF3E7FF5F63
      66FF77797DFFF9F0E0FFF9F1E1FF716C63FFDCC5A5FFF7ECD7FFF6EAD4FF7470
      66FFEAE4D7FFF5E7CCFFEBD8C2FF6D5F56FFE9E6DDFFF3E2C0FFDBC3BEFFA16E
      61FFF2E8DAFCF3E1BDFFD6BEBDFACCA892FFF6EAD2FFE6C88EFFDFBC80FFEAD0
      A2FFB2AA9AFF1F1F20FF6C3439FF844143FF844042FF834042FF834042FF8340
      42FF823E42FF823E42FF823E42FF823E42FF823E42FF823E41FF813D41FF813C
      42FF813C42FF833F41FFCCA480FFF9F1E3FFF5E6C8FFAE887BFF1E1D1EFF5238
      34FFC3A8A22F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000989EA58E191D1EFF4A43
      3AFFEBD4ADFFF3E2BFFFEFDBB7FFA1675BFFBB8C62FFE1D097FFE0D096FFE0CF
      95FFE0CF95FFE0CF95FFDFCE93FFE3C473FFE2BC68FFE0B969FFDEB76AFFDCB4
      6BFFDAB26BFFD6AC6BFFD3A86BFFCB9D69FF68443BFF414241FFF4F0E7C30000
      000000000000000000000000000000000000000000000000000000000000FDFE
      FEBBFDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFCFBF9FFFCFBF7FFFCFAF7FFDCDC
      DAFF2A2A2CFFB9AC95FFFCF9F4FFD6CBB8FF28292AFFC4C4C2FFFBF7EFFFAB87
      7BFF594438FFEDDCCCFFFAF5EBFF626063FF76736DFFF9F0E0FFF9F2E4FF5F60
      60FF79797CFFF8EFDDFFF8EEDAFF6A6257FFD7BB9BFFF7EBD3FFF4E6CDFF7168
      5BFFE9E0CEFFF4E5C7FFECD8BFFF6B6055FFE9E5DDFFF2E0BAFFE4CEC1FF7355
      52FFE8E2D8F0F1DEB6FFE3CEC3FCAB7A68FFF0E4D4FDE9CC94FFE1BF84FFEACF
      9EFFB6B3ACFF1C1E1FFF5F3135FF854143FF844042FF844042FF844042FF8340
      42FF833F42FF833F42FF823E42FF823E42FF823E42FF823E42FF823E42FF823E
      41FF813D41FF844143FFDBBA8BFFF9F0DFFFF4E4C5FF897970FF171A1BFF7C69
      56FFE7D6BF2C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9FA78E1F1F21FF3C2F
      2AFFD8B89BFFF3E2C0FFF1DFC0FFAF7B67FFB7855DFFE5D4A1FFE3D6A4FFE2D5
      A3FFE2D5A2FFE1D4A0FFE2D4A0FFE1C67BFFE5C066FFE5C066FFE2BD67FFDEB7
      6AFFDDB56AFFDDB56AFFDCB46BFFCB9E64FF4E2E33FF45494DFFEBEEEE4D0000
      000000000000000000000000000000000000000000000000000000000000FDFE
      FEC4FDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFCFBF8FFFCFBF7FFFCFAF7FFD6CE
      BFFF272829FFC4BFB4FFFCF9F4FFB39482FF272325FFCBC7C5FFFAF6EEFF695E
      61FF625543FFF5E8D2FFFAF3E8FF5C5F5FFF787773FFF9F0DFFFF8EFDEFF5B58
      55FF7A787BFFF8EEDBFFF6EAD3FF62574BFFCDAC93FFF6E8CFFFF2E1C5FF695D
      4DFFE6DAC4FFF4E3C3FFECD8BDFF6C5F50FFE8E3D7FFF0DCB5FFEEDCC4FF6E62
      57FFE6E3DBFBF0DAAFFFF1E1CBFF7E685DFFE6E0D7FAEAD09EFFE3C288FFE9CE
      9BFFB6B7B4FF181C1DFF522F30FF854243FF844043FF844042FF844042FF8440
      42FF834042FF834042FF834042FF833F42FF823E42FF823E42FF823E42FF823E
      42FF823E41FF864445FFE2C7A4FFF8EEDAFFF4E3C3FF7A756BFF16191AFF918A
      80FFF8F2DF290000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3BCB88E453432FF231F
      21FFB59B8BFFF3E2C0FFF3E1C0FFC4976DFFAB755AFFE8D6A8FFE7DAAFFFE6DA
      AEFFE6D9ADFFE5D8AAFFE5D8AAFFE0CA85FFE5C069FFE5C068FFE5C067FFE4BF
      66FFE3BD68FFE0BA69FFDEB869FFC8A15AFF2D2225FF5B5255FFEDE8ED2D0000
      0000000000000000000000000000000000000000000000000000FFFFFF01FCFD
      FDDEFDFDFCFFFDFDFBFFFDFDFBFFFDFCFBFFFCFBF8FFFCFBF7FFFCFAF7FFAD95
      7FFF1F2122FFC6C7C5FFFAF8F3FF685F60FF402D2DFFE2D0CAFFF9F4E9FF5759
      5AFF6D6455FFF8EEDAFFF8EFDEFF585652FF787A77FFF9F0DEFFF5E9D0FF524C
      44FF7A7879FFF7EDD8FFF3E4C9FF56493FFFC09A8BFFF5E8CCFFEEDBBDFF6050
      40FFE1D1B4FFF3E3C2FFECD7BCFF685849FFE7DECDFFEFDAB1FFF3E4CAFF7268
      5AFFE8E3DAFFEFD8ADFFF6EBD4FF78746BFFE5E3DDFDEBD3A4FFE4C489FFE7CB
      97FFB8B7B6FF191C1DFF492D2EFF854143FF844043FF844043FF844042FF8440
      42FF844042FF834042FF834042FF834042FF823F42FF823E42FF823E42FF823E
      42FF823E42FF894849FFE8D2BFFFF7EBD5FFF2DFBBFF756B5BFF161A1BFF9395
      98EEFEFEFE130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F0E38B6B6459FF181A
      1CFF9B9386FFF3E2C0FFF3E2C0FFD0A97BFF995D51FFE4CFA9FFEADFBAFFEADE
      B8FFE9DDB6FFE8DCB3FFE8DCB3FFE2D096FFE4C26EFFE5C16CFFE5C16AFFE5C0
      68FFE5C067FFE5C066FFE3BE67FFC0A056FF20211FFFA38578FFF9F3F32C0000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FE34FCFCFC77FBFDFBA2FDFDFCB9FCFCFBC6FCFCFAD3FCFBF8EBFBFAF8FF5E5A
      5DFF252124FFCFCAC9FFFAF5EDFF525455FF5B493BFFF1E2D2FFF8EFDEFF5351
      4CFF757065FFF9EFDEFFF4E6CCFF4D473DFF777A79FFF8EFDDFFEEDBBEFF473E
      33FF7B7878FFF7ECD5FFEAD5BAFF4A3B32FFB48C84FFF5E6C9FFE8D2B7FF5643
      35FFD8BF9EFFF3E1BEFFECD8BAFF625240FFE2D3B9FFEED7ADFFF5E8CEFF6D64
      58FFE5DECEFFEDD6ABFFF7EDD8FF7A7771FFE6E1D7FFEBD2A6FFE2C186FFE6C9
      91FFC0B9B7FF201E20FF462D2DFF854244FF844043FF844043FF844043FF8440
      42FF844042FF844042FF844042FF844042FF834042FF833F42FF833F42FF823E
      42FF823E42FF915251FFEDDCCDFFF6E9D0FFEAD2B1FF614D3FFF171A1BFF8E91
      97D8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBF85278797AFC171A
      1CFF938772FFF2E1BEFFF3E2C0FFDABA9AFF95574EFFDBC294FFEFE5C7FFEEE3
      C4FFEEE3C4FFECE2C1FFECE1BFFFE7D8A9FFE1C473FFE3C370FFE3C26EFFE5C2
      6CFFE5C169FFE5C069FFE5C068FFBE9C55FF222320FFC7BEAEFFFEFEFE290000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7FB455054
      57FF534540FFE9DED8D9F8F2E6EF4F4D49FF6F6557FFF8EFE0FFEEDDC5FF443C
      33FF78766FFFF9F0DFFFE3CBB6FF3B302AFF757979FFF8EEDBFFDBC0AFFF372A
      28FF7C7776FFF7EBD3FFDBC0AFFF3C2B2AFFA8827FFFF4E5C7FFE0C7B2FF4A35
      2FFFC5A28AFFF2DFBBFFEBD6B8FF5A4939FFD7BF9FFFEDD5AAFFF5E8CDFF675F
      52FFDDCCB1FFECD4AAFFF7ECD6FF77746FFFDBC8AFFFEBD2A9FFDFBB7FFFE4C4
      8BFFD8C3BDFF352728FF442C2CFF854344FF844143FF844043FF844043FF8440
      43FF844043FF844042FF844042FF844042FF844042FF834042FF834042FF833F
      42FF823E41FFA66E5AFFF3E5CFFFF5E7CAFFD4BDA6FF372929FF262221FFBCA9
      A6DD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF027C7C82F3181A
      1BFF765B4AFFEDD8B8FFF3E2BFFFE7CEAEFF9F6554FFD7B680FFF2E9CFFFF0E7
      CBFFF0E6CAFFEFE5C6FFEFE4C6FFEBDFB9FFE0C77CFFE2C372FFE3C370FFE3C3
      70FFE4C26EFFE4C26DFFE4C16CFFB48B55FF242424FFCDCDCBF9EFFFEF100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F0E5BD4746
      44FF75726CFFFBF7F184EFE0CCC6413D36FF767777F6FBF9F695D3B7AEE43126
      25FF797A77FFF9F1E2FFBEABA5FF231F20FF767777FFF8EDD9FFBDAAA4FF241F
      21FF7F7776FFF6E9CFFFC9AFA6FF2C2225FF977B7AFFF4E5C5FFD8BBADFF3C29
      2AFFAC857FFFF1DDB9FFECD6B6FF524235FFB89486FFECD4A8FFF5E6CAFF645B
      52FFB69489FFECD4AAFFF5E7CCFF716F6EFFA18782FFECD6AFFFDBB57DFFDDB9
      86FFEDDBC8FF4D3F34FF442B2CFF864444FF854243FF854243FF854243FF8441
      43FF844043FF844043FF844043FF844042FF844042FF844042FF844042FF8340
      42FF834042FFBC8D6EFFF6EAD2FFF4E5C6FFC1B5A0FF1D1E20FF423E3BFFF0E1
      D5BF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF06C0A49EF42320
      21FF3B2F2FFFDFCDB3FFF3E2BFFFEFDAB1FFAF7A5CFFCAA077FFF3EBD5FFF2EA
      D3FFF2EAD2FFF2E9D0FFF2E9D0FFEEE5C8FFE1CD8DFFDFC576FFE0C474FFE1C3
      72FFE2C370FFE3C370FFE2C370FFA17153FF242527FFB7BCC0A0000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE07FCFCFC56FCFAF675FCF8F175FCF8EF75FCF8F175FCFAF475CFB8AEE02F28
      26FF787B7DF5FEFEFE26B29D9ECF232021FF6E7379E6000000009F8F95C31F1D
      1FFF7A787DF5FCFAF76D9F9EA2E8191B1DFF7E7979FFF8EDD9FFA9A5A0FF1A1C
      1DFF817776FFF5E7CCFFB3A8A1FF1F1D1FFF897775FFF4E4C3FFD1B3A8FF3023
      26FF8D7775FFF0DCB4FFEBD5B3FF4C3F32FF887575FFECD4AAFFF4E5C7FF615B
      55FF7C7275FFEDD7AFFFF2E2C2FF6D7073FF6E6E74FFEFDCBBFFD5AD7BFFD5AD
      7EFFF5E9D4FF595348FF442B2CFF864444FF854243FF854243FF854243FF8542
      43FF844043FF844043FF844043FF844043FF844043FF844042FF844042FF8340
      42FF854244FFC69F92FFF7ECD6FFF4E3C3FFB5A187FF1A1C1DFF515356FFF9F9
      F65F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF02EBE4DAE13333
      33FF242526FFD4C4A7FFF3E2C0FFF2E0BCFFBE9075FFAE7A62FFEFE6C9FFF3EC
      D8FFF3ECD7FFF3ECD6FFF3EBD5FFF2EAD3FFE5D49FFFDFC67AFFDFC577FFDFC5
      76FFE0C474FFE0C373FFE1C372FF92604FFF212426FFABB1B987000000000000
      00000000000000000000FFFFFF01FFFFFF0CF9F4EB8ECFBBB9C09EA2A9C1A6AA
      AFDCAEAEADFFA4A098FF9F9A8CFF9E9789FF9F998CFFA29E93FF686865FF161A
      1BFF595D60F99FA4AAC86D7178F4171A1BFF777573FAF9F0E3B398999AE9191B
      1CFF8D7C82EFFFFFFF0693969DD61B1C1DFFA18487F8FBF8F3EFA4A6A7FC171A
      1CFF857876FFF5E6C8FFAAA59EFF191B1DFF7E7471FFF3E2C0FFC6ADA4FF2820
      23FF787170FFEFDAB1FFEAD2AFFF4A3D30FF6F6E70FFECD5ABFFF3E3C2FF625F
      59FF6A6E71FFEFDBB8FFEED9B5FE6B7176FE67696CFFF3E4C9FFD1A776FFD2A8
      77FFF7ECD8FF605E58FF43292CFF874544FF864344FF854243FF854243FF8542
      43FF854243FF854243FF844143FF844043FF844043FF844043FF844042FF8440
      42FF894847FFD5B6A6FFF6EAD3FFF1E0C0FF816453FF171A1CFF6A5F63FFF6F6
      F61E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBDEE2473C3E
      42FF1E1F1FFFB6947DFFF3E3C1FFF3E2C1FFD7B38EFFA56C57FFEDDDB4FFF6F0
      E0FFF6F1E0FFF6F0DFFFF6F0DFFFF5EFDDFFE9DDB4FFDFC881FFDFC67DFFDFC6
      7BFFDFC579FFDFC576FFDFC476FF8F5D4EFF202325FFABB1B987000000000000
      000000000000FFFFFF08F8F6F29FA09FA3F47B7872FF443332FF1C1E20FF1E20
      21FF1F2020FF1D1F1EFF1C1F1DFF1C1F1DFF1C1F1DFF1D1F1EFF1D1F1EFF1C1D
      1EFF1C1E1FFF1B1E20FF181C1DFF16191AFF38352FFF746D61FF52524FFF1A1B
      1DFF775A5FFEDEC7B3EE9A958AFB201E1FFFBC9792F7FEFEFE268C9298C71C1C
      1DFFAB8D86FCF8F0E0FDA8A7A3FF171A1BFF777270FFF3E1BEFFBAAAA1FF201D
      1FFF6F6F6EFFEFD9AEFFEAD2ABFF4A3E30FF6A6D6DFFECD5AAFFF2DFBBFF6564
      5EFF696A69FFF1DFBDFFEAD2ABFF6E6F74FF5D5B56FFF5E7CFFFCFA577FFCB9F
      73FFF5E8D2FF676663FF3F272BFF864444FF874545FF864344FF854244FF8542
      43FF854243FF854243FF854243FF854243FF844043FF844043FF844043FF8440
      43FF975A4FFFEED9B4FFF5E7CBFFEBDBBBFF403C3BFF1B1D1EFFBBA39BFFFEFE
      FE1D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEAE63E8371
      61FF181A1BFF6C5A55FFF3E3C2FFF3E2C1FFEACF9EFFA26856FFE2C7A3FFF8F3
      E6FFF8F2E4FFF8F2E4FFF8F2E4FFF7F2E3FFF1E9CFFFDFCC8BFFDDC880FFDEC7
      7FFFDFC77DFFDFC67BFFDFC67AFF9C6D51FF212426FFABB1B987000000000000
      000000000000F6F0E67B9E9485FF252627FF252421FF3B2C2AFF6B3E3FFF8C5F
      49FFA5814BFFAB8C4CFFAB8E4DFFAC8F4DFFAA8C4DFFA8874DFFA47F4DFF996D
      4CFF835248FF714042FF62343BFF452B2EFF2A2923FF292721FF262222FF1C1D
      1EFF1E1D1FFF3C342DFF33322DFF191B1CFF715552FFD8C4B5FF9A9790FF2221
      1FFFC9AE98F3FCFCFC789BA0A4DD171A1BFF777371FFF1DEBAFFB2A79DFF1C1C
      1EFF6C6F6EFFEFD9AEFFE9D0A9FF4A3E31FF6A6B67FFEED8ADFFF0DCB6FF6766
      62FF625D58FFF2E1BFFFE4C8A3FF7C7173FF4B4238FFEEDCC2FFCDA278FFC698
      70FFF2E3CBFF6C6D6DFF3B2629FF864444FF884645FF874544FF864344FF8643
      44FF854243FF854243FF854243FF854243FF844143FF844143FF844043FF8440
      43FFA36B66FFF5E8CEFFF4E5C7FFE0C8A4FF33312DFF232627FFD3D3D1C9FEFE
      FE07000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE29BDB9
      B1FF181B1CFF4D4843FFEED9B7FFF3E2BFFFF0DDB9FFAF7A64FFC69E80FFF8F2
      E4FFFAF5EAFFF9F4E9FFF9F4E9FFF9F4E9FFF7F1E2FFE2D29AFFDDC882FFDDC8
      81FFDDC880FFDEC77FFFDEC77EFFB79256FF242425FFC3C3C3C5E7FEFE0B0000
      000000000000C4C5C7932E2E2DFF49342EFFBC9658FFCDB164FFD8B36BFFDFBB
      6DFFE4C06AFFE5C067FFE3BE67FFE1BB69FFDEB869FFDDB66AFFDCB46AFFD8AF
      6AFFD3A869FFD0A468FFCEA165FFCB9F5FFFC29B5BFFB88B5AFF9F6854FF5132
      32FF272323FF3B3227FF392C27FF2A2023FF1D1C1EFF2A2928FF292A2AFF181B
      1CFF716B65FFCDCDCCCF82878EDE181B1CFF83767AFAFAF5ECFDB1ADABFF1B1C
      1DFF6C6E6BFFEED8AEFFE7CDA6FF4A3E30FF67635BFFEFDAAFFFEED7ADFF6767
      64FF54493EFFEDD8B6FFE1C39EFF9D7C7AFF2B2424FFC7B8B1FFCDA37AFFBA87
      6AFFEDDABCFF6F7274FF342327FF854343FF8A4947FF894746FF864344FF8643
      44FF864344FF854243FF854243FF854243FF854243FF854243FF844143FF8542
      44FFBE917CFFF7EBD3FFF4E4C4FFAD8A7DFF201E1FFF383636FFC3C3C66C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDB7
      BAAF292425FF312927FFCAAE96FFF3E2C0FFF3E2C0FFCCA175FFB6835FFFF6ED
      D9FFFBF6EFFFFAF6EEFFFAF6EEFFFAF6EEFFFAF5ECFFEBE0BCFFDECB8AFFDEC9
      85FFDDC883FFDDC881FFDDC881FFC2AC67FF252322FF9C988DFFF3F3F32D0000
      000000000000C7C2C69930292AFF784F40FFDFBE72FFE2C371FFE3C270FFE4C2
      6CFFE5C169FFE5C068FFE5C066FFE4BF67FFE2BD67FFE0BA69FFDEB76AFFDDB6
      6AFFDAB26BFFD7AD6BFFD5AB6BFFD3A86BFFD1A56BFFCFA36CFFD0A46AFF5546
      2FFF2D2125FFAE7D53FFAF795EFF985C53FF754C3DFF5A4430FF462C2EFF281F
      22FF1B1D1EFF26282AFF222527FF171A1BFF615B60FCE0D7CEE1B2ABADF01D1D
      1EFF6D6D6AFFEFDBB5FFE5CAA4FF4B3D31FF5F574AFFEED8ADFFEBD2A6FF6568
      64FF392B29FFD8BDA9FFDEBE9BFFBC9784FF201F20FFB0AEACFFD0A883FFAD76
      63FFE5CAA9FF6E7376FF292022FF804142FF8A4947FF8A4947FF874545FF8643
      44FF864344FF864344FF864344FF864344FF854243FF854243FF854243FF8948
      48FFE0C39FFFF5E7CCFFF2E1BEFF776F62FF171A1BFF8B8378FFF7F2EA650000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBDE
      D893625450FF191B1CFF998E7DFFF3E2BFFFF3E2C0FFDEC09CFFA26856FFE9D7
      BCFFFBF9F3FFFBF8F2FFFBF8F2FFFBF8F2FFFBF8F1FFF3ECD8FFE0D096FFDECD
      8EFFDECB8BFFDECA86FFDEC983FFD5BE7AFF5A4A33FF303134FFCCBFC4D1DAFE
      FE0700000000EDE0E0746E5F61FA282321FFA2784EFFE0C071FFE3C370FFE3C3
      70FFE3C26EFFE5C16CFFE5C16AFFE5C068FFE5C066FFE4BF66FFE2BD68FFE0BA
      69FFDEB769FFDAB26BFFD8AF6BFFD5AB6BFFD3A96BFFD2A76BFFCB9E6AFF503E
      2DFF191C1CFF90624CFFCA9C6BFFCA9C6CFFC6976BFFBF8D68FFAA725EFF9965
      4DFF78563EFF583335FF2E2125FF1B1E1DFF1C1D1FFF53493DFF615F5FFF191B
      1CFF6C7073FEF9F4EAF4EDDBC2FB504338FF524438FFE6CCA5FFE6CAA1FF6568
      65FF1F1D1FFFB9ADA4FFDAB997FFD3B995FF242321FFACAAA2FFD7B493FFA66D
      5EFFDABA9BFF707378FF1E1E1EFF77403EFF8C4B48FF8B4A48FF894846FF8644
      45FF864344FF864344FF864344FF864344FF854244FF854243FF854243FF9B5F
      55FFEDDAC2FFF4E4C5FFE2CAAEFF504038FF191B1DFF939297D8FFFFFF020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FA3A7D7F80FA181A1BFF6F554BFFEBD6B7FFF3E2BFFFEDD7B2FFAD775CFFD8B6
      8AFFFCF9F4FFFCF9F4FFFCF9F4FFFCF9F4FFFCF9F4FFF9F5EBFFE7DAAEFFE0CF
      95FFDFCE92FFDFCD8FFFDECC8CFFDECB8AFFB99664FF2E2424FF7F6F63FFF4EC
      E298BFBFFF04FFFFFF03C8CAD1A93D4046FF322725FFAA7A55FFDFC274FFE2C3
      72FFE3C370FFE3C370FFE3C26FFFE4C26DFFE5C16BFFE5C068FFE5C067FFE4BF
      66FFE3BE67FFDFB869FFDEB66AFFDBB36BFFD7AE6BFFD6AB6BFFC39366FF4731
      2DFF181A1CFF5B3935FFCC9E68FFC8996BFFC5966BFFC4956BFFC2926AFFC08F
      6AFFBB8968FFB37E62FFA97855FF8B5D48FF5C3437FF2A2622FF1F1E1FFF161A
      1BFF303537FF9A8284FFE8DED0FF555149FF412E2CFFD8B79CFFE0C19EFF6567
      66FF171A1CFFAFACA4FFDEBD95FFDDCAA7FF282725FFA29684FFDCBEA3FFA269
      5BFFCDA791FF83777AFF1B1D1EFF72403CFF8D4D49FF8C4C48FF8A4A47FF8745
      45FF874445FF864445FF864444FF864344FF864344FF864344FF854344FFBD90
      77FFF5E6C8FFF3E3C2FFC3B29DFF222022FF373633FFD7D0C8D1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEBCAAEB282724FF2C2929FFD7C6AAFFF3E2BFFFF2E1BEFFC4997BFFB380
      69FFF8F2E4FFFCFBF7FFFCFBF6FFFCFAF6FFFCFAF6FFFCF9F5FFEFE6C9FFE2D4
      A1FFE1D29CFFDFD097FFDFCE92FFDFCD91FFE0CB92FF7B564AFF272624FFBBB3
      A6FFFAF8F36E00000000FEFEFE0DB6BAC0CC313134FF352627FFA47C52FFDBC3
      74FFE0C475FFE1C372FFE3C370FFE3C370FFE3C26FFFE4C26EFFE5C16AFFE5C0
      68FFE5C067FFE5C066FFE3BE67FFE0BA68FFDDB66AFFDCB46AFFBB8960FF3C27
      2BFF443938FF3F3329FFC69764FFCEA16CFFCB9E6CFFC89A6CFFC6976BFFC191
      6AFFBD8B69FFBC8A69FFBC8A68FFBA8767FFB98662FFAD7C57FF854C49FF4D34
      2DFF2C2324FF201E20FF38393AFF232525FF3B2A2AFFDAC2B6FFF3E4CAFF6668
      67FF181B1CFFAEA89AFFE4C595FFE0CFADFF2B2B2AFF7E6353FFDABEACFF9D62
      57FFBE9386FFB18E85FF1F1F1FFF6F403CFF8E4E49FF8E4F49FF8D4D48FF8846
      46FF874445FF874445FF874445FF864445FF864344FF864344FF8B4A48FFD3B1
      9DFFF5E6C8FFF1E0BFFF947A63FF181A1CFF5B595AFFF9F7F160000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E577403E40FF1D1E1EFFA89277FFF3E3C1FFF3E2C1FFE6C99AFFA76E
      58FFEBD9B5FFFCFBF8FFFCFBF7FFFCFBF8FFFCFBF7FFFCFBF8FFF7F3E5FFE6DA
      AFFFE3D6A6FFE2D4A2FFE0D29CFFE0D198FFE0D096FFCABB84FF3D3A2FFF3837
      35FFCFC7B8EEFBF7F44600000000F2F2F829B5A8ACE5433834FF242321FF9B86
      4BFFDDBF75FFDFC578FFE0C374FFE1C372FFE2C371FFE3C370FFE3C270FFE4C2
      6EFFE5C16BFFE5C069FFE5C067FFE5C066FFE3BE67FFE1BB68FFB38255FF3B30
      32FFCEB5A1FF4A3A37FFA67255FFD5AB6BFFD1A66BFFCEA16CFFCA9C6CFFC899
      6CFFC5966BFFC1916AFFBD8C69FFBB8868FFBA8868FFBA8768FFBD8C68FFBA87
      63FF995E53FF674337FF40292BFF201D1FFF1A1C1DFF7D776CFFCBC6C2F86561
      62FF181B1CFFA79A83FFE6C997FFDFCDACFF2E2F2EFF403638FFD6C0B2FF9F64
      58FFB8897DFFD6BD9BFF262523FF6E3E3CFF8E4E49FF8E4E49FF8D4E49FF8948
      46FF874445FF874445FF874445FF874445FF874445FF864344FF9F645AFFF0DD
      B7FFF4E4C4FFE9D8B8FF403C39FF1A1C1EFFAA8E8DFFFEFEFE1B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB35847C7AFF171A1BFF554D48FFF1DFBDFFF3E2BFFFF0DEBBFFB480
      64FFCBA685FFFAF7EFFFFDFCF9FFFDFCF9FFFDFCF9FFFDFCF9FFFCFAF5FFEEE6
      C9FFE8DCB3FFE6DAAEFFE3D7A7FFE2D5A3FFE1D39EFFE1D39EFFB2A976FF2C2C
      27FF4A453EFFCDB6ACEDFAFAFA3300000000FAFAFA36D4C1B2F04E4E4AFF2623
      20FF806245FFD2B96EFFDFC77EFFDFC476FFE0C474FFE1C372FFE1C371FFE2C3
      71FFE3C370FFE4C26EFFE5C16CFFE5C16AFFE5C068FFE5C067FF9B834AFF3333
      33FFECE8DFFE555758FF7C603CFFD9B16BFFD6AC6BFFD3A86BFFD0A56BFFCDA1
      6CFFCA9D6CFFC89A6CFFC6976BFFC3936BFFC08F6AFFBD8B69FFBA8768FFBA88
      68FFBD8C69FFBB8967FFA56C5BFF845545FF462B2FFF1B1D1EFF322D29FF352D
      2AFF171A1BFF998568FFEBD3AAFFDFCEB1FF2F3132FF2C2F31FFD9CAB8FFA46B
      5AFFB07D6FFFE2D2B3FF2D2D2CFF6A3A3CFF8F504BFF8F504AFF8E4F49FF8A49
      47FF874445FF874445FF874445FF874445FF874445FF884545FFC1957FFFF5E7
      CBFFF4E3C3FFBAA48DFF272624FF242628FFD5D5D7CCFFFFFF02000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE13C0C0C0DF1D1F21FF302A29FFC9AD98FFF3E2C0FFF3E2C0FFD4B0
      87FFB17D5DFFF5ECDAFFFDFDFBFFFDFDFBFFFDFCFBFFFDFCFBFFFDFCFAFFF7F3
      E6FFECE2C0FFEBE0BBFFE9DDB5FFE6DAAFFFE5D9ABFFE4D7A7FFE4D7A8FFA398
      74FF2A2426FF3F3433FFA9A5AAE2F6F6F23EFFFFFF02FBFBF744CCCCCBC64D46
      4AFF1D1E1FFF604D34FFC19763FFDFC67DFFDFC67AFFDFC576FFDFC475FFE0C4
      73FFE1C372FFE2C371FFE3C370FFE3C36FFFE4C26DFFE4C26CFF958246FF3637
      37FFEFEEEAF0696467FF5A3F34FFD3A867FFDCB56BFFD8AF6BFFD6AD6BFFD4A9
      6BFFD2A76BFFCFA36BFFCC9F6CFFC99B6CFFC7986BFFC5966BFFC2926AFFBE8C
      69FFBB8868FFBA8768FFBC8A68FFBB8868FFAB765BFF845446FF442A2DFF1D1E
      1EFF16191BFF4E4740FFE3D8C3FFE5DFD2FF2E3234FF2B2C2DFFDDCEB1FFAA74
      62FFA66E5EFFE2D3B6FF323334FF613439FF90514FFF90514EFF90514DFF8C4B
      48FF874544FF874544FF874544FF874445FF864445FF8F504EFFE5CCACFFF4E4
      C5FFF2E0BDFF7A6E63FF181A1CFF6E6A65FFE9E7E77500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EAE7E099625E57FF191B1CFF907F6FFFF1DFBCFFF3E2BFFFEBD3
      AEFFAC765DFFDEC398FFFDFDFAFFFDFDFCFFFDFDFCFFFDFDFCFFFDFDFCFFFBFA
      F5FFF1E9CFFFEDE3C2FFECE1C0FFEBE0BDFFE9DDB6FFE7DBB1FFE6DAADFFE5D9
      AFFFB08D7BFF3D2F2AFF2E3133FFBAB4ABFFE3E0E37700000000FFFFFF18D8D1
      D1BF84817BFF262525FF322C25FF8E634BFFD1B872FFDFC67DFFDFC67BFFDFC5
      77FFDFC475FFE0C474FFE1C373FFE2C371FFE3C370FFE2C26EFF8E7144FF393A
      3BFFEEEEEDDBC0B2A2FF322628FFC29C57FFE2BC68FFDEB769FFDDB66AFFD9B1
      6BFFD6AD6BFFD4AA6BFFD3A86BFFD1A56BFFCDA06CFFC99A6BFFC7996BFFC697
      6BFFC3946BFFBF8E6AFFBA8868FFBA8768FFBB8868FFB98666FFB17D5DFF824C
      47FF382A27FF1D1D1FFF454141FFA1968CFF2C2E30FF252423FFD4BC9BFFAF7C
      6FFF975A51FFD8C5B4FF323537FF4E2A31FF90514EFF91524FFF91524FFF8D4D
      49FF874545FF874544FF874544FF874544FF874545FFB7866EFFF2E1C2FFF3E3
      C1FFD8BFA7FF3E3030FF1C1E1FFF9E9E9EE3FEFEFE2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFF720929190EB1C1E1EFF423132FFDFCBB0FFF3E2BFFFF2E1
      BEFFC69C7DFFBD8E6EFFF7F2E4F1FCFDFCF8FDFDFCFFFDFDFCFFFDFDFCFFFDFD
      FBFFF8F3E6FFF0E6CAFFEEE4C5FFEDE3C3FFECE2C0FFECE0BDFFEADEB8FFE9DC
      B4FFEADCB7FFC6AE78FF3C392DFF252526FF7B7578FBE0D4CBADFEFEFE19FEFE
      FE19E8E8E868BDA799FF474143FF201F1FFF49332FFFA48451FFCCB273FFDFC6
      7CFFDFC77EFFDFC579FFDFC476FFDFC475FFE0C473FFDDBC70FF734D40FF393B
      3DFFEBECECA8D6D6D5CB292A2BFFA8854EFFE4BF67FFE4BF67FFE2BD68FFDFB9
      69FFDDB66AFFDAB26BFFD8B06BFFD6AC6BFFD3A86BFFD0A46BFFCDA06CFFCA9C
      6CFFC89A6BFFC7986BFFC3946BFFC08F6AFFBB8968FFBA8768FFBA8768FFBC8A
      67FFAA725AFF684338FF2A2123FF222324FF1B1D1EFF1C1C1DFFA98677FFB585
      7BFF8E4E4BFFCEB6ADFF373639FF332527FF92544FFF925450FF915250FF8D4D
      4AFF874645FF874544FF874544FF874544FF90504CFFD9BAA2FFF4E4C3FFF2E0
      BEFFA68F7DFF1B1C1EFF45443FFFEDE6D8BF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAE3D6CB343535FF1D1F20FFA6907EFFF3E2C1FFF3E2
      C0FFEAD1A4FFAA735DFFE3CBAAF7FDFDFDB9FCFDFDF9FCFDFDF9FDFEFDFFFDFE
      FDFFFBFAF7FDF5EEDBFFF1E8CEFFF0E6CAFFEEE4C6FFEDE3C2FFECE2C1FFECE1
      BEFFEBDFBAFFEBE0BCFFC4B18DFF66533DFF1C1E1EFF625349FFBAB4ABE3F8F3
      E870FFFFFF06F6F6F61FDCC7C6CA867B7BF83A312CFF1D1E1EFF4B372EFF907C
      4CFFC59F6CFFDFC47AFFDFC982FFDEC77EFFDFC578FFD8B871FF593437FF383C
      3EFFDADDE054CEC7CC6F3E3235FF724B3EFFE1BE69FFE5C067FFE5C066FFE4BF
      66FFE2BC68FFDFB969FFDEB769FFDBB46BFFD8B06BFFD6AC6BFFD3A86AFFD1A6
      6BFFCEA26CFFCB9E6CFFC8996BFFC7986BFFC4956BFFC1906AFFBC8A69FFB987
      67FFBD8B69FFBC8967FF935F4DFF442D2CFF1C1E1EFF181B1CFF6F6867FFBD92
      86FF8A4A49FFCDAB9EFF654C46FF292422FF975B4FFF995D54FF965952FF8E4F
      4BFF884645FF884645FF874545FF874545FFAC7766FFF2E0BDFFF3E2BFFFEBD9
      B8FF4F3E3DFF191C1CFF8C8982FFF7FEF7210000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F4468B877DFF171A1BFF554944FFEDD9B7FFF3E2
      BFFFF2E1C0FFC79B76FFC29673FFF8F2E5D4FBFBFE45FCFEFE71FDFEFFFFFDFE
      FFFFFDFDFDE1F9F6EDFFF3EBD5FFF2EAD3FFF1E9CFFFF0E7CBFFEEE4C6FFEEE3
      C3FFEDE3C3FFECE1BFFFEEE4C4FFE2D1A8FF8A725EFF2F2725FF302F29FF7976
      72FFE5D8C7E2F2EEEE3DFEFEFE0DF6F0EA58C1B5B0C789847AFF29292BFF1D1E
      1FFF3D2C29FF685C39FF967354FFD3AD69FFDBC47AFFD0BA7FFF37292BFF373C
      40FFD0D4DC42F2E8E668817069FF3E3529FFDCBB68FFE4C26CFFE5C16AFFE5C0
      68FFE5C066FFE4BF66FFE3BD67FFE1BB68FFDEB769FFDCB46AFFD8B06BFFD6AC
      6BFFD4AA6BFFD2A76BFFCFA36BFFCB9E6CFFC89A6BFFC7996BFFC5966BFFC191
      6AFFBD8B69FFBC8A68FFBE8C69FFB07B5BFF8C6246FF302226FF636461FFCCA6
      8DFF844344FFC7A088FF9D866FFF272222FF90534EFF9B5F54FF9A5F54FF9052
      4CFF884645FF884645FF884645FF8C4B4AFFD7B697FFF3E2C0FFF3E2C0FFA796
      85FF222222FF252829FFD6D1CAD6FEFEFE070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3F3F316C0C0BFCD242628FF202121FFA69986FFF3E2
      BFFFF3E2BFFFE7CEA8FFB07A5FFFE6D0B0FFFEFEFA3DFFFFFF02F7F7FF22F7F7
      FF22FEFEFE1DFCFCF9BCF7F2E4FFF4EDD9FFF2EBD4FFF2EBD3FFF1E9D0FFF1E7
      CDFFEFE5C7FFEEE4C4FFEDE2C2FFEEE3C4FFECDCC1FFC1AA81FF5D423EFF2321
      20FF3B3B39FF987A78FFD7D6D7C4F0EDE868FEFEFE13F0ECE689C2C4C7BBA393
      7FFF3C3D3FFF262827FF201D1FFF3C3327FF4D4733FF794E47FF202020FF373C
      40FFD0D8DC42FEFEF82A98999AEC2C2623FFC5995EFFE1C473FFE2C371FFE3C2
      6FFFE4C26CFFE5C169FFE5C068FFE5C068FFE3BE68FFE2BD68FFE0BA69FFDEB8
      69FFDDB56AFFD9B06BFFD7AE6BFFD5AB6BFFD3A86BFFCFA36BFFCC9F6BFFC99C
      6AFFC89969FFC59668FFC29265FFC29163FFB17C61FF4A2E30FF5C5750FFE1C3
      9EFF824447FFB28168FFB0A796FF211F21FF884C4BFFA1675AFF9C6056FF9051
      4CFF884646FF884645FF884645FFAB7560FFEEDAB8FFF3E2BFFFEBD8B5FF6459
      4AFF171A1BFF7F7B73FFF0EEEB6A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F2F07D797573FF181A1CFF675746FFE9D7
      B6FFF3E2BFFFF2E1BFFFC89F7DFFC39675FFF7F0E0C300000000000000000000
      000000000000FEFEFE2EFBF8F4F0F7F1E3FFF6EFDEFFF5EDDAFFF3ECD6FFF3EB
      D5FFF2E9D1FFF1E8CDFFEFE5C8FFEDE4C4FFEDE3C3FFEFE4C6FFE3D5AFFFA47C
      69FF463E33FF212020FF313134FF989186FFBEB5BAB2F2EBE892FEFEFE1CF4EE
      E95ED9DBDD80D1C4B4FF6A6166FF4C4D4FFF312C2AFF1B1C1DFF161A1BFF3C3E
      42FFD4D8DC4200000000ABA7A7D3232322FF6E593AFFB4A259FFB4A35AFFB5A4
      5DFFB8A45FFFBDA35EFFC4A35EFFC6A25DFFC7A25CFFC5A15BFFC2A059FFBF9F
      57FFBB9D54FFB89B52FFB69852FFB29252FFAF8A51FFAA8151FF99694FFF844F
      4AFF784445FF6E3C41FF603339FF593234FFA2695AFF624835FF3E372FFFD8C3
      A9FF8B4D50FF905453FFB2A8A0FF1C1D1FFF6D413DFFA9715FFFA1675AFF9050
      4CFF884645FF884645FF8F4F4DFFD2B09CFFF3E2BFFFF2E1BFFFB4A18DFF1F20
      21FF262729FFADACAED5FEFEFE1A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE0BBAB0B3E028292AFF1E2021FFAF97
      87FFF3E2C1FFF3E2C0FFECD5A8FFB58263FFE0C6A1FEFCF9F460000000000000
      00000000000000000000FDFDFD87FAF6EDFFF8F2E3FFF6F1E2FFF6F0DFFFF5EE
      DBFFF3ECD7FFF2EBD5FFF2EAD2FFF1E8CEFFEFE6C8FFEFE5C6FFEFE5C7FFF0E6
      CBFFDFC7A3FF8D806BFF4C3E2DFF1D1D1FFF32282AFF837A77FFA7999DD4EFE3
      DEC2FFFFFF20FEF8F827E8E8ED2DF5F2EDBCD2BAB0FB878289FC77797BFE968F
      91FEE9E9EE3C00000000F3EBDDB64A4946FF1E2020FF232522FF222522FF2324
      23FF262324FF2C2326FF352429FF38252AFF38242AFF352429FF302327FF2A22
      24FF232222FF202220FF1F221FFF20231FFF21221FFF212120FF212021FF1E1F
      20FF1A1D1EFF181B1DFF171A1CFF252021FFA36B59FF885A47FF1E1E20FFAEA9
      A6FFA67164FF794148FFC9B09AFF372E29FF533B30FFA9715FFFA2685AFF8D4C
      49FF884645FF8A4947FFBA8B76FFF2E0BEFFF3E2C0FFEDDABAFF654D45FF181A
      1CFF716161FFF8F8F67E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3EF42847867FF171A1BFF5747
      40FFEBD6B2FFF3E2C0FFF2E2C2FFD6B28FFFBB8B6AFFF6ECDCEAFFFFFF100000
      00000000000000000000FEFEFE07FCFBF8CDF9F5EBFFF8F3E7FFF8F2E5FFF7F2
      E3FFF6F0E0FFF5EEDCFFF4EDD8FFF3EBD5FFF2EAD2FFF1E9D0FFF0E7CBFFEFE5
      C7FFF0E7CBFFF0E5C7FFD9C4A5FF9F8F6BFF533F35FF202120FF252022FF5C57
      55FF817C80FFDACDC1F9EDEFEF72F6F6F13AFEFEFE19FFFFFF01FCFAF86FFCFC
      FA6BFFFFFF0100000000FFFFFF18AEB1B9CAA1A3A5F3A2A2A2FF9F9C97FF9B95
      89FF978E7EFF938875FF90846EFF8F806AFF8C7D67FF8C7D67FF8C7E69FF8C7F
      6AFF8F836FFF928978FF958F82FF98948AFF9A9993FF9F9F9EFFA0A2A4F69497
      9CD2A6AAAFFD9E9EA4FF473438FF2B2623FFB7855FFFB17D5DFF2B2523FF9687
      73FFCAA48CFF733C42FFD7B58DFF635B50FF442C2DFFA8705EFFA46B5AFF8A49
      47FF884746FFA66E58FFEBD4ACFFF3E2C1FFF3E3C1FFA39685FF212222FF2225
      27FFC2B0B2DEFEFEFE1200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEF3F316BFBCB7CE242729FF1F20
      20FF9B907EFFF1E0BEFFF3E2BFFFEED9B4FFBD8C69FFDBB98DFFF8F4EA7D0000
      0000000000000000000000000000F8F8F828FBF9F6EBFAF6EDFFFAF5EAFFF9F4
      E8FFF8F3E5FFF7F1E3FFF7F1E1FFF6EFDDFFF4EDD9FFF3EBD6FFF2EAD3FFF1E9
      D1FFF0E7CDFFEFE6C9FFF0E7CBFFEFE4C4FFDED1B9FFB9A777FF694D47FF3130
      29FF1E1E1EFF333230FF4E5053FFAA9783FFDEDCD7E3D6D6DA7DF7F2ED67FEFE
      FE1300000000000000000000000000000000FEFEFE1FFCFCF964FCFAF87FFBF7
      F08EFBF6EC94F7F2E490F9F0E28EF7EEDE8CF6EEDF9BF6EEDF9CF7EEDE8CF8F0
      E39DF7F0E28EF9F4EA92FBF8F3C3FBF9F3E3FAF7F1E8F2EBEAE4DCDEE2ABD5D7
      DAA1CBB7AFFF65575AFF242023FF5B3736FFCEA166FFCEA264FF42302BFF3D3B
      37FFCCB2A1FF804446FFB6877AFF736F6BFF241E21FF9D6B52FF9E6355FF8847
      46FF93554DFFDAB994FFF3E2BFFFF3E2BFFFE3CAADFF55423CFF181A1CFF827D
      78FFEDEDEA650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F3F3598C8985FF1B1D
      1DFF372F2FFFD6C0A4FFF3E2C0FFF3E2C0FFE6C99AFFB98663FFE9D5AFF0FAFA
      F63F00000000000000000000000000000000FEFEFE5AFCF9F5FFFBF7EFFFFBF6
      EEFFFAF5ECFFF9F4E9FFF8F3E5FFF7F2E4FFF7F1E2FFF6EFDEFFF4EDD9FFF3EC
      D6FFF3EBD4FFF2E9D1FFF1E8CEFFF0E6CAFFF0E6C9FFF0E5C8FFEADFCAFFD5C4
      91FF967762FF504D3EFF362C25FF212020FF2D2F31FF484242FFAFA18EFFC4C5
      C5D2F5EEE19AFBF7F088FBF9F387F2F2EE8BB9BCC2B0B3B8BFB4B3B8BFB4B5B8
      BFB4B6B8BFB4B8B9BFB4B8B9C0B4B8B9BFB4B6B9BFB4B5B8BFB4B3B8BFB4B3B8
      BFB4B3B8BFB4B3B8BDB4C3C4C3F8BFBAB0FFAE9B85FF785650FF39383CFF3033
      35FF232424FF251F21FF5F4033FFBA895CFFD6AD6BFFD4AA6AFF815646FF2122
      21FFB79F82FF9D6B63FF9C6864FFAF8A7BFF212021FF805644FF92534CFF8A49
      47FFB88978FFF2DFBDFFF3E2BFFFF1E1C0FF9B8C77FF1D1E1EFF2E2A2DFFC3AF
      B3D1FEFEFE170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF03E8DCCCD93835
      34FF1A1C1DFF8B765EFFF2E0BEFFF3E2BFFFF2E1C0FFD4AF88FFC39674FFF5ED
      DBD6EEFFFF0F00000000000000000000000000000000FDFDFBA3FCF9F4FFFBF8
      F2FFFBF7F1FFFBF6EFFFFAF5EDFFF9F4E9FFF8F3E6FFF8F2E4FFF7F1E2FFF6F0
      DFFFF5EEDBFFF4ECD8FFF3EBD5FFF2EAD2FFF1E8CDFFF0E7CAFFF0E5C8FFF0E7
      CBFFF1E8D0FFE7DAB0FFD0AC89FF857769FF635437FF332526FF1B1D1EFF2C2D
      2CFFBBAB92FFF4E4C4FFF4E3C3FFDDD2BDFF313133FF1F2326FF1F2326FF2123
      26FF232427FF242427FF252528FF242427FF222427FF202326FF1F2326FF1F23
      25FF202425FF222426FF202223FF1D1F20FF191D1DFF1B1C1EFF322127FF5135
      31FF6F5D37FF9D724DFFD9B064FFE1BB68FFDBB46BFFDAB26BFFB48B55FF2820
      22FF645F58FFC49A83FF87514BFFD1B59AFF2F302FFF4E2E31FF894847FFA268
      59FFE9D1ADFFF3E2C0FFF3E2C0FFC9B49EFF2C2C2DFF1A1D1EFF8B8D8EFFF5F5
      FA38000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4308F8F
      94F01A1D1FFF292A28FFB5A992FFF3E2C1FFF3E2BFFFEED9B9FFC19373FFDBBB
      96FFFBF8F2A200000000000000000000000000000000FEFEFE09FCFCF9C9FCFA
      F5FFFCF9F3FFFBF8F2FFFBF7F1FFFBF6EFFFFAF5ECFFF9F5EAFFF8F3E7FFF8F2
      E4FFF7F1E3FFF6F0E0FFF5EEDCFFF4ECD8FFF2EBD4FFF2EAD3FFF1E8CFFFF0E7
      CBFFEFE5C6FFEFE5C7FFF0E8CEFFEEE4C6FFE7D3A9FFC5AA99FF877066FF241E
      21FF787267FFF0DCB1FFEDD5A5FFD7C5A1FF262827FF3A262AFF66423BFF5F39
      3AFF583338FF553036FF553036FF553036FF563136FF593338FF5E3839FF643F
      3BFF6E493DFF7D5A40FF8D6E42FF977F44FF97884BFF9C8B53FFB98E5DFFCCA1
      68FFE3BF6BFFE4C16BFFE5C067FFE3BE68FFE1BC68FFE0B969FFD2A866FF5741
      31FF33312EFFC0AA90FF894C4DFFC2A08EFF685649FF232020FF8C5049FFDBBA
      8EFFF3E2C0FFF3E2BFFFEAD3B5FF6D534CFF181A1CFF56473DFFE9E3DDC6FFFF
      FF01000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E68A6D6B66FF181B1CFF403A39FFD8C5ADFFF3E2BFFFF3E2C1FFE7CDA3FFBD8C
      69FFECD7B4FFFCF9F76300000000000000000000000000000000FEFEFE1BFCFC
      FAE2FCFAF6FFFCFAF5FFFCF9F4FFFBF8F2FFFBF7F1FFFBF7EFFFFAF6EDFFFAF5
      EBFFF9F3E8FFF8F2E5FFF7F1E3FFF6F1E1FFF5EFDDFFF4EDD8FFF3EBD5FFF2EB
      D4FFF1E9D0FFF0E7CBFFEFE5C8FFEFE4C6FFEEE5C7FFEEE4C6FFE4CFA4FF4940
      2FFF5E5041FFE8D1A8FFEFD8A9FFD8C8A7FF252929FF7F564BFFE1C8A9FFDDC2
      A1FFD9BD9EFFD6BA95FFD4B78CFFD3B588FFD4B588FFD4B484FFD6B782FFD8BA
      81FFDBBD7CFFDEC179FFE0C476FFE1C475FFE0C475FFE0C474FFE2C372FFE2C3
      70FFE3C36FFFE5C16AFFE5C067FFE5C066FFE4BF66FFE3BE68FFE3BE67FF9A6A
      4CFF1E1D1FFF968876FFB78B76FFA47062FFAC9A87FF1D1D1FFF765B53FFF2E1
      BDFFF3E2BFFFF2E1C0FFB09A7EFF252222FF1D1F21FFA19A98EEFAF5F1380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE26DDCEBAE936312DFF191B1DFF7E5C58FFEDD9BBFFF3E2BFFFF3E2C0FFDDBC
      8CFFC5966AFFF2E5C9F7FFFFF93000000000000000000000000000000000FEFE
      FE2AFCFBF9F0FCFBF7FFFCFAF7FFFCFAF6FFFCF9F4FFFBF8F3FFFBF7F1FFFBF7
      F0FFFAF6EEFFFAF5EBFFF9F4E9FFF8F3E6FFF7F2E3FFF7F1E2FFF6EFDEFFF4ED
      DAFFF3ECD6FFF3EBD4FFF2E9D1FFF1E7CDFFEFE5C8FFEDE4C5FFEEE3C4FF695F
      51FF232222FFC2B39AFFEFD8A9FFD9C9A9FF27292AFF644242FFE4D4A9FFE1D2
      9CFFE0D098FFE0CF95FFDFCE91FFDECC8CFFDECA88FFDEC985FFDEC983FFDEC8
      81FFDEC880FFDEC77FFFDFC67DFFDFC67BFFDFC679FFDFC579FFE0C476FFE1C4
      75FFE2C473FFE2C372FFE2C370FFE4C26DFFE4C16BFFE5C16AFFE5C169FFD5AE
      60FF3E3229FF323232FFC5A795FF965C57FFCBA691FF453534FF48423BFFE1CE
      ACFFF3E3C2FFCEBFA3FF383734FF181B1CFF6C7074FFE6E6E95D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F2F24F8D7C82FF181B1CFF2C2524FFB6967DFFF2E1BFFFF3E2BFFFF2DF
      BAFFD2AB7CFFCFA674FFF5ECD7E2FEFEFE1C0000000000000000000000000000
      0000F9F9FE2CFDFCFBE6FCFBF8FFFCFBF7FFFCFBF7FFFCFAF5FFFCF9F4FFFCF9
      F3FFFBF8F2FFFBF7F1FFFBF6EEFFFAF5EBFFF9F4E9FFF8F3E7FFF8F2E4FFF7F1
      E2FFF6EFDEFFF4EEDAFFF4ECD7FFF2EBD5FFF2EAD2FFF1E8CFFFF1E8CFFFC1A3
      80FF202120FF8D7B68FFEDD7AFFFE0CAA8FF433433FF393731FFDED2A4FFE7DB
      B2FFE6DAAEFFE5D8A9FFE4D6A5FFE4D5A3FFE2D39EFFE1D199FFE0CF94FFDFCC
      8DFFDEC985FFDEC880FFE0C67BFFE1C578FFDFC076FFD9B674FFD0AB71FFCAA2
      6DFFC59B69FFC29664FFBA925DFFAA9058FFA28F54FF9E8E50FF9D8D4DFF9C87
      4AFF5A3A35FF1B1C1DFF937465FFC49A86FFBB8C79FF918370FF1D1E1EFF927C
      71FFDCCDB3FF524F4AFF171A1BFF4F4D49FFE4E4E0DACCCCFF05000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF01D7D8DE8653585DF917191BFF463D33FFD4BC98FFF3E3C1FFF3E2
      C0FFF0DCB4FFCCA173FFD6B080FFF8F2E4D4FFFFFF0A00000000000000000000
      000000000000FFFFFF28FCFCFADEFDFCF9FFFDFCF9FFFCFBF7FFFCFBF7FFFCFA
      F6FFFCFAF5FFFCF9F3FFFBF8F2FFFBF7F1FFFBF6EFFFFAF5ECFFF9F4E9FFF9F3
      E7FFF8F2E5FFF7F1E2FFF6F0E0FFF5EEDCFFF4EDD8FFF3EBD5FFF2EAD3FFE3D7
      BFFF4A3534FF3C3533FFE2CCA4FFEBD3A9FF836A59FF2C2824FFC69F72FFBF97
      82FFAE837DFFB5877EFFAB8179FF957D70FF837B6AFF7C7A67FF7A7A61FF7877
      53FF777144FF776D3DFF756638FF705C36FF685034FF5C4132FF513531FF492D
      2FFF43282DFF3C232BFF302027FF231E21FF1C1D1FFF191C1DFF191D1DFF1A1E
      1EFF1D1F1FFF191B1DFF32312EFFC1B196FFC39880FFCDAD91FF312F2EFF3B2D
      2DFF5D5754FF181B1CFF322E29FFCABDADF1FEFAF63D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFD2D4C13D4244FF171A1BFF5E5446FFE5D0AAFFF3E2
      C0FFF3E2C0FFEDD7ADFFC99D71FFDFBF90FFFBF6EBC9F5F5F51A000000000000
      00000000000000000000F8F8F827FCFCFBD6FDFCFBFFFDFCF9FFFDFCF9FFFCFB
      F8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF9F3FFFBF8F2FFFBF7F1FFFBF7EFFFFAF5
      EDFFFAF5EBFFF9F4E8FFF8F2E6FFF7F1E3FFF6F0E0FFF5EEDCFFF4EDD8FFF3EA
      D5FF968874FF1E201FFF8B7F6FFFEED8AEFFA6967EFF1F1F20FF42312AFF3026
      25FF281F23FF2B2024FF281F23FF232021FF202020FF1F2121FF202323FF2427
      27FF282A2BFF2D2E30FF303134FF323436FF313437FF2E3336FF2D3135FF3132
      36FF3C3539FF543C41FF734C4BFF8D6A57FF9F8668FFAA997FFFB2A896FFB6B2
      A8FFBCBAB5FF998176FF292827FF42423EFFC4A783FFDEC29CFF999284FF1D20
      20FF171A1BFF1D1D1EFF997A74FFFAF4EB760000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F724C2C4C3FA2D3031FF1B1D1DFF7C6E58FFE9D5
      B2FFF3E2C0FFF3E2C0FFEDD6B0FFCA9E7AFFE1C39BFFF8F1E4BEFFFFFF110000
      0000000000000000000000000000F3F3FE17FCFCFCBAFDFDFBFFFDFDFBFFFDFC
      FAFFFDFCF9FFFCFBF8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF9F3FFFBF8F2FFFBF8
      F1FFFBF7EFFFFAF6EEFFFAF5EBFFF8F4E8FFF8F2E5FFF7F2E3FFF6F1E1FFF6F0
      E0FFE7D8B5FF4C3F32FF362A2CFFCAAA92FFE2C99EFF4F4439FF181A1CFF654A
      4CFF976F69FF895F63FFA4796FFFBE9F82FFCDBA9AFFD4C8B2FFD7D0C1FFDAD7
      CFFFDDDDD9FFDEE0E1FEC9CDD08FCBCED48FD4D7DCAFD8DCE0C7DCDEE2D4DBDD
      E1CFDFDFE1D0E7E0E3CBEFE4E4C2F3EBE5B3F7EEE38BF9F5EC88FAF8F171FCFC
      F760FCFCFC58F2EBE693B1AFA9FF2D2C2FFF312D2BFF927E65FFD5C9B5FF766D
      5EFF1A1C1DFF372E30FFDFD7D4EEFFFFFF0A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAFAF767A8A7A3FE232526FF1E1F1FFF937E
      64FFEEDAB7FFF3E2C0FFF3E2C1FFEBD5B3FFCBA077FFDDBD8FFFF3EDD9B30000
      000000000000000000000000000000000000FFFFFF02FDFDFB8FFDFDFCFFFDFD
      FBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF8FFFCFBF8FFFCFAF7FFFCFAF5FFFCF9
      F4FFFBF8F3FFFBF8F1FFFBF7F0FFFBF6EEFFFAF5EBFFF9F4E9FFF8F3E6FFF8F2
      E4FFF8F2E5FFA48A87FF1D1E20FF694A43FFDEC1A1FF9B8271FF1D1E20FF8686
      87FFF3EDE5F6F6EFE7F2F8F1E5F0F8F1E4F1F9F2E4F4F9F3E5F1F9F3E4EBF9F2
      E4E5F8F1E4E9F9F1E3E6F8F0E1E4F8F1E3FDF9F2E3FFF9F1E2FFF9F1E2FFF9F1
      E2FFF9F1E2FFF9F2E3FFF9F2E3FFF9F2E4FFF9F3E5FFF8F2E4FDF8F1E1CDF8F0
      E0C3F8F1E1BCF9F2E5BDF7F3EAEFBDA49EFF4B4138FF1E1F20FF4D4540FF9281
      68FF2A2B29FF212323FFA3968CFFE8D9D995FFFFFF0100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F5F0A08C8D8AFF191D1EFF2725
      23FF9D7D69FFECD8BAFFF3E2BFFFF3E2C3FFECD5AFFFCCA16EFFD9B884FEF8F2
      E3CEFEFEFE1600000000000000000000000000000000FFFFFF01FEFEFE5CFCFC
      FCECFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF7FFFCFB
      F7FFFCFAF6FFFCF9F4FFFCF9F3FFFBF8F2FFFBF7F0FFFBF7EFFFFAF5ECFFF9F4
      EAFFF9F4E8FFEDE9DDFF666860FF1D1D1EFF6F524CFFD0BA9AFF655F53FF2124
      24FF9D8F7CFFEEDABCFFF4E5C6FFF3E2BFFFF3E1BDFFF3E1BCFFF3E1BDFFF3E2
      BFFFF3E2BEFFF3E2BFFFF3E2BFFFF3E2BFFFF3E2BFFFF3E2C0FFF3E2C0FFF3E3
      C1FFF4E3C2FFF4E3C3FFF4E3C4FFF4E4C4FFF4E4C5FFF4E4C5FFF4E3C5FFF4E4
      C6FFF3E4C6FFF3E4C8FFF4E6CCFFF4E8D0FFD2C3A8FF807564FF292726FF1B1E
      1FFF181B1DFF171A1BFF231F20FF73686CFCD9DBE15E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE07EAEBE8B76F7374FF181B
      1CFF2A2323FF91716AFFEDDCBFFFF3E2C0FFF3E2C1FFEDD6ACFFD1A87BFFDBB8
      88FFF4EAD4E0F9F4F42F0000000000000000000000000000000000000000FEFE
      FE1BFDFEFDAEFDFDFCFFFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCFAFFFDFC
      F9FFFCFBF8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF8F3FFFBF8F2FFFBF7F1FFFBF6
      EFFFFAF6EDFFFAF5ECFFE0DECFFF4F4F4DFF1C1C1EFF544C44FFB59775FF453F
      3AFF292523FF61574EFFCFB48FFFE5D7BAFFE6D9BEFFE6D8BBFFE5D6B7FFE4D4
      B4FFE2CFADFFDEC8A5FFDDC6A2FFDDC6A1FFDCC49CFFDAC097FFD6BA90FFD0B1
      87FFC6A17EFFB78B75FFAD7E71FFAD7E71FFAA7B6FFFA5756DFF9B6C68FF8D65
      63FF76605CFF655B58FF5E5957FF5D5957FF5C5B5AFF57504BFF2D2A2CFF1D1F
      21FF171A1BFF171A1BFF171A1BFF212325FFD9D5D0F5FFFFFF05000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE13DFE2E2AB5256
      5BFF171A1BFF232123FF897F72FFECDBBBFFF3E2C0FFF3E2C0FFEFDBBBFFD9B3
      7FFFD1A873FFF1E4C8F6FAF7ED69000000000000000000000000000000000000
      000000000000FEFEFE47FCFDFDCBFCFDFCFDFDFDFCFFFDFDFCFFFDFDFBFFFDFC
      FBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF8FFFCFBF6FFFCFAF5FFFCF9F4FFFBF8
      F2FFFBF8F1FFFBF7F0FFFBF7F0FFDDD5CEFF6F514CFF20211EFF312D2AFF6340
      3DFF3B2A2DFF1A1C1DFF312E2AFF393B3BFF393C3CFF3A3C3CFF3B3D3BFF3C3C
      3AFF3B3936FF383532FF373430FF373430FF36332EFF34302CFF322E29FF2E2A
      25FF282522FF232020FF211E1FFF211E1FFF1F1D1FFF1E1D1EFF1C1C1DFF1A1B
      1CFF171A1CFF161A1BFF171A1BFF171A1BFF16191AFF16191BFF171A1BFF171A
      1CFF191B1CFF1A1B1DFF1C1C1DFF1F1E1FFFB28F89FFF2F2F214000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0BC4C5
      CC9C50474BFF191B1CFF1F2122FF98866FFFEAD3B6FFF3E3C1FFF3E2C0FFF1DE
      BBFFDCBA8CFFD3A974FFE7CFA5F3F8F2E7A5FFFFFF0C00000000000000000000
      00000000000000000000FFFFFF03FCFCFC71FCFDFDE4FCFDFCFEFDFDFCFFFDFD
      FCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF8FFFCFAF7FFFCFA
      F5FFFCF9F4FFFBF8F2FFFBF7F1FFFBF7F1FFEFE5CDFF878470FF3B362AFF1B1C
      1EFF1C1F20FF191D1FFF181A1CFF15191AFF272420FF52472DFF564D2FFF5850
      31FF5A5232FF5C5331FF5D5533FF5E5735FF605936FF615B36FF625B36FF635E
      3EFF635F3FFF5A4131FF4C2D2FFF563B30FF645C4BFF656259FF64625AFF6463
      5CFF65645FFF3A3A3AFF1A1C1DFF171A1BFF2B2D2EFF6B696CFF746E75FF796F
      76FF7F7177FF877379FF94767DFF947A7EFFE5D5C2FEFEFEFE0D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF04DAC4C5C8736559FF191B1CFF252221FF7A645AFFE1D0B3FFF3E3C2FFF3E2
      C0FFF3E2C2FFE7CB9DFFD2A975FFDCBB8FFFF2E7CBE6FBFBF852FFFFFF030000
      000000000000000000000000000000000000FFFFFF0FFCFCFE5BFCFDFDEBFDFE
      FDFFFDFEFDFFFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFB
      F8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF8F3FFFCF9F3FFFAF6EDFFCEC3ACFF8981
      6CFF4C3A30FF1D2022FF1E2022FF2D2626FF9E8161FFEEDAB0FFEDDCB1FFECDC
      B1FFECDCB1FFEBDBB0FFEADBAEFFE9DAADFFE8DAADFFE8DAACFFE8DAADFFE2CF
      95FFCEA771FF9D6251FF9F6555FFCEA785FFF0DCB6FFF3E3C2FFF3E3C3FFF3E4
      C7FFC6B093FF403E3BFF171A1BFF212325FF9B9E9FE9FBF9F582ECECEC0EECEC
      EC0EECECEC0EECECEC0EECECEC0EECECEC0EFEFEFE0B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3FEF317E8E2D7CD6D6F6EFF191B1DFF1A1B1DFF645C51FFDCC4A3FFF2E2
      C2FFF3E2BFFFF3E2C1FFEDD7B4FFDAB57FFFD1A877FFE8D29FFFF9F4E7ABFFF9
      F430000000000000000000000000000000000000000000000000FFFFFF0FFEFE
      FE49FCFDFDDAFDFDFDFFFDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFDFCFAFFFDFC
      F9FFFDFCF9FFFCFBF8FFFCFBF7FFFCFAF6FFFCFAF5FFFCF9F4FFFCFAF5FFF8F2
      E4FFDED1C7FFBCBDBBFFBCBDBDFFC9C2C0FFF2E6D3FFF9F4E9FFF8F3E7FFF7F1
      E2FFF6EFDDFFF5EEDBFFF4EDD8FFF4ECD8FFF4ECD8FFF1E6CAFFE0C592FFB27F
      64FF995C50FFB48162FFE1C5A3FFF2E1BEFFF3E3C1FFF3E3C2FFF0DFC1FF9C8A
      7CFF3D352EFF161A1BFF352B2BFF9E8C8FE8E6E6EA3E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE1CD9DADE8D6C6064FF242423FF1A1C1CFF433A37FFBDAC
      95FFEFDCBDFFF3E2C0FFF3E2C0FFF1DFBDFFE7CC9BFFCFA576FFDAB479FFEFE0
      C4FEF7EFDD83FAFAFA3900000000000000000000000000000000000000000000
      000000000000FFFFFF3CFDFDFD9EFCFDFDEBFDFDFDFFFDFDFCFFFDFDFBFFFDFD
      FBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF8FFFCFBF8FFFCFAF6FFFCF9F5FFFCFA
      F5FFFCF9F4FFFCF9F3FFFBF8F2FFFBF7F0FFFAF5ECFFF8F2E6FFF8F2E3FFF7F2
      E2FFF6F0E0FFF5EFDDFFF7F2E4FFF6EEDBFFE4CEABFFBF916CFF995D51FF9F65
      56FFD1A981FFEDD9B7FFF3E3C2FFF3E2C0FFF3E3C1FFDFCEB3FF917A63FF2425
      25FF171A1BFF393B3DFFCBC2B7FEF0E5E5590000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE07EDE8E39FA19C92FF242628FF17191BFF332D
      2CFF9B8172FFE5D2B2FFF4E3C3FFF3E2C0FFF3E2C2FFF0DCBAFFDFBD8AFFCDA2
      71FFDEBC87FFEBD7B8D9F3EBD8ACF9F9F92E0000000000000000000000000000
      0000000000000000000000000000FFFFFF05FCFEFE5BFBFDFD99FDFDFDDAFDFD
      FCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF8FFFCFBF7FFFCFA
      F6FFFCF9F5FFFCF9F3FFFBF8F2FFFBF7F1FFFBF7EFFFFAF6EEFFFAF6ECFFFAF6
      EEFFFBF9F5FEF5EEDDFDE8D3BDFFC69C77FF995D51FF9C6052FFBC8D70FFE9D0
      A5FFF3E2C2FFF3E2C1FFF3E2C0FFF2E0C0FFCBB29CFF595049FF1D1E1EFF191C
      1CFF504A45FFB6B5BACFFAF6F63FFFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF05F6F6F65DA09C9DF649463FFF1619
      1AFF1A1C1EFF6B5D4DFFC0AF99FFF3E3C3FFF3E3C1FFF3E2C0FFF3E3C5FFEED7
      A9FFD7B38FFFD1A76FFFD2AC80FFE5CBA6EFF2E8CCDAFCFCF964FEFEF316FEFE
      FE0700000000000000000000000000000000000000000000000000000000FEFE
      FE3FFDFDFD85FDFDFB84FDFDFB9AFCFCFBC3FCFCFAFBFDFCFAFFFDFCFAFFFDFC
      FAFFFCFBF9FEFBFAF8F3FCFBF7D4FBF9F5C6FCFBF8D3FCFCFAD0FCFCFBD4F0E4
      C4E4D9BBA3F4BB8D70FF9F6553FF9D6253FFB9896CFFE0C198FFF2E0BDFFF3E3
      C4FFF3E2BFFFF4E4C4FFE8D0B4FF9E8979FF3B2C2DFF171A1BFF1C1C1EFF6D6A
      6CFAE8DECFE2F2FFFF1400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBF7F048CBC9C5C36950
      53FF1D1F20FF171A1BFF393531FF837369FFE5D2B3FFF2E2C2FFF3E2C0FFF3E2
      C2FFF3E2C3FFEDD6AFFFDCBB94FFD6AD70FFC79A73FFD6B28BFFEAD6A4FFF6EE
      E0EAF8F2E652FBF5EB4EFAFAF63CFEFEFE070000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0AF8F8F82AFEFEFE37FEFE
      FE35FEFEFE3FF8F5EE4DFBF5E44EF6EDE975F0E6D1FCE1C698FFB98B7DFFA871
      5DFF995C50FFA16757FFC2946DFFDFC19EFFF0DDB6FFF3E3C3FFF3E2C1FFF3E3
      C2FFEFDFC2FFC7A78FFF5F534DFF242021FF171A1BFF2A2D2DFFA59D97FCD6D0
      D47F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE17E4D8
      DAAD8E8C8EFF303031FF161A1BFF1D1E1FFF47403DFFB19B7EFFE3D2B7FFF3E2
      C2FFF3E3C1FFF3E2C1FFF3E1C0FFF0DCBAFFE6CCA8FFDCB77BFFC59670FFB988
      6DFFD3AC7AFFE1C58AFFEBDAC3FFEDDED5BFEFE0CD86F5E8D186F5EBD386F4EC
      D98DF1ECDB87F2ECDA7EF3EDDA85F4EDD98EF5EBD586F5EAD186EEDFCC89E7D4
      CDA1EBDBD2FFDDC49AFFCFA779FFAB7566FF9D6258FF9A5D51FF995D51FFAD77
      63FFD1A877FFE6CBA7FFF1DEBCFFF3E2C2FFF3E3C2FFF3E3C1FFEFDCBEFFD5C1
      A8FF806159FF302C2BFF171A1BFF1F1F1FFF615951FFC7BEB2D8F5F3EE6F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF05EEEEEE5FD2CEC7FE5B5A5BFF202223FF16191BFF222322FF5C4C41FFB5A3
      8EFFE1CAB1FFF3E3C2FFF4E3C3FFF3E2C0FFF3E2C1FFF2E1C3FFEFDCC0FFE9CE
      9AFFDCB984FFC29479FFB48168FFB48063FFC2926AFFC89B6CFFCA9F6AFFCAA4
      70FFCBA776FFCBA77AFFCAA575FFC9A26FFFC79B69FFBE8D66FFAC755EFF9A5E
      53FF955850FF975A50FF9C6052FFA26956FFB17D67FFCDA47EFFE4C58FFFEEDA
      B8FFF3E2C3FFF3E2C1FFF3E2C1FFF4E4C4FFF0DDBCFFCABAA3FF937B6CFF362E
      2FFF1A1C1DFF181A1BFF3D3637FFA08882FFE4DEDC93F9F9F432000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF18F6F3EBB499999AF74F4C4AFF191B1DFF16191BFF201F
      21FF604C45FF998C7FFFD9BBA3FFF3E3C4FFF4E5C6FFF3E3C2FFF3E2BFFFF3E3
      C4FFF3E4C7FFF2E2C5FFF0DCB3FFEBD09BFFE1C296FFCCA68FFFBC8E78FFB581
      61FFB07A5AFFAD7658FFAD7659FFAF7959FFAF795AFFB07A5BFFB4805EFFB987
      67FFC19578FFD0AA8FFFE1C296FFEBD19CFFF1DDB6FFF3E3C5FFF3E3C5FFF3E2
      C1FFF4E4C3FFF4E5C6FFEEDAB7FFB5A18EFF867766FF372F2BFF191C1DFF1619
      1AFF2E2926FF7C736FFAD4BCBAEBF9F9F92CFFFFFF0800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF02FBFBF740D2CECEC1A39B9AFE453537FF1C1E
      1FFF16191AFF1B1C1DFF4A3D38FF6F6560FFBB9681FFE8D6B6FFEFE0C4FFF3E3
      C4FFF3E3C1FFF3E2C0FFF3E3C2FFF3E3C4FFF3E3C5FFF3E3C4FFF2E1BFFFF0DA
      B0FFEED7A9FFEED7A8FFEED8A9FFEED8AAFFEED8A9FFEFD8AAFFEFDAAEFFF1DD
      B5FFF2E1BEFFF3E3C4FFF4E4C5FFF3E3C5FFF3E2C2FFF3E3C2FFF2E2C5FFEDDE
      C1FFDBBF9FFF8D786CFF605950FF2D2725FF171A1BFF171A1BFF222425FF756E
      63FFBBB6B3DEF2E8DF7BFFFFFF03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F2F264D0C8CAA0B0A7
      97FF3E3F41FF262624FF16191AFF171A1BFF2C2725FF42413EFF6C5250FFBD9C
      7DFFD7CAAEFFDFD0B9FFEDD9BDFFF3E1C0FFF3E3C1FFF3E3C1FFF3E3C2FFF3E3
      C3FFF3E3C4FFF4E4C4FFF4E4C4FFF3E3C4FFF3E3C4FFF3E3C4FFF4E3C4FFF3E3
      C3FFF3E3C1FFF3E3C1FFF1DEBFFFE7D4BBFFDACEB7FFD0BC9CFF9B7764FF4F47
      47FF3B3632FF1E1D1EFF16191AFF1A1B1DFF303233FF71595AFFCAC6C5F2E3E1
      DC92FEFEF92B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF04F4F4
      F160E0E2E396C5B4A0FF5C5D60FF3F3C37FF191B1CFF16191AFF171A1BFF2423
      22FF2B2D2DFF3F3436FF845D50FFAF9878FFBBB099FFBDB4A2FFC2B6A5FFD0B9
      A8FFDCBFACFFDFC4AEFFE2C8B0FFE1C6AFFFDEC2ADFFD8BDAAFFC7B7A6FFBFB5
      A4FFBCB3A0FFB7A98EFF9F8065FF624341FF302F31FF292A29FF1D1D1EFF1619
      1BFF16191AFF2A2424FF4E4E4EFF857175FFE1DBD3F2E7E0E263FEF9F92F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F92BF8F8F873E2D5C4F18A878CF776736DFF41372FFF191C
      1DFF171A1BFF15191AFF171A1BFF1B1D1EFF1C1F20FF1D2022FF242225FF3927
      2CFF4F3033FF593837FF61413AFF5D3C39FF543435FF462C30FF2C2427FF2021
      23FF1C2021FF1C1F1FFF191C1CFF16191BFF16191AFF181B1CFF242022FF6054
      4CFF7D8082FDB7A09EF5F4EEE5CBF6F6F639FEFEFE1C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF01FFFFFF08E7FEFE0BF9F4ECB0CDC1B9D0A0A3
      A8D7A3A099FF796353FF2E2B2DFF222628FF202324FF1C1E1FFF1A1B1CFF171A
      1BFF16191BFF16191BFF171A1BFF171A1BFF16191BFF16191BFF181A1CFF1B1D
      1DFF1E2021FF222527FF232629FF4E3939FF948777FFA5A6A6F0ABA4A9CDEADB
      D3CBFCF9F959FFFFFF05FFFFFF04000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE09FCFAF67CEBDED69EBBBBC09AAEB3BA91C5C6C9D5C4BAAAFBA38267FC5B3A
      3BFC2E2A2DFE26282BFE23272AFD232629FC27272AFC3A2E31FE82584BFBBAA6
      87FAC8C6C1FAB2B7BB9CB0B5BC92D6C8CBA3F7F0E891FAFAFA3B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Icons.Icons = {
      010000003E080100000001000100808000000100200028080100160000002800
      0000800000000001000001002000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFB49F0E5DAA0C0BBC1AFBDC1C5CFC2BBACFFA5896BFF5B3938FF2523
      26FF1D2124FF1D2123FF1E2021FF1D1F20FF1C1E1FFF1D1E1FFF1D1F20FF1E21
      22FF1D2123FF1F2124FF36272BFF845D4CFFB7A68DFFC7C6C3FCB4B7BFACD5C5
      C5A1F9F5EE8CFEFEFE0700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF01FFFFFF0CFAFAFA38F2E7DAC5AAA5
      A7D49E9E9FF37E6E5CFF2F292CFF1F2324FF1B1E1EFF171A1BFF16191BFF161A
      1BFF171A1BFF171A1CFF171A1BFF161A1CFF161A1CFF161A1CFF161A1BFF171B
      1BFF171B1CFF171A1BFF16191BFF161A1BFF191B1CFF1E2122FF212426FF543D
      3BFF978F87FF9B9CA2DDD0BEBCD4FAF8F07CFFFFFF0AFFFFFF03000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF06F4F4F431F4F2EF77D0BEB9FB827F84FE655C54FF2624
      22FF171A1BFF16191AFF171A1BFF1D1E1FFF1E2123FF2C2528FF573837FF7E62
      4BFF907D65FF998D78FF9C9584FF9D988AFF9E998DFF9E998CFF9D9788FF9B93
      80FF96876FFF8A7358FF6D4D41FF3F2C2EFF222325FF1E2121FF1A1C1DFF1619
      1AFF161A1BFF191B1DFF413735FF747473FF9F9893FEEFE6DBD8F3F3F341FEFE
      F51B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F8F1ED4BE1E0E0A6B8A5A1FF5A575AFF343130FF181A1BFF16191AFF1D1D
      1EFF2C2C2BFF3A3536FF825C4FFFB59E80FFC1B6A0FFCBBCA9FFDFC5AFFFEBD5
      B5FFF1DEBCFFF3E2BFFFF4E3C2FFF4E4C3FFF4E4C5FFF4E4C4FFF4E4C3FFF3E3
      C1FFF2E0BCFFEFDBB8FFE6CDB2FFD5BFACFFC4B9A7FFBDAF94FFA38267FF5842
      3FFF303131FF262524FF171A1BFF16191AFF21211FFF484746FF7D756EFFDCD4
      C6DFE1DFE169F9F9F92E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBF84FCBC7
      CB9DB6A69BFB484442FF222324FF16191BFF181A1CFF342F2AFF4B4946FF936F
      62FFD4C09EFFDFD2B9FFEDDAC0FFF3E3C4FFF4E5C6FFF5E7CCFFF7EBD3FFF8EE
      DBFFF9F0E0FFF9F2E4FFFAF4E8FFFAF4EAFFFAF5ECFFFAF5EBFFFAF5EAFFFAF4
      E9FFF9F2E4FFF9F0E0FFF8EEDAFFF6EAD3FFF5E7CBFFF4E4C4FFF1E0C2FFE6D5
      BCFFDCCEB2FFBFA080FF655451FF433F3AFF242021FF16191AFF191C1CFF3030
      30FF716764FFC8C5C2DAF0E9DE8CFFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF10E9E5DFBBA5A3A3F24640
      41FF1C1F1FFF16191BFF1B1C1EFF4F4438FF796E66FFCAAE8DFFECDCBCFFF2E3
      C6FFF5E6C9FFF6E9CFFFF8EEDBFFF9F3E5FFFBF6EDFFFBF6EEFFF8F0E1FFF4E6
      CAFFE6D1C1FDD9BFBDFFD3B7BAFFD1B4B9FFD0B3B8FFD1B4BAFFD2B5BBFFD5B8
      BBFADEC7BEF4F1E0C3F0F6EDD9F4FBF8F1FFFCFAF6FFFBF7F0F9F9F2E5FDF7ED
      D8FFF6E8CEFFF4E5C9FFF0E1C4FFE4CDAAFFA48478FF675E55FF332728FF171A
      1BFF171A1BFF262828FF8A7E6FFEC6B5B3CAF4F0ED47FFFFFF01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE13F8F6F279BBB8B4F664615CFF1A1D1EFF1619
      1AFF1C1E1FFF5B423EFF9C9080FFDBC4A2FFF4E3C3FFF5E7CBFFF6EAD1FFF9F0
      DFFFFAF4EAFFFAF5EEFFF5E8D0FFDFC3A7FFBD9497FFB48684FFAE7C66FFA06B
      4CFF8D5346FF804343FF7C3E43FF7B3C42FF7A3B42FF7A3B42FF7B3D42FF7D3F
      43FF864B44FF9A6448FFAA785AFFB3837BFFB88D93FFCDA89EF6F0DEBEF7FAF6
      F1FEFBF8F5F2FAF5EBF5F8EFDEFFF6EAD2FFF5E6C9FFEEDABAFFBEA494FF8576
      62FF2E2929FF181B1CFF161A1BFF3E312FFF928483FCE3D1CFB8F8F8F826FFFF
      FF02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F22AE5E1DDD0727274FF30302FFF16191BFF1F2020FF443D
      38FFB09C82FFDEC7AFFFF3E2C1FFF5E7CCFFF8EDD9FFFAF2E5FFF6EEE6FFEFDF
      CCFFCCA689FFA36D71FF975C54FF844941FF75393EFF73353CFF72343DFF7234
      3CFF72343CFF72353CFF73353CFF73353CFF73353CFF73353CFF73353CFF7235
      3CFF72343CFF72353CFF73343DFF74343DFF73363DFF7A413EFF905749FF9E66
      69FFBA8C80FFECD8BCFFF4EDEBF9FAF6F0F0FAF5EBFFF8EDD9FFF5E6C9FFEEDB
      B9FFC7B8A1FF85655CFF2E2B2BFF181B1CFF1E1D1EFF504A4BFFC1A8A2FEEBEB
      E96BFEFEFE160000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3E7E06CBBB6B7E7443D3FFF1A1C1DFF181A1CFF3D3835FF937E6FFFDECE
      B2FFF3E2C1FFF5E6C9FFF8EEDBFFF9F2E4FFEFE2D8FFDCC0A7FFAA7466FF8A4A
      4DFF7A3D3DFF71353CFF73343DFF74353DFF74353DFF75353DFF75353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF75353DFF74353DFF74353DFF72343CFF7034
      3CFF73393BFF844645FF965A5BFFCEA98CFFE8D8D5FAF7F1EAF3FBF7F0FFF8EE
      DCFFF5E6C8FFECD9BDFFCBB29AFF66544DFF282423FF161A1BFF262627FF9088
      7BFFD1D1D1B4FEFEFA3700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF08E7E7
      E4B095857FF8302C2AFF161A1BFF242423FF6E6157FFD2BEA1FFF1E1C2FFF4E5
      C7FFF7EDD9FFF9F1E2FFE9D7C6FFCCA796FF9D6254FF7F3C41FF74353CFF7334
      3DFF74343DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF73343DFF6E353BFF75373DFF884849FFBC917AFFDBC2BBEDFAF5
      EAEFFBF8F1FAF7EDD9FFF4E5C8FFEBD9BBFFAA8D7BFF4A3C3AFF191B1CFF191C
      1DFF4B4D4EFFCCBCB7E9F7F0F044000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE13D9C2C2CA766E
      6BFF181B1DFF171A1BFF483E34FFA19381FFEFDDBAFFF4E5C7FFF6EAD1FFF9F2
      E4FFF3E4C8FFC29A8EFF995E50FF7C393FFF75343DFF77343DFF79353DFF7934
      3DFF77343DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF74343DFF6F343CFF73343CFF864A45FFB586
      79FFE0C9BAF5FBF9F6EEF9F5EBF6F7EBD4FFF4E4C5FFD6B8A1FF786A60FF2220
      21FF16191AFF3D2F2EFF9E9D9EF3F9F6F395FFFFFF0500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF7F044D0D0CEF8464245FF1A1B
      1CFF1F2020FF6B4F4CFFD1BFA5FFF2E1C0FFF5E7CBFFF8EFDCFFF6EBDCFFD4B1
      93FF9B615AFF7C3C3FFF77343DFF78343DFF79353DFF79353DFF79353DFF7935
      3DFF79353DFF78343DFF77343DFF76343DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF75353DFF72353CFF7435
      3DFF894E4AFFB3837DFFF0E4DAFDFAF7F4EAF9F2E4FFF5E6CAFFE7D4B7FFAD99
      7FFF312F2EFF181A1BFF27292AFF987F78FFE5DEE096FFFFFF06000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECFEFE0E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0F0000000000000000000000000000
      0000000000000000000000000000E9E5E93CC4B3A2EA45423CFF16191BFF2925
      25FF887C6CFFE6D0B4FFF3E3C2FFF6EAD1FFF8EEDBFFE5CFBBFFAE7A66FF8542
      43FF7B363EFF79353DFF79353DFF79353DFF79353DFF79353DFF79353DFF7935
      3DFF79353DFF79353DFF79343DFF77343DFF75353DFF75353DFF75353DFF7435
      3DFF74353DFF73353DFF6F343CFF6F343CFF6F343CFF73343DFF74353DFF7435
      3DFF72343CFF73343DFF73343DFF73343DFF73343DFF73343DFF73343DFF7334
      3DFF73343DFF73343DFF73343DFF75343DFF76353DFF76353DFF76353DFF7535
      3DFF73343DFF73383CFF935652FFD4B5AAFFF7EFE6E7FAF7F0F9F6EAD2FFF1E1
      C0FFC5AC98FF5A4641FF191B1CFF1F1E1FFF66686DFFE8E6E4B4FEFEFE210000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE0E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003333379D1D1D1FC126282B707F85852A6D6D713827272A602B2D
      2F92131416A007070AA808080AAD0D0F10A81F1F22992F3133712D2D2F602D2D
      2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D
      2F602D2D2F602D2D2F602D2D2F60262829B2191A1DC7333337812D2D2F602D2D
      2F602426295C3131349117171BA039393CE1171415FF090A0CFF0F0F10FF5F46
      41FFA39885FFA89D88FFAAA192FFAAA399FF9A8771FF673D3BFF57272BFF5525
      2BFF55252BFF55252BFF55252BFF54252BFF53252BFF53242BFF53242BFF5324
      2BFF52242BFF51242BFF51242BFF4F242AFF4C242AFF4B242AFF4A2429FF4724
      29FF442328FF442328FF412327FF412327FF412327FF442328FF452328FF4523
      28FF472429FF4A2429FF4B242AFF4D242AFF4F242BFF4F242BFF4F242BFF4F24
      2BFF4F242BFF4F242BFF4F242BFF51242BFF51252BFF51252BFF51252BFF5125
      2BFF51252BFF51242BFF4D242AFF582D2EFF896D5EFFA49F9CF0AAA8A6F4AAA2
      94FFA79B87FF958772FF2F2C2BFF111214FF121416FF68635DFF918B89C92C2C
      2F612D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D2F602D2D
      2F602D2D2F60222426C51C1D20BD2222256E2D2D2F602D2D2F6027272A672B2B
      2E93131316A0070709A808080BAD0A0A0DA5202123973434376A9A9AA1260000
      00000000000028282BA406061FFF06061DFF010103FF000002FF050619FF0C0E
      3DFF111358FF141766FF15176BFF131662FF0E1049FF05061AFF000002FF0000
      02FF000004FF05061DFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF05061EFF05061EFF05061CFF000003FF050519FF070823FF000002FF0000
      02FF040516FF0B0D3AFF111356FF141666FF15176BFF131663FF0F114CFF0607
      1FFF000002FF000002FF000002FF000002FF010104FF05061DFF05061EFF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061DFF0101
      05FF000002FF02020AFF05061DFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF05061EFF05061EFF010108FF040415FF05061EFF05061EFF05061EFF0506
      1EFF05061EFF05061EFF05061DFF040414FF05061EFF05061DFF040415FF0506
      1EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1DFF05061DFF05061EFF05061EFF05061EFF05061EFF05061EFF05061DFF0304
      13FF05061DFF05061EFF05061EFF05061EFF05061EFF05061EFF05061EFF0506
      1EFF05061EFF05061DFF070822FF05061AFF000002FF000002FF05061BFF0C0E
      3FFF111358FF141767FF14176BFF131561FF0E1047FF050518FF040407F92527
      299BA2A2B90B28282BA411135AFF2C32E4FF252ABDFF282DCDFF2C32E5FF2B31
      DEFF262CC6FF2429B9FF2429B9FF272CC9FF2C32E4FF2C32E4FF2125A9FF0607
      21FF000002FF0A0C35FF2126ABFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2025A6FF090B30FF000002FF0D0F45FF2C32E5FF252BC1FF272C
      C9FF2C32E4FF2B31E0FF272CC8FF2429BAFF2429B9FF262CC7FF2C32E3FF2C32
      E4FF2327B2FF08092BFF1E1313FF32171BFF030103FF0B0D38FF2227AEFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2328B3FF0C0E3DFF0101
      03FF0C090AFF010104FF101251FF262BC3FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF0A0B33FF040516FF191D81FF2B31DEFF2C32E5FF2C32
      E5FF2C32E5FF292ED2FF131661FF1C208DFF2C32E5FF2C32E5FF12155BFF1A1E
      86FF2B31E1FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF252ABEFF0E11
      4AFF12155FFF2A30D8FF2C32E5FF2C32E5FF2C32E5FF292ED2FF131560FF0101
      07FF0E1047FF2328B5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E4FF1F24A1FF090A2FFF131662FF2C32E4FF2429BBFF282ECFFF2C32E5FF2B31
      DDFF262BC6FF2429B9FF2429B9FF272DCAFF2C32E4FF2C32E3FF2024A4FF0506
      1DFF2D2E31AA28282BA411135AFF2C32E5FF252ABDFF141769FF08092AFF0101
      05FF010105FF030412FF060720FF0A0B32FF2024A3FF2C32E5FF2C32E5FF2227
      B1FF000002FF2F3133CA020205FD0F104AFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF0D0F41FF040406FE1A1C1DAD2A2B2DAE0D0F45FF2C32E5FF262BC4FF1619
      6FFF090A2FFF010107FF010104FF030410FF06071FFF090B30FF1D2194FF2C32
      E5FF2C32E5FF262CC5FF000002FF703139FF662E35FF271417FF010103FF1012
      50FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF121459FF000103FF120F0DFF2C25
      1EFF332B22FF1E1B16FF020203FF010106FF181C7DFF2C32E5FF2C32E5FF2C32
      E5FF2A30DCFF0A0C36FF0A0C36FF0A0C36FF0A0C36FF0A0C36FF0D0F40FF1B1F
      8CFF2C32E3FF2C32E5FF0A0B33FF0C0B0CFF040405FF05061CFF262BC4FF2C32
      E5FF2126ABFF03030FFF070824FF2B31E1FF2C32E5FF2C32E5FF2429BBFF0000
      04FF070825FF292FD6FF2C32E5FF2C32E5FF2C32E5FF161971FF010105FF2110
      13FF140A0CFF05061CFF2429B8FF2C32E5FF2C32E4FF111355FF0B0C39FF0B0C
      39FF0B0C39FF0B0D39FF2328B2FF2C32E5FF2C32E5FF2C32E5FF262CC6FF0A0B
      32FF030305FB0A0B0DEE131662FF2C32E5FF2429B9FF141766FF080928FF0101
      05FF010105FF030412FF060721FF0A0B33FF2126AAFF2C32E5FF2C32E5FF2025
      A7FF060709F628282BA50F114DFF16196DFF15186BFF1E239CFF252ABDFF292F
      D4FF2C32E3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2126
      ABFF040507FCC6CFCF1B43434871050519FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF030410FF2626295C000000002F3133900C0E3EFF171A74FF141767FF1E22
      99FF2429BAFF292ED3FF2C32E2FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF252ABFFF000002FF34191DFF5E3237FF523132FF2E1F1DFF0607
      1FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF080929FF1A1915FF2A2A22FF2928
      21FF161613FF010103FF111210FF111210FF101252FF2C32E5FF2C32E5FF2C32
      E5FF2A30DCFF0B0D3AFF0B0D3AFF0B0D3AFF111458FF2328B2FF161970FF0000
      02FF090B30FF2227B0FF0A0B33FF1A1618FF222221FF020204FF2226ADFF2C32
      E5FF1B1E8BFF000002FF1E229AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0F12
      4FFF000002FF272DCBFF2C32E5FF2C32E5FF2C32E5FF0D0F42FF3A1B1FFF7334
      3CFF71353CFF361E1EFF050519FF272DCAFF2C32E5FF2C32E5FF282ECEFF272C
      C9FF272CC9FF2B31E1FF2C32E5FF2C32E5FF2C32E5FF292FD4FF070825FF1A1A
      1DC75A5A5A2D232526B3101353FF15186AFF15186DFF1F239EFF252ABEFF292F
      D5FF2C32E3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1F24
      A1FF060609F41D1D20DD101251FF2B31DEFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E3FF1F24A2FF0506
      1BFF2A2C2FB20000000036363954050519FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF030410FF08080C3F000000001B1C1EC20D0F41FF2A30DAFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E4FF2126ACFF070824FF06061EFF06061DFF0D080AFF31241FFF271F1AFF0607
      1FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF080929FF191B17FF1F211CFF0708
      08FF05061AFF060721FF131513FF121412FF101252FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF161970FF0505
      07FF010103FF03030DFF010208FF635752FF6E615BFF050406FF2226ADFF2C32
      E5FF1B1E8BFF0A0B32FF2C32E4FF2C32E5FF2C32E5FF292ED2FF2C32E5FF252B
      C1FF010105FF272DCBFF2C32E5FF2C32E5FF2C32E5FF0D0F42FF421E23FF7635
      3DFF74343DFF75373CFF281514FF08092AFF2A2FD8FF2C32E5FF1C208FFF0000
      02FF0F124FFF2C32E4FF2C32E5FF2C32E5FF2B31DDFF0B0C37FF141518D49D9D
      9D15FFFFFF06151517E5111459FF2B31E0FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E3FF1E239DFF0405
      17FF313134A5050508FE2429B8FF2C32E5FF2C32E5FF2B31DEFF252ABEFF2126
      AAFF1E229BFF1B1F8CFF181B7BFF141665FF101252FF181B79FF0D0F44FF1A1A
      1CCB9494AA0C78787F221D1D20AC050519FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF030410FF1A1B1DA687878E220B0B0DED2024A4FF2C32E5FF2C32E5FF2B31
      E0FF252BC1FF2126ACFF1E229CFF1B1F8EFF181B7DFF141767FF101251FF171A
      74FF101251FF020103FF090A2CFF2A30D9FF13155FFF010104FF080708FF0607
      1FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF080929FF060708FF010103FF1114
      59FF292FD6FF0A0C36FF111211FF09090AFF101252FF2C32E5FF2C32E5FF2C32
      E5FF2A30DAFF050518FF050518FF050518FF0A0B32FF191C7FFF12155BFF0000
      03FF111355FF272CC7FF000002FF918A7CFF928579FF050405FF2226ADFF2C32
      E5FF1B1E8BFF2126ABFF2C32E5FF2C32E5FF272DCCFF090A2CFF2B31E1FF2C32
      E5FF111356FF272DCBFF2C32E5FF2C32E5FF2C32E5FF0D0F42FF210F13FF682F
      36FF76353DFF74343DFF6D333AFF180C0FFF0D0F41FF2B31E1FF2C32E5FF1A1E
      85FF2B30DCFF2C32E5FF2C32E5FF2C32E3FF0F114EFF0D0D0FE351515B1C0000
      00006262620D000002FF262BC2FF2C32E5FF2C32E5FF2B31DDFF252ABDFF2125
      A9FF1E229AFF1B1F8CFF181B7AFF131663FF101252FF181C7BFF0C0D3DFF1819
      1CBCA9C6C6091A1B1DEA171A76FF2C32E5FF2C32E5FF141767FF060721FF0506
      1BFF070824FF0C0D3CFF131664FF1E239DFF2A30DCFF2C32E5FF111358FF2828
      2AB823242691040507F3070825FF1E229AFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF1D2195FF060722FF060608F4060609F8131661FF2C32E5FF2C32E5FF171B
      78FF070823FF05061BFF070822FF0B0D39FF131560FF1D2197FF2A30D8FF2C32
      E5FF15186DFF050406FF050619FF2C32E5FF2C32E5FF2226ADFF161971FF191C
      7FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF161971FF2125A8FF2C32
      E5FF2C32E5FF070822FF000002FF0C0E3FFF2429B8FF2C32E5FF2C32E5FF2C32
      E5FF2B31DEFF12145DFF12145DFF12145DFF12145DFF12145DFF12155EFF2327
      B2FF2C32E5FF2B31DEFF000002FF0D0C0DFF02030DFF16196FFF2A30DAFF2C32
      E5FF262CC6FF2C32E5FF2C32E5FF2C32E5FF12145AFF000002FF1C2090FF2C32
      E5FF262CC7FF282ED0FF2C32E5FF2C32E5FF2C32E5FF2227B1FF0B0C37FF0302
      04FF32171BFF6A3037FF6A3038FF241115FF010106FF2025A4FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2227AFFF020209FF1F1F21DA5B606035FFFF
      FF02FEFEFE07111214F0191C7FFF2C32E5FF2C32E5FF13165FFF060721FF0506
      1BFF070824FF0C0E3DFF141766FF1F23A0FF2B31DDFF2C32E5FF0F114EFF1719
      1B8C00000000484B4D5F050508FC101251FF2125A8FF2A2FD6FF2C32E5FF2C32
      E5FF2C32E5FF2A30DAFF2429B9FF1A1E86FF191C7FFF2429B8FF111356FF0000
      02FF000003FF10124EFF1F24A1FF2024A5FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF1F24A0FF0F1149FF000003FF000002FF0E1046FF1F24A2FF292F
      D4FF2C32E5FF2C32E5FF2C32E5FF2B30DCFF252ABDFF1B1F8BFF181B7AFF2327
      B3FF141768FF050608FF010107FF2024A4FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF050517FF15186BFF2024A4FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024
      A5FF2024A5FF1F24A0FF000002FF080928FF1C2091FF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF2024A5FF1D2195FF010106FF241417FF060721FF2024
      A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A5FF2024A4FF1417
      63FF020209FF040204FF080406FF02030CFF181C7BFF2024A5FF2024A5FF2024
      A5FF2024A5FF2024A5FF2024A5FF2024A5FF1A1E83FF030412FF060608FB292A
      2C8FA9A9B8124343486D030306FD111356FF2126AAFF2A30D8FF2C32E5FF2C32
      E5FF2C32E5FF2A30D9FF2428B7FF1A1D84FF191C81FF2429BAFF0F114CFF1719
      1B8C0000000000000000535357431E1F22C1060609FA000002FF02030BFF0304
      11FF02020BFF000002FF010103FE121216E70C0D0FF4020204FE000002FF0404
      06FB0A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A0CF60A0A
      0CF60A0A0CF60A0A0CF60C0C0EF80F0E10FF020204FF020204FF000002FF0000
      02FF02020AFF030411FF02030CFF000003FF010002FF13090CFF180C0EFF0000
      02FF000003FF060709FF020204FF020204FF020204FF020204FF020204FF0202
      04FF030305FF030305FF030305FF030305FF030305FF020205FF020204FF0202
      04FF020204FF020204FF020204FF020204FF020204FF020204FF020204FF0202
      04FF020204FF020204FF020204FF020305FF030305FF030305FF030305FF0B08
      09FF121110FF121110FF121111FF121111FF0D0D0EFF020204FF070607FF0706
      07FF030305FF030305FF010203FF010103FF181211FF4A2E2EFF0E080AFF0804
      07FF090407FF090407FF090407FF090407FF090407FF090407FF090407FF0904
      07FF090407FF090407FF090407FF090407FF090407FF090407FF0C0809FF1111
      12FE101012FC121111FF11100FFF070607FF020204FF040406FF101012FE0A0A
      0CF6202023DC5D6064474D50534C1D1D20C6060608FC000002FF02030CFF0304
      11FF02020BFF000002FF020204FE101012DE111214DD010104FE000002FF1719
      1B8C000000000000000000000000FFFFFF02AFAFAF105A5A5E3E363639501D1D
      204E2D31344E585C604593939C1AFEFEFE09FFFFFF088B8B922137373A604649
      4C61E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FEFE09E2FE
      FE09E2FEFE09E2FEFE09E8EAEC7D6A6B69FF171A1BFF3A3A38FF131212FF0505
      06FFA29987FFA49080FF6C3D3EFF693236FF4B2428FF1A0D0FFF010003FF0000
      02FF000002FF060709FF171A1BFF171A1BFF171A1BFF171A1BFF181A1BFF1A1C
      1DFF212221FF1F2120FF1B1D1DFF191C1CFF1A1C1DFF1C1E1EFF212223FF2426
      27FF26282AFF24282AFF23272AFF24272AFF24272AFF24272AFF23272AFF2328
      2AFF25282AFF242627FF1F2121FF1B1D1DFF191C1DFF202221FF222321FF9A78
      5DFFF1E0BFFFF3E2BFFFF3E3C1FFF3E3C3FFDBC8ACFF423C37FF41302DFF4635
      33FF151616FF070708FF000002FF000002FF040405FF1C1413FF442C2AFF5A32
      35FF6A343BFF74343DFF76353DFF76353DFF76353DFF76353DFF76353DFF7635
      3DFF76353DFF76353DFF76353DFF76353DFF76353DFF74343DFF814344FFD8BB
      ABFFFBFAF7E3F8EFDCFFF1DEBDFF9C7969FF211E20FF202021FFBCA29EFEFAFA
      FA3AE2FEFE09DFDFDF0800000000FFFFFF03A5A5B4115A5A5E412D31314E1D1D
      214D3134374E5B5B5F438B969616FFFFFF06FFFFFF0689899025353538643D40
      4353000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2EAEE3E8A8A91F41C1F21FF282826FFB7A88EFF1D1B19FF0304
      11FF504A42FFA66F69FF7A3B3FFF241215FF03030FFF161971FF2328B5FF252A
      C0FF1B1E89FF040517FF08090AFF171A1BFF131517FF121416FF111415FF1113
      15FF121416FF17181AFF1A1D1FFF211F22FF513833FF7D6F5DFF8B867EFF8F90
      8FFF919496FF898C91ED84888EE5888C91ED929498FF919497FF919498FF9194
      97FF919494FF8F8E8AFF888073FF665242FF1A1A1CFF151718FF191A19FF7259
      46FFB3A68FFFB4A88FFFB4A88FFFB4A88FFFD4C5A8FF5A5852FF1D1C1EFF130E
      11FF030411FF171A77FF2428B7FF252AC1FF1D2194FF090A2DFF080607FF3E29
      27FF573134FF50272DFF56272EFF58282FFF58282FFF58282FFF58282FFF5828
      2FFF58282FFF58282FFF58282FFF58282FFF58282FFF58282FFF56272EFF6C3F
      40FFB2A9A3FFB4B3B1E5B6AD9AFFA79583FF3F2F30FF171A1BFF564C46FFEAE4
      D7CAFFFFFF060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE15D3C4C0D7362A2DFF1C1C1DFF8B725CFFEFDCBAFF1D1C19FF1A1D
      82FF02020AFF552B2EFF180C0EFF0A0B33FF272DCCFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF272DCAFF05061AFF0C0E0FFF0A0B0CFF000003FF020208FF0202
      08FF020208FF020208FF020208FF020208FF020208FF020208FF020208FF0202
      08FF020208FF020208FF020208FF020208FF020208FF020208FF020208FF0102
      07FF010207FF020208FF020208FF020208FF020208FF020208FF020208FF0202
      08FF020208FF020208FF010207FF000002FFB4A992FF5C5B56FF060709FF0809
      2AFF272DCBFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31E0FF101253FF0906
      08FF422C29FF0C0709FF010104FF020208FF020208FF020208FF020208FF0202
      08FF020208FF020208FF020208FF020208FF020208FF020208FF020208FF0202
      08FF020208FF020208FF020208FF010105FF22201FFF2F2F2EFF1A1C1DFF8687
      88FFE9E9EC540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3F3F359837D71FF171A1BFF3F3534FFDABDA6FFF3E2C0FF1D1C1AFF2024
      A3FF171B78FF000002FF0B0C37FF2A30DBFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2025A6FF010103FF4C4B47FE02020AFF2A2FD7FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E4FF292FD4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2126
      ABFF1F24A2FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF1C208EFF1F1E1CFFEBD6B6FF423B34FF05061AFF282E
      CFFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31E0FF0A0B
      31FF171210FF201815FF0A0C35FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF3E3A33FF9F927AFF212121FF2123
      25FFC1ADAFE7FEFEFE1500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F723A7AAAEF0232627FF1E2121FFA49887FFF3E3C2FFF4E3C3FF1E1C1BFF2024
      A3FF2B31E0FF0E1048FF292FD4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0B0D3AFF595959D50C0C0EE61B1F8CFF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2227
      B1FF1A1D85FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1215
      5DFF0E1048FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF0B0D38FF57403CFF725E56FF040305FF2025A6FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2429
      B8FF010104FF25201AFF010103FF262BC3FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF3F3B35FFEAD5B2FF614742FF171A
      1CFF685956FFF5F1E9A800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EADF
      D19361564AFF181B1CFF73624FFFEBD9B8FFF3E1BEFFF1DFBEFF1C1917FF2024
      A3FF2C32E5FF2C32E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1D2195FF0C0C0EEE343437A10B0D39FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1215
      5EFF0D0F42FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31E0FF0404
      13FF010106FF282DCDFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF262BC4FF020204FF977062FF1A1517FF0E114AFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF0E0F46FF121210FF0B0B0BFF161970FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF403E3BFFF4E4C6FFB7A391FF2324
      25FF212324FF9C999CD6F8F2F228000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F92BA6A7
      A8F31F2020FF2D2828FFC4A693FFF3E2BFFFF3E1BEFFDABA9BFF130D0EFF2024
      A3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2A30D9FF010107FF5B5B5F7E010104FE272C
      C7FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DEFF0304
      11FF010209FF2A30DBFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2024A3FF0202
      04FF060608FF171A77FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF16196FFF3F3B34FFCEBDA3FF030205FF242ABCFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF1F23A0FF030305FF181A16FF06061DFF2C32E3FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF3E3F40FCF8EFDEFFEFDEBEFF7F70
      61FF1A1B1DFF4D3A3DFFE5DDDCBEFFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFE9DFB23D3D
      3EFF191B1CFF7C705FFFF2E1C0FFF3E2C0FFF0DBB3FFAC775FFF11090BFF2024
      A3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E4FF282DCCFF292F
      D4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B34FF6D6D6EBD373738FB171A
      74FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E229AFF0404
      05FF040405FF1F239EFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF101355FF0E0F
      0FFF161816FF06071FFF2C32E3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E2FF05061CFF938372FF70695CFF0C0E3FFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2B31DFFF03030EFF1B1D19FF020204FF2125A9FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF3B3A39F8FCFAF5DDF5E7CCFFD5B8
      9DFF2F2B2AFF1C1E1FFFA3A3A0FFF7F7FF200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F61DA19F9BE91F21
      21FF2F2829FFD3BEA0FFF3E2C0FFF3E2BFFFCCA58BFF8A4947FF10080BFF2024
      A3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1F239DFF060721FF000002FF0000
      03FF111459FF2C32E4FF2C32E5FF2C32E5FF131561FF616160FD7A7670FF0607
      22FF2C32E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0E1046FF1112
      11FF0F100FFF12145BFF2C32E5FF2C32E5FF2C32E5FF2B31DDFF03030EFF1B1E
      1AFF232721FF020204FF2025A5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2025A6FF020204FF554842FF121112FF1D2298FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E2FF2B31DEFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF0D0F45FF131412FF0E100FFF111355FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF3B3531FFFBF9F5F1F9F2E5FFF0E1
      C2FF867A69FF191B1CFF474440FFEEE3D2B90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1D0CD94574543FF191B
      1CFF857769FFEEDDBBFFF3E2BFFFECD5AFFFA46B5AFF854243FF10080BFF2024
      A3FF2C32E5FF2C32E5FF2C32E5FF1A1E86FF030205FF442124FF72383AFF6632
      34FF060305FF2227B1FF2C32E5FF2C32E5FF191D83FF2D2D2EEAD6D3CCE30808
      0AFF2227B0FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF282ED1FF010106FF2222
      1CFF1B1C18FF050619FF2C32E4FF2C32E5FF2C32E5FF1E229BFF040405FF2528
      22FF252822FF0F1110FF0F114BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF101250FF0A0B0CFF121416FF02020CFF2B30DCFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2B31DEFF131560FF02020BFF000004FF0C0D3CFF262BC4FF2C32
      E5FF2C32E5FF171A76FF0B0C0CFF1C1E1AFF02020CFF2A30D9FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF271719FFD7BCB9FAFBFAF5FEF6E8
      CEFFD5BBA2FF3B2C2DFF1F201FFF9D9795DBF2ECF22A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F2F828B3ABACF11E1E1FFF362C
      2BFFD2B29AFFF3E2C0FFF3E2C0FFCBA27FFF894746FF854243FF10090AFF2024
      A3FF2C32E5FF2C32E5FF2227AEFF020206FF5C2D30FF844042FF844042FF8440
      42FF1E0F11FF1B1F8DFF2C32E5FF2C32E5FF1E239DFF0B0B0DE4FAFAFA3C2B2B
      2DC912145CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF191D82FF0C090AFF362C
      24FF2A2821FF010103FF2429B8FF2C32E5FF2C32E5FF121560FF0E0F0EFF2528
      22FF252822FF1C1F1BFF010208FF2C32E3FF2C32E5FF2C32E5FF2C32E5FF292F
      D5FF020209FF141617FF0B0D0EFF0E1047FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF111458FF030406FF131516FF1A1C1BFF0C0D0DFF050518FF282D
      CDFF2C32E5FF1E239DFF050506FF242722FF050506FF1C208FFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF0B0D38FF070825FF070825FF070825FF070825FF0708
      25FF2227B1FF2C32E5FF2C32E5FF1A1D84FF1F0E12FFAE7C62FFF7F2EBF4F9F3
      E5FFF1E0C1FF847669FF1A1C1CFF513D40FFDED2D48500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE7959494CFF181B1CFF7769
      59FFF2E1C0FFF3E2C0FFEDD7ADFF9D6259FF854344FF854244FF10090AFF2024
      A3FF2C32E5FF2B31E0FF070825FF3F1F22FF844043FF844043FF844042FF8340
      42FF170C0EFF1C2092FF2C32E5FF2C32E5FF2227AFFF0C0D0EFBF9F9F92B3636
      3962040515FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0C0D3BFF361C20FF5030
      30FF3D2D26FF0F0C0BFF171B79FF2C32E5FF2C32E5FF171A78FF080909FF1A1C
      19FF1A1C19FF131412FF06071EFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1B1F
      8DFF060607FF232522FF070809FF191D82FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF252ABDFF030305FF56463FFF221E20FF1A1C1DFF212321FF0A0B0BFF0F11
      4CFF2C32E5FF2429BCFF010103FF222321FF111113FF0E104BFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF2B171BFF422126FF492127FF4A2127FF0F07
      0AFF131662FF2C32E5FF2C32E5FF1A1D84FF1E0E12FF7E3D43FFE0C9BBFFFCFB
      F8DEF5E8CDFFD8BC9CFF2E2C2AFF1F2122FFB7AAADF1FFFFFF0C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAADB0E2272728FF222323FFCBB6
      98FFF3E2C0FFF3E2BFFFCBA387FF8A4947FF864344FF864344FF11090BFF2024
      A3FF2C32E5FF1A1E88FF0F080AFF804041FF844143FF6E3639FF422123FF140A
      0DFF030411FF272CC9FF2C32E5FF2C32E5FF2429BBFF030305FFB2B2B3F9A8A8
      A8A802030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF432025FF7234
      3CFF5D3236FF241717FF101251FF2C32E5FF2C32E5FF1F239FFF040412FF0404
      12FF040412FF040412FF0F114BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1316
      62FF0F100FFF242722FF010203FF2328B5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF15186DFF443C2EFFD7B28AFF91755EFF252424FF191C1DFF1A1C1CFF0101
      03FF252ABDFF292FD3FF000002FF252422FF484035FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF3A2424FF5E3237FF6D343BFF602B33FF0000
      02FF050519FF2C32E3FF2C32E5FF1A1D84FF1F0E12FF74353CFFAC796CFFFAF7
      F2F9F9F2E4FFEFDFBFFF766654FF181A1CFF63595CFFFAF7F569000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F5F5517E787AFC181B1CFF6B5B49FFEAD8
      B8FFF3E2BFFFEED9B3FFA9725DFF864445FF864344FF864344FF11090BFF2024
      A3FF2C32E3FF060822FF4C2628FF542A2CFF190D0FFF000003FF0A0B32FF181C
      7EFF292ED2FF2C32E5FF2C32E5FF2C32E5FF252AC0FF000002FF2E3030FF6953
      56FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF1A1517FF432B
      2CFF70343BFF472127FF080A2BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0C0D
      3CFF151714FF1F221DFF010105FF2B31DDFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF0A0C34FF8E8472FFE7CA98FFDCBB89FFA58267FF423330FF191B1CFF0809
      0BFF141665FF2C32E2FF000104FF332E2DFF72695BFF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF2C211CFF4B2F2EFF5D3237FF251216FF0607
      20FF000002FF2227AFFF2C32E5FF1A1D84FF1F0E12FF75353DFF814445FFDCC3
      BEF3FCF9F4FFF5E6CAFFBCAC93FF202021FF2E292BFFC2ACB0C5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1BFC19D413133FF1E1E1EFFA49582FFF3E2
      BFFFF3E2C0FFD8B696FF8C4B4AFF874445FF874445FF864445FF11090BFF2024
      A3FF2125A8FF000002FF160C0EFF040413FF171A74FF272CC8FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF252AC0FF000002FF282122FF1617
      18FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF222120FF1D1F
      1EFF292323FF3D2427FF020209FF2B31E2FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0405
      16FF1B1D19FF1A1C18FF060720FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E3FF02020CFFA49D95FFF1E0C1FFE4C492FFDBB682FFC19E72FF4D3F38FF1614
      16FF060721FF2C32E5FF02020BFF674640FF7C7063FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF201F1AFF382C24FF3F2927FF010104FF1A1E
      86FF000002FF131664FF2C32E5FF1A1D84FF1F0E12FF76353DFF75353DFFBB90
      85FFF9F7F3FDF8EEDCFFE9D5B2FF5F5244FF191B1CFF918787EDF5F1F1380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F126B7ADA3EB1A1C1EFF423B35FFE4CBA9FFF3E2
      C0FFF1E0BFFFB48168FF874545FF874445FF874445FF874445FF11090BFF2024
      A3FF111459FF000002FF0F114CFF292FD4FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2429BBFF020104FF6E373AFF3621
      24FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF8C8176FF837F
      79FF38352EFF1A1B1DFF000002FF262BC3FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF292ED3FF0000
      02FF21241FFF151714FF0C0E3DFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF282D
      CDFF000002FF2F2D2EFFB9B09EFFEFDAB5FFDFBD8AFFDAB47FFFC99E76FF7257
      48FF000002FF282ED0FF03030FFF8A6F54FF817665FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF1D1E1AFF2B2A22FF15110FFF0E1046FF2226
      AFFF000002FF05061BFF2C32E3FF1A1D84FF1F0E12FF76353DFF74343DFF8849
      4BFFF0E3DDFFFBF7EFFFF4E5C6FF968374FF1C1D1DFF513E3CFFDBD1D3820000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E740685F56FF181A1CFF7C615AFFF3E2C1FFF3E2
      C0FFE9CFA2FF945751FF874544FF874544FF874445FF874445FF11090BFF2024
      A1FF040415FF101353FF2C32E3FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2227B0FF080406FF854243FF6732
      35FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF2C2F3177F9F4
      EC60C5BFB5E57C776FFF08080AFF1E239DFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2126ACFF0303
      04FF252822FF111311FF101254FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2328
      B7FF020204FF1A1C1DFF33302BFF968074FFE7D1ACFFDCB785FFD5AC7AFFD2AB
      7AFF0D0B0AFF2126ACFF03030DFF927C5EFF827866FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF1A1D19FF22241EFF010103FF2227B2FF2226
      AFFF040305FF040204FF2227B1FF1A1D84FF1F0E12FF76353DFF76353DFF7838
      3EFFCDAA9CFFFCFBF9FFF6EAD2FFDBC1A1FF322F2DFF202223FFD4CDC1F4EFEF
      EF10000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E2DCD9333435FF222223FFC6AD93FFF3E2C0FFF3E2
      BFFFC59C86FF8A4947FF874544FF874544FF874544FF874445FF11090BFF171A
      75FF05061BFF2A30DBFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1F239FFF12090BFF844043FF6934
      36FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF84827EEAEFED
      E865FEFEFE17EDEAE3A52A2A2DE5171A78FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1A1E86FF090A
      0AFF252822FF0F100FFF131664FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2025
      A6FF050506FF232521FF1C1E1EFF212021FF7E7565FFE0C398FFD6AF7EFFD3AA
      79FF261F18FF1C2090FF010104FF8D7255FF817664FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF000002FF000002FF0C0D3BFF2C32E5FF2226
      AFFF060406FF1B1012FF141766FF1A1D84FF1F0E12FF76353DFF76353DFF7434
      3DFFA26B67FFFBF7F0FFF9F1E3FFEEDDBEFF634A48FF181A1CFF757271FFF8F8
      FE29000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000928B8DEF1B1D1EFF3E3532FFDECDB2FFF3E2BFFFEFDA
      B4FFAC765FFF884645FF874544FF874544FF874544FF874544FF11090BFF0C0E
      3DFF1A1E86FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1A1E86FF201012FF844043FF6833
      36FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF202224FF9A8D
      7BFFD4CFC9ADF8F4ED4B1F1F229C101252FF2C32E5FF2C32E5FF2A30DCFF282E
      CFFF282ECFFF292FD6FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF131560FF0F11
      0FFF252922FF0D0E0DFF15186FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E22
      9AFF070708FF272922FF252622FF1D1F1FFF1F2020FF6E4E48FFCBAE89FFD6AE
      7CFF33291EFF15186AFF000002FF6B4B44FF7D7163FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF252ABDFF2429B8FF2429B8FF282ED0FF2C32E5FF2226
      AFFF050405FF2C1F1CFF05061CFF1A1D83FF1F0E12FF76353DFF76353DFF7535
      3DFF874A44FFE7D4C2FFFBF8F0FFF4E4C6FFAF9B82FF1A1C1EFF4B4949FFF3EB
      E7AA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCF7F161767571FA181A1CFF897A64FFF1DFBBFFF3E2BFFFE0C3
      A5FF93544DFF884645FF874545FF874544FF874544FF874544FF11090BFF0505
      17FF2A30D9FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF141666FF32191BFF854243FF6934
      36FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF151415FF1B1D
      1EFF4C443AFFA69E98E7827974DE090A2CFF2C32E5FF2C32E5FF1D2197FF0000
      02FF000002FF12155FFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0B0D3AFF1617
      15FF262822FF0D0D0DFF171A75FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C20
      93FF090909FF2E2A22FF2F2A22FF2D2922FF212120FF1A1C1CFF534C45FFCFB2
      89FF382E23FF0B0D37FF030305FF353232FF736B5FFF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226
      AFFF040305FF342A22FF020203FF101352FF1C0E12FF72343CFF76353DFF7635
      3DFF78363EFFC8A49AFFFCF9F4FFF6EAD2FFCEBCA5FF312928FF2A2424FFBCA9
      A6D0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1CCC9A3423E39FF201D1FFFAC9789FFF3E2C0FFF3E2BFFFCEA6
      7CFF894846FF884645FF884645FF884645FF874545FF874544FF160C0DFF0E10
      48FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0B0D3BFF492526FF854243FF6935
      36FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF432225FF4D2C
      2FFF1E1F1FFF202020FF4A403AFF02020AFF2C32E2FF2C32E5FF2429BAFF0201
      03FF1C1A19FF1A1D84FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF040414FF201F
      1AFF2B2A22FF0E0E0DFF171A76FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C20
      8FFF0D0A0AFF3F2D27FF402D28FF432E29FF422D2AFF262322FF181B1CFF7163
      58FF2F2922FF010105FF0A0B0DFF252424FF5A4640FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226
      AFFF030305FF2F2B22FF100E0CFF03030EFF180D10FF633339FF70343CFF7534
      3DFF74343DFFA46F5FFFF7F1EBFFF9F1E1FFEDD8B7FF695A4DFF171A1BFF9596
      95F5FEFEFA3F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE0DB5B5B8C01C1E20FF403832FFE0C5A5FFF3E2C0FFF1DEBEFFAB75
      65FF884645FF884645FF884645FF884646FF884645FF884646FF211113FF191D
      81FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2B31DFFF02030CFF673435FF854243FF6935
      36FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF53292BFF823F
      42FF6E373AFF362727FF1B1B1CFF000002FF262BC4FF2C32E5FF2A30DBFF0000
      03FF040405FF2125A8FF2C32E5FF2C32E5FF2C32E5FF282ED0FF000002FF3629
      22FF382C24FF14100EFF161972FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C20
      8FFF120B0DFF573134FF5B3235FF5E3236FF613338FF5A3134FF232121FF2521
      22FF140E0FFF000002FF302121FF191B1CFF231B1CFF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226
      AFFF030305FF2E2A22FF1D1B16FF000002FF120C0DFF4D302FFF603338FF6D34
      3BFF73343DFF834347FFEDDFD8FFFBF7EEFFF4E4C4FF84796DFF181B1CFF6C54
      52FFE7D6D66B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAF6F139AB9F93FF171A1BFF55504BFFF2E0BFFFF3E2C0FFEBD3A6FF9659
      51FF884645FF884645FF884646FF884746FF894847FF894847FF080406FF2226
      AEFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2125A8FF080406FF834243FF854344FF6935
      36FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF52282BFF8440
      43FF844143FF7F3D41FF593033FF070507FF1F239EFF2C32E5FF2C32E5FF0506
      1CFF000002FF282DCEFF2C32E5FF2C32E5FF2C32E5FF2126AAFF080407FF5631
      33FF4E3030FF1F1314FF141768FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1C20
      93FF180B0EFF77353DFF78353DFF7A363DFF7A363DFF7B363DFF5E3134FF1F1F
      1FFF040305FF000002FF1A1615FF262524FF0D0E10FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226
      AFFF040305FF312B22FF151411FF000002FF0D0C0BFF3A2D25FF4B2F2EFF5D32
      36FF6A343BFF79393EFFD8B897FFFCFAF7FFF6E9CEFFC9AB8DFF2A2624FF2B2A
      2CFFC4C4CA820000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDAE23F55494CFF191B1CFF8E6F61FFF3E2C2FFF3E2C1FFD8B590FF8E4E
      49FF884645FF894747FF894847FF8A4947FF8A4947FF7E4341FF000002FF282E
      D1FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF111357FF31191BFF864344FF864344FF6A35
      37FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF52282BFF8440
      43FF844043FF844143FF844143FF231114FF171B79FF2C32E5FF2C32E5FF0C0E
      3FFF030410FF2C32E4FF2C32E5FF2C32E5FF2C32E5FF1A1D84FF1E0E11FF7535
      3CFF6F343CFF32171CFF11145AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1D22
      99FF160B0DFF803B3CFF803B3CFF803B3DFF803B3DFF803B3CFF7F3B3DFF492B
      2EFF010204FF06071BFF3A332AFF82745CFF121213FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226
      AFFF050405FF382C24FF060606FF010208FF0B0B0BFF2C2A22FF382C24FF4A2F
      2DFF5C3236FF6B343BFFA97575FFFCFAF8FFF7EDD9FFE7D4B1FF383735FF2022
      23FFD6CFC5F9FFFFFF0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF01EDEDEAAA383A3DFF212222FFCBB492FFF3E2C0FFF3E1BDFFBC8E7BFF8A48
      47FF884646FF894847FF8A4947FF8A4947FF894947FF6F3B3AFF020209FF2C32
      E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF282ECFFF02020AFF462425FF874445FF864344FF6A35
      37FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF52292BFF8441
      43FF844143FF844043FF844143FF3D1F20FF101253FF2C32E5FF2C32E5FF1316
      62FF0A0C35FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF12155EFF35191BFF7F3A
      3DFF7E393DFF431E21FF0E1047FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2024
      A3FF11080AFF7F3B3CFF7F393CFF7F393CFF7F3A3CFF7F3A3CFF7F3A3CFF6F34
      39FF000002FF0E1148FF3E3C38FFE6CFA8FF51473BFF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2226
      AFFF050405FF30241FFF010208FF0C0E3DFF0A0B0BFF272822FF2B2A22FF382C
      24FF4D302FFF623338FF99605BFFF8F2E3FFF9F2E4FFEEDDBFFF594444FF181B
      1CFF91847AFFF7F7F72400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF01DFD1BBE42D2C29FF292829FFD8C9AEFFF3E2BFFFF0DCB3FFAE795FFF8847
      46FF894847FF8A4947FF894847FF8A4947FF8A4947FF653635FF050619FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E3FF0E114AFF020209FF462425FF874445FF874445FF6A36
      37FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF532A2CFF8643
      44FF854344FF854243FF854243FF532A2BFF090A2EFF2C32E5FF2C32E5FF1A1D
      84FF11145AFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0B0C37FF4B2427FF813C
      41FF803C3FFF512629FF090A2DFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2227
      B2FF090407FF7B363DFF79353DFF77353DFF75343DFF74343CFF71343CFF622D
      34FF010105FF181B78FF3E3E3FFEF5EAD4FB7F725BFF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF141766FF111357FF111357FF1C2091FF2C32E5FF2226
      AFFF050405FF1C1513FF0D0F45FF0F114BFF0A0B0BFF252822FF272922FF2F2A
      22FF422E29FF593235FF824B43FFE8D5C0FFFAF6ECFFF3E3C5FF9F8169FF181B
      1CFF56585DFFF0F7F72300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF03968A8BF31B1C1DFF583D3AFFE7D1B5FFF3E2BFFFE8D0AFFF9E6354FF8846
      46FF894847FF8A4947FF8A4947FF8A4947FF8B4B48FF603432FF070824FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2A30DBFF101353FF030411FF0D0F41FF462425FF874445FF874445FF6B36
      38FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF492327FF7437
      3CFF73373CFF74373CFF76393DFF5E2E32FF02020AFF2C32E3FF2C32E5FF2025
      A7FF191C7FFF2C32E5FF2C32E5FF2C32E5FF2C32E4FF030412FF623032FF8340
      42FF823D41FF632F33FF03030EFF2C32E4FF2C32E5FF2C32E5FF2C32E5FF262B
      C5FF010002FF76333CFF75343DFF6A343BFF613338FF5F3337FF573134FF331D
      20FF090B30FF1A1D85FF39373AFDFAF8F1E0847E70FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF140E0EFF171010FF02030EFF282ED0FF2226
      AFFF040305FF080607FF1C2090FF0F114BFF0A0B0BFF252822FF272922FF2F2A
      22FF402E28FF593234FF74393EFFCEAEACFFFBF8F1FFF5E7CAFFBCAF95FF1B1E
      1FFF4C4C4CFFF8F4EEA900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4FF
      FF18777A7EF3171A1BFF87735CFFF0DDBAFFF3E2BFFFDCBEA4FF8F504CFF8948
      47FF8A4947FF8A4947FF8B4B48FF8C4B47FF8C4B47FF5E3331FF080928FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DDFF1C20
      8FFF06071FFF000002FF131663FF0E1049FF462425FF874445FF874545FF6B37
      37FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF151415FF211F
      21FF211F21FF211F20FF222021FF221F20FF000002FF262BC5FF2C32E5FF272C
      CAFF2024A4FF2C32E5FF2C32E5FF2C32E5FF282DCEFF000002FF572C31FF6834
      38FF6C373AFF643436FF000002FF272DCBFF2C32E5FF2C32E5FF2C32E5FF2B31
      DEFF000104FF682D35FF76343DFF6A343BFF5F3337FF5B3236FF4E3030FF160E
      0FFF161970FF1A1D85FF343538FEFCFCFBCC878582FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF2B211CFF392C24FF0E0B0BFF12155EFF2226
      AFFF000002FF010107FF292FD5FF0F114BFF111110FF282922FF2B2A22FF352C
      23FF452E2BFF5D3237FF73353CFFC39C8CFFFBF7F1FFF6EAD2FFC7B7A3FF2420
      23FF37312DFFDFCCBED300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAF8
      F47E757370FF171A1BFF988F7EFFF3E2BFFFF3E2C0FFD2AD85FF8A4947FF8948
      47FF8B4B47FF8C4B47FF8C4B47FF8C4B47FF8C4B47FF5E3331FF070926FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C31E2FF2024A3FF111356FF030310FF0A06
      08FF30191BFF000104FF262BC2FF0E1049FF462425FF884645FF7E3E40FF4C29
      2BFF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF504E4BFF8482
      7CFF84827CFF807C73FF7C766CFF787062FF12100FFF1F23A0FF2C32E5FF2C32
      E4FF282ED0FF2C32E5FF2C32E5FF2C32E5FF2025A8FF030305FF1D1E1FFF1C1E
      1EFF1C1E1EFF1C1F1EFF030305FF1F239FFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF060720FF54252BFF7A353DFF72343CFF613338FF5D3336FF4B2D2EFF0201
      03FF2429B8FF1A1D85FF353535FFFCFBF8FF888684FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF2A211BFF372C23FF2B231CFF010106FF1B1F
      8AFF000002FF0D0F42FF2C32E5FF0F114BFF191613FF322B22FF372C23FF412E
      29FF523032FF643339FF73343DFFB38162FFF9F3E7FFF8EEDBFFE1C7ABFF4D39
      32FF1C1C1EFFA0959BD800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEE0
      CE8E5E5244FF1B1C1DFFA39487FFF3E2C0FFF3E1C0FFC89C6FFF894847FF8A49
      47FF8C4B47FF8C4B47FF8C4B47FF8C4B47FF8C4B48FF623634FF060721FF2C32
      E5FF2C32E5FF2C32E5FF2328B6FF070824FF060305FF2E1819FF5C3030FF8444
      43FF30191BFF0E114AFF2C32E5FF0E1049FF462425FF6B3539FF352527FF1617
      18FF02030CFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF82817ECBFBF8
      F2A8FBF8F2A7FAF6EDACFAF4E9AFF9F0E2B1333230E7181B7AFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF191D81FF303030FFAEAAA1FFA296
      82FF866B57FF553B3CFF121113FF15186CFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF0F114DFF1F1416FF422C2BFF4E2F2FFF633339FF653339FF321C1FFF0809
      29FF2C32E4FF1A1D85FF322F2AFFF9F3E6FF878481FF0D0F45FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF2B211CFF3A2D25FF382C23FF14100EFF0506
      1AFF000002FF1B1F8DFF2C32E5FF0F114BFF221817FF462E2BFF4C302FFF5631
      33FF643339FF70343CFF77343DFF935651FFF2E8E2FFF9F1E1FFEFDAB6FF6D5E
      4CFF16191BFF8E9296DCFFFFFF0A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7AA
      AC8E2E2727FF2E2424FFC7A591FFF3E2C0FFF2E0BFFFB58369FF894847FF8B4A
      48FF8C4B47FF8C4B47FF8C4B47FF8C4C48FF8D4D49FF693B37FF040517FF2C32
      E5FF2C32E5FF2C32E4FF060720FF371D1EFF804241FF884645FF884645FF6C38
      38FF020105FF252ABDFF2C32E5FF0E1049FF221618FF211F20FF2A2A2BFF4F3D
      3FFF02030DFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B33FF2323257A0000
      0000000000000000000000000000000000001B1B1E9D101354FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF12145BFF3A3A3BC0FAF8F677F9F3
      E980EFE1D581D4C5C785535357BA0A0B32FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF1B1E89FF040507FF181B1CFF1C1D1EFF292323FF2E2623FF080507FF1B1F
      8CFF2C32E5FF1A1D85FF2A201AFFEDDDCCFF807C76FF0D0F46FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF30221EFF422E29FF422E29FF3C2926FF0202
      04FF010106FF292FD4FF2C32E5FF0F114BFF301A1DFF623338FF69333AFF7234
      3CFF78353DFF7B353DFF7B363DFF87454AFFEDDFDAFFFAF4E8FFF3E2C0FF7771
      63FF16191AFF979693FFFEF7F024000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009A9E
      A78E1A1D1FFF433A30FFE4C8A2FFF3E2C0FFF0DCB9FFA1685EFF894847FF8B4A
      48FF8C4B47FF8C4C48FF8E4E49FF8E4E49FF8E4E49FF733F3CFF010107FF2C32
      E3FF2C32E5FF282DCFFF000002FF7D4140FF884645FF884645FF834443FF180D
      0FFF131662FF2C32E5FF2C32E5FF0E1049FF0D0E10FF4D4948FFB6A8A9FF6665
      66F40D0F44FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF15186AFF141417C67F7F
      7F020000000000000000000000000000000023262872090A2FFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0C35FF28282A7D000000000000
      0000000000000000000066666A3E010104FF282ED1FF2C32E5FF2C32E5FF2C32
      E5FF292ED3FF02020AFF3D3E42FF54524FFF2D2725FF090A0CFF080929FF2B31
      E0FF2C32E5FF1A1D85FF180E10FFD0BDB8FF353332FF181B7BFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF432528FF5D3236FF5F3237FF623338FF2513
      16FF0C0E40FF2C32E5FF2C32E5FF0F114BFF3E1B21FF7A353DFF7B353DFF7C36
      3DFF7C363DFF7C363DFF7C363DFF844042FFE8D4C1FFFBF6EDFFF4E4C5FF7E76
      6DFF16191BFF897F6CFFF2E6D329000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000999E
      A48F191D1EFF4D4941FFEFDBB5FFF3E2C0FFEDD7AFFF995D54FF8A4847FF8C4B
      48FF8C4C48FF8E4E49FF8E4E49FF8E4E49FF8E4E49FF804642FF000002FF292E
      D2FF2C32E5FF282DCFFF000002FF7D4140FF884645FF854544FF2E1819FF0708
      26FF2A30DAFF2C32E5FF2C32E5FF0E1049FF3B3D40FFDFDDD7ECEBEBEB400B0B
      0DF11E2298FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF252ABEFF020305FEDEDD
      DBD3FCFBF7D4FCFAF6D4FCFAF5D4FCF8F4D4B2B0ADE203030FFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF040515FF1B1B1F52000000000000
      00000000000000000000FFFFFF05151518E91B1E89FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF161A72FF151517FE7C766EFF312623FF030411FF252ABDFF2C32
      E5FF2C32E5FF1A1D85FF09090BFF8C8A88FF010105FF282DCCFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF050619FF070406FF090507FF0A0507FF0A0507FF0302
      04FF1B1F8BFF2C32E5FF2C32E5FF0F114BFF401D21FF7C363DFF7C363DFF7C36
      3DFF7C363DFF7C363DFF7C363DFF813D3FFFE0C59DFFFBF7EFFFF5E6C9FF987D
      74FF1A1B1CFF6C5344FFD7BAA92D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF05BCBD
      BDE7181B1CFF504F4AFFF2E1BFFFF3E2C1FFEAD0A0FF95574FFF8A4947FF8D4D
      49FF8E4E49FF8E4E49FF8E4F49FF90514AFF91524AFF8D4D49FF050305FF2328
      B4FF2C32E5FF2C32E4FF05061CFF381D1EFF522B2BFF1C0F11FF06071EFF262C
      C6FF2C32E5FF2C32E5FF2C32E5FF0E1049FF6F6E6BEAFEFEFE16424447640304
      11FF2B31DDFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF090B2FFF8987
      83FFFAF4EAFFFAF3E7FFFAF2E5FFF9F0E0FF817C75FF0C0D3CFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0D0F43FF767473F9FBFAF5E0FDFB
      F997FCFCF958FEFAFA36FEFEFE17292A2C950B0C37FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E3FF181B7AFF0A0C36FF101355FF262BC3FF2C32E5FF2C32
      E5FF2C32E5FF1A1D85FF08080AFF343333FF0C0E40FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2025A5FF1F239EFF1F239EFF1F239EFF1F239EFF1F23
      9EFF2A2FD8FF2C32E5FF2C32E5FF0F114BFF411E20FF7E383CFF7D373DFF7C36
      3DFF7C363DFF7C363DFF7C363DFF7F3A3EFFD6B286FFFBF7F0FFF6E8CDFFBE96
      82FF242020FF3A292AFFB29E9E32000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF05B6AE
      9EEE171A1BFF52504DFFF2E2C1FFF3E3C1FFE7CA94FF93544CFF8B4A48FF8F50
      49FF8F5049FF90514AFF91524AFF92534AFF92544AFF8D4D49FF1B0F10FF1B1F
      8DFF2C32E5FF2C32E5FF2226ADFF0A0B32FF070824FF131662FF292ED3FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0E1049FF4A4B4BAFFFFFFF0219191CBB1215
      5DFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF191D83FF2D2C
      2CFFFAF4E8FFFAF3E7FFFAF2E5FFF9F0E0FF353432FF191C81FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1B1E89FF2B2823FFF2DFB9FFF3E3
      C2FFF4E5C6FFF7ECD8FFF9F5EBFBDBD7D2EB030305FF252ABDFF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF1A1D85FF151213FF080709FF1D2195FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0F114BFF421F20FF803A3BFF7E393CFF7E38
      3CFF7C363DFF7C363DFF7C363DFF7D383DFFBB8E7DFFFBF8F2FFF6E9D0FFD6B6
      90FF2E2925FF201F22FF99999935000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0CA38B
      70F7171A1BFF5A5350FFF3E2C2FFF3E3C1FFE1C28FFF91524BFF8D4C49FF9253
      4AFF92534AFF92544AFF92544AFF92544AFF93554BFF8D4D49FF371E1FFF1214
      5BFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0E1049FF141618868A8A9123060608FC2227
      B1FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF292ED2FF0101
      07FFCBC6C0FFFAF4E9FFFAF3E7FFE2DCD0FF020204FF262CC5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF282DCEFF010104FFD0BF9BFFEFD9
      ACFFEBD19EFFEAD09CFFECD4A5FFEDD5A7FF4B4436FF111458FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E4FF2C32E5FF1A1D85FF080809FF03030FFF2A30DCFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0F114BFF421F20FF803B3BFF7F3A3BFF7F39
      3CFF7E393CFF7D373DFF7C363DFF7D373DFFAB7877FFFBF8F3FFF7EBD3FFE0C7
      A0FF34312CFF1A1E20FF95999935000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0C7350
      4AF7171A1BFF6F5755FFF3E2C2FFF3E3C2FFDAB88FFF90514BFF8D4D49FF9253
      4AFF92544AFF92544AFF92544AFF93564CFF94574DFF8C4C48FF5B3031FF0606
      1DFF2C32E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0E1049FF141618863234367F070823FF2C32
      E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0E10
      47FF6E6D6BFFFAF5EBFFFAF4E8FF98958FFF080927FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF0A0B32FF877C67FFF1DC
      B3FFEFD9ABFFEFD7A7FFEFD8A9FFE9CD97FFB49B6EFF020207FF262BC3FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E23
      9CFF2328B7FF1A1D85FF000002FF12145AFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0F114BFF421F20FF803B3BFF803B3BFF803B
      3BFF7F3A3CFF7F393CFF7E383DFF7C373DFFA46E73FFFBF7F0FFF7EBD4FFE6D0
      ABFF373632FF1A1E20FF979B9B36000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0E4235
      39FB181A1CFF8C625EFFF3E3C2FFF3E3C1FFD4B08EFF8F504BFF8F4F49FF9254
      4AFF93544AFF93554BFF94564CFF94574DFF94574DFF8C4B48FF824444FF0503
      05FF2227AFFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2B31DDFF2C32E3FF2C32E5FF0E1049FF181A1C88151619D5171A76FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1E22
      9BFF161618FFF6F1E9FFFAF4E9FF4D4C4AFF15186BFF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF171B78FF3A3429FFEFD9
      AFFFF1DCB2FFF0DBB1FFF0DBAFFFEDD4A2FFE8CD9BFF4E4639FF0D0F42FF2C32
      E4FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31DDFF0708
      23FF12145AFF1A1D85FF000002FF2227AEFF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0F114BFF421F20FF803B3BFF803B3BFF803B
      3BFF803B3BFF7F3A3BFF7F3A3CFF7E393CFFA26B6EFFFAF5ECFFF7ECD6FFE9D7
      B4FF383936FF1A1E1FFF93939334000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF103334
      36FD191B1CFF9A6D64FFF3E3C2FFF3E3C1FFCEA88CFF8E4F4AFF90514AFF9456
      4CFF94564CFF94574DFF94574DFF94574DFF95574DFF8E4E49FF8E4F4AFF3821
      1FFF0E1048FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF131662FF171B78FF2C32E5FF0E1049FF2E2F31C2010104FF272CC8FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2B31
      DFFF030412FFB0ADA9FFF2EDE5FF0B0B0CFF2227B0FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF252ABEFF030304FFDCC8
      A5FFF2DEB7FFF1DEB6FFECD4A9FFEFD9ABFFECD3A4FFD5C199FF100F0EFF191C
      80FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF12155EFF1312
      13FF02020CFF171A77FF060721FF2C32E4FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32
      E5FF2C32E5FF2C32E5FF2C32E5FF0F114BFF421F21FF803B3CFF803B3BFF803B
      3BFF803B3BFF803B3BFF803B3BFF7F3A3CFFA16A6BFFFAF4E9FFF7EDD8FFEADA
      B8FF383A38FF1B1D1EFF8E8E8E32000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0E3033
      36FE1A1B1CFFA37768FFF3E3C2FFF3E2C1FFCAA38BFF8E4E4AFF91524AFF9457
      4DFF94574DFF94574DFF985B50FFA26856FFB17C60FFA26959FFA3695BFF8C5B
      4FFF050405FF1F239EFF2C32E5FF2C32E5FF2C32E5FF2C32E5FF2C32E5FF1B1F
      8AFF010103FF010105FF2126ABFF0E1049FF07080AF902020AFF0D0F43FF0D0F
      43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F
      43FF040415FF535252FFB1AFABFF000002FF0D0E40FF0D0F43FF0D0F43FF0D0F
      43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF010104FF998E
      7BFFF2E0BAFFF0DCB9FFDEBD94FFF1DCB2FFEFD9ACFFEED6A6FFA99978FF0504
      07FF191D81FF2C32E4FF2C32E5FF2C32E5FF2B31E1FF141768FF0A0808FFB69D
      81FF252321FF080926FF05061AFF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F
      43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F43FF0D0F
      43FF0D0F43FF0D0F43FF0D0F43FF040517FF421F21FF803B3DFF803B3DFF803B
      3BFF803B3BFF803B3BFF803B3BFF7F3A3CFFA06867FFF9F2E5FFF7EDD8FFEBDB
      BBFF383A39FF1A1D1EFF98989837000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF112B2F
      31F81A1B1DFFA97F6CFFF3E3C2FFF3E2C1FFC79E89FF8E4E4AFF91524BFF9457
      4DFF985B50FFA87059FFC19063FFDAB269FFE0BA68FFB98666FFAB7460FFA76F
      5EFF604038FF02020CFF1D2193FF2C32E2FF2C32E5FF282ED1FF141665FF0302
      05FF26191CFF121316FF040517FF0A0C33FF090A0BC603030586030305860303
      0586030305860303058603030586646466DA767678F87A7B7CFF7A7B7CFF7A7A
      7BFF7A7979FF81807FFFB5B4B1FF665D52FF424142FF797672FF78746EFF3C38
      38FF726D63FF78746DFF625450FF5D483AFF777066FF766F63FF5C4639FF9E8E
      7FFFF3E3C2FFEBD6B9FFC29682FFF2DEB7FFF1DCB4FFE7CA99FFEAD0A1FFA291
      70FF0E0C0CFF090A2DFF15186DFF141769FF070823FF171512FFA07F5CFFC698
      6FFF7F6F54FF000002FF1D1A16FF766F62FF787570FF726652FF69573EFF6551
      3AFF68553DFF6A5E4AFF171717FF231518FF3F1E21FF3F1E22FF3F1E21FF3F1E
      21FF3E1E20FF3E1E20FF3E1E20FF3E1D1FFF602D2FFF803B3DFF803B3DFF803B
      3DFF803B3CFF803B3BFF803B3BFF7F3A3CFF9F6766FFF9F2E4FFF7EDD8FFEBDC
      BDFF383B3AFF191C1DFF95959535000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE122D31
      33FB1A1B1CFFA77D6AFFF3E3C2FFF3E2C1FFCBA38BFF8E4F4AFF93554CFFA870
      59FFC79964FFDDB86BFFE4C16CFFE5C16CFFE3BE69FFBE8C68FFB27D64FFAF79
      63FFAB7561FF624238FF080507FF030411FF06071FFF010105FF1A1011FF6D41
      3AFF292223FF615156FF353537EE000002FF1416188600000000000000000000
      0000000000000000000000000000FCFDFFCCFCFDFEFAFDFEFDFFFDFDFCFFFDFD
      FBFFFDFDFBFFFCFBF8FFFCFAF5FFAB887EFF8D8685FFFAF5EBFFF6EAD6FF726F
      6AFFEFE7D7FFF9F1E1FFAEA29BFFBB9E7EFFF7EAD3FFF2E2CBFFA66E5EFFDABF
      AEFFF4E5C7FFE6D0B3FFAB867CFFF2E1BDFFF2E0BAFFD6B28AFFE6C999FFECD4
      A3FFD8C49CFF6E5D49FF433C31FF443B2BFF7E7056FFDCC598FFDBB682FFD4AB
      77FFD7BC89FF080707FF332921FFE9D1B1FFFAF4EAFFF0DCB5FFDDB87FFFD5AC
      78FFD4AA76FFDBC397FF313130FF372728FF803D40FF813D41FF813C42FF813C
      42FF813C41FF803C40FF803C3FFF803C3EFF803C3EFF803C3EFF803B3DFF803B
      3DFF803B3DFF803B3CFF803B3CFF803B3CFF9F6766FFF9F1E3FFF7ECD6FFEBDB
      BDFF383B3AFF1A1C1DFF95959535000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF103032
      35FC191B1CFF9F7366FFF3E3C2FFF3E3C1FFD2AD8DFF92544CFFB7845DFFDCB8
      6DFFE2C270FFE2C371FFE3C370FFE2C370FFE3C06BFFC3936AFFB68366FFB37F
      65FFB27D64FFAF7A63FFA16F5BFF744E43FF6A463DFF81554AFFA0675AFF884E
      4AFF202020FFB7AA9FFFBBBBBB4F0E0E10F11416188600000000000000000000
      0000000000000000000000000000FCFDFFCCFCFDFCFEFDFEFDFFFDFDFCFFFDFD
      FBFFFDFCFBFFFDFCFAFFFBFBF9FF706166FFB39492FFFBF6EEFFE2CCB9FF665C
      58FFF0EBE0FFF9F1E1FFA19C92FFBBAE96FFF7EDD8FFEBDCCDFF864C4DFFDDC3
      B3FFF5E8CDFFDDCAABFF908078FFF4E4C3FFF3E2BFFFBE907DFFE2C498FFEFD9
      ACFFF1DCB2FFC69B7FFFEBD3ABFFE6C78FFFE9CE9FFFE7CB9BFFE2C291FFDCB8
      81FFEACF9FFF564A38FF2C1F1BFFCCA27CFFF2E2C3FFF3E2C0FFE0BD82FFD8B0
      7CFFD2A875FFDBC49DFF2F3232FF2A2423FF7E3D40FF823E42FF813D41FF813D
      41FF813C42FF813C41FF813C40FF803C3FFF803C3FFF803C3FFF803B3DFF803B
      3DFF803B3DFF803B3DFF803B3DFF803B3CFFA06867FFF9F1E1FFF7EBD4FFEBDB
      BCFF383A39FF1A1D1EFF98989837000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF103634
      37FD181B1CFF956862FFF3E3C2FFF3E3C1FFD5B18EFF985C50FFD7B16EFFDFC4
      75FFE0C474FFE0C474FFE0C474FFE0C474FFE3C26EFFCDA06BFFC3946BFFBD8C
      69FFB88567FFB58166FFB37F65FFB17B63FFAC7661FFA9725FFFAA735FFF733F
      41FF212224FFBFC1C2B5FEFEFE074545485119191D8200000000000000000000
      0000000000000000000000000000FDFDFECDFDFEFDFFFDFEFDFFFDFDFCFFFDFC
      FBFFFDFCFBFFFDFCFAFFFAF7F0FF6D6964FFE1CCB6FFFCFAF6FFB2A8A7FF5748
      4CFFF2EDE4FFF9F0E0FF9A8F7AFFBFB9ACFFF8EEDBFFE1DACDFF6F4E4AFFE4CC
      B9FFF6E9D0FFD6C09CFF857E79FFF5E6CAFFF5E6C8FFA27B72FFDFC198FFF1DD
      B5FFF2DFB8FFAE8073FFEBD5B2FFE9CD97FFE4C8A1FFDBB88CFFE7CA9BFFE0BE
      86FFE6CBA1FFB29C7CFF31251EFFD0A779FFE5C795FFF0DBB1FFE3C289FFDBB5
      7CFFD4AB78FFDCC5A0FF323233FF262321FF7D3D40FF823E42FF823E42FF823E
      41FF813D41FF813C41FF813C42FF813C41FF803C40FF803C3FFF803C3FFF803B
      3EFF803B3DFF803B3DFF803B3DFF803B3CFFA16A6AFFF9F1E3FFF7EBD4FFEAD9
      B7FF383A37FF1B1D1EFF97979B36000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0E553E
      41FD171A1BFF805D5AFFF3E3C2FFF3E3C1FFDAB88FFF995C50FFD5AF70FFDFC5
      79FFDFC578FFDFC578FFDFC578FFDFC577FFE1C473FFD4A96BFFCA9D6CFFC799
      6BFFC4956BFFC08F6AFFBB8868FFB68266FFB58165FFB27D64FFB37E63FF4B36
      2CFF3B332EFFC4BCBA7E000000000000000086868D2400000000000000000000
      00000000000000000000FEFEFE34FCFDFDF9FDFEFDFFFDFDFCFFFDFDFBFFFDFC
      FBFFFDFCFAFFFDFCF9FFEAD9CDFF685C55FFF0E9DBFFFCFBF7FFA0A1A2FF7B5B
      58FFF7F2ECFFF5EBE0FF816656FFC1C1BCFFF9F1E3FFDFDACFFF726053FFEDDB
      C1FFF7ECD6FFCAAD8CFF807E7AFFF6E9CFFFF6E9CFFF7F736DFFDCC098FFF2E0
      BCFFF2E1BEFF8C746BFFE8D8BAFFECD3A3FFDFC2A6FFCDA37BFFEDD6ACFFE8CB
      97FFDFC3ACFFE1C8B4FF685F4FFFEDD7AFFFF3E3C4FFF4E5C9FFE8CB94FFDFBB
      7EFFD6AE79FFDFC5A0FF493839FF252221FF7D3C40FF823E42FF823E42FF823E
      42FF823E42FF813D41FF813D41FF813C42FF813C42FF813C41FF803C3FFF803C
      3FFF803C3EFF803C3EFF803B3DFF803B3DFFA26B6DFFF9F2E5FFF6EAD1FFE8D5
      B0FF383835FF1A1E1FFF93939834000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE0B8D6B
      58F7171A1BFF635552FFF3E2C2FFF3E2C1FFE1C18FFF985B4FFFCFA86FFFDFC7
      7DFFDFC77DFFDEC67CFFDFC67CFFDFC67DFFE0C577FFD7AD6BFFCEA26CFFCC9F
      6CFFCA9C6CFFC7986BFFC3946BFFBE8C69FFB98667FFB78467FFAE7860FF3D2D
      28FF776C61FFF6EEE47C00000000000000000000000000000000000000000000
      000000000000FFFFFF0CFCFDFFCCFDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFDFC
      FAFFFDFCF9FFFCFBF8FFB6A9A9FF4D4849FFF2F0EAFFFBF9F3FF9A9488FFA98C
      72FFFBF6EFFFE7E2E0FF4B3B3FFFC2C4C4FFFBF6EDFFDFDACEFF7B7263FFF6EA
      D6FFFAF3E6FFB79080FF7E7D7FFFF8F0DFFFF9F0E0FF767473FFE0CAABFFF6E9
      CFFFF6EAD1FF7D756FFFEAE2D3FFF4E4C3FFE9D5BFFFD0A77CFFF6EAD4FFF4E4
      C5FFE2CCC2FDE4CFC5FFD1CBBDFFF6EAD1FFEDDDCDFFECD9C6FFECD3A5FFE0BE
      83FFD9B27CFFE5C9A2FF744F49FF252121FF7C3B3FFF823F42FF823E42FF823E
      42FF823E42FF823E42FF823E42FF813D41FF813C42FF813C42FF813C41FF813C
      40FF803C3FFF803C3FFF803C3EFF803B3DFFA56F71FFF9F3E7FFF6E9CFFFE4CD
      A6FF36342FFF1A1E20FF8A8F8F30000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE09AF9F
      85F3171A1BFF55524EFFF3E3C2FFF3E3C1FFE5C892FF985B4FFFC9A16DFFDEC8
      81FFDEC880FFDEC77FFFDEC880FFDEC880FFDFC67CFFDBB36BFFD2A66BFFD0A4
      6CFFCEA26CFFCC9F6CFFCA9D6CFFC6976BFFC1906AFFBE8D69FFA16758FF2D21
      25FF858789F3FAFAFA3500000000000000000000000000000000000000000000
      000000000000FEFEFE17FCFDFEFEFCFDFCFEFDFDFCFFFDFDFBFFFDFCFBFFFDFC
      F9FFFCFBF8FFFCFBF7FF9B9C9AFF444549FFF3F2EEFFF6EFE7FF7E6655FFB9AB
      93FFFBF7F0FFDFDFDDFF343438FFC4C3C4FFFBF6EEFFD9CCB5FF7D7466FFF8F0
      DFFFFAF5EBFF8A7070FF7B7B7FFFFAF3E7FFFAF5EAFF747675FFE3D2B8FFF8EF
      DEFFF9F0E0FF787773FFEBE9E2FFF7EBD4FFEEDDC8FFB6856EFFF4EADFFEF6E8
      CDFFDAC2BEEFDABEAFFFF9F0E1FFF5E8CDFFDDC7C3FEDDC4BBFFF0DDB6FFE2C1
      87FFDCB67DFFE8CDA4FF957A5EFF242021FF79393EFF834042FF823E42FF823E
      42FF823E42FF823E42FF823E42FF823E42FF823E42FF813D41FF813C42FF813C
      42FF813C40FF803C3FFF803C3FFF803C3EFFAB7775FFFAF3E7FFF6E8CEFFDDC1
      99FF312E28FF1C1E20FF95999935000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF04B9B7
      AFEE171A1BFF50504DFFF2E2C1FFF3E2C1FFE9CE99FF985B4FFFC29769FFDECA
      87FFDECA86FFDEC985FFDECA86FFDECA87FFDEC882FFE0BB6BFFD8AF6BFFD4AA
      6BFFD1A66BFFD0A46CFFCFA36CFFCC9F6CFFCA9C6CFFC99B6CFF8D6447FF1E1D
      1FFF938C8EE30000000000000000000000000000000000000000000000000000
      000000000000FFFFFF22FDFDFDF9FDFEFDFFFDFDFBFFFDFDFBFFFDFCFBFFFDFC
      F9FFFCFBF8FFFBF7F0FF8B8072FF604E4EFFF6F3F0FFE4E0DEFF403536FFC0BA
      ADFFFBF7F1FFDDD8CDFF3C3134FFCDC5C4FFFBF6EDFFC3A48BFF7A7265FFF9F0
      E0FFFAF5EAFF666468FF777A7DFFF9F2E3FFFAF3E6FF74736FFFE0CCAFFFF8EE
      DBFFF7EDDAFF75756EFFEAE8DFFFF6EAD1FFECD9C5FF85655AFFECE5DCFDF4E4
      C5FFD9C0BEFFC9A18AFFF8EFDEFFF4E5C5FFD6BEBEF9D3B7AEFFF4E4C6FFE4C4
      89FFDEB97EFFEAD1A4FFA89980FF211F20FF74373CFF844042FF834042FF8340
      42FF823F42FF823E42FF823E42FF823E42FF823E42FF823E42FF813D41FF813C
      42FF813C42FF813C41FF803C40FF813D3EFFB7887AFFFAF2E5FFF5E7CBFFCDA9
      8AFF2A2522FF272124FF988E9332000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF01A1A4
      A9A1191C1DFF4F4E47FFF1DFBCFFF3E2C0FFECD4A8FF9A5E53FFBE9166FFDFCD
      90FFDFCD90FFDFCD8FFFDFCD8FFFDFCD90FFDFCC8BFFE3C06DFFDDB66AFFDBB3
      6BFFD9B16BFFD6AC6BFFD2A76BFFD0A46CFFCFA36CFFCFA26CFF7C6140FF302B
      29FFD8BCB1D80000000000000000000000000000000000000000000000000000
      000000000000FEFEFE71FDFEFDFFFDFEFDFFFDFDFBFFFDFCFBFFFDFCFAFFFCFB
      F8FFFCFBF7FFEDE8E3FF57463DFF9D7F6CFFFBF7F2FFDCDBD6FF2E3033FFC3C1
      BBFFFBF7F0FFD3C2AAFF4C3333FFE0CDC7FFFAF5ECFF8D6E6EFF777068FFF9F0
      E0FFFAF3E7FF5F6366FF77797DFFF9F0E0FFF9F1E1FF716C63FFDCC5A5FFF7EC
      D7FFF6EAD4FF747066FFEAE4D7FFF5E7CCFFEBD8C2FF6D5F56FFE9E6DDFFF3E2
      C0FFDBC3BEFFA16E61FFF2E8DAFCF3E1BDFFD6BEBDFACCA892FFF6EAD2FFE6C8
      8EFFDFBC80FFEAD0A2FFB2AA9AFF1F1F20FF6C3439FF844143FF844042FF8340
      42FF834042FF834042FF823E42FF823E42FF823E42FF823E42FF823E42FF823E
      41FF813D41FF813C42FF813C42FF833F41FFCCA480FFF9F1E3FFF5E6C8FFAE88
      7BFF1E1D1EFF523834FFC3A8A22F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000989E
      A58E191D1EFF4A433AFFEBD4ADFFF3E2BFFFEFDBB7FFA1675BFFBB8C62FFE1D0
      97FFE0D096FFE0CF95FFE0CF95FFE0CF95FFDFCE93FFE3C473FFE2BC68FFE0B9
      69FFDEB76AFFDCB46BFFDAB26BFFD6AC6BFFD3A86BFFCB9D69FF68443BFF4142
      41FFF4F0E7C30000000000000000000000000000000000000000000000000000
      000000000000FDFEFEBBFDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFCFBF9FFFCFB
      F7FFFCFAF7FFDCDCDAFF2A2A2CFFB9AC95FFFCF9F4FFD6CBB8FF28292AFFC4C4
      C2FFFBF7EFFFAB877BFF594438FFEDDCCCFFFAF5EBFF626063FF76736DFFF9F0
      E0FFF9F2E4FF5F6060FF79797CFFF8EFDDFFF8EEDAFF6A6257FFD7BB9BFFF7EB
      D3FFF4E6CDFF71685BFFE9E0CEFFF4E5C7FFECD8BFFF6B6055FFE9E5DDFFF2E0
      BAFFE4CEC1FF735552FFE8E2D8F0F1DEB6FFE3CEC3FCAB7A68FFF0E4D4FDE9CC
      94FFE1BF84FFEACF9EFFB6B3ACFF1C1E1FFF5F3135FF854143FF844042FF8440
      42FF844042FF834042FF833F42FF833F42FF823E42FF823E42FF823E42FF823E
      42FF823E42FF823E41FF813D41FF844143FFDBBA8BFFF9F0DFFFF4E4C5FF8979
      70FF171A1BFF7C6956FFE7D6BF2C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F9F
      A78E1F1F21FF3C2F2AFFD8B89BFFF3E2C0FFF1DFC0FFAF7B67FFB7855DFFE5D4
      A1FFE3D6A4FFE2D5A3FFE2D5A2FFE1D4A0FFE2D4A0FFE1C67BFFE5C066FFE5C0
      66FFE2BD67FFDEB76AFFDDB56AFFDDB56AFFDCB46BFFCB9E64FF4E2E33FF4549
      4DFFEBEEEE4D0000000000000000000000000000000000000000000000000000
      000000000000FDFEFEC4FDFEFDFFFDFDFCFFFDFDFBFFFDFCFBFFFCFBF8FFFCFB
      F7FFFCFAF7FFD6CEBFFF272829FFC4BFB4FFFCF9F4FFB39482FF272325FFCBC7
      C5FFFAF6EEFF695E61FF625543FFF5E8D2FFFAF3E8FF5C5F5FFF787773FFF9F0
      DFFFF8EFDEFF5B5855FF7A787BFFF8EEDBFFF6EAD3FF62574BFFCDAC93FFF6E8
      CFFFF2E1C5FF695D4DFFE6DAC4FFF4E3C3FFECD8BDFF6C5F50FFE8E3D7FFF0DC
      B5FFEEDCC4FF6E6257FFE6E3DBFBF0DAAFFFF1E1CBFF7E685DFFE6E0D7FAEAD0
      9EFFE3C288FFE9CE9BFFB6B7B4FF181C1DFF522F30FF854243FF844043FF8440
      42FF844042FF844042FF834042FF834042FF834042FF833F42FF823E42FF823E
      42FF823E42FF823E42FF823E41FF864445FFE2C7A4FFF8EEDAFFF4E3C3FF7A75
      6BFF16191AFF918A80FFF8F2DF29000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3BC
      B88E453432FF231F21FFB59B8BFFF3E2C0FFF3E1C0FFC4976DFFAB755AFFE8D6
      A8FFE7DAAFFFE6DAAEFFE6D9ADFFE5D8AAFFE5D8AAFFE0CA85FFE5C069FFE5C0
      68FFE5C067FFE4BF66FFE3BD68FFE0BA69FFDEB869FFC8A15AFF2D2225FF5B52
      55FFEDE8ED2D0000000000000000000000000000000000000000000000000000
      0000FFFFFF01FCFDFDDEFDFDFCFFFDFDFBFFFDFDFBFFFDFCFBFFFCFBF8FFFCFB
      F7FFFCFAF7FFAD957FFF1F2122FFC6C7C5FFFAF8F3FF685F60FF402D2DFFE2D0
      CAFFF9F4E9FF57595AFF6D6455FFF8EEDAFFF8EFDEFF585652FF787A77FFF9F0
      DEFFF5E9D0FF524C44FF7A7879FFF7EDD8FFF3E4C9FF56493FFFC09A8BFFF5E8
      CCFFEEDBBDFF605040FFE1D1B4FFF3E3C2FFECD7BCFF685849FFE7DECDFFEFDA
      B1FFF3E4CAFF72685AFFE8E3DAFFEFD8ADFFF6EBD4FF78746BFFE5E3DDFDEBD3
      A4FFE4C489FFE7CB97FFB8B7B6FF191C1DFF492D2EFF854143FF844043FF8440
      43FF844042FF844042FF844042FF834042FF834042FF834042FF823F42FF823E
      42FF823E42FF823E42FF823E42FF894849FFE8D2BFFFF7EBD5FFF2DFBBFF756B
      5BFF161A1BFF939598EEFEFEFE13000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F0
      E38B6B6459FF181A1CFF9B9386FFF3E2C0FFF3E2C0FFD0A97BFF995D51FFE4CF
      A9FFEADFBAFFEADEB8FFE9DDB6FFE8DCB3FFE8DCB3FFE2D096FFE4C26EFFE5C1
      6CFFE5C16AFFE5C068FFE5C067FFE5C066FFE3BE67FFC0A056FF20211FFFA385
      78FFF9F3F32C0000000000000000000000000000000000000000000000000000
      000000000000FAFAFE34FCFCFC77FBFDFBA2FDFDFCB9FCFCFBC6FCFCFAD3FCFB
      F8EBFBFAF8FF5E5A5DFF252124FFCFCAC9FFFAF5EDFF525455FF5B493BFFF1E2
      D2FFF8EFDEFF53514CFF757065FFF9EFDEFFF4E6CCFF4D473DFF777A79FFF8EF
      DDFFEEDBBEFF473E33FF7B7878FFF7ECD5FFEAD5BAFF4A3B32FFB48C84FFF5E6
      C9FFE8D2B7FF564335FFD8BF9EFFF3E1BEFFECD8BAFF625240FFE2D3B9FFEED7
      ADFFF5E8CEFF6D6458FFE5DECEFFEDD6ABFFF7EDD8FF7A7771FFE6E1D7FFEBD2
      A6FFE2C186FFE6C991FFC0B9B7FF201E20FF462D2DFF854244FF844043FF8440
      43FF844043FF844042FF844042FF844042FF844042FF844042FF834042FF833F
      42FF833F42FF823E42FF823E42FF915251FFEDDCCDFFF6E9D0FFEAD2B1FF614D
      3FFF171A1BFF8E9197D800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      F85278797AFC171A1CFF938772FFF2E1BEFFF3E2C0FFDABA9AFF95574EFFDBC2
      94FFEFE5C7FFEEE3C4FFEEE3C4FFECE2C1FFECE1BFFFE7D8A9FFE1C473FFE3C3
      70FFE3C26EFFE5C26CFFE5C169FFE5C069FFE5C068FFBE9C55FF222320FFC7BE
      AEFFFEFEFE290000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7FB45505457FF534540FFE9DED8D9F8F2E6EF4F4D49FF6F6557FFF8EF
      E0FFEEDDC5FF443C33FF78766FFFF9F0DFFFE3CBB6FF3B302AFF757979FFF8EE
      DBFFDBC0AFFF372A28FF7C7776FFF7EBD3FFDBC0AFFF3C2B2AFFA8827FFFF4E5
      C7FFE0C7B2FF4A352FFFC5A28AFFF2DFBBFFEBD6B8FF5A4939FFD7BF9FFFEDD5
      AAFFF5E8CDFF675F52FFDDCCB1FFECD4AAFFF7ECD6FF77746FFFDBC8AFFFEBD2
      A9FFDFBB7FFFE4C48BFFD8C3BDFF352728FF442C2CFF854344FF844143FF8440
      43FF844043FF844043FF844043FF844042FF844042FF844042FF844042FF8340
      42FF834042FF833F42FF823E41FFA66E5AFFF3E5CFFFF5E7CAFFD4BDA6FF3729
      29FF262221FFBCA9A6DD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF027C7C82F3181A1BFF765B4AFFEDD8B8FFF3E2BFFFE7CEAEFF9F6554FFD7B6
      80FFF2E9CFFFF0E7CBFFF0E6CAFFEFE5C6FFEFE4C6FFEBDFB9FFE0C77CFFE2C3
      72FFE3C370FFE3C370FFE4C26EFFE4C26DFFE4C16CFFB48B55FF242424FFCDCD
      CBF9EFFFEF100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F0E5BD474644FF75726CFFFBF7F184EFE0CCC6413D36FF767777F6FBF9
      F695D3B7AEE4312625FF797A77FFF9F1E2FFBEABA5FF231F20FF767777FFF8ED
      D9FFBDAAA4FF241F21FF7F7776FFF6E9CFFFC9AFA6FF2C2225FF977B7AFFF4E5
      C5FFD8BBADFF3C292AFFAC857FFFF1DDB9FFECD6B6FF524235FFB89486FFECD4
      A8FFF5E6CAFF645B52FFB69489FFECD4AAFFF5E7CCFF716F6EFFA18782FFECD6
      AFFFDBB57DFFDDB986FFEDDBC8FF4D3F34FF442B2CFF864444FF854243FF8542
      43FF854243FF844143FF844043FF844043FF844043FF844042FF844042FF8440
      42FF844042FF834042FF834042FFBC8D6EFFF6EAD2FFF4E5C6FFC1B5A0FF1D1E
      20FF423E3BFFF0E1D5BF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF06C0A49EF4232021FF3B2F2FFFDFCDB3FFF3E2BFFFEFDAB1FFAF7A5CFFCAA0
      77FFF3EBD5FFF2EAD3FFF2EAD2FFF2E9D0FFF2E9D0FFEEE5C8FFE1CD8DFFDFC5
      76FFE0C474FFE1C372FFE2C370FFE3C370FFE2C370FFA17153FF242527FFB7BC
      C0A0000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE07FCFCFC56FCFAF675FCF8F175FCF8EF75FCF8F175FCFA
      F475CFB8AEE02F2826FF787B7DF5FEFEFE26B29D9ECF232021FF6E7379E60000
      00009F8F95C31F1D1FFF7A787DF5FCFAF76D9F9EA2E8191B1DFF7E7979FFF8ED
      D9FFA9A5A0FF1A1C1DFF817776FFF5E7CCFFB3A8A1FF1F1D1FFF897775FFF4E4
      C3FFD1B3A8FF302326FF8D7775FFF0DCB4FFEBD5B3FF4C3F32FF887575FFECD4
      AAFFF4E5C7FF615B55FF7C7275FFEDD7AFFFF2E2C2FF6D7073FF6E6E74FFEFDC
      BBFFD5AD7BFFD5AD7EFFF5E9D4FF595348FF442B2CFF864444FF854243FF8542
      43FF854243FF854243FF844043FF844043FF844043FF844043FF844043FF8440
      42FF844042FF834042FF854244FFC69F92FFF7ECD6FFF4E3C3FFB5A187FF1A1C
      1DFF515356FFF9F9F65F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF02EBE4DAE1333333FF242526FFD4C4A7FFF3E2C0FFF2E0BCFFBE9075FFAE7A
      62FFEFE6C9FFF3ECD8FFF3ECD7FFF3ECD6FFF3EBD5FFF2EAD3FFE5D49FFFDFC6
      7AFFDFC577FFDFC576FFE0C474FFE0C373FFE1C372FF92604FFF212426FFABB1
      B98700000000000000000000000000000000FFFFFF01FFFFFF0CF9F4EB8ECFBB
      B9C09EA2A9C1A6AAAFDCAEAEADFFA4A098FF9F9A8CFF9E9789FF9F998CFFA29E
      93FF686865FF161A1BFF595D60F99FA4AAC86D7178F4171A1BFF777573FAF9F0
      E3B398999AE9191B1CFF8D7C82EFFFFFFF0693969DD61B1C1DFFA18487F8FBF8
      F3EFA4A6A7FC171A1CFF857876FFF5E6C8FFAAA59EFF191B1DFF7E7471FFF3E2
      C0FFC6ADA4FF282023FF787170FFEFDAB1FFEAD2AFFF4A3D30FF6F6E70FFECD5
      ABFFF3E3C2FF625F59FF6A6E71FFEFDBB8FFEED9B5FE6B7176FE67696CFFF3E4
      C9FFD1A776FFD2A877FFF7ECD8FF605E58FF43292CFF874544FF864344FF8542
      43FF854243FF854243FF854243FF854243FF844143FF844043FF844043FF8440
      43FF844042FF844042FF894847FFD5B6A6FFF6EAD3FFF1E0C0FF816453FF171A
      1CFF6A5F63FFF6F6F61E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DBDEE2473C3E42FF1E1F1FFFB6947DFFF3E3C1FFF3E2C1FFD7B38EFFA56C
      57FFEDDDB4FFF6F0E0FFF6F1E0FFF6F0DFFFF6F0DFFFF5EFDDFFE9DDB4FFDFC8
      81FFDFC67DFFDFC67BFFDFC579FFDFC576FFDFC476FF8F5D4EFF202325FFABB1
      B987000000000000000000000000FFFFFF08F8F6F29FA09FA3F47B7872FF4433
      32FF1C1E20FF1E2021FF1F2020FF1D1F1EFF1C1F1DFF1C1F1DFF1C1F1DFF1D1F
      1EFF1D1F1EFF1C1D1EFF1C1E1FFF1B1E20FF181C1DFF16191AFF38352FFF746D
      61FF52524FFF1A1B1DFF775A5FFEDEC7B3EE9A958AFB201E1FFFBC9792F7FEFE
      FE268C9298C71C1C1DFFAB8D86FCF8F0E0FDA8A7A3FF171A1BFF777270FFF3E1
      BEFFBAAAA1FF201D1FFF6F6F6EFFEFD9AEFFEAD2ABFF4A3E30FF6A6D6DFFECD5
      AAFFF2DFBBFF65645EFF696A69FFF1DFBDFFEAD2ABFF6E6F74FF5D5B56FFF5E7
      CFFFCFA577FFCB9F73FFF5E8D2FF676663FF3F272BFF864444FF874545FF8643
      44FF854244FF854243FF854243FF854243FF854243FF854243FF844043FF8440
      43FF844043FF844043FF975A4FFFEED9B4FFF5E7CBFFEBDBBBFF403C3BFF1B1D
      1EFFBBA39BFFFEFEFE1D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEAE63E837161FF181A1BFF6C5A55FFF3E3C2FFF3E2C1FFEACF9EFFA268
      56FFE2C7A3FFF8F3E6FFF8F2E4FFF8F2E4FFF8F2E4FFF7F2E3FFF1E9CFFFDFCC
      8BFFDDC880FFDEC77FFFDFC77DFFDFC67BFFDFC67AFF9C6D51FF212426FFABB1
      B987000000000000000000000000F6F0E67B9E9485FF252627FF252421FF3B2C
      2AFF6B3E3FFF8C5F49FFA5814BFFAB8C4CFFAB8E4DFFAC8F4DFFAA8C4DFFA887
      4DFFA47F4DFF996D4CFF835248FF714042FF62343BFF452B2EFF2A2923FF2927
      21FF262222FF1C1D1EFF1E1D1FFF3C342DFF33322DFF191B1CFF715552FFD8C4
      B5FF9A9790FF22211FFFC9AE98F3FCFCFC789BA0A4DD171A1BFF777371FFF1DE
      BAFFB2A79DFF1C1C1EFF6C6F6EFFEFD9AEFFE9D0A9FF4A3E31FF6A6B67FFEED8
      ADFFF0DCB6FF676662FF625D58FFF2E1BFFFE4C8A3FF7C7173FF4B4238FFEEDC
      C2FFCDA278FFC69870FFF2E3CBFF6C6D6DFF3B2629FF864444FF884645FF8745
      44FF864344FF864344FF854243FF854243FF854243FF854243FF844143FF8441
      43FF844043FF844043FFA36B66FFF5E8CEFFF4E5C7FFE0C8A4FF33312DFF2326
      27FFD3D3D1C9FEFEFE0700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE29BDB9B1FF181B1CFF4D4843FFEED9B7FFF3E2BFFFF0DDB9FFAF7A
      64FFC69E80FFF8F2E4FFFAF5EAFFF9F4E9FFF9F4E9FFF9F4E9FFF7F1E2FFE2D2
      9AFFDDC882FFDDC881FFDDC880FFDEC77FFFDEC77EFFB79256FF242425FFC3C3
      C3C5E7FEFE0B0000000000000000C4C5C7932E2E2DFF49342EFFBC9658FFCDB1
      64FFD8B36BFFDFBB6DFFE4C06AFFE5C067FFE3BE67FFE1BB69FFDEB869FFDDB6
      6AFFDCB46AFFD8AF6AFFD3A869FFD0A468FFCEA165FFCB9F5FFFC29B5BFFB88B
      5AFF9F6854FF513232FF272323FF3B3227FF392C27FF2A2023FF1D1C1EFF2A29
      28FF292A2AFF181B1CFF716B65FFCDCDCCCF82878EDE181B1CFF83767AFAFAF5
      ECFDB1ADABFF1B1C1DFF6C6E6BFFEED8AEFFE7CDA6FF4A3E30FF67635BFFEFDA
      AFFFEED7ADFF676764FF54493EFFEDD8B6FFE1C39EFF9D7C7AFF2B2424FFC7B8
      B1FFCDA37AFFBA876AFFEDDABCFF6F7274FF342327FF854343FF8A4947FF8947
      46FF864344FF864344FF864344FF854243FF854243FF854243FF854243FF8542
      43FF844143FF854244FFBE917CFFF7EBD3FFF4E4C4FFAD8A7DFF201E1FFF3836
      36FFC3C3C66C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDB7BAAF292425FF312927FFCAAE96FFF3E2C0FFF3E2C0FFCCA1
      75FFB6835FFFF6EDD9FFFBF6EFFFFAF6EEFFFAF6EEFFFAF6EEFFFAF5ECFFEBE0
      BCFFDECB8AFFDEC985FFDDC883FFDDC881FFDDC881FFC2AC67FF252322FF9C98
      8DFFF3F3F32D0000000000000000C7C2C69930292AFF784F40FFDFBE72FFE2C3
      71FFE3C270FFE4C26CFFE5C169FFE5C068FFE5C066FFE4BF67FFE2BD67FFE0BA
      69FFDEB76AFFDDB66AFFDAB26BFFD7AD6BFFD5AB6BFFD3A86BFFD1A56BFFCFA3
      6CFFD0A46AFF55462FFF2D2125FFAE7D53FFAF795EFF985C53FF754C3DFF5A44
      30FF462C2EFF281F22FF1B1D1EFF26282AFF222527FF171A1BFF615B60FCE0D7
      CEE1B2ABADF01D1D1EFF6D6D6AFFEFDBB5FFE5CAA4FF4B3D31FF5F574AFFEED8
      ADFFEBD2A6FF656864FF392B29FFD8BDA9FFDEBE9BFFBC9784FF201F20FFB0AE
      ACFFD0A883FFAD7663FFE5CAA9FF6E7376FF292022FF804142FF8A4947FF8A49
      47FF874545FF864344FF864344FF864344FF864344FF864344FF854243FF8542
      43FF854243FF894848FFE0C39FFFF5E7CCFFF2E1BEFF776F62FF171A1BFF8B83
      78FFF7F2EA650000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBDED893625450FF191B1CFF998E7DFFF3E2BFFFF3E2C0FFDEC0
      9CFFA26856FFE9D7BCFFFBF9F3FFFBF8F2FFFBF8F2FFFBF8F2FFFBF8F1FFF3EC
      D8FFE0D096FFDECD8EFFDECB8BFFDECA86FFDEC983FFD5BE7AFF5A4A33FF3031
      34FFCCBFC4D1DAFEFE0700000000EDE0E0746E5F61FA282321FFA2784EFFE0C0
      71FFE3C370FFE3C370FFE3C26EFFE5C16CFFE5C16AFFE5C068FFE5C066FFE4BF
      66FFE2BD68FFE0BA69FFDEB769FFDAB26BFFD8AF6BFFD5AB6BFFD3A96BFFD2A7
      6BFFCB9E6AFF503E2DFF191C1CFF90624CFFCA9C6BFFCA9C6CFFC6976BFFBF8D
      68FFAA725EFF99654DFF78563EFF583335FF2E2125FF1B1E1DFF1C1D1FFF5349
      3DFF615F5FFF191B1CFF6C7073FEF9F4EAF4EDDBC2FB504338FF524438FFE6CC
      A5FFE6CAA1FF656865FF1F1D1FFFB9ADA4FFDAB997FFD3B995FF242321FFACAA
      A2FFD7B493FFA66D5EFFDABA9BFF707378FF1E1E1EFF77403EFF8C4B48FF8B4A
      48FF894846FF864445FF864344FF864344FF864344FF864344FF854244FF8542
      43FF854243FF9B5F55FFEDDAC2FFF4E4C5FFE2CAAEFF504038FF191B1DFF9392
      97D8FFFFFF020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFA3A7D7F80FA181A1BFF6F554BFFEBD6B7FFF3E2BFFFEDD7
      B2FFAD775CFFD8B68AFFFCF9F4FFFCF9F4FFFCF9F4FFFCF9F4FFFCF9F4FFF9F5
      EBFFE7DAAEFFE0CF95FFDFCE92FFDFCD8FFFDECC8CFFDECB8AFFB99664FF2E24
      24FF7F6F63FFF4ECE298BFBFFF04FFFFFF03C8CAD1A93D4046FF322725FFAA7A
      55FFDFC274FFE2C372FFE3C370FFE3C370FFE3C26FFFE4C26DFFE5C16BFFE5C0
      68FFE5C067FFE4BF66FFE3BE67FFDFB869FFDEB66AFFDBB36BFFD7AE6BFFD6AB
      6BFFC39366FF47312DFF181A1CFF5B3935FFCC9E68FFC8996BFFC5966BFFC495
      6BFFC2926AFFC08F6AFFBB8968FFB37E62FFA97855FF8B5D48FF5C3437FF2A26
      22FF1F1E1FFF161A1BFF303537FF9A8284FFE8DED0FF555149FF412E2CFFD8B7
      9CFFE0C19EFF656766FF171A1CFFAFACA4FFDEBD95FFDDCAA7FF282725FFA296
      84FFDCBEA3FFA2695BFFCDA791FF83777AFF1B1D1EFF72403CFF8D4D49FF8C4C
      48FF8A4A47FF874545FF874445FF864445FF864444FF864344FF864344FF8643
      44FF854344FFBD9077FFF5E6C8FFF3E3C2FFC3B29DFF222022FF373633FFD7D0
      C8D1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEBCAAEB282724FF2C2929FFD7C6AAFFF3E2BFFFF2E1
      BEFFC4997BFFB38069FFF8F2E4FFFCFBF7FFFCFBF6FFFCFAF6FFFCFAF6FFFCF9
      F5FFEFE6C9FFE2D4A1FFE1D29CFFDFD097FFDFCE92FFDFCD91FFE0CB92FF7B56
      4AFF272624FFBBB3A6FFFAF8F36E00000000FEFEFE0DB6BAC0CC313134FF3526
      27FFA47C52FFDBC374FFE0C475FFE1C372FFE3C370FFE3C370FFE3C26FFFE4C2
      6EFFE5C16AFFE5C068FFE5C067FFE5C066FFE3BE67FFE0BA68FFDDB66AFFDCB4
      6AFFBB8960FF3C272BFF443938FF3F3329FFC69764FFCEA16CFFCB9E6CFFC89A
      6CFFC6976BFFC1916AFFBD8B69FFBC8A69FFBC8A68FFBA8767FFB98662FFAD7C
      57FF854C49FF4D342DFF2C2324FF201E20FF38393AFF232525FF3B2A2AFFDAC2
      B6FFF3E4CAFF666867FF181B1CFFAEA89AFFE4C595FFE0CFADFF2B2B2AFF7E63
      53FFDABEACFF9D6257FFBE9386FFB18E85FF1F1F1FFF6F403CFF8E4E49FF8E4F
      49FF8D4D48FF884646FF874445FF874445FF874445FF864445FF864344FF8643
      44FF8B4A48FFD3B19DFFF5E6C8FFF1E0BFFF947A63FF181A1CFF5B595AFFF9F7
      F160000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7E7E577403E40FF1D1E1EFFA89277FFF3E3C1FFF3E2
      C1FFE6C99AFFA76E58FFEBD9B5FFFCFBF8FFFCFBF7FFFCFBF8FFFCFBF7FFFCFB
      F8FFF7F3E5FFE6DAAFFFE3D6A6FFE2D4A2FFE0D29CFFE0D198FFE0D096FFCABB
      84FF3D3A2FFF383735FFCFC7B8EEFBF7F44600000000F2F2F829B5A8ACE54338
      34FF242321FF9B864BFFDDBF75FFDFC578FFE0C374FFE1C372FFE2C371FFE3C3
      70FFE3C270FFE4C26EFFE5C16BFFE5C069FFE5C067FFE5C066FFE3BE67FFE1BB
      68FFB38255FF3B3032FFCEB5A1FF4A3A37FFA67255FFD5AB6BFFD1A66BFFCEA1
      6CFFCA9C6CFFC8996CFFC5966BFFC1916AFFBD8C69FFBB8868FFBA8868FFBA87
      68FFBD8C68FFBA8763FF995E53FF674337FF40292BFF201D1FFF1A1C1DFF7D77
      6CFFCBC6C2F8656162FF181B1CFFA79A83FFE6C997FFDFCDACFF2E2F2EFF4036
      38FFD6C0B2FF9F6458FFB8897DFFD6BD9BFF262523FF6E3E3CFF8E4E49FF8E4E
      49FF8D4E49FF894846FF874445FF874445FF874445FF874445FF874445FF8643
      44FF9F645AFFF0DDB7FFF4E4C4FFE9D8B8FF403C39FF1A1C1EFFAA8E8DFFFEFE
      FE1B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBEBEB35847C7AFF171A1BFF554D48FFF1DFBDFFF3E2
      BFFFF0DEBBFFB48064FFCBA685FFFAF7EFFFFDFCF9FFFDFCF9FFFDFCF9FFFDFC
      F9FFFCFAF5FFEEE6C9FFE8DCB3FFE6DAAEFFE3D7A7FFE2D5A3FFE1D39EFFE1D3
      9EFFB2A976FF2C2C27FF4A453EFFCDB6ACEDFAFAFA3300000000FAFAFA36D4C1
      B2F04E4E4AFF262320FF806245FFD2B96EFFDFC77EFFDFC476FFE0C474FFE1C3
      72FFE1C371FFE2C371FFE3C370FFE4C26EFFE5C16CFFE5C16AFFE5C068FFE5C0
      67FF9B834AFF333333FFECE8DFFE555758FF7C603CFFD9B16BFFD6AC6BFFD3A8
      6BFFD0A56BFFCDA16CFFCA9D6CFFC89A6CFFC6976BFFC3936BFFC08F6AFFBD8B
      69FFBA8768FFBA8868FFBD8C69FFBB8967FFA56C5BFF845545FF462B2FFF1B1D
      1EFF322D29FF352D2AFF171A1BFF998568FFEBD3AAFFDFCEB1FF2F3132FF2C2F
      31FFD9CAB8FFA46B5AFFB07D6FFFE2D2B3FF2D2D2CFF6A3A3CFF8F504BFF8F50
      4AFF8E4F49FF8A4947FF874445FF874445FF874445FF874445FF874445FF8845
      45FFC1957FFFF5E7CBFFF4E3C3FFBAA48DFF272624FF242628FFD5D5D7CCFFFF
      FF02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE13C0C0C0DF1D1F21FF302A29FFC9AD98FFF3E2
      C0FFF3E2C0FFD4B087FFB17D5DFFF5ECDAFFFDFDFBFFFDFDFBFFFDFCFBFFFDFC
      FBFFFDFCFAFFF7F3E6FFECE2C0FFEBE0BBFFE9DDB5FFE6DAAFFFE5D9ABFFE4D7
      A7FFE4D7A8FFA39874FF2A2426FF3F3433FFA9A5AAE2F6F6F23EFFFFFF02FBFB
      F744CCCCCBC64D464AFF1D1E1FFF604D34FFC19763FFDFC67DFFDFC67AFFDFC5
      76FFDFC475FFE0C473FFE1C372FFE2C371FFE3C370FFE3C36FFFE4C26DFFE4C2
      6CFF958246FF363737FFEFEEEAF0696467FF5A3F34FFD3A867FFDCB56BFFD8AF
      6BFFD6AD6BFFD4A96BFFD2A76BFFCFA36BFFCC9F6CFFC99B6CFFC7986BFFC596
      6BFFC2926AFFBE8C69FFBB8868FFBA8768FFBC8A68FFBB8868FFAB765BFF8454
      46FF442A2DFF1D1E1EFF16191BFF4E4740FFE3D8C3FFE5DFD2FF2E3234FF2B2C
      2DFFDDCEB1FFAA7462FFA66E5EFFE2D3B6FF323334FF613439FF90514FFF9051
      4EFF90514DFF8C4B48FF874544FF874544FF874544FF874445FF864445FF8F50
      4EFFE5CCACFFF4E4C5FFF2E0BDFF7A6E63FF181A1CFF6E6A65FFE9E7E7750000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EAE7E099625E57FF191B1CFF907F6FFFF1DF
      BCFFF3E2BFFFEBD3AEFFAC765DFFDEC398FFFDFDFAFFFDFDFCFFFDFDFCFFFDFD
      FCFFFDFDFCFFFBFAF5FFF1E9CFFFEDE3C2FFECE1C0FFEBE0BDFFE9DDB6FFE7DB
      B1FFE6DAADFFE5D9AFFFB08D7BFF3D2F2AFF2E3133FFBAB4ABFFE3E0E3770000
      0000FFFFFF18D8D1D1BF84817BFF262525FF322C25FF8E634BFFD1B872FFDFC6
      7DFFDFC67BFFDFC577FFDFC475FFE0C474FFE1C373FFE2C371FFE3C370FFE2C2
      6EFF8E7144FF393A3BFFEEEEEDDBC0B2A2FF322628FFC29C57FFE2BC68FFDEB7
      69FFDDB66AFFD9B16BFFD6AD6BFFD4AA6BFFD3A86BFFD1A56BFFCDA06CFFC99A
      6BFFC7996BFFC6976BFFC3946BFFBF8E6AFFBA8868FFBA8768FFBB8868FFB986
      66FFB17D5DFF824C47FF382A27FF1D1D1FFF454141FFA1968CFF2C2E30FF2524
      23FFD4BC9BFFAF7C6FFF975A51FFD8C5B4FF323537FF4E2A31FF90514EFF9152
      4FFF91524FFF8D4D49FF874545FF874544FF874544FF874544FF874545FFB786
      6EFFF2E1C2FFF3E3C1FFD8BFA7FF3E3030FF1C1E1FFF9E9E9EE3FEFEFE270000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFF720929190EB1C1E1EFF423132FFDFCB
      B0FFF3E2BFFFF2E1BEFFC69C7DFFBD8E6EFFF7F2E4F1FCFDFCF8FDFDFCFFFDFD
      FCFFFDFDFCFFFDFDFBFFF8F3E6FFF0E6CAFFEEE4C5FFEDE3C3FFECE2C0FFECE0
      BDFFEADEB8FFE9DCB4FFEADCB7FFC6AE78FF3C392DFF252526FF7B7578FBE0D4
      CBADFEFEFE19FEFEFE19E8E8E868BDA799FF474143FF201F1FFF49332FFFA484
      51FFCCB273FFDFC67CFFDFC77EFFDFC579FFDFC476FFDFC475FFE0C473FFDDBC
      70FF734D40FF393B3DFFEBECECA8D6D6D5CB292A2BFFA8854EFFE4BF67FFE4BF
      67FFE2BD68FFDFB969FFDDB66AFFDAB26BFFD8B06BFFD6AC6BFFD3A86BFFD0A4
      6BFFCDA06CFFCA9C6CFFC89A6BFFC7986BFFC3946BFFC08F6AFFBB8968FFBA87
      68FFBA8768FFBC8A67FFAA725AFF684338FF2A2123FF222324FF1B1D1EFF1C1C
      1DFFA98677FFB5857BFF8E4E4BFFCEB6ADFF373639FF332527FF92544FFF9254
      50FF915250FF8D4D4AFF874645FF874544FF874544FF874544FF90504CFFD9BA
      A2FFF4E4C3FFF2E0BEFFA68F7DFF1B1C1EFF45443FFFEDE6D8BF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EAE3D6CB343535FF1D1F20FFA690
      7EFFF3E2C1FFF3E2C0FFEAD1A4FFAA735DFFE3CBAAF7FDFDFDB9FCFDFDF9FCFD
      FDF9FDFEFDFFFDFEFDFFFBFAF7FDF5EEDBFFF1E8CEFFF0E6CAFFEEE4C6FFEDE3
      C2FFECE2C1FFECE1BEFFEBDFBAFFEBE0BCFFC4B18DFF66533DFF1C1E1EFF6253
      49FFBAB4ABE3F8F3E870FFFFFF06F6F6F61FDCC7C6CA867B7BF83A312CFF1D1E
      1EFF4B372EFF907C4CFFC59F6CFFDFC47AFFDFC982FFDEC77EFFDFC578FFD8B8
      71FF593437FF383C3EFFDADDE054CEC7CC6F3E3235FF724B3EFFE1BE69FFE5C0
      67FFE5C066FFE4BF66FFE2BC68FFDFB969FFDEB769FFDBB46BFFD8B06BFFD6AC
      6BFFD3A86AFFD1A66BFFCEA26CFFCB9E6CFFC8996BFFC7986BFFC4956BFFC190
      6AFFBC8A69FFB98767FFBD8B69FFBC8967FF935F4DFF442D2CFF1C1E1EFF181B
      1CFF6F6867FFBD9286FF8A4A49FFCDAB9EFF654C46FF292422FF975B4FFF995D
      54FF965952FF8E4F4BFF884645FF884645FF874545FF874545FFAC7766FFF2E0
      BDFFF3E2BFFFEBD9B8FF4F3E3DFF191C1CFF8C8982FFF7FEF721000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F4F4468B877DFF171A1BFF5549
      44FFEDD9B7FFF3E2BFFFF2E1C0FFC79B76FFC29673FFF8F2E5D4FBFBFE45FCFE
      FE71FDFEFFFFFDFEFFFFFDFDFDE1F9F6EDFFF3EBD5FFF2EAD3FFF1E9CFFFF0E7
      CBFFEEE4C6FFEEE3C3FFEDE3C3FFECE1BFFFEEE4C4FFE2D1A8FF8A725EFF2F27
      25FF302F29FF797672FFE5D8C7E2F2EEEE3DFEFEFE0DF6F0EA58C1B5B0C78984
      7AFF29292BFF1D1E1FFF3D2C29FF685C39FF967354FFD3AD69FFDBC47AFFD0BA
      7FFF37292BFF373C40FFD0D4DC42F2E8E668817069FF3E3529FFDCBB68FFE4C2
      6CFFE5C16AFFE5C068FFE5C066FFE4BF66FFE3BD67FFE1BB68FFDEB769FFDCB4
      6AFFD8B06BFFD6AC6BFFD4AA6BFFD2A76BFFCFA36BFFCB9E6CFFC89A6BFFC799
      6BFFC5966BFFC1916AFFBD8B69FFBC8A68FFBE8C69FFB07B5BFF8C6246FF3022
      26FF636461FFCCA68DFF844344FFC7A088FF9D866FFF272222FF90534EFF9B5F
      54FF9A5F54FF90524CFF884645FF884645FF884645FF8C4B4AFFD7B697FFF3E2
      C0FFF3E2C0FFA79685FF222222FF252829FFD6D1CAD6FEFEFE07000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3F3F316C0C0BFCD242628FF2021
      21FFA69986FFF3E2BFFFF3E2BFFFE7CEA8FFB07A5FFFE6D0B0FFFEFEFA3DFFFF
      FF02F7F7FF22F7F7FF22FEFEFE1DFCFCF9BCF7F2E4FFF4EDD9FFF2EBD4FFF2EB
      D3FFF1E9D0FFF1E7CDFFEFE5C7FFEEE4C4FFEDE2C2FFEEE3C4FFECDCC1FFC1AA
      81FF5D423EFF232120FF3B3B39FF987A78FFD7D6D7C4F0EDE868FEFEFE13F0EC
      E689C2C4C7BBA3937FFF3C3D3FFF262827FF201D1FFF3C3327FF4D4733FF794E
      47FF202020FF373C40FFD0D8DC42FEFEF82A98999AEC2C2623FFC5995EFFE1C4
      73FFE2C371FFE3C26FFFE4C26CFFE5C169FFE5C068FFE5C068FFE3BE68FFE2BD
      68FFE0BA69FFDEB869FFDDB56AFFD9B06BFFD7AE6BFFD5AB6BFFD3A86BFFCFA3
      6BFFCC9F6BFFC99C6AFFC89969FFC59668FFC29265FFC29163FFB17C61FF4A2E
      30FF5C5750FFE1C39EFF824447FFB28168FFB0A796FF211F21FF884C4BFFA167
      5AFF9C6056FF90514CFF884646FF884645FF884645FFAB7560FFEEDAB8FFF3E2
      BFFFEBD8B5FF64594AFF171A1BFF7F7B73FFF0EEEB6A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F2F07D797573FF181A
      1CFF675746FFE9D7B6FFF3E2BFFFF2E1BFFFC89F7DFFC39675FFF7F0E0C30000
      0000000000000000000000000000FEFEFE2EFBF8F4F0F7F1E3FFF6EFDEFFF5ED
      DAFFF3ECD6FFF3EBD5FFF2E9D1FFF1E8CDFFEFE5C8FFEDE4C4FFEDE3C3FFEFE4
      C6FFE3D5AFFFA47C69FF463E33FF212020FF313134FF989186FFBEB5BAB2F2EB
      E892FEFEFE1CF4EEE95ED9DBDD80D1C4B4FF6A6166FF4C4D4FFF312C2AFF1B1C
      1DFF161A1BFF3C3E42FFD4D8DC4200000000ABA7A7D3232322FF6E593AFFB4A2
      59FFB4A35AFFB5A45DFFB8A45FFFBDA35EFFC4A35EFFC6A25DFFC7A25CFFC5A1
      5BFFC2A059FFBF9F57FFBB9D54FFB89B52FFB69852FFB29252FFAF8A51FFAA81
      51FF99694FFF844F4AFF784445FF6E3C41FF603339FF593234FFA2695AFF6248
      35FF3E372FFFD8C3A9FF8B4D50FF905453FFB2A8A0FF1C1D1FFF6D413DFFA971
      5FFFA1675AFF90504CFF884645FF884645FF8F4F4DFFD2B09CFFF3E2BFFFF2E1
      BFFFB4A18DFF1F2021FF262729FFADACAED5FEFEFE1A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE0BBAB0B3E02829
      2AFF1E2021FFAF9787FFF3E2C1FFF3E2C0FFECD5A8FFB58263FFE0C6A1FEFCF9
      F46000000000000000000000000000000000FDFDFD87FAF6EDFFF8F2E3FFF6F1
      E2FFF6F0DFFFF5EEDBFFF3ECD7FFF2EBD5FFF2EAD2FFF1E8CEFFEFE6C8FFEFE5
      C6FFEFE5C7FFF0E6CBFFDFC7A3FF8D806BFF4C3E2DFF1D1D1FFF32282AFF837A
      77FFA7999DD4EFE3DEC2FFFFFF20FEF8F827E8E8ED2DF5F2EDBCD2BAB0FB8782
      89FC77797BFE968F91FEE9E9EE3C00000000F3EBDDB64A4946FF1E2020FF2325
      22FF222522FF232423FF262324FF2C2326FF352429FF38252AFF38242AFF3524
      29FF302327FF2A2224FF232222FF202220FF1F221FFF20231FFF21221FFF2121
      20FF212021FF1E1F20FF1A1D1EFF181B1DFF171A1CFF252021FFA36B59FF885A
      47FF1E1E20FFAEA9A6FFA67164FF794148FFC9B09AFF372E29FF533B30FFA971
      5FFFA2685AFF8D4C49FF884645FF8A4947FFBA8B76FFF2E0BEFFF3E2C0FFEDDA
      BAFF654D45FF181A1CFF716161FFF8F8F67E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3EF428478
      67FF171A1BFF574740FFEBD6B2FFF3E2C0FFF2E2C2FFD6B28FFFBB8B6AFFF6EC
      DCEAFFFFFF10000000000000000000000000FEFEFE07FCFBF8CDF9F5EBFFF8F3
      E7FFF8F2E5FFF7F2E3FFF6F0E0FFF5EEDCFFF4EDD8FFF3EBD5FFF2EAD2FFF1E9
      D0FFF0E7CBFFEFE5C7FFF0E7CBFFF0E5C7FFD9C4A5FF9F8F6BFF533F35FF2021
      20FF252022FF5C5755FF817C80FFDACDC1F9EDEFEF72F6F6F13AFEFEFE19FFFF
      FF01FCFAF86FFCFCFA6BFFFFFF0100000000FFFFFF18AEB1B9CAA1A3A5F3A2A2
      A2FF9F9C97FF9B9589FF978E7EFF938875FF90846EFF8F806AFF8C7D67FF8C7D
      67FF8C7E69FF8C7F6AFF8F836FFF928978FF958F82FF98948AFF9A9993FF9F9F
      9EFFA0A2A4F694979CD2A6AAAFFD9E9EA4FF473438FF2B2623FFB7855FFFB17D
      5DFF2B2523FF968773FFCAA48CFF733C42FFD7B58DFF635B50FF442C2DFFA870
      5EFFA46B5AFF8A4947FF884746FFA66E58FFEBD4ACFFF3E2C1FFF3E3C1FFA396
      85FF212222FF222527FFC2B0B2DEFEFEFE120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEF3F316BFBC
      B7CE242729FF1F2020FF9B907EFFF1E0BEFFF3E2BFFFEED9B4FFBD8C69FFDBB9
      8DFFF8F4EA7D00000000000000000000000000000000F8F8F828FBF9F6EBFAF6
      EDFFFAF5EAFFF9F4E8FFF8F3E5FFF7F1E3FFF7F1E1FFF6EFDDFFF4EDD9FFF3EB
      D6FFF2EAD3FFF1E9D1FFF0E7CDFFEFE6C9FFF0E7CBFFEFE4C4FFDED1B9FFB9A7
      77FF694D47FF313029FF1E1E1EFF333230FF4E5053FFAA9783FFDEDCD7E3D6D6
      DA7DF7F2ED67FEFEFE1300000000000000000000000000000000FEFEFE1FFCFC
      F964FCFAF87FFBF7F08EFBF6EC94F7F2E490F9F0E28EF7EEDE8CF6EEDF9BF6EE
      DF9CF7EEDE8CF8F0E39DF7F0E28EF9F4EA92FBF8F3C3FBF9F3E3FAF7F1E8F2EB
      EAE4DCDEE2ABD5D7DAA1CBB7AFFF65575AFF242023FF5B3736FFCEA166FFCEA2
      64FF42302BFF3D3B37FFCCB2A1FF804446FFB6877AFF736F6BFF241E21FF9D6B
      52FF9E6355FF884746FF93554DFFDAB994FFF3E2BFFFF3E2BFFFE3CAADFF5542
      3CFF181A1CFF827D78FFEDEDEA65000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0F3
      F3598C8985FF1B1D1DFF372F2FFFD6C0A4FFF3E2C0FFF3E2C0FFE6C99AFFB986
      63FFE9D5AFF0FAFAF63F00000000000000000000000000000000FEFEFE5AFCF9
      F5FFFBF7EFFFFBF6EEFFFAF5ECFFF9F4E9FFF8F3E5FFF7F2E4FFF7F1E2FFF6EF
      DEFFF4EDD9FFF3ECD6FFF3EBD4FFF2E9D1FFF1E8CEFFF0E6CAFFF0E6C9FFF0E5
      C8FFEADFCAFFD5C491FF967762FF504D3EFF362C25FF212020FF2D2F31FF4842
      42FFAFA18EFFC4C5C5D2F5EEE19AFBF7F088FBF9F387F2F2EE8BB9BCC2B0B3B8
      BFB4B3B8BFB4B5B8BFB4B6B8BFB4B8B9BFB4B8B9C0B4B8B9BFB4B6B9BFB4B5B8
      BFB4B3B8BFB4B3B8BFB4B3B8BFB4B3B8BDB4C3C4C3F8BFBAB0FFAE9B85FF7856
      50FF39383CFF303335FF232424FF251F21FF5F4033FFBA895CFFD6AD6BFFD4AA
      6AFF815646FF212221FFB79F82FF9D6B63FF9C6864FFAF8A7BFF212021FF8056
      44FF92534CFF8A4947FFB88978FFF2DFBDFFF3E2BFFFF1E1C0FF9B8C77FF1D1E
      1EFF2E2A2DFFC3AFB3D1FEFEFE17000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF03E8DCCCD9383534FF1A1C1DFF8B765EFFF2E0BEFFF3E2BFFFF2E1C0FFD4AF
      88FFC39674FFF5EDDBD6EEFFFF0F00000000000000000000000000000000FDFD
      FBA3FCF9F4FFFBF8F2FFFBF7F1FFFBF6EFFFFAF5EDFFF9F4E9FFF8F3E6FFF8F2
      E4FFF7F1E2FFF6F0DFFFF5EEDBFFF4ECD8FFF3EBD5FFF2EAD2FFF1E8CDFFF0E7
      CAFFF0E5C8FFF0E7CBFFF1E8D0FFE7DAB0FFD0AC89FF857769FF635437FF3325
      26FF1B1D1EFF2C2D2CFFBBAB92FFF4E4C4FFF4E3C3FFDDD2BDFF313133FF1F23
      26FF1F2326FF212326FF232427FF242427FF252528FF242427FF222427FF2023
      26FF1F2326FF1F2325FF202425FF222426FF202223FF1D1F20FF191D1DFF1B1C
      1EFF322127FF513531FF6F5D37FF9D724DFFD9B064FFE1BB68FFDBB46BFFDAB2
      6BFFB48B55FF282022FF645F58FFC49A83FF87514BFFD1B59AFF2F302FFF4E2E
      31FF894847FFA26859FFE9D1ADFFF3E2C0FFF3E2C0FFC9B49EFF2C2C2DFF1A1D
      1EFF8B8D8EFFF5F5FA3800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4F4F4308F8F94F01A1D1FFF292A28FFB5A992FFF3E2C1FFF3E2BFFFEED9
      B9FFC19373FFDBBB96FFFBF8F2A200000000000000000000000000000000FEFE
      FE09FCFCF9C9FCFAF5FFFCF9F3FFFBF8F2FFFBF7F1FFFBF6EFFFFAF5ECFFF9F5
      EAFFF8F3E7FFF8F2E4FFF7F1E3FFF6F0E0FFF5EEDCFFF4ECD8FFF2EBD4FFF2EA
      D3FFF1E8CFFFF0E7CBFFEFE5C6FFEFE5C7FFF0E8CEFFEEE4C6FFE7D3A9FFC5AA
      99FF877066FF241E21FF787267FFF0DCB1FFEDD5A5FFD7C5A1FF262827FF3A26
      2AFF66423BFF5F393AFF583338FF553036FF553036FF553036FF563136FF5933
      38FF5E3839FF643F3BFF6E493DFF7D5A40FF8D6E42FF977F44FF97884BFF9C8B
      53FFB98E5DFFCCA168FFE3BF6BFFE4C16BFFE5C067FFE3BE68FFE1BC68FFE0B9
      69FFD2A866FF574131FF33312EFFC0AA90FF894C4DFFC2A08EFF685649FF2320
      20FF8C5049FFDBBA8EFFF3E2C0FFF3E2BFFFEAD3B5FF6D534CFF181A1CFF5647
      3DFFE9E3DDC6FFFFFF0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E8E68A6D6B66FF181B1CFF403A39FFD8C5ADFFF3E2BFFFF3E2
      C1FFE7CDA3FFBD8C69FFECD7B4FFFCF9F7630000000000000000000000000000
      0000FEFEFE1BFCFCFAE2FCFAF6FFFCFAF5FFFCF9F4FFFBF8F2FFFBF7F1FFFBF7
      EFFFFAF6EDFFFAF5EBFFF9F3E8FFF8F2E5FFF7F1E3FFF6F1E1FFF5EFDDFFF4ED
      D8FFF3EBD5FFF2EBD4FFF1E9D0FFF0E7CBFFEFE5C8FFEFE4C6FFEEE5C7FFEEE4
      C6FFE4CFA4FF49402FFF5E5041FFE8D1A8FFEFD8A9FFD8C8A7FF252929FF7F56
      4BFFE1C8A9FFDDC2A1FFD9BD9EFFD6BA95FFD4B78CFFD3B588FFD4B588FFD4B4
      84FFD6B782FFD8BA81FFDBBD7CFFDEC179FFE0C476FFE1C475FFE0C475FFE0C4
      74FFE2C372FFE2C370FFE3C36FFFE5C16AFFE5C067FFE5C066FFE4BF66FFE3BE
      68FFE3BE67FF9A6A4CFF1E1D1FFF968876FFB78B76FFA47062FFAC9A87FF1D1D
      1FFF765B53FFF2E1BDFFF3E2BFFFF2E1C0FFB09A7EFF252222FF1D1F21FFA19A
      98EEFAF5F1380000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE26DDCEBAE936312DFF191B1DFF7E5C58FFEDD9BBFFF3E2
      BFFFF3E2C0FFDDBC8CFFC5966AFFF2E5C9F7FFFFF93000000000000000000000
      000000000000FEFEFE2AFCFBF9F0FCFBF7FFFCFAF7FFFCFAF6FFFCF9F4FFFBF8
      F3FFFBF7F1FFFBF7F0FFFAF6EEFFFAF5EBFFF9F4E9FFF8F3E6FFF7F2E3FFF7F1
      E2FFF6EFDEFFF4EDDAFFF3ECD6FFF3EBD4FFF2E9D1FFF1E7CDFFEFE5C8FFEDE4
      C5FFEEE3C4FF695F51FF232222FFC2B39AFFEFD8A9FFD9C9A9FF27292AFF6442
      42FFE4D4A9FFE1D29CFFE0D098FFE0CF95FFDFCE91FFDECC8CFFDECA88FFDEC9
      85FFDEC983FFDEC881FFDEC880FFDEC77FFFDFC67DFFDFC67BFFDFC679FFDFC5
      79FFE0C476FFE1C475FFE2C473FFE2C372FFE2C370FFE4C26DFFE4C16BFFE5C1
      6AFFE5C169FFD5AE60FF3E3229FF323232FFC5A795FF965C57FFCBA691FF4535
      34FF48423BFFE1CEACFFF3E3C2FFCEBFA3FF383734FF181B1CFF6C7074FFE6E6
      E95D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F5F2F24F8D7C82FF181B1CFF2C2524FFB6967DFFF2E1
      BFFFF3E2BFFFF2DFBAFFD2AB7CFFCFA674FFF5ECD7E2FEFEFE1C000000000000
      00000000000000000000F9F9FE2CFDFCFBE6FCFBF8FFFCFBF7FFFCFBF7FFFCFA
      F5FFFCF9F4FFFCF9F3FFFBF8F2FFFBF7F1FFFBF6EEFFFAF5EBFFF9F4E9FFF8F3
      E7FFF8F2E4FFF7F1E2FFF6EFDEFFF4EEDAFFF4ECD7FFF2EBD5FFF2EAD2FFF1E8
      CFFFF1E8CFFFC1A380FF202120FF8D7B68FFEDD7AFFFE0CAA8FF433433FF3937
      31FFDED2A4FFE7DBB2FFE6DAAEFFE5D8A9FFE4D6A5FFE4D5A3FFE2D39EFFE1D1
      99FFE0CF94FFDFCC8DFFDEC985FFDEC880FFE0C67BFFE1C578FFDFC076FFD9B6
      74FFD0AB71FFCAA26DFFC59B69FFC29664FFBA925DFFAA9058FFA28F54FF9E8E
      50FF9D8D4DFF9C874AFF5A3A35FF1B1C1DFF937465FFC49A86FFBB8C79FF9183
      70FF1D1E1EFF927C71FFDCCDB3FF524F4AFF171A1BFF4F4D49FFE4E4E0DACCCC
      FF05000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF01D7D8DE8653585DF917191BFF463D33FFD4BC
      98FFF3E3C1FFF3E2C0FFF0DCB4FFCCA173FFD6B080FFF8F2E4D4FFFFFF0A0000
      0000000000000000000000000000FFFFFF28FCFCFADEFDFCF9FFFDFCF9FFFCFB
      F7FFFCFBF7FFFCFAF6FFFCFAF5FFFCF9F3FFFBF8F2FFFBF7F1FFFBF6EFFFFAF5
      ECFFF9F4E9FFF9F3E7FFF8F2E5FFF7F1E2FFF6F0E0FFF5EEDCFFF4EDD8FFF3EB
      D5FFF2EAD3FFE3D7BFFF4A3534FF3C3533FFE2CCA4FFEBD3A9FF836A59FF2C28
      24FFC69F72FFBF9782FFAE837DFFB5877EFFAB8179FF957D70FF837B6AFF7C7A
      67FF7A7A61FF787753FF777144FF776D3DFF756638FF705C36FF685034FF5C41
      32FF513531FF492D2FFF43282DFF3C232BFF302027FF231E21FF1C1D1FFF191C
      1DFF191D1DFF1A1E1EFF1D1F1FFF191B1DFF32312EFFC1B196FFC39880FFCDAD
      91FF312F2EFF3B2D2DFF5D5754FF181B1CFF322E29FFCABDADF1FEFAF63D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFD2D4C13D4244FF171A1BFF5E54
      46FFE5D0AAFFF3E2C0FFF3E2C0FFEDD7ADFFC99D71FFDFBF90FFFBF6EBC9F5F5
      F51A00000000000000000000000000000000F8F8F827FCFCFBD6FDFCFBFFFDFC
      F9FFFDFCF9FFFCFBF8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF9F3FFFBF8F2FFFBF7
      F1FFFBF7EFFFFAF5EDFFFAF5EBFFF9F4E8FFF8F2E6FFF7F1E3FFF6F0E0FFF5EE
      DCFFF4EDD8FFF3EAD5FF968874FF1E201FFF8B7F6FFFEED8AEFFA6967EFF1F1F
      20FF42312AFF302625FF281F23FF2B2024FF281F23FF232021FF202020FF1F21
      21FF202323FF242727FF282A2BFF2D2E30FF303134FF323436FF313437FF2E33
      36FF2D3135FF313236FF3C3539FF543C41FF734C4BFF8D6A57FF9F8668FFAA99
      7FFFB2A896FFB6B2A8FFBCBAB5FF998176FF292827FF42423EFFC4A783FFDEC2
      9CFF999284FF1D2020FF171A1BFF1D1D1EFF997A74FFFAF4EB76000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F724C2C4C3FA2D3031FF1B1D
      1DFF7C6E58FFE9D5B2FFF3E2C0FFF3E2C0FFEDD6B0FFCA9E7AFFE1C39BFFF8F1
      E4BEFFFFFF1100000000000000000000000000000000F3F3FE17FCFCFCBAFDFD
      FBFFFDFDFBFFFDFCFAFFFDFCF9FFFCFBF8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF9
      F3FFFBF8F2FFFBF8F1FFFBF7EFFFFAF6EEFFFAF5EBFFF8F4E8FFF8F2E5FFF7F2
      E3FFF6F1E1FFF6F0E0FFE7D8B5FF4C3F32FF362A2CFFCAAA92FFE2C99EFF4F44
      39FF181A1CFF654A4CFF976F69FF895F63FFA4796FFFBE9F82FFCDBA9AFFD4C8
      B2FFD7D0C1FFDAD7CFFFDDDDD9FFDEE0E1FEC9CDD08FCBCED48FD4D7DCAFD8DC
      E0C7DCDEE2D4DBDDE1CFDFDFE1D0E7E0E3CBEFE4E4C2F3EBE5B3F7EEE38BF9F5
      EC88FAF8F171FCFCF760FCFCFC58F2EBE693B1AFA9FF2D2C2FFF312D2BFF927E
      65FFD5C9B5FF766D5EFF1A1C1DFF372E30FFDFD7D4EEFFFFFF0A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAF767A8A7A3FE2325
      26FF1E1F1FFF937E64FFEEDAB7FFF3E2C0FFF3E2C1FFEBD5B3FFCBA077FFDDBD
      8FFFF3EDD9B30000000000000000000000000000000000000000FFFFFF02FDFD
      FB8FFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF8FFFCFBF8FFFCFA
      F7FFFCFAF5FFFCF9F4FFFBF8F3FFFBF8F1FFFBF7F0FFFBF6EEFFFAF5EBFFF9F4
      E9FFF8F3E6FFF8F2E4FFF8F2E5FFA48A87FF1D1E20FF694A43FFDEC1A1FF9B82
      71FF1D1E20FF868687FFF3EDE5F6F6EFE7F2F8F1E5F0F8F1E4F1F9F2E4F4F9F3
      E5F1F9F3E4EBF9F2E4E5F8F1E4E9F9F1E3E6F8F0E1E4F8F1E3FDF9F2E3FFF9F1
      E2FFF9F1E2FFF9F1E2FFF9F1E2FFF9F2E3FFF9F2E3FFF9F2E4FFF9F3E5FFF8F2
      E4FDF8F1E1CDF8F0E0C3F8F1E1BCF9F2E5BDF7F3EAEFBDA49EFF4B4138FF1E1F
      20FF4D4540FF928168FF2A2B29FF212323FFA3968CFFE8D9D995FFFFFF010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F5F0A08C8D
      8AFF191D1EFF272523FF9D7D69FFECD8BAFFF3E2BFFFF3E2C3FFECD5AFFFCCA1
      6EFFD9B884FEF8F2E3CEFEFEFE1600000000000000000000000000000000FFFF
      FF01FEFEFE5CFCFCFCECFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFC
      F9FFFCFBF7FFFCFBF7FFFCFAF6FFFCF9F4FFFCF9F3FFFBF8F2FFFBF7F0FFFBF7
      EFFFFAF5ECFFF9F4EAFFF9F4E8FFEDE9DDFF666860FF1D1D1EFF6F524CFFD0BA
      9AFF655F53FF212424FF9D8F7CFFEEDABCFFF4E5C6FFF3E2BFFFF3E1BDFFF3E1
      BCFFF3E1BDFFF3E2BFFFF3E2BEFFF3E2BFFFF3E2BFFFF3E2BFFFF3E2BFFFF3E2
      C0FFF3E2C0FFF3E3C1FFF4E3C2FFF4E3C3FFF4E3C4FFF4E4C4FFF4E4C5FFF4E4
      C5FFF4E3C5FFF4E4C6FFF3E4C6FFF3E4C8FFF4E6CCFFF4E8D0FFD2C3A8FF8075
      64FF292726FF1B1E1FFF181B1DFF171A1BFF231F20FF73686CFCD9DBE15E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE07EAEB
      E8B76F7374FF181B1CFF2A2323FF91716AFFEDDCBFFFF3E2C0FFF3E2C1FFEDD6
      ACFFD1A87BFFDBB888FFF4EAD4E0F9F4F42F0000000000000000000000000000
      000000000000FEFEFE1BFDFEFDAEFDFDFCFFFDFDFCFFFDFDFBFFFDFDFBFFFDFC
      FAFFFDFCFAFFFDFCF9FFFCFBF8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF8F3FFFBF8
      F2FFFBF7F1FFFBF6EFFFFAF6EDFFFAF5ECFFE0DECFFF4F4F4DFF1C1C1EFF544C
      44FFB59775FF453F3AFF292523FF61574EFFCFB48FFFE5D7BAFFE6D9BEFFE6D8
      BBFFE5D6B7FFE4D4B4FFE2CFADFFDEC8A5FFDDC6A2FFDDC6A1FFDCC49CFFDAC0
      97FFD6BA90FFD0B187FFC6A17EFFB78B75FFAD7E71FFAD7E71FFAA7B6FFFA575
      6DFF9B6C68FF8D6563FF76605CFF655B58FF5E5957FF5D5957FF5C5B5AFF5750
      4BFF2D2A2CFF1D1F21FF171A1BFF171A1BFF171A1BFF212325FFD9D5D0F5FFFF
      FF05000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE13DFE2E2AB52565BFF171A1BFF232123FF897F72FFECDBBBFFF3E2C0FFF3E2
      C0FFEFDBBBFFD9B37FFFD1A873FFF1E4C8F6FAF7ED6900000000000000000000
      0000000000000000000000000000FEFEFE47FCFDFDCBFCFDFCFDFDFDFCFFFDFD
      FCFFFDFDFBFFFDFCFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF8FFFCFBF6FFFCFA
      F5FFFCF9F4FFFBF8F2FFFBF8F1FFFBF7F0FFFBF7F0FFDDD5CEFF6F514CFF2021
      1EFF312D2AFF63403DFF3B2A2DFF1A1C1DFF312E2AFF393B3BFF393C3CFF3A3C
      3CFF3B3D3BFF3C3C3AFF3B3936FF383532FF373430FF373430FF36332EFF3430
      2CFF322E29FF2E2A25FF282522FF232020FF211E1FFF211E1FFF1F1D1FFF1E1D
      1EFF1C1C1DFF1A1B1CFF171A1CFF161A1BFF171A1BFF171A1BFF16191AFF1619
      1BFF171A1BFF171A1CFF191B1CFF1A1B1DFF1C1C1DFF1F1E1FFFB28F89FFF2F2
      F214000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE0BC4C5CC9C50474BFF191B1CFF1F2122FF98866FFFEAD3B6FFF3E3
      C1FFF3E2C0FFF1DEBBFFDCBA8CFFD3A974FFE7CFA5F3F8F2E7A5FFFFFF0C0000
      000000000000000000000000000000000000FFFFFF03FCFCFC71FCFDFDE4FCFD
      FCFEFDFDFCFFFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFB
      F8FFFCFAF7FFFCFAF5FFFCF9F4FFFBF8F2FFFBF7F1FFFBF7F1FFEFE5CDFF8784
      70FF3B362AFF1B1C1EFF1C1F20FF191D1FFF181A1CFF15191AFF272420FF5247
      2DFF564D2FFF585031FF5A5232FF5C5331FF5D5533FF5E5735FF605936FF615B
      36FF625B36FF635E3EFF635F3FFF5A4131FF4C2D2FFF563B30FF645C4BFF6562
      59FF64625AFF64635CFF65645FFF3A3A3AFF1A1C1DFF171A1BFF2B2D2EFF6B69
      6CFF746E75FF796F76FF7F7177FF877379FF94767DFF947A7EFFE5D5C2FEFEFE
      FE0D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF04DAC4C5C8736559FF191B1CFF252221FF7A645AFFE1D0
      B3FFF3E3C2FFF3E2C0FFF3E2C2FFE7CB9DFFD2A975FFDCBB8FFFF2E7CBE6FBFB
      F852FFFFFF030000000000000000000000000000000000000000FFFFFF0FFCFC
      FE5BFCFDFDEBFDFEFDFFFDFEFDFFFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFC
      F9FFFDFCF9FFFCFBF8FFFCFBF7FFFCFAF6FFFCF9F4FFFCF8F3FFFCF9F3FFFAF6
      EDFFCEC3ACFF89816CFF4C3A30FF1D2022FF1E2022FF2D2626FF9E8161FFEEDA
      B0FFEDDCB1FFECDCB1FFECDCB1FFEBDBB0FFEADBAEFFE9DAADFFE8DAADFFE8DA
      ACFFE8DAADFFE2CF95FFCEA771FF9D6251FF9F6555FFCEA785FFF0DCB6FFF3E3
      C2FFF3E3C3FFF3E4C7FFC6B093FF403E3BFF171A1BFF212325FF9B9E9FE9FBF9
      F582ECECEC0EECECEC0EECECEC0EECECEC0EECECEC0EECECEC0EFEFEFE0B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F3FEF317E8E2D7CD6D6F6EFF191B1DFF1A1B1DFF645C
      51FFDCC4A3FFF2E2C2FFF3E2BFFFF3E2C1FFEDD7B4FFDAB57FFFD1A877FFE8D2
      9FFFF9F4E7ABFFF9F43000000000000000000000000000000000000000000000
      0000FFFFFF0FFEFEFE49FCFDFDDAFDFDFDFFFDFEFDFFFDFDFCFFFDFDFBFFFDFC
      FBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF8FFFCFBF7FFFCFAF6FFFCFAF5FFFCF9
      F4FFFCFAF5FFF8F2E4FFDED1C7FFBCBDBBFFBCBDBDFFC9C2C0FFF2E6D3FFF9F4
      E9FFF8F3E7FFF7F1E2FFF6EFDDFFF5EEDBFFF4EDD8FFF4ECD8FFF4ECD8FFF1E6
      CAFFE0C592FFB27F64FF995C50FFB48162FFE1C5A3FFF2E1BEFFF3E3C1FFF3E3
      C2FFF0DFC1FF9C8A7CFF3D352EFF161A1BFF352B2BFF9E8C8FE8E6E6EA3E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE1CD9DADE8D6C6064FF242423FF1A1C
      1CFF433A37FFBDAC95FFEFDCBDFFF3E2C0FFF3E2C0FFF1DFBDFFE7CC9BFFCFA5
      76FFDAB479FFEFE0C4FEF7EFDD83FAFAFA390000000000000000000000000000
      0000000000000000000000000000FFFFFF3CFDFDFD9EFCFDFDEBFDFDFDFFFDFD
      FCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFBF8FFFCFBF8FFFCFA
      F6FFFCF9F5FFFCFAF5FFFCF9F4FFFCF9F3FFFBF8F2FFFBF7F0FFFAF5ECFFF8F2
      E6FFF8F2E3FFF7F2E2FFF6F0E0FFF5EFDDFFF7F2E4FFF6EEDBFFE4CEABFFBF91
      6CFF995D51FF9F6556FFD1A981FFEDD9B7FFF3E3C2FFF3E2C0FFF3E3C1FFDFCE
      B3FF917A63FF242525FF171A1BFF393B3DFFCBC2B7FEF0E5E559000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE07EDE8E39FA19C92FF2426
      28FF17191BFF332D2CFF9B8172FFE5D2B2FFF4E3C3FFF3E2C0FFF3E2C2FFF0DC
      BAFFDFBD8AFFCDA271FFDEBC87FFEBD7B8D9F3EBD8ACF9F9F92E000000000000
      00000000000000000000000000000000000000000000FFFFFF05FCFEFE5BFBFD
      FD99FDFDFDDAFDFDFCFFFDFDFBFFFDFDFBFFFDFCFAFFFDFCF9FFFDFCF9FFFCFB
      F8FFFCFBF7FFFCFAF6FFFCF9F5FFFCF9F3FFFBF8F2FFFBF7F1FFFBF7EFFFFAF6
      EEFFFAF6ECFFFAF6EEFFFBF9F5FEF5EEDDFDE8D3BDFFC69C77FF995D51FF9C60
      52FFBC8D70FFE9D0A5FFF3E2C2FFF3E2C1FFF3E2C0FFF2E0C0FFCBB29CFF5950
      49FF1D1E1EFF191C1CFF504A45FFB6B5BACFFAF6F63FFFFFFF01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF05F6F6F65DA09C
      9DF649463FFF16191AFF1A1C1EFF6B5D4DFFC0AF99FFF3E3C3FFF3E3C1FFF3E2
      C0FFF3E3C5FFEED7A9FFD7B38FFFD1A76FFFD2AC80FFE5CBA6EFF2E8CCDAFCFC
      F964FEFEF316FEFEFE0700000000000000000000000000000000000000000000
      000000000000FEFEFE3FFDFDFD85FDFDFB84FDFDFB9AFCFCFBC3FCFCFAFBFDFC
      FAFFFDFCFAFFFDFCFAFFFCFBF9FEFBFAF8F3FCFBF7D4FBF9F5C6FCFBF8D3FCFC
      FAD0FCFCFBD4F0E4C4E4D9BBA3F4BB8D70FF9F6553FF9D6253FFB9896CFFE0C1
      98FFF2E0BDFFF3E3C4FFF3E2BFFFF4E4C4FFE8D0B4FF9E8979FF3B2C2DFF171A
      1BFF1C1C1EFF6D6A6CFAE8DECFE2F2FFFF140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF7
      F048CBC9C5C3695053FF1D1F20FF171A1BFF393531FF837369FFE5D2B3FFF2E2
      C2FFF3E2C0FFF3E2C2FFF3E2C3FFEDD6AFFFDCBB94FFD6AD70FFC79A73FFD6B2
      8BFFEAD6A4FFF6EEE0EAF8F2E652FBF5EB4EFAFAF63CFEFEFE07000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0AF8F8
      F82AFEFEFE37FEFEFE35FEFEFE3FF8F5EE4DFBF5E44EF6EDE975F0E6D1FCE1C6
      98FFB98B7DFFA8715DFF995C50FFA16757FFC2946DFFDFC19EFFF0DDB6FFF3E3
      C3FFF3E2C1FFF3E3C2FFEFDFC2FFC7A78FFF5F534DFF242021FF171A1BFF2A2D
      2DFFA59D97FCD6D0D47F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE17E4D8DAAD8E8C8EFF303031FF161A1BFF1D1E1FFF47403DFFB19B
      7EFFE3D2B7FFF3E2C2FFF3E3C1FFF3E2C1FFF3E1C0FFF0DCBAFFE6CCA8FFDCB7
      7BFFC59670FFB9886DFFD3AC7AFFE1C58AFFEBDAC3FFEDDED5BFEFE0CD86F5E8
      D186F5EBD386F4ECD98DF1ECDB87F2ECDA7EF3EDDA85F4EDD98EF5EBD586F5EA
      D186EEDFCC89E7D4CDA1EBDBD2FFDDC49AFFCFA779FFAB7566FF9D6258FF9A5D
      51FF995D51FFAD7763FFD1A877FFE6CBA7FFF1DEBCFFF3E2C2FFF3E3C2FFF3E3
      C1FFEFDCBEFFD5C1A8FF806159FF302C2BFF171A1BFF1F1F1FFF615951FFC7BE
      B2D8F5F3EE6F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF05EEEEEE5FD2CEC7FE5B5A5BFF202223FF16191BFF2223
      22FF5C4C41FFB5A38EFFE1CAB1FFF3E3C2FFF4E3C3FFF3E2C0FFF3E2C1FFF2E1
      C3FFEFDCC0FFE9CE9AFFDCB984FFC29479FFB48168FFB48063FFC2926AFFC89B
      6CFFCA9F6AFFCAA470FFCBA776FFCBA77AFFCAA575FFC9A26FFFC79B69FFBE8D
      66FFAC755EFF9A5E53FF955850FF975A50FF9C6052FFA26956FFB17D67FFCDA4
      7EFFE4C58FFFEEDAB8FFF3E2C3FFF3E2C1FFF3E2C1FFF4E4C4FFF0DDBCFFCABA
      A3FF937B6CFF362E2FFF1A1C1DFF181A1BFF3D3637FFA08882FFE4DEDC93F9F9
      F432000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF18F6F3EBB499999AF74F4C4AFF191B
      1DFF16191BFF201F21FF604C45FF998C7FFFD9BBA3FFF3E3C4FFF4E5C6FFF3E3
      C2FFF3E2BFFFF3E3C4FFF3E4C7FFF2E2C5FFF0DCB3FFEBD09BFFE1C296FFCCA6
      8FFFBC8E78FFB58161FFB07A5AFFAD7658FFAD7659FFAF7959FFAF795AFFB07A
      5BFFB4805EFFB98767FFC19578FFD0AA8FFFE1C296FFEBD19CFFF1DDB6FFF3E3
      C5FFF3E3C5FFF3E2C1FFF4E4C3FFF4E5C6FFEEDAB7FFB5A18EFF867766FF372F
      2BFF191C1DFF16191AFF2E2926FF7C736FFAD4BCBAEBF9F9F92CFFFFFF080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF02FBFBF740D2CECEC1A39B
      9AFE453537FF1C1E1FFF16191AFF1B1C1DFF4A3D38FF6F6560FFBB9681FFE8D6
      B6FFEFE0C4FFF3E3C4FFF3E3C1FFF3E2C0FFF3E3C2FFF3E3C4FFF3E3C5FFF3E3
      C4FFF2E1BFFFF0DAB0FFEED7A9FFEED7A8FFEED8A9FFEED8AAFFEED8A9FFEFD8
      AAFFEFDAAEFFF1DDB5FFF2E1BEFFF3E3C4FFF4E4C5FFF3E3C5FFF3E2C2FFF3E3
      C2FFF2E2C5FFEDDEC1FFDBBF9FFF8D786CFF605950FF2D2725FF171A1BFF171A
      1BFF222425FF756E63FFBBB6B3DEF2E8DF7BFFFFFF0300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F2
      F264D0C8CAA0B0A797FF3E3F41FF262624FF16191AFF171A1BFF2C2725FF4241
      3EFF6C5250FFBD9C7DFFD7CAAEFFDFD0B9FFEDD9BDFFF3E1C0FFF3E3C1FFF3E3
      C1FFF3E3C2FFF3E3C3FFF3E3C4FFF4E4C4FFF4E4C4FFF3E3C4FFF3E3C4FFF3E3
      C4FFF4E3C4FFF3E3C3FFF3E3C1FFF3E3C1FFF1DEBFFFE7D4BBFFDACEB7FFD0BC
      9CFF9B7764FF4F4747FF3B3632FF1E1D1EFF16191AFF1A1B1DFF303233FF7159
      5AFFCAC6C5F2E3E1DC92FEFEF92B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF04F4F4F160E0E2E396C5B4A0FF5C5D60FF3F3C37FF191B1CFF1619
      1AFF171A1BFF242322FF2B2D2DFF3F3436FF845D50FFAF9878FFBBB099FFBDB4
      A2FFC2B6A5FFD0B9A8FFDCBFACFFDFC4AEFFE2C8B0FFE1C6AFFFDEC2ADFFD8BD
      AAFFC7B7A6FFBFB5A4FFBCB3A0FFB7A98EFF9F8065FF624341FF302F31FF292A
      29FF1D1D1EFF16191BFF16191AFF2A2424FF4E4E4EFF857175FFE1DBD3F2E7E0
      E263FEF9F92F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F92BF8F8F873E2D5C4F18A878CF77673
      6DFF41372FFF191C1DFF171A1BFF15191AFF171A1BFF1B1D1EFF1C1F20FF1D20
      22FF242225FF39272CFF4F3033FF593837FF61413AFF5D3C39FF543435FF462C
      30FF2C2427FF202123FF1C2021FF1C1F1FFF191C1CFF16191BFF16191AFF181B
      1CFF242022FF60544CFF7D8082FDB7A09EF5F4EEE5CBF6F6F639FEFEFE1C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF08E7FEFE0BF9F4
      ECB0CDC1B9D0A0A3A8D7A3A099FF796353FF2E2B2DFF222628FF202324FF1C1E
      1FFF1A1B1CFF171A1BFF16191BFF16191BFF171A1BFF171A1BFF16191BFF1619
      1BFF181A1CFF1B1D1DFF1E2021FF222527FF232629FF4E3939FF948777FFA5A6
      A6F0ABA4A9CDEADBD3CBFCF9F959FFFFFF05FFFFFF0400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE09FCFAF67CEBDED69EBBBBC09AAEB3BA91C5C6C9D5C4BA
      AAFBA38267FC5B3A3BFC2E2A2DFE26282BFE23272AFD232629FC27272AFC3A2E
      31FE82584BFBBAA687FAC8C6C1FAB2B7BB9CB0B5BC92D6C8CBA3F7F0E891FAFA
      FA3B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF}
    Animated = True
    Left = 560
    Top = 432
  end
  object Qry_bico_enc: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '  INSERT INTO BICOENC ('
      '    COD_BICOENC,'
      '    ID_BICO,'
      '    ID_BOMBA,'
      '    REGISTRO,'
      '    COD_FRENTISTA,'
      '    ID_PRODUTOS,'
      '    ENC_LITROS,'
      '    ENC_DINHEIRO,'
      '    PRODUTOS_DESC,'
      '    NIVEL_PRECO,'
      '    DINHEIRO,'
      '    PRECO,'
      '    DATAHORA,'
      '    LITROS,'
      '    ID_TANQUE,'
      '    UNIDADE,'
      '    USUARIO,'
      '    COD_USUARIO)'
      '  VALUES ('
      '    :COD_BICOENC,'
      '    :ID_BICO,'
      '    :ID_BOMBA,'
      '    :REGISTRO,'
      '    :COD_FRENTISTA,'
      '    :ID_PRODUTOS,'
      '    :ENC_LITROS,'
      '    :ENC_DINHEIRO,'
      '    :PRODUTOS_DESC,'
      '    :NIVEL_PRECO,'
      '    :DINHEIRO,'
      '    :PRECO,'
      '    :DATAHORA,'
      '    :LITROS,'
      '    :ID_TANQUE,'
      '    :UNIDADE,'
      '    :USUARIO,'
      '    :COD_USUARIO)')
    Left = 193
    Top = 433
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_BICOENC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_BICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_BOMBA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REGISTRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_FRENTISTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENC_LITROS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENC_DINHEIRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTOS_DESC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NIVEL_PRECO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINHEIRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAHORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LITROS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_TANQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_USUARIO'
        ParamType = ptUnknown
      end>
  end
  object qry_bicoenc_temp: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      '   INSERT INTO BICOENC_TEMP ('
      '    COD_BICOENC_TEMP,'
      '    ID_BOMBA,'
      '    REGISTRO,'
      '    ID_BICO,'
      '    COD_FRENTISTA,'
      '    ID_PRODUTOS,'
      '    ENC_LITROS,'
      '    ENC_DINHEIRO,'
      '    PRODUTOS_DESC,'
      '    NIVEL_PRECO,'
      '    DINHEIRO,'
      '    PRECO,'
      '    DATAHORA,'
      '    LITROS,'
      '    ID_TANQUE,'
      '    UNIDADE,'
      '    USUARIO,'
      '    COD_USUARIO)'
      '  VALUES ('
      '    :COD_BICOENC_TEMP,'
      '    :ID_BOMBA,'
      '    :REGISTRO,'
      '    :ID_BICO,'
      '    :COD_FRENTISTA,'
      '    :ID_PRODUTOS,'
      '    :ENC_LITROS,'
      '    :ENC_DINHEIRO,'
      '    :PRODUTOS_DESC,'
      '    :NIVEL_PRECO,'
      '    :DINHEIRO,'
      '    :PRECO,'
      '    :DATAHORA,'
      '    :LITROS,'
      '    :ID_TANQUE,'
      '    :UNIDADE,'
      '    :USUARIO,'
      '    :COD_USUARIO)')
    Left = 233
    Top = 433
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_BICOENC_TEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_BOMBA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REGISTRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_BICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_FRENTISTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PRODUTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENC_LITROS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENC_DINHEIRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTOS_DESC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NIVEL_PRECO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINHEIRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAHORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LITROS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_TANQUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_USUARIO'
        ParamType = ptUnknown
      end>
  end
  object QConsulta: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 272
    Top = 432
  end
  object qry_ultimoreg: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(registro) as registro FROM BICOENC')
    SQLConnection = DM.SQLC
    Left = 120
    Top = 438
    object qry_ultimoregREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
  end
  object QryBicoEnc_Temp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from  BICOENC_TEMP order bY registro')
    SQLConnection = DM.SQLC
    Left = 40
    Top = 439
    object QryBicoEnc_TempCOD_BICOENC_TEMP: TIntegerField
      FieldName = 'COD_BICOENC_TEMP'
      Required = True
    end
    object QryBicoEnc_TempID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Required = True
    end
    object QryBicoEnc_TempID_BICO: TStringField
      FieldName = 'ID_BICO'
      Required = True
      Size = 2
    end
    object QryBicoEnc_TempCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
    end
    object QryBicoEnc_TempID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Required = True
    end
    object QryBicoEnc_TempENC_LITROS: TFMTBCDField
      FieldName = 'ENC_LITROS'
      Precision = 15
      Size = 3
    end
    object QryBicoEnc_TempENC_DINHEIRO: TFMTBCDField
      FieldName = 'ENC_DINHEIRO'
      currency = True
      Precision = 15
      Size = 3
    end
    object QryBicoEnc_TempPRODUTOS_DESC: TStringField
      FieldName = 'PRODUTOS_DESC'
      Size = 30
    end
    object QryBicoEnc_TempNIVEL_PRECO: TIntegerField
      FieldName = 'NIVEL_PRECO'
      Required = True
    end
    object QryBicoEnc_TempDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Precision = 15
      Size = 3
    end
    object QryBicoEnc_TempPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Precision = 15
      Size = 3
    end
    object QryBicoEnc_TempLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Precision = 15
      Size = 3
    end
    object QryBicoEnc_TempID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
    end
    object QryBicoEnc_TempUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object QryBicoEnc_TempREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
    object QryBicoEnc_TempDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object QryBicoEnc_TempUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object QryBicoEnc_TempCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object QryBicoEnc_TempCHECK_BOX: TStringField
      FieldName = 'CHECK_BOX'
      Size = 1
    end
  end
  object cds_abastecidas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 40
    Top = 471
    object cds_abastecidasCOD_BICOENC_TEMP: TIntegerField
      FieldName = 'COD_BICOENC_TEMP'
      Required = True
    end
    object cds_abastecidasID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Required = True
    end
    object cds_abastecidasID_BICO: TStringField
      FieldName = 'ID_BICO'
      Required = True
      Size = 2
    end
    object cds_abastecidasCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
    end
    object cds_abastecidasID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Required = True
    end
    object cds_abastecidasENC_LITROS: TFMTBCDField
      FieldName = 'ENC_LITROS'
      Precision = 15
      Size = 3
    end
    object cds_abastecidasENC_DINHEIRO: TFMTBCDField
      FieldName = 'ENC_DINHEIRO'
      currency = True
      Precision = 15
      Size = 3
    end
    object cds_abastecidasPRODUTOS_DESC: TStringField
      FieldName = 'PRODUTOS_DESC'
      Size = 30
    end
    object cds_abastecidasNIVEL_PRECO: TIntegerField
      FieldName = 'NIVEL_PRECO'
      Required = True
    end
    object cds_abastecidasDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      currency = True
      Precision = 15
      Size = 3
    end
    object cds_abastecidasPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Precision = 15
      Size = 3
    end
    object cds_abastecidasLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Precision = 15
      Size = 3
    end
    object cds_abastecidasID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
    end
    object cds_abastecidasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object cds_abastecidasREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
    object cds_abastecidasUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cds_abastecidasCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object cds_abastecidasDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object cds_abastecidasCHECK_BOX: TStringField
      FieldName = 'CHECK_BOX'
      Size = 1
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = QryBicoEnc_Temp
    Left = 80
    Top = 439
  end
  object Calculator: TACBrCalculadora
    Titulo = 'Calculadora Siace'
    CalcTop = 96
    CalcLeft = 167
    CorDisplay = clRed
    CorForm = cl3DLight
    BorderStyle = bsDialog
    Left = 256
    Top = 307
  end
  object MainMenu1: TMainMenu
    Left = 480
    Top = 456
    object Arquivo1: TMenuItem
      Caption = 'Caixa'
      object Entrada1: TMenuItem
        Caption = 'Caixa'
        OnClick = Entrada1Click
      end
      object Saida1: TMenuItem
        Caption = 'Saida'
        Visible = False
        OnClick = Saida1Click
      end
      object Fechamento1: TMenuItem
        Caption = 'Fechamento Geral'
        Enabled = False
        Visible = False
        OnClick = Fechamento1Click
      end
      object FechamentoIndividual1: TMenuItem
        Caption = 'Fechamento Individual'
        Enabled = False
        Visible = False
        OnClick = FechamentoIndividual1Click
      end
    end
    object Configuraces1: TMenuItem
      Caption = 'Configurac'#245'es'
      object Ecf1: TMenuItem
        Caption = 'Ecf - outros'
        OnClick = Ecf1Click
      end
      object E1: TMenuItem
        Caption = 'Ecf - Bematech'
        object R1: TMenuItem
          Caption = 'Redu'#231#227'o Z'
          OnClick = R1Click
        end
        object L1: TMenuItem
          Caption = 'Leitura X'
          OnClick = L1Click
        end
      end
    end
  end
  object timer_bico: TTimer
    Interval = 2000
    OnTimer = timer_bicoTimer
    Left = 456
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    Left = 481
    Top = 490
    object Venda1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Venda '
      ShortCut = 16470
      OnClick = Venda1Click
    end
    object Aferio1: TMenuItem
      AutoHotkeys = maManual
      Caption = 'Aferi'#231#227'o'
      ShortCut = 16449
      OnClick = Aferio1Click
    end
    object VendaAvulsa1: TMenuItem
      Caption = 'Venda Avulsa'
      ShortCut = 113
      OnClick = VendaAvulsa1Click
    end
    object ConsultaProdutos1: TMenuItem
      Caption = 'Consulta Produtos'
      ShortCut = 123
      OnClick = ConsultaProdutos1Click
    end
    object BloqueiaTela1: TMenuItem
      Caption = 'Logoff'
      ShortCut = 122
      OnClick = BloqueiaTela1Click
    end
  end
  object ActionList1: TActionList
    Left = 552
    Top = 96
    object Action1: TAction
      Caption = 'eld'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = 'Action3'
      OnExecute = Action3Execute
    end
  end
  object Qry_mov: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select * from MOVIMENTACAO_COMBUSTIVEL where data =:data and mov' +
        'imento =:mov and tan_num_fis =:tanque')
    Left = 201
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tanque'
        ParamType = ptUnknown
      end>
  end
  object Qry_lmc: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'data,'
      'codproduto,'
      'sum(qtde) as qtde,'
      'TAN_NUM_FIS'
      
        ' from movimentacao_combustivel where data =:data and codproduto ' +
        '=:cod_pro and TAN_NUM_FIS =:tanque'
      ' and movimento =:mov'
      ' group by'
      ' data,'
      'codproduto,'
      'TAN_NUM_FIS;')
    Left = 281
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_pro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tanque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end>
  end
  object QryVEndido: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct'
      'movimentacao_combustivel.tan_num_fis,'
      'sum(movimentacao_combustivel.qtde) as Q_total,'
      'sum(movimentacao_combustivel.total) as v_total,'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO),'
      
        '(select sum(movimentacao_combustivel.enc_fct) AS enc_fct  from m' +
        'ovimentacao_combustivel'
      'where movimento=4 and data =:dataf AND CODPRODUTO =:CODPRO)'
      'from movimentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO'
      'group by'
      'movimentacao_combustivel.tan_num_fis')
    Left = 728
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryVEndidoTAN_NUM_FIS: TIntegerField
      FieldName = 'TAN_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TAN_NUM_FIS'
      Required = True
    end
    object QryVEndidoQ_TOTAL: TIBBCDField
      FieldName = 'Q_TOTAL'
      Precision = 18
      Size = 3
    end
    object QryVEndidoV_TOTAL: TIBBCDField
      FieldName = 'V_TOTAL'
      Precision = 18
      Size = 2
    end
    object QryVEndidoENC_ABR: TIBBCDField
      FieldName = 'ENC_ABR'
      Precision = 18
      Size = 3
    end
    object QryVEndidoENC_FCT: TIBBCDField
      FieldName = 'ENC_FCT'
      Precision = 18
      Size = 3
    end
  end
  object QryRecebido: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct'
      '*'
      'from movimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO')
    Left = 760
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryRecebidoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CODIGO'
      Required = True
    end
    object QryRecebidoCOD_NOTA_ENT: TIntegerField
      FieldName = 'COD_NOTA_ENT'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_NOTA_ENT'
    end
    object QryRecebidoTAN_NUM_FIS: TIntegerField
      FieldName = 'TAN_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TAN_NUM_FIS'
      Required = True
    end
    object QryRecebidoBOM_NUM_FIS: TIntegerField
      FieldName = 'BOM_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.BOM_NUM_FIS'
    end
    object QryRecebidoBIC_NUM_LOG: TIBStringField
      FieldName = 'BIC_NUM_LOG'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.BIC_NUM_LOG'
      Size = 5
    end
    object QryRecebidoENC_ABT: TIBBCDField
      FieldName = 'ENC_ABT'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ENC_ABT'
      Precision = 18
      Size = 3
    end
    object QryRecebidoENC_FCT: TIBBCDField
      FieldName = 'ENC_FCT'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ENC_FCT'
      Precision = 18
      Size = 3
    end
    object QryRecebidoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_CLIENTE'
    end
    object QryRecebidoCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_VENDEDOR'
    end
    object QryRecebidoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.DATA'
    end
    object QryRecebidoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO'
    end
    object QryRecebidoUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.UNITARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRecebidoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.UNIDADE'
      Size = 6
    end
    object QryRecebidoQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.QTDE'
      Required = True
      Precision = 18
      Size = 3
    end
    object QryRecebidoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRecebidoICMS_ALIQUOTA: TIBBCDField
      FieldName = 'ICMS_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ICMS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoICMS_BASE: TIBBCDField
      FieldName = 'ICMS_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ICMS_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoICMS_VALOR: TIBBCDField
      FieldName = 'ICMS_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ICMS_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCREDITO_ICMS: TIBBCDField
      FieldName = 'CREDITO_ICMS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CREDITO_ICMS'
      Precision = 18
      Size = 3
    end
    object QryRecebidoIPI_ALIQUOTA: TIBBCDField
      FieldName = 'IPI_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.IPI_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoIPI_BASE: TIBBCDField
      FieldName = 'IPI_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.IPI_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoIPI_VALOR: TIBBCDField
      FieldName = 'IPI_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.IPI_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoPIS_ALIQUOTA: TIBBCDField
      FieldName = 'PIS_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.PIS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoPIS_BASE: TIBBCDField
      FieldName = 'PIS_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.PIS_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoPIS_VALOR: TIBBCDField
      FieldName = 'PIS_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCOFINS_ALIQUOTA: TIBBCDField
      FieldName = 'COFINS_ALIQUOTA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COFINS_ALIQUOTA'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCOFINS_BASE: TIBBCDField
      FieldName = 'COFINS_BASE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COFINS_BASE'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCOFINS_VALOR: TIBBCDField
      FieldName = 'COFINS_VALOR'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COFINS_VALOR'
      Precision = 18
      Size = 2
    end
    object QryRecebidoCFOP: TIBStringField
      FieldName = 'CFOP'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CFOP'
      Size = 6
    end
    object QryRecebidoNUMERO_VDA: TIntegerField
      FieldName = 'NUMERO_VDA'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.NUMERO_VDA'
    end
    object QryRecebidoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.DESCONTO'
      Precision = 18
      Size = 2
    end
    object QryRecebidoACRESCIMO: TIBBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object QryRecebidoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.MOVIMENTO'
    end
    object QryRecebidoBASE_CALCULO: TIBBCDField
      FieldName = 'BASE_CALCULO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.BASE_CALCULO'
      Precision = 18
      Size = 2
    end
    object QryRecebidoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.SITUACAO'
    end
    object QryRecebidoCUPOM_NUMERO: TIBStringField
      FieldName = 'CUPOM_NUMERO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CUPOM_NUMERO'
      Size = 10
    end
    object QryRecebidoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.MODELO'
      Size = 5
    end
    object QryRecebidoITEM: TIBStringField
      FieldName = 'ITEM'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.ITEM'
      Size = 5
    end
    object QryRecebidoCST: TIBStringField
      FieldName = 'CST'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.CST'
      Size = 3
    end
    object QryRecebidoMOVIMENTO_ESTOQUE: TIBBCDField
      FieldName = 'MOVIMENTO_ESTOQUE'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.MOVIMENTO_ESTOQUE'
      Required = True
      Precision = 18
      Size = 3
    end
    object QryRecebidoCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.COD_USUARIO'
    end
    object QryRecebidoLANCADO: TIntegerField
      FieldName = 'LANCADO'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.LANCADO'
    end
  end
  object QryTotais: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct'
      'movimentacao_combustivel.tan_num_fis,'
      
        '(select sum(movimentacao_combustivel.qtde) AS Quant_Ent  from mo' +
        'vimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO),'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO),'
      ''
      
        'sum((select sum(movimentacao_combustivel.qtde) AS Quant_Ent  fro' +
        'm movimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO) +'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      
        'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO)) AS ' +
        'ENT_TOTAL,'
      ''
      
        'sum((select sum(movimentacao_combustivel.qtde) AS Quant_Ent  fro' +
        'm movimentacao_combustivel'
      
        'where movimento=1 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO) +'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO) -'
      
        '(select sum(movimentacao_combustivel.total) AS Vlr_total_sai fro' +
        'm movimentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO)) AS SALDO_ESC,'
      ''
      
        '(select sum(movimentacao_combustivel.enc_fct) AS enc_fct  from m' +
        'ovimentacao_combustivel'
      'where movimento=4 and data =:dataf AND CODPRODUTO =:CODPRO),'
      ''
      
        '(select sum(movimentacao_combustivel.qtde) AS Enc_sai  from movi' +
        'mentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO),'
      ''
      
        '(select sum(movimentacao_combustivel.total) AS Vlr_vda_mes from ' +
        'movimentacao_combustivel'
      
        'where movimento=2 and data between :dtmesi and :dtmesf AND CODPR' +
        'ODUTO =:CODPRO),'
      ''
      
        '(select sum(movimentacao_combustivel.total) AS Vlr_total_sai fro' +
        'm movimentacao_combustivel'
      
        'where movimento=2 and data between :datai and :dataf AND CODPROD' +
        'UTO =:CODPRO)'
      'from movimentacao_combustivel'
      'where data between :datai and :dataf AND CODPRODUTO =:CODPRO'
      'group by'
      '  movimentacao_combustivel.tan_num_fis')
    Left = 696
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtmesi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtmesf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryTotaisTAN_NUM_FIS: TIntegerField
      FieldName = 'TAN_NUM_FIS'
      Origin = 'MOVIMENTACAO_COMBUSTIVEL.TAN_NUM_FIS'
      Required = True
    end
    object QryTotaisQUANT_ENT: TIBBCDField
      FieldName = 'QUANT_ENT'
      Precision = 18
      Size = 3
    end
    object QryTotaisENC_ABR: TIBBCDField
      FieldName = 'ENC_ABR'
      Precision = 18
      Size = 3
    end
    object QryTotaisENT_TOTAL: TIBBCDField
      FieldName = 'ENT_TOTAL'
      Precision = 18
      Size = 3
    end
    object QryTotaisSALDO_ESC: TIBBCDField
      FieldName = 'SALDO_ESC'
      Precision = 18
      Size = 3
    end
    object QryTotaisENC_FCT: TIBBCDField
      FieldName = 'ENC_FCT'
      Precision = 18
      Size = 3
    end
    object QryTotaisENC_SAI: TIBBCDField
      FieldName = 'ENC_SAI'
      Precision = 18
      Size = 3
    end
    object QryTotaisVLR_VDA_MES: TIBBCDField
      FieldName = 'VLR_VDA_MES'
      Precision = 18
      Size = 2
    end
    object QryTotaisVLR_TOTAL_SAI: TIBBCDField
      FieldName = 'VLR_TOTAL_SAI'
      Precision = 18
      Size = 2
    end
  end
  object Qryperdas: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      '  DATA_ACE,'
      '  SUM(ITENS_ACERTO_ESTOQUE.QUANT * -1) AS QUANT'
      'FROM'
      ' ITENS_ACERTO_ESTOQUE'
      
        ' INNER JOIN ACERTO_ESTOQUE ON (ITENS_ACERTO_ESTOQUE.COD_ACE=ACER' +
        'TO_ESTOQUE.COD_ACE)'
      'WHERE ACERTO_ESTOQUE.COD_MOT = 2 AND'
      '  (DATA_ACE BETWEEN :DATAI AND :DATAF) AND'
      '  (COD_PRO = :CODPRO)'
      'group by'
      'DATA_ACE')
    Left = 656
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
    object QryperdasQUANT: TIBBCDField
      FieldName = 'QUANT'
      Origin = 'ITENS_ACERTO_ESTOQUE.QUANT'
      Precision = 18
      Size = 3
    end
    object QryperdasDATA_ACE: TDateField
      FieldName = 'DATA_ACE'
      Origin = '"ACERTO_ESTOQUE"."DATA_ACE"'
      Required = True
    end
  end
  object QryMaster: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct'
      'PRODUTOS.CODIGO,'
      'PRODUTOS.DESCRICAO,'
      'PRODUTOS.DESC_UNIDADE,'
      'movimentacao_combustivel.tan_num_fis,'
      'sum(movimentacao_combustivel.qtde) as Q_total,'
      'sum(movimentacao_combustivel.total) as v_total,'
      
        '(select sum(movimentacao_combustivel.enc_abt) AS Enc_abr  from m' +
        'ovimentacao_combustivel'
      
        'INNER JOIN PRODUTOS ON (MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO=PROD' +
        'UTOS.CODIGO)'
      'where movimento=3 and data =:datai AND CODPRODUTO =:CODPRO),'
      
        '(select sum(movimentacao_combustivel.enc_fct) AS enc_fct  from m' +
        'ovimentacao_combustivel'
      
        'INNER JOIN PRODUTOS ON (MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO=PROD' +
        'UTOS.CODIGO)'
      'where movimento=4 and data =:dataf AND CODPRODUTO =:CODPRO)'
      'from movimentacao_combustivel'
      
        'INNER JOIN PRODUTOS ON (MOVIMENTACAO_COMBUSTIVEL.CODPRODUTO=PROD' +
        'UTOS.CODIGO)'
      'where data between :datai and :dataf AND CODPRODUTO =:CODPRO'
      'group by'
      '  PRODUTOS.CODIGO,'
      '  PRODUTOS.DESCRICAO,'
      '  PRODUTOS.DESC_UNIDADE,'
      '  movimentacao_combustivel.tan_num_fis')
    Left = 624
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datai'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end>
  end
  object qrult_Encerrantes: TADQuery
    Connection = DM.coneccao
    Left = 368
    Top = 544
  end
  object qrBombas: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from BOMBA')
    Left = 400
    Top = 544
    object qrBombasCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrBombasCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object qrBombasID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Required = True
    end
    object qrBombasQNT_BICO: TIntegerField
      FieldName = 'QNT_BICO'
      Origin = 'QNT_BICO'
      Required = True
    end
    object qrBombasPICPATH: TStringField
      FieldName = 'PICPATH'
      Origin = 'PICPATH'
      Size = 255
    end
    object qrBombasULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object qrBombasULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object qrBombasULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object qrBombasDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object qrBombasENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object qrBombasOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object qrBombasAUTO_AUTORIZA: TSmallintField
      FieldName = 'AUTO_AUTORIZA'
      Origin = 'AUTO_AUTORIZA'
      Required = True
    end
    object qrBombasDESAUTORIZA_APOS_VALOR: TBCDField
      FieldName = 'DESAUTORIZA_APOS_VALOR'
      Origin = 'DESAUTORIZA_APOS_VALOR'
      Precision = 18
      Size = 3
    end
    object qrBombasDESAUTORIZA_APOS_QNT: TIntegerField
      FieldName = 'DESAUTORIZA_APOS_QNT'
      Origin = 'DESAUTORIZA_APOS_QNT'
    end
    object qrBombasSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 50
    end
    object qrBombasFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object qrBombasMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 40
    end
  end
  object qrBicos: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from BICO')
    Left = 432
    Top = 544
    object qrBicosCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
      Origin = 'COD_BICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrBicosCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      Required = True
    end
    object qrBicosCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      Required = True
    end
    object qrBicosCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object qrBicosULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object qrBicosULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object qrBicosULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object qrBicosCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
    object qrBicosDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object qrBicosENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object qrBicosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object qrBicosID_BICO: TStringField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
      Size = 2
    end
    object qrBicosPOSICAO: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
  end
  object qrTanques: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from TANQUE')
    Left = 464
    Top = 544
    object qrTanquesCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Required = True
    end
    object qrTanquesID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Required = True
    end
    object qrTanquesLITROS: TBCDField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      Precision = 18
      Size = 3
    end
    object qrTanquesULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object qrTanquesULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object qrTanquesULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object qrTanquesDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object qrTanquesENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object qrTanquesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object qrTanquesCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
    object qrTanquesLITROS_ATUAL: TBCDField
      FieldName = 'LITROS_ATUAL'
      Origin = 'LITROS_ATUAL'
      Precision = 18
      Size = 3
    end
    object qrTanquesVLR_SAI: TBCDField
      FieldName = 'VLR_SAI'
      Origin = 'VLR_SAI'
      Precision = 18
      Size = 3
    end
    object qrTanquesVLR_ENT: TBCDField
      FieldName = 'VLR_ENT'
      Origin = 'VLR_ENT'
      Precision = 18
      Size = 3
    end
    object qrTanquesEST_INI: TBCDField
      FieldName = 'EST_INI'
      Origin = 'EST_INI'
      Precision = 18
      Size = 3
    end
    object qrTanquesEST_ATU: TBCDField
      FieldName = 'EST_ATU'
      Origin = 'EST_ATU'
      Precision = 18
      Size = 3
    end
    object qrTanquesDAT_ULT_ENT: TDateField
      FieldName = 'DAT_ULT_ENT'
      Origin = 'DAT_ULT_ENT'
    end
    object qrTanquesNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = 'NUM_NF'
    end
    object qrTanquesDAT_ULT_SAI: TDateField
      FieldName = 'DAT_ULT_SAI'
      Origin = 'DAT_ULT_SAI'
    end
    object qrTanquesESTOQUE_MEDICAO: TBCDField
      FieldName = 'ESTOQUE_MEDICAO'
      Origin = 'ESTOQUE_MEDICAO'
      Precision = 18
    end
  end
  object qrCombustiveis: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from produtos')
    Left = 496
    Top = 544
    object qrCombustiveisCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qrCombustiveisCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Required = True
      Size = 13
    end
    object qrCombustiveisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 280
    end
    object qrCombustiveisABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 116
    end
    object qrCombustiveisUNIDADE: TIntegerField
      FieldName = 'UNIDADE'
    end
    object qrCombustiveisPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisICMS: TBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisIPI_IRPJ: TBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisOUTROS_IMPOSTOS: TBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Origin = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisCLASS_FISCAL: TStringField
      FieldName = 'CLASS_FISCAL'
      Origin = 'CLASS_FISCAL'
      Size = 6
    end
    object qrCombustiveisSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
      Size = 5
    end
    object qrCombustiveisCUSTO_MEDIO: TBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object qrCombustiveisDESCONTO_MAXIMO: TBCDField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
    end
    object qrCombustiveisCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Origin = 'CODIGO_SUBGRUPO'
    end
    object qrCombustiveisCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
      Origin = 'CODIGO_MARCA'
    end
    object qrCombustiveisNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Origin = 'NOME_GRUPO'
      Size = 40
    end
    object qrCombustiveisNOME_SUBGRUPO: TStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = 'NOME_SUBGRUPO'
      Size = 40
    end
    object qrCombustiveisNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Origin = 'NOME_MARCA'
      Size = 40
    end
    object qrCombustiveisNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = 'NOME_FORNECEDOR'
      Size = 70
    end
    object qrCombustiveisCODIGO_FORNECEDORES: TIntegerField
      FieldName = 'CODIGO_FORNECEDORES'
      Origin = 'CODIGO_FORNECEDORES'
    end
    object qrCombustiveisFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object qrCombustiveisESTOQUE_ATUAL: TBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Origin = 'ESTOQUE_ATUAL'
      Precision = 18
    end
    object qrCombustiveisESTOQUE_VENDIDO: TBCDField
      FieldName = 'ESTOQUE_VENDIDO'
      Origin = 'ESTOQUE_VENDIDO'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
    end
    object qrCombustiveisVALOR_ESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE_ATUAL'
      Origin = 'VALOR_ESTOQUE_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrCombustiveisVALOR_ESTOQUE: TFMTBCDField
      FieldName = 'VALOR_ESTOQUE'
      Origin = 'VALOR_ESTOQUE'
      Precision = 18
      Size = 6
    end
    object qrCombustiveisESTOQUE_MINIMO: TIntegerField
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
    end
    object qrCombustiveisESTOQUE_MAXIMO: TIntegerField
      FieldName = 'ESTOQUE_MAXIMO'
      Origin = 'ESTOQUE_MAXIMO'
    end
    object qrCombustiveisDATACAD: TDateField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object qrCombustiveisUSERCAD: TStringField
      FieldName = 'USERCAD'
      Origin = 'USERCAD'
    end
    object qrCombustiveisVALOR_EST_CUSTO_ATUAL: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO_ATUAL'
      Origin = 'VALOR_EST_CUSTO_ATUAL'
      Precision = 18
      Size = 6
    end
    object qrCombustiveisULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ULTIMACOMPRA'
    end
    object qrCombustiveisVALOR_EST_CUSTO: TFMTBCDField
      FieldName = 'VALOR_EST_CUSTO'
      Origin = 'VALOR_EST_CUSTO'
      Precision = 18
      Size = 6
    end
    object qrCombustiveisSECCAO: TIntegerField
      FieldName = 'SECCAO'
      Origin = 'SECCAO'
    end
    object qrCombustiveisCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object qrCombustiveisLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACAO'
      Size = 50
    end
    object qrCombustiveisAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      Size = 500
    end
    object qrCombustiveisESP_COD_AUX: TStringField
      FieldName = 'ESP_COD_AUX'
      Origin = 'ESP_COD_AUX'
      Size = 50
    end
    object qrCombustiveisGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = 'GARANTIA'
    end
    object qrCombustiveisBALANCA: TStringField
      FieldName = 'BALANCA'
      Origin = 'BALANCA'
      Size = 1
    end
    object qrCombustiveisETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 1
    end
    object qrCombustiveisATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object qrCombustiveisREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 15
    end
    object qrCombustiveisCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrCombustiveisDESC_UNIDADE: TStringField
      FieldName = 'DESC_UNIDADE'
      Origin = 'DESC_UNIDADE'
      Size = 6
    end
    object qrCombustiveisPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object qrCombustiveisPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object qrCombustiveisFONETICO: TStringField
      FieldName = 'FONETICO'
      Origin = 'FONETICO'
      Size = 60
    end
    object qrCombustiveisDATAULTALTERACAO: TDateField
      FieldName = 'DATAULTALTERACAO'
      Origin = 'DATAULTALTERACAO'
    end
    object qrCombustiveisCUSTOREPOSICAO: TBCDField
      FieldName = 'CUSTOREPOSICAO'
      Origin = 'CUSTOREPOSICAO'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisPRECO_ANT: TBCDField
      FieldName = 'PRECO_ANT'
      Origin = 'PRECO_ANT'
      Precision = 18
      Size = 3
    end
    object qrCombustiveisPRECO_PROMOCAO: TBCDField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
      Precision = 18
      Size = 3
    end
    object qrCombustiveisFLAG_PROMOCAO: TStringField
      FieldName = 'FLAG_PROMOCAO'
      Origin = 'FLAG_PROMOCAO'
      Size = 1
    end
    object qrCombustiveisDT_INICIO_PROMO: TDateField
      FieldName = 'DT_INICIO_PROMO'
      Origin = 'DT_INICIO_PROMO'
    end
    object qrCombustiveisDT_FIM_PROMO: TDateField
      FieldName = 'DT_FIM_PROMO'
      Origin = 'DT_FIM_PROMO'
    end
    object qrCombustiveisCOD_LABORATORIO: TIntegerField
      FieldName = 'COD_LABORATORIO'
      Origin = 'COD_LABORATORIO'
    end
    object qrCombustiveisLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Origin = 'LABORATORIO'
      Size = 70
    end
    object qrCombustiveisPRINCIPIO_ATIVO: TStringField
      FieldName = 'PRINCIPIO_ATIVO'
      Origin = 'PRINCIPIO_ATIVO'
      Size = 70
    end
    object qrCombustiveisMED_CONTROLADO: TStringField
      FieldName = 'MED_CONTROLADO'
      Origin = 'MED_CONTROLADO'
      Size = 1
    end
    object qrCombustiveisQTD_FRACIONADA: TBCDField
      FieldName = 'QTD_FRACIONADA'
      Origin = 'QTD_FRACIONADA'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'QTD_CAIXA'
    end
    object qrCombustiveisMED_GENERICO: TStringField
      FieldName = 'MED_GENERICO'
      Origin = 'MED_GENERICO'
      Size = 3
    end
    object qrCombustiveisLOTE_MED: TStringField
      FieldName = 'LOTE_MED'
      Origin = 'LOTE_MED'
      Size = 10
    end
    object qrCombustiveisVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qrCombustiveisCHEK_BOX: TStringField
      FieldName = 'CHEK_BOX'
      Origin = 'CHEK_BOX'
      Size = 1
    end
    object qrCombustiveisPRECO_VENDA2: TBCDField
      FieldName = 'PRECO_VENDA2'
      Origin = 'PRECO_VENDA2'
      Precision = 18
      Size = 3
    end
    object qrCombustiveisMARGEM_LUCRO2: TBCDField
      FieldName = 'MARGEM_LUCRO2'
      Origin = 'MARGEM_LUCRO2'
      Precision = 18
      Size = 2
    end
    object qrCombustiveisVALIDADE_PRODUTO: TStringField
      FieldName = 'VALIDADE_PRODUTO'
      Origin = 'VALIDADE_PRODUTO'
      Size = 3
    end
    object qrCombustiveisPROD_SERV: TStringField
      FieldName = 'PROD_SERV'
      Origin = 'PROD_SERV'
      Size = 1
    end
    object qrCombustiveisUNIDADE_ENT: TIntegerField
      FieldName = 'UNIDADE_ENT'
      Origin = 'UNIDADE_ENT'
    end
    object qrCombustiveisDESC_UNID_ENT: TStringField
      FieldName = 'DESC_UNID_ENT'
      Origin = 'DESC_UNID_ENT'
      Size = 6
    end
    object qrCombustiveisQUANT_SAIDA: TBCDField
      FieldName = 'QUANT_SAIDA'
      Origin = 'QUANT_SAIDA'
      Precision = 18
    end
    object qrCombustiveisQUANT_ENTRADA: TBCDField
      FieldName = 'QUANT_ENTRADA'
      Origin = 'QUANT_ENTRADA'
      Precision = 18
    end
    object qrCombustiveisESTOQUE_FRACAO: TBCDField
      FieldName = 'ESTOQUE_FRACAO'
      Origin = 'ESTOQUE_FRACAO'
      Precision = 18
    end
    object qrCombustiveisDATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = 'DATA_FABRICACAO'
    end
    object qrCombustiveisFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'FRACAO'
    end
    object qrCombustiveisNCM_SH: TStringField
      FieldName = 'NCM_SH'
      Origin = 'NCM_SH'
      Size = 8
    end
    object qrCombustiveisCOD_MS: TStringField
      FieldName = 'COD_MS'
      Origin = 'COD_MS'
      Size = 13
    end
    object qrCombustiveisCONTOLAESTOQUE: TStringField
      FieldName = 'CONTOLAESTOQUE'
      Origin = 'CONTOLAESTOQUE'
      Size = 5
    end
    object qrCombustiveisPRODUTOCOMPOSTO: TStringField
      FieldName = 'PRODUTOCOMPOSTO'
      Origin = 'PRODUTOCOMPOSTO'
      Size = 5
    end
    object qrCombustiveisTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Origin = 'TIPO_ATIVIDADE'
      Size = 2
    end
    object qrCombustiveisCOD_PRODUTO_ESTOQUE: TIntegerField
      FieldName = 'COD_PRODUTO_ESTOQUE'
      Origin = 'COD_PRODUTO_ESTOQUE'
    end
    object qrCombustiveisCODIGO_LOCAL_ESTOQUE: TIntegerField
      FieldName = 'CODIGO_LOCAL_ESTOQUE'
      Origin = 'CODIGO_LOCAL_ESTOQUE'
    end
    object qrCombustiveisLISTA_ABC: TStringField
      FieldName = 'LISTA_ABC'
      Origin = 'LISTA_ABC'
      Size = 1
    end
    object qrCombustiveisGRUPO_TRIBUTACAO: TIntegerField
      FieldName = 'GRUPO_TRIBUTACAO'
      Origin = 'GRUPO_TRIBUTACAO'
    end
    object qrCombustiveisCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 1
    end
    object qrCombustiveisCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object qrCombustiveisENABLE_NUMSERIE: TIntegerField
      FieldName = 'ENABLE_NUMSERIE'
      Origin = 'ENABLE_NUMSERIE'
      Required = True
    end
    object qrCombustiveisID_PRODUTOS: TIntegerField
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
    end
    object qrCombustiveisCOD_ANP: TStringField
      FieldName = 'COD_ANP'
      Origin = 'COD_ANP'
      Size = 9
    end
    object qrCombustiveisCESTA: TStringField
      FieldName = 'CESTA'
      Origin = 'CESTA'
      Size = 1
    end
    object qrCombustiveisML_QUANT_BEB: TBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object qrCombustiveisUND_TRIB: TStringField
      FieldName = 'UND_TRIB'
      Origin = 'UND_TRIB'
      Size = 3
    end
    object qrCombustiveisCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 44
    end
    object qrCombustiveisCOR_DESC: TStringField
      FieldName = 'COR_DESC'
      Origin = 'COR_DESC'
      Size = 30
    end
    object qrCombustiveisN_MOTOR: TStringField
      FieldName = 'N_MOTOR'
      Origin = 'N_MOTOR'
      Size = 30
    end
    object qrCombustiveisANO_FAB: TStringField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
      Size = 4
    end
    object qrCombustiveisANO_MOD_FAB: TStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'ANO_MOD_FAB'
      Size = 4
    end
    object qrCombustiveisTIPO_VEIC: TStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'TIPO_VEIC'
      Size = 10
    end
    object qrCombustiveisN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Origin = 'N_SERIE'
      Size = 30
    end
    object qrCombustiveisCOD_MODELO: TStringField
      FieldName = 'COD_MODELO'
      Origin = 'COD_MODELO'
      Size = 30
    end
    object qrCombustiveisESPECIE_VEICULO: TStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'ESPECIE_VEICULO'
      Size = 10
    end
    object qrCombustiveisCOD_COR_DENATRAN: TStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'COD_COR_DENATRAN'
      Size = 10
    end
    object qrCombustiveisTIPO_COMBUSTIVEL: TStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'TIPO_COMBUSTIVEL'
      Size = 10
    end
    object qrCombustiveisVEICULO: TStringField
      FieldName = 'VEICULO'
      Origin = 'VEICULO'
      Size = 1
    end
    object qrCombustiveisUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
    end
    object qrCombustiveisUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
    end
    object qrCombustiveisUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
    end
    object qrCombustiveisPRODUTO_PROPRIEDADE: TIntegerField
      FieldName = 'PRODUTO_PROPRIEDADE'
      Origin = 'PRODUTO_PROPRIEDADE'
    end
    object qrCombustiveisMULTIP_FRACAO: TIntegerField
      FieldName = 'MULTIP_FRACAO'
      Origin = 'MULTIP_FRACAO'
    end
    object qrCombustiveisCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 18
      Size = 2
    end
  end
  object qrLivro: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from LMC_ABERFECH')
    Left = 528
    Top = 544
    object qrLivroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrLivroCOD_FILIAL: TStringField
      FieldName = 'COD_FILIAL'
      Size = 24
    end
    object qrLivroFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 200
    end
    object qrLivroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 240
    end
    object qrLivroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 120
    end
    object qrLivroCEP: TStringField
      FieldName = 'CEP'
      Size = 36
    end
    object qrLivroCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 120
    end
    object qrLivroUF: TStringField
      FieldName = 'UF'
      Size = 8
    end
    object qrLivroIE: TStringField
      FieldName = 'IE'
      Size = 56
    end
    object qrLivroCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 100
    end
    object qrLivroIM: TStringField
      FieldName = 'IM'
      Size = 80
    end
    object qrLivroDISTRIBUIDORA: TStringField
      FieldName = 'DISTRIBUIDORA'
      Size = 200
    end
    object qrLivroCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object qrLivroCOD_COMBUSTIVEL: TIntegerField
      FieldName = 'COD_COMBUSTIVEL'
    end
    object qrLivroNOME_COMBUSTIVEL: TStringField
      FieldName = 'NOME_COMBUSTIVEL'
      Size = 120
    end
    object qrLivroNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 40
    end
    object qrLivroNUMERO_JUNTACOM: TStringField
      FieldName = 'NUMERO_JUNTACOM'
      Size = 40
    end
    object qrLivroDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object qrLivroNUMERO_ORDEM: TIntegerField
      FieldName = 'NUMERO_ORDEM'
    end
    object qrLivroPAGINA_ATUAL: TIntegerField
      FieldName = 'PAGINA_ATUAL'
    end
  end
  object qrLMC: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from LMC')
    Left = 560
    Top = 544
    object qrLMCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrLMCTANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
    object qrLMCBOMBA: TIntegerField
      FieldName = 'BOMBA'
    end
    object qrLMCBICO: TStringField
      FieldName = 'BICO'
    end
    object qrLMCABERTURA: TIntegerField
      FieldName = 'ABERTURA'
    end
    object qrLMCENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
    end
    object qrLMCCOMBUSTIVEL: TIntegerField
      FieldName = 'COMBUSTIVEL'
    end
    object qrLMCDATA: TDateField
      FieldName = 'DATA'
    end
    object qrLMCSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrLMCNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object qrLMCNOTAFISCAL1: TStringField
      FieldName = 'NOTAFISCAL1'
      Size = 40
    end
    object qrLMCNOTAFISCAL2: TStringField
      FieldName = 'NOTAFISCAL2'
      Size = 40
    end
    object qrLMCNOTAFISCAL3: TStringField
      FieldName = 'NOTAFISCAL3'
      Size = 40
    end
    object qrLMCNOTAFISCAL4: TStringField
      FieldName = 'NOTAFISCAL4'
      Size = 40
    end
    object qrLMCQUANTNF1: TIntegerField
      FieldName = 'QUANTNF1'
    end
    object qrLMCQUANTNF2: TIntegerField
      FieldName = 'QUANTNF2'
    end
    object qrLMCQUANTNF3: TIntegerField
      FieldName = 'QUANTNF3'
    end
    object qrLMCQUANTNF4: TIntegerField
      FieldName = 'QUANTNF4'
    end
    object qrLMCBICO1: TIntegerField
      FieldName = 'BICO1'
    end
    object qrLMCBICO2: TIntegerField
      FieldName = 'BICO2'
    end
    object qrLMCBICO3: TIntegerField
      FieldName = 'BICO3'
    end
    object qrLMCBICO4: TIntegerField
      FieldName = 'BICO4'
    end
    object qrLMCBICO5: TIntegerField
      FieldName = 'BICO5'
    end
    object qrLMCBICO6: TIntegerField
      FieldName = 'BICO6'
    end
    object qrLMCBICO7: TIntegerField
      FieldName = 'BICO7'
    end
    object qrLMCBICO8: TIntegerField
      FieldName = 'BICO8'
    end
    object qrLMCABER_BICO1: TIntegerField
      FieldName = 'ABER_BICO1'
    end
    object qrLMCABER_BICO2: TIntegerField
      FieldName = 'ABER_BICO2'
    end
    object qrLMCABER_BICO3: TIntegerField
      FieldName = 'ABER_BICO3'
    end
    object qrLMCABER_BICO4: TIntegerField
      FieldName = 'ABER_BICO4'
    end
    object qrLMCABER_BICO5: TIntegerField
      FieldName = 'ABER_BICO5'
    end
    object qrLMCABER_BICO6: TIntegerField
      FieldName = 'ABER_BICO6'
    end
    object qrLMCABER_BICO7: TIntegerField
      FieldName = 'ABER_BICO7'
    end
    object qrLMCABER_BICO8: TIntegerField
      FieldName = 'ABER_BICO8'
    end
    object qrLMCENC_BICO1: TIntegerField
      FieldName = 'ENC_BICO1'
    end
    object qrLMCENC_BICO2: TIntegerField
      FieldName = 'ENC_BICO2'
    end
    object qrLMCENC_BICO3: TIntegerField
      FieldName = 'ENC_BICO3'
    end
    object qrLMCENC_BICO4: TIntegerField
      FieldName = 'ENC_BICO4'
    end
    object qrLMCENC_BICO5: TIntegerField
      FieldName = 'ENC_BICO5'
    end
    object qrLMCENC_BICO6: TIntegerField
      FieldName = 'ENC_BICO6'
    end
    object qrLMCENC_BICO7: TIntegerField
      FieldName = 'ENC_BICO7'
    end
    object qrLMCENC_BICO8: TIntegerField
      FieldName = 'ENC_BICO8'
    end
    object qrLMCAFER_BICO1: TIntegerField
      FieldName = 'AFER_BICO1'
    end
    object qrLMCAFER_BICO2: TIntegerField
      FieldName = 'AFER_BICO2'
    end
    object qrLMCAFER_BICO3: TIntegerField
      FieldName = 'AFER_BICO3'
    end
    object qrLMCAFER_BICO4: TIntegerField
      FieldName = 'AFER_BICO4'
    end
    object qrLMCAFER_BICO5: TIntegerField
      FieldName = 'AFER_BICO5'
    end
    object qrLMCAFER_BICO6: TIntegerField
      FieldName = 'AFER_BICO6'
    end
    object qrLMCAFER_BICO7: TIntegerField
      FieldName = 'AFER_BICO7'
    end
    object qrLMCAFER_BICO8: TIntegerField
      FieldName = 'AFER_BICO8'
    end
    object qrLMCQTEVEND_1: TIntegerField
      FieldName = 'QTEVEND_1'
    end
    object qrLMCQTEVEND_2: TIntegerField
      FieldName = 'QTEVEND_2'
    end
    object qrLMCQTEVEND_3: TIntegerField
      FieldName = 'QTEVEND_3'
    end
    object qrLMCQTEVEND_4: TIntegerField
      FieldName = 'QTEVEND_4'
    end
    object qrLMCQTEVEND_5: TIntegerField
      FieldName = 'QTEVEND_5'
    end
    object qrLMCQTEVEND_6: TIntegerField
      FieldName = 'QTEVEND_6'
    end
    object qrLMCQTEVEND_7: TIntegerField
      FieldName = 'QTEVEND_7'
    end
    object qrLMCQTEVEND_8: TIntegerField
      FieldName = 'QTEVEND_8'
    end
    object qrLMCPERDA_SOBRA: TIntegerField
      FieldName = 'PERDA_SOBRA'
    end
    object qrLMCOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 1020
    end
    object qrLMCPAGINA: TIntegerField
      FieldName = 'PAGINA'
    end
    object qrLMCID_BICO1: TStringField
      FieldName = 'ID_BICO1'
      Size = 8
    end
    object qrLMCID_BICO2: TStringField
      FieldName = 'ID_BICO2'
      Size = 8
    end
    object qrLMCID_BICO3: TStringField
      FieldName = 'ID_BICO3'
      Size = 8
    end
    object qrLMCID_BICO4: TStringField
      FieldName = 'ID_BICO4'
      Size = 8
    end
    object qrLMCID_BICO5: TStringField
      FieldName = 'ID_BICO5'
      Size = 8
    end
    object qrLMCID_BICO6: TStringField
      FieldName = 'ID_BICO6'
      Size = 8
    end
    object qrLMCID_BICO7: TStringField
      FieldName = 'ID_BICO7'
      Size = 8
    end
    object qrLMCID_BICO8: TStringField
      FieldName = 'ID_BICO8'
      Size = 8
    end
    object qrLMCPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 3
    end
    object qrLMCQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_1: TBCDField
      FieldName = 'TOTALVEND_1'
      Origin = 'TOTALVEND_1'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_2: TBCDField
      FieldName = 'TOTALVEND_2'
      Origin = 'TOTALVEND_2'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_3: TBCDField
      FieldName = 'TOTALVEND_3'
      Origin = 'TOTALVEND_3'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_4: TBCDField
      FieldName = 'TOTALVEND_4'
      Origin = 'TOTALVEND_4'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_5: TBCDField
      FieldName = 'TOTALVEND_5'
      Origin = 'TOTALVEND_5'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_6: TBCDField
      FieldName = 'TOTALVEND_6'
      Origin = 'TOTALVEND_6'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_7: TBCDField
      FieldName = 'TOTALVEND_7'
      Origin = 'TOTALVEND_7'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVEND_8: TBCDField
      FieldName = 'TOTALVEND_8'
      Origin = 'TOTALVEND_8'
      Precision = 18
      Size = 3
    end
    object qrLMCESTOQ_ABERTURA: TIntegerField
      FieldName = 'ESTOQ_ABERTURA'
      Origin = 'ESTOQ_ABERTURA'
    end
    object qrLMCESTOQ_ESCRITURAL: TIntegerField
      FieldName = 'ESTOQ_ESCRITURAL'
      Origin = 'ESTOQ_ESCRITURAL'
    end
    object qrLMCESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
      Origin = 'ESTOQ_FECHAMENTO'
    end
    object qrLMCVENDAS_DIA: TLargeintField
      FieldName = 'VENDAS_DIA'
      Origin = 'VENDAS_DIA'
    end
    object qrLMCRECEBIDO_DIA: TLargeintField
      FieldName = 'RECEBIDO_DIA'
      Origin = 'RECEBIDO_DIA'
    end
    object qrLMCDISPONIVEL_DIA: TLargeintField
      FieldName = 'DISPONIVEL_DIA'
      Origin = 'DISPONIVEL_DIA'
    end
    object qrLMCTOTALVENDAS_DIA: TBCDField
      FieldName = 'TOTALVENDAS_DIA'
      Origin = 'TOTALVENDAS_DIA'
      Precision = 18
      Size = 3
    end
    object qrLMCTOTALVENDAS_ACU: TBCDField
      FieldName = 'TOTALVENDAS_ACU'
      Origin = 'TOTALVENDAS_ACU'
      Precision = 18
      Size = 3
    end
  end
  object qrEncerrantes: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from ENCERRANTES')
    Left = 592
    Top = 544
    object qrEncerrantesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qrEncerrantesDATA: TDateField
      FieldName = 'DATA'
    end
    object qrEncerrantesCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
    end
    object qrEncerrantesABERTURA: TIntegerField
      FieldName = 'ABERTURA'
    end
    object qrEncerrantesENCERRAMENTO: TIntegerField
      FieldName = 'ENCERRAMENTO'
    end
    object qrEncerrantesCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object qrEncerrantesSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object qrEncerrantesQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object qrEncerrantesAFERICAO: TBCDField
      FieldName = 'AFERICAO'
      Origin = 'AFERICAO'
      Precision = 18
      Size = 2
    end
    object qrEncerrantesPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object qrEncerrantesVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object qrApoio: TADQuery
    Connection = DM.coneccao
    Left = 488
    Top = 576
  end
  object qr_afericao: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from AFERICAO')
    Left = 449
    Top = 576
  end
  object QR_PRECO: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from MOVIMENTACAO_COMBUSTIVEL')
    Left = 409
    Top = 576
  end
  object qr_dados: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from MOVIMENTACAO_COMBUSTIVEL')
    Left = 369
    Top = 576
  end
  object ADQuery1: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from tanque order bY cod_tanque asc')
    Left = 368
    Top = 608
    object IntegerField1: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object BCDField1: TBCDField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      Precision = 18
      Size = 3
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object StringField1: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object IntegerField6: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
    object BCDField2: TBCDField
      FieldName = 'LITROS_ATUAL'
      Origin = 'LITROS_ATUAL'
      Precision = 18
      Size = 3
    end
    object BCDField3: TBCDField
      FieldName = 'VLR_SAI'
      Origin = 'VLR_SAI'
      Precision = 18
      Size = 3
    end
    object BCDField4: TBCDField
      FieldName = 'VLR_ENT'
      Origin = 'VLR_ENT'
      Precision = 18
      Size = 3
    end
    object BCDField5: TBCDField
      FieldName = 'EST_INI'
      Origin = 'EST_INI'
      Precision = 18
      Size = 3
    end
    object BCDField6: TBCDField
      FieldName = 'EST_ATU'
      Origin = 'EST_ATU'
      Precision = 18
      Size = 3
    end
    object DateField1: TDateField
      FieldName = 'DAT_ULT_ENT'
      Origin = 'DAT_ULT_ENT'
    end
    object IntegerField7: TIntegerField
      FieldName = 'NUM_NF'
      Origin = 'NUM_NF'
    end
    object DateField2: TDateField
      FieldName = 'DAT_ULT_SAI'
      Origin = 'DAT_ULT_SAI'
    end
  end
  object Qry_mov2: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'SELECT '
      'data,'
      'TAN_NUM_FIS,'
      '(SELECT SUM(QTDE) AS Q_TOTAL_E'
      'FROM'
      'movimentacao_combustivel'
      
        'WHERE movimento =:MOV1 and tan_num_fis =:tanque AND DATA = :DATA' +
        '),'
      ''
      '(SELECT SUM(QTDE) AS Q_TOTAL_V'
      'FROM'
      'movimentacao_combustivel'
      
        'WHERE movimento =:MOV2 and tan_num_fis =:tanque AND DATA = :DATA' +
        ')'
      ''
      'FROM'
      
        'movimentacao_combustivel WHERE tan_num_fis =:tanque AND DATA = :' +
        'DATA'
      'GROUP BY'
      'DATA,'
      'TAN_NUM_FIS'
      'order by DATA DESC;')
    Left = 416
    Top = 608
    ParamData = <
      item
        Name = 'MOV1'
        ParamType = ptInput
      end
      item
        Name = 'TANQUE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'MOV2'
        ParamType = ptInput
      end>
    object Qry_mov2DATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Qry_mov2TAN_NUM_FIS: TIntegerField
      FieldName = 'TAN_NUM_FIS'
      Origin = 'TAN_NUM_FIS'
      Required = True
    end
    object Qry_mov2Q_TOTAL_V: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Q_TOTAL_V'
      Origin = 'Q_TOTAL_V'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object Qry_mov2Q_TOTAL_E: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Q_TOTAL_E'
      Origin = 'Q_TOTAL_E'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
  end
  object qdata: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'SELECT '
      'data,'
      'TAN_NUM_FIS,'
      '(SELECT SUM(QTDE) AS Q_TOTAL_E'
      'FROM'
      'movimentacao_combustivel'
      
        'WHERE movimento =:MOV1 and tan_num_fis =:tanque AND DATA = :DATA' +
        '),'
      ''
      '(SELECT SUM(QTDE) AS Q_TOTAL_V'
      'FROM'
      'movimentacao_combustivel'
      
        'WHERE movimento =:MOV2 and tan_num_fis =:tanque AND DATA = :DATA' +
        ')'
      ''
      'FROM'
      
        'movimentacao_combustivel WHERE tan_num_fis =:tanque AND DATA = :' +
        'DATA'
      'GROUP BY'
      'DATA,'
      'TAN_NUM_FIS'
      'order by DATA DESC;')
    Left = 464
    Top = 608
    ParamData = <
      item
        Name = 'MOV1'
        ParamType = ptInput
      end
      item
        Name = 'TANQUE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'MOV2'
        ParamType = ptInput
      end>
    object DateField3: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object qrCombustivel: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select Cod_produtos from TANQUE')
    Left = 512
    Top = 608
    object qrCombustivelCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
  end
  object Qsaldo: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from lmc')
    Left = 577
    Top = 600
    object QsaldoESTOQ_FECHAMENTO: TIntegerField
      FieldName = 'ESTOQ_FECHAMENTO'
      Origin = 'ESTOQ_FECHAMENTO'
    end
  end
  object ImagensBicos: TsAlphaImageList
    Height = 58
    Width = 58
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000022
          994944415478DAEC9C77945CD595EEBF7DCE8D752B7557876A75B7BA25B57244
          11104281641041028441C6E9818D318C0706DB80E3808D043663B00DC836C660
          930D986C1304A3882CA19CD50A9D5375AA5C75EBDE73CEFBC31EE6F9D9F3D6AC
          B75E90197D7FDF53ABEE6F7D7B9FBBF709A494C229FDEF8B9D42700AE02980A7
          009E02784AA7009E02780AE02980A7740AE02980A700FE17139D4C7FE68E3BBF
          69AD5EF57D236CD7F82FBEFD64FE8E5BEE42C471E0167DD48DB12A123D6EA3E3
          84E6E5F3B9B9AE5B1AEF96C478CE1827CE1567205DE3452971C8B6CD44454579
          A56D070286A1B7C62A2AF250D8AD809E11F1B2E17024DC99CD0ECB1B6F5C3950
          5F77EE4067F73E004055751D969CB3188B172DC19E3D3BD1D5D986575F7D0D37
          7EE53A3CF3F83BC66D5FBB9133E205D72DE27BDFFFEEC903F0D7BFFE2D6F6B39
          41DFF9E73B7C00A8AD1E87E6F65DE1679F7CA97EDDFBEBEBFBFBFBC76B1A9FA3
          14A6F9BE1AC119394CE39AC635CE390711817106220201BE0214031148915490
          042E01592046AEC6A9A894ECD1345D3086B623478E1CB44CB3140D879279DFED
          5CB87091B964C9391D6FBFFD87A1CE8ED64C3C16CFEF39B44DDAD67877FEFC89
          E8E9EE05E70C53A74FC5552B2EFF7F07B05D748113C786439BB59FFFE131AAA9
          1CA92E082EC687EFEFC4A73EBBD27FEDC517307E6ABD934DC9B1C79B5B4F07A3
          A54383C30BBC5229424430740BA669C2B44C689A065DE34AD335685C23624C71
          CE8888C0081002500A904A2A2104F9BE0FDFF7217C1785A28752C987103EF2B9
          2C86934310A204E17B302C1B53A64C85AE73FFD8B1E6C1642AD55C2CBAED8E13
          F0468E6C383663C6F4370AF9C29E4C2643E79E7F8E5A78F659D0FE332F3F9C19
          866307E98377B7F1DEBE5EDAF0C7F7E4847193453818C1E7BE78EDDF1CB36AE3
          DDD04C0D1D87DBD94F3FF33355CF467000F29AC957F897BD760D9EED7F013DEB
          0751D61D0007C60358B8FD8F47CEF74AFE9904AA614C4355655C06028E170804
          A46118649A26B76D9D2CD322D334A11B3A38E78A1803819492120A0A5248F842
          400801DF174AF8029EEF2BDFF3E0FB2555F284F2BC924C0EA5E016F34A2A8182
          5BA2806591E749B47574702578553814AB0E87240AF92C0E1E388880635F5855
          51FD092144CE754B0440FD2F1D383C9803E980A772AC325225730985131B8EA2
          2833D8DDBD9747C2516C8BBF878C7431541886940292491CF8F1213AB2F1881A
          464E945310CB301B2FA83F42270D07D5D1455F7BFA9B468BE81BFA46C5ADA13D
          FFBAF3725DD79778256F12E31A8281A08A464325C709C1344DEE380E0F47822A
          120DB148388C8013806118D03803677F0A5BA100863F3786494149404809DFF7
          E1793E4A251FAEEBA25028A2E41691CB17E0BA2EA42478AEAB949418181CC291
          A3CDA8A8A8F243A1B0F40A45CE3864F3B1A3D8F9E107A2ADB3838D19373E73F1
          A5175D5913AF59DFD2D2AA7DFB5BB7FB7FD381A93E85D4892C0C5343C9F7A169
          BA544A85D3478B0BB3323B6370B8F72DDFF73E2C7945749677A1A804B27E0E52
          F8D00C8EB96B66E1910F1FC2F4B1B3F0D4DB4FD4FDFC827B3337DF75EBFCEFBD
          70EF277FBAE6914F0C1D1CE053434D8523D661D37182958E6D211C2E2B85C261
          150A8559D009E8916888CACBA308066DD2B80E21A5F23C0FC5A28B6C264BAEEB
          410A1FBEF0A11414FB73D2639A469AA629CBD0C9304C65583AA276109A1185C6
          3410078404881438E7F085AF3888BDF1C63B526FD3D88AAB2E169AC6955BF4F4
          C1C1417FEB8E2D7A385AA69D16AB924CE78181BE443C9B4AA1B7374100FE7608
          4B01D49F1EA4D47001644219227861CB819EFB37B5AD6FF80D7BD4690B1DBD61
          C460DDC3B38AF39AA70D4EE159E9517F7E8849E9295D67A61908E96B8FBD1A7A
          6CD30357A613A5A6EEAF160B6D551BCB570C5F10DABA760BCEAC391B932A2680
          4C8658ACDC0B85A30885C23C1A0DB3F2B210028E052114E5F339D5D737A0D2E9
          2CE57379952F14502CBA28955CE9F91E94EFC3173E0929492980881163A418D7
          A071AE745D23D334609A062CCB866D5BB02C1B01270843832225C12D9D1CC741
          57772F55C62A54CD886A9338C1D40D95DA396C589685D9B3672BA17CE4722EB9
          AE277D5FC0326DF5370116DB7D6485A44CAFAF427193BBFDECD643AD87EF7AA4
          F483C0EF663C2345A52B3CA0B627DDB1EA407E9FD07C9B0414C0240921A0191A
          CCA3802ACB51725F110544105851894B6217A1EF956E51352A8EF3679DA328A0
          532412A658AC8C47CBC2CC09D84A4849E9740A3DBD3D181A4A229BCDA150C851
          2E9F53F95C5EB96E41160B05E5BA2E734B25A67C01092584920C4A495DD315D7
          38344D53A66192611AD075830CC322CB34619826D30D13B6E5102945D213D00C
          4D319DABF4D0301CC7C1B60F764141A968344CC79ADBB1F0AC05AAB6AE06E96C
          8ADA5A3BA9A7BB8720159CB0F3D70EFCD7B7368057731829A860A5EEB803DEEA
          2DADDBFFE10EF915FFD0AC1DBE6B31E64930F22C49655C656312A48A50040505
          10E94A4BF9144E67A51816E455D5A865975D4ACBEBCE5355ED95ECFE8A1F61F6
          D8D3597DD528046301442321E29CA97C3EAFDADADA69606050255369E40B7914
          F239994EA764A190453A95A65C362B33B9ACC13947369BF54CCBCCEA5CE789C1
          8120009733AE81A0FD69C6D6A069DA9F676D1B8E6523E0387E2010F003818074
          82212841542CF830B8CEB9CEC9178232B93C5A4F7490528A348D432AA94A32CF
          B26E32DF30BAC104B4523E932B4002D158991A396AE4BF037C74CD132022701D
          8C19524B1C1F7C646FCFC1CFDC10F86CA96B569B061522F8509C0C220D806F30
          0D2688D89FEA19A1C0745BF1D641529426AB548D6F5DFC2D2CA9394B95B1289D
          E0AD38A3612E5B36EE528CE4D54A3249FD8961353838846C6A08C94C4A150A39
          954A67904A0D89A1A121948AAE9EC966505E5EE62F5AB2D01042243FDCB9EBD1
          A5975ED4DCDB93E87DFAA9A7ECC953A63D6018466DB42C22BB3ABB5A8410CDE9
          743A95CBE7C34AA19C735EA66B5AB9CEB5A8EDD89A6158888443604C47269B07
          274D12E9BEE9D88A2957351F3FC64C43871492C68D1F5F7AECD7BF163B767FC0
          E7CE3993CF9D7166F7833F79F0C3171E7B8526CF9B22EFFCC69DFFFE1DF8D4D3
          BF457DAC86C25A4CC1285EDFDADFFBE86D15FF503A31BF5533E0404A06C60D22
          D2011F801F00D783203028A6404A01DC82FCB0057AAA17530ECFC323573EA6DA
          58A7EAD58758C0D56567737B6962E34473CC5023E5924524927D2A572C502E97
          57D94C5A0D0F266878382515488B9645619AD6BE74266D9697471B2EB9E4A2BD
          93264D7C80889E5DB76E1D162F5E0CA5145E7FFDF78B3A3A3B976A9CF6954AFE
          819B6EFAD25E22F2FA7A86F5FB7EB8BAE2F8F1E355428A8A5C365769DB669C91
          D6A8EB7A15E35A753E9FAB9452C54DD3AE0C0523A8AEAA447B7B1B8450F04A25
          CC9F7FA63B9CEBE978E4970FD632C50C27104E0B9FFEA9E0E59ED07C9DE98629
          3F02F8F8E3CF50BC32A6126DC946E5ABF71FA97EA87EDBE55B61539497940463
          16341804D29592445A8983991580D201520024885BB2B4FD282B78C7E5A85D8D
          F8E2B95FC5909D5459AD409AA121D6EC781BD21FB245621E9F919F4419378BA1
          9E41D9974820319CE013274C90639A1A99027F2F399CBDEFBCF3961CEFE9EDD2
          77EDDA511970826D2B575ED5B165CB56DD750BD8B0E9037CEFAEEF2ACFF3FC69
          D3E7E29A9557E0CEDB6F87528A18339894254944EAEAABAF45BE50402A954436
          93C18E1DDBE02A4FFBF4273F1D1D1C180CAFB8EACAB28D1B368D1D3D7AF469B1
          58456D6F5FDFA896132DA1447F1F2A2BE3A3042B04376C7E4FD886E54B4926C0
          FB2DCB3C672031B8AFA22A667C14C2C3C70679E150D697527E7283BE79D4B695
          DB84CE63CCF7A138398C2B53021A08263190F2338364E9068839904A40C10754
          9034230ACD895067288177DBDF8137DE46219BA5412B850535738DB24CA4F4F0
          BE5FA8D35BA6F03118A3A253E25AD9C40A59DC9BCB47CA2281D3E7CDFDA0325E
          B5928812430981703803103BE2BA1EBABBBB583018F6B66DDB8AEF7CEB1B0000
          A51423225ABAF43C00C073CFBF2895F2E40D37DC846BAEF934CB66B304802CD3
          423814427373853C77F6057EF5A8D840B15818F8D2976EC005E75FB8E3E9679E
          7C4E29651F3A7228F8FBDFFF5EFBF0C36DE8EFEF0BF50D742D085AF60F3DAF54
          2689F244AA529171961536F6657269FE11C075C7D79299374100D6ADF8C0D72B
          2A401E81691631692A9046501A18990ABE46C8F6409805D8A11AF89403572604
          E9D0639528667A41737DEC78670328321205AD009F95F042A10FCBE39FD0A64C
          9ECCD7E5B6E3FDE256548F1B95985B7BDAF515E5E10305C78B046CA7F9C0C123
          B9A18121BE7EFD5B2A991A423E9FA71933A6AB11236AE55F7543882400AC5E75
          0F00E09AAB5700007EF18B4700E06F6EBBA89F504725B7444E300CA514AEB8FC
          93002089A8B069F3E682E70A40118E1D3FD0A331A3194C3BA21BEC89A29B1F4D
          0448E1D9433D0390E27F9885B7063F50B1621494F03B0AB395948A738D0C102C
          454C674A6A8A2983180CC595035F492097862319F4F24A08DF05848056590F2F
          3980CCE82CF2F386616E3E46F08230F25215EB0A783EF51C3B0D53FAE62E9CDF
          EB8C0A6D0F973B3F961AF6D5BE1281112714A71621FC12A2D1B0587EC5D2FF2B
          75F9334FFF46FD1B5CA2BF2CC6F6ECDE47EDED1D48A7B2386DDA99D873F8432A
          160B9B6AE3233F9BE8EF7C8F409C819F68686C8090FEBF9772E5CB2AC83F178A
          DD3432A6B60EED70E759F5E4699298C51974107490D20110992C86E2FE1DF0E3
          7984733330DA6A44A8A61A7964511225B8C90C8E160F205F6B2A736008D8DB0F
          0C2861575669B313E3369C979873D3D1B189C34687EF1FDF7900631F5C44F8A0
          888796ACFA0F5DF3FF535C07E926505FDBF864D12B9E158BC517079D704B774F
          9BCEFFED217B42002CCE80CE6221FC502EA92DA85A5E2A0BF82419D39905498C
          187490628066919E31E0250F40368C40B12B0BA7DF432DAF4799134355A01655
          E191101957E5D28CF1A698541323A87243EA9CF4F4BB5C64DF65A59276ACE304
          36FDEA1D347D7996FAC5A4FB4EDAA6A915348888A970A8AC5229BA5848F96843
          43DD70315FD43E7260C5959590F308A82F67C5E986CC3F7FFCF1B22F9EF639BF
          C6F498CB34D234282270A5C127905D8A22B7F14D94A6E410ACFA044A2D09C406
          391AC5484003D2E9010C0D76A941EF28BC9141183575BE6E598CEFF21FCA4DAF
          B94519BABEE6F0B5DEE7965C71D2779D834E104A2A8C6CA8BFC617FE331515B1
          4FEF3F78F02946CCFEA8A53FF062FF9F92F227C74835214C6D5F3E748BDA9CF9
          9D990BE8CA303C21081C06181930A501CD62884D3807C13D12F9D487B09AEAD0
          334561ABB6051FF6ACC56EEF6D2446EE873F4740360EA1549552C50878C3D8A6
          33F30DA1B05713F012B91EC2DF81B2B92CF2853C34322691D0942CF10B32A98C
          954AA6FCBF581319FA5A022548548F394495549EA27D855BD9F3ED7B9C7C44D3
          8CB0AF3C22531A2AC06C047C20525F8B9A911723B82D81627A0FCAAC91D06657
          833754C09ED088E218A05809F84113AE9F82E609CC8A8CCE0370FD273BE88633
          BF8CFBBB1E3969C17DEED3D763EE9CF93863F659B8EC9265A3356EDC44D2945E
          5E5DB174C9B2D3674D3CC3FBAB45A5BBAF391BBD9D4915A80CD2E77BCF5B125D
          959E9CFECE1661A51577CC4A659045966F2048368242203E710646565E047DCF
          71E4BDC3D0A80CA28EC1EE0FC1540D44CC006765D0B500CF5849FF206F9BF34C
          CB65173E842BD537B237B34BC2979FBCA11B0AA2B3A31DFB771CC1607FF21E3F
          4F6521A3CC9705DDB6B5D003DFF9EEDD16FF9F072D5C7E0EBEFADF6EC79CD9B3
          227BDA0EFDA8BF6FA041AEEF11E9ED2D9A15B3E154562216AC04F71502B0A193
          443C3E09D4A5D095DC04A3AA8A54C0522293243D1B56226A807343110F3045A6
          3FA8E5EDB06F449F5DF1CBDF05AE6FF5FE5BE04EAAFA7A03DEBAEFD5930EE0DC
          B9675220E0E0C2159F98D576A4E30151D4606901CDE62191CA1547F87A61E0AF
          00260612B46ECB3AD4D4D59CB36BCFEE3BFA0B7D1E0F06B4400BC17DAB9DDC9D
          ED609526D5374D22E60BB2944616E7541F3F8DBCD624B5F3C3CA8ED69067A5C1
          B22970BB02C42CE2464019146219430A473AA31FFAF67DDB8F0ED09135F99FD2
          7C7B0E5EBAEF85930E60637D230B58B64A0E0E7FFB8C3967CD3D7EA0DDB70321
          565B5B85784D351D6F6D6EFC8B10FECC67AEC5606A48B5F4B6E07857EB75B95C
          52E9924127464695858A70B5AADA6952E78D6B55D78B5B65B559ABAAF46A5F2B
          4919364D356BFC52658B0009E92B6E0455A1B28F1492A47936710A91C61C66B3
          72D962A7F4177BD7AEF8957C42EF760FA922DC93328445515031EB421444E5FE
          5D0795C10D8AC7AB3161CA18CC3B73BA3A6DF68C1AF6979D6841575E7E05F6EE
          D83DB5BDB5F5C2825B9420704DD3942848D26D5DF11A074D56931A5AFD01B6AF
          7941F9795F8B5B758808531D378E282D364272E1289F0912A1A02A19BD50CC83
          2E1DC5B8435144B494E97927ECC16583B17D13BF52B51A8755E2A49C8DFB0793
          AAA77710BDFD83E8ECEC836E988855463169EA782C3C7F3E2D3A6FC1BE8F00BE
          F3CE3B20C670A4F910BEF9ED6FDD92C90EDB1242821831800CDD54866650295D
          5465B51554A9C7A9FD9E4D947FE9C021AF2B43DBE57676D06EA340782C091D04
          2685A95528CF50AAA42715F73985E1A87258BC9655C913FA60E867F4CA55B77B
          DFC71AEFD993D28125CF25A17C943C57E6F23952445228A1022147C6E2E53430
          D8F51407803B6EBF03CB962F63B95C56EDDDB3BB2E97CB3F9018E8B3A5F2A11B
          0620250B3A41A54831621C351595EA78770BCAC315997B435F9ADB16EEECEF1E
          EA9C5DE137B26037F144A25389329D33DD26284F1215C844252AA85299DC40A5
          8C22C90A449E57BFB038EAB1E97C6A69D99D9FC77B3F78F9A4023879DC642A2F
          0F2BDBB672C57CF16ADF235DE73A69A6C69B5B9A37AD58B1FC167EFDADD721C0
          1DAC5EBD5AEBE8E8940D23477DA5F958F3D28297179060DCD0080A0886422C9F
          2FCAF2F24A02F97E575787367BEEDCDFDCBAE6BBCF36B1A6CDA7A726A72F5273
          2E9DD7D7E8D7EC3598E8CC26DBF421DFAE2AB75C9954DC73A892AA5985165596
          B058D03055DACB967F37F4F5F79A554F4BDC8FD0EBF7FFF6A40238A2A651B95E
          01BD1D03C7823133A3A437259FCFE59A5B0EBEBF71F3FB5F78F98D9786D9DCC9
          7351F40A74A4F98878FFFDF78DEEAEEEE545374F527AD02C9D7C4F9061591042
          2A43D7291A0DC9CEEE4E160A864BB34F9BFDF8C429E3C1835A55A02272755959
          0C424831D599C27E51BDEAF1096F5AD7586FFB3D26C564890F8AB41856116952
          88D9A82E954BC1957C22F7CA8C36D983766DE0A4CB831BFFF8EE9FF6EC3C7033
          003C30F9ACD16715EDBE45005F66DB76BBE338C47A3A7A58AD554FC9E1A4BCE5
          9F6EF9724F6FF7045F798214314DD38824A9901384EBBA080623F085EF0F0D0D
          6AE565E5CF7CE7CE7FDE73DDE76E4099138E18A6D5D437D047275A5B58C740BB
          CA94E773CB272D7F73DA4F228F469E541A05E0E7445A891250AE2C55A997A3D1
          19C7423CA8AA62A310B62227ED07F5CA4B3E8B6231AD8FA8AC692D8B869BBFF2
          CDE5A8AE8CF34DEB372BB6B96553F8E9EEC7E5B8739A66BDF6EEEBDF4EE59296
          EB15A569DB247D4FD9011B5240714D434565050E1F39084DD3F1959B6E0BAE5C
          B9522C5EB484344E35855C3A9A4A0EFBC57C9620A55F6694B735BE16E29784CE
          DB50FD336B88BF9432BC484965F3298CD44781F52BAE7EDB9EBAB3ECDA37FC35
          87717960913C19E1D5D6C5FFB4DC5BC87AA9A1F47910DACD1BD6EE5AE0380191
          CBE6C036BEBED93BF1563BCAAACA2F11D22B17C2F500A1010A120A01C726E10B
          D27543F5F5741187A1DFF5EDD5BEAE99575CB962C5A7DF78FD0D552CBAF38BC5
          62209FCBFBC9645AD3B9E6358C1ED97CFD9A9BC42FF7BFB8A926386267F92ACE
          E4CE416555C4A97BEB516FC76DAF52E989B62788E8E8FA1FBF49FD2A75D23A30
          140A6174D398EF6C58BFF1E9DEF6E107776C3EF85B25D53F028056182EE40A40
          70D01838AD363A52B60E1E2641522929C9B62C28A6A09906427698264D9CA496
          5EBC947C4FB27BEEF9BEE8EBEB7D70FAD4E907274F9C942814F2AA5028AA4C26
          438CB1B46918CDE15898D537C45DCDE21F84DAC3E7D03732AAE7BCAD62F0ED7E
          36CAAE5575A78F7BF20BF1EBC1B88633D8F893129E520AD5D5D54D1AB7EF20D7
          B2FD3C2F650B2CDE4BC33F38FF8225AF32E755A0F215737222DEBFA461CC5835
          75CAE93C5F74893306CB3095A59B4A633A465437E0DCC59FC0FEBD07F099CF7E
          8A76EFDE4D4AA960A2BFF739DDD22F76DD12D2E914953C570D0D0FBF7EFE79E7
          F74D9F385DAF8955206A043B8DB0E36B8788592F24C484AA715AA8BE7CEBDAB5
          EF1C73C90333F949796474DAD42974A2E518CE5A302B2E3DCE4376B5B772E50A
          F6F53B6F75CBA315465D4363036B5A6C06D891FACFE526FA41BFCC15CB175EC5
          2E3BFF129575B32A93CF93274A32147290CE0EABEFDF7797F8D56F1E47A9E029
          3B6051381C9542AA919B366D5A267C816C26CD0B6E91B8A11F0C86C3386DE64C
          CA160B28FA9EE9FB2E452AC2AA61C218596425F27DEFF7270E36A75E7DE91562
          E2E40CDDBDFBF6ABD1634661D3E66D9D9D9D9D45BF24F5A5979D27172D9D6756
          8D28EB0F6BCE017EB65C31AFA736F18FA9A988F1B8C2599939ECC2F32E47E3D8
          51603A81718B8992A75A8F9C602D6D2758ED881ABF3C5AC6EB6AEB316BC62C98
          862EB3B98C0C45A22C991C569EE7B169D3A6DD7FB4F958EBE6CD1B99E338A254
          2A7DA5BFBF7F4659599917B01D4D4AE96A9CAD9A336F4EDBC48913D99A9FAD39
          690F2D4F9D3A05FBF61E4C368D694A13E48C81E1C1E0CE5DDB8FEDD8B5E5E67F
          B9F707BBD99C1FBDDF673686BB0315713AB1C857CFCF7A1945AD1F37ADBC59FD
          E0D607C545532F43D48A131FA765269F39F960F381E33A1879F3CF984F55D571
          44C3652C148EB0743A856C3E8BE1E4B0CAE7F3E1CD1F6C540478EBD6ADAB2E14
          8BB3A490709CA02C954A1A676CE78F7FF8CD83F5F16AD09F56E54F6A0D0D0FE1
          FD0DEF3E326DCE98156FBCFBCAE757FDCBEAE544785D49C5B4AF97CE393A65D7
          D07A2B965B2CF532B97EF6A0EA1E7E40CDCDBDEA1A43DC3CDC74C43B5273D030
          0BE2D9817B077E3CE7AC99CF6DD9F4C7A9413B543A6BC1D97A55BC5AE58A39CA
          64B348673248F4F5D2DEBD7B6E8394EFAE5ABD2ABB71E38673376EDAD2A8EB86
          AFE93A09E94348B9EEB35FB8B35F29C9162C982F4F6678CF3CFBFC9FEB628FC7
          EBCAB7148AC52D903E2CD3E16EC915DC99563392AF3E7E1D9F54335E34542B56
          64BC3BA8B0D5DEC7B755EC1027C61DD20DAB501AD731F2860BA65EB07FD1E285
          EB07BA07E71F3B76AC7638395C1AD5D8A845C351747474A098CFB3F11327C8C1
          C1818615575D3571DDBA75CFF7F5253E9548241639C1901B08D82614329148E4
          01DBB68E092178636383FCC31FFE70523BF0FEEFAFC63BEFBFA762C1119AA61B
          BCA2A29236FD7183F8E9CF1E060FAF3B71E9686BDC75F1AEFA405F6C10466335
          999A06C615132CAD55E7B9DFD43CEAEB7D9789D7664E98669AAEDFBB70E2851B
          0E1F6D5EB273E7F6B8EBF962F4A8312C1A89505757276CC701C0C4FAF51B26D7
          D6D6CD735D776A5757774D2C16134A2A2D180A1D7BEEB9677EB47BF7AEF427AF
          BE06D96C46AD5FBFFEA406F8CEFBEF01000E1CD92FDBDA4FC89E9EAE8FD20EF7
          0DF6C0352BAE193F3534896DB8F9B784E3034AA6B34A6F1D50D5C2FEFD171B7F
          7835BFFDD06B7DB5696CFFDE21714664019F397B6662E2C4091B1389BEB30F1E
          3C54D9D9D1A1669C368D060706F1EA6BAF51655525E986A6DA5A5BC7E572D911
          2028C7092A464A2BAF88BDD772E2C4E3BAA5F3BDBBF7C837DF7C137FCFE2E515
          D19FCE9F77B66D6841D576B083929B5A55F2E5635C7FB9D0917DA87FF95B773D
          7D8C2F88706FA650DF6EB803D964561D3E7C18F97CBEBFB2B26AC2B66DDB4E4F
          2793229148D0A44993D0D43496EDDAB34BE91AA7BAFA7A91E8EB53B66D93AEE9
          C4B9EE2D5EB8E047172F5DBA7754E368FEEEBBEF48FC9D8B85C3618333BDD87E
          AC5315A58F68BC4E859C7215ADAB3A2082BC3B1C0E716224789EE0E80ED5D5D5
          B179F3E6D544A3D187F7EFDF7FDDD4A953FB9C50486F6B6BC5CBAFBD42BA69AA
          CF7FFE7A9A38710A84EF73210437745DB9A522771CBBE7B6AF7EF5AD2FDD7823
          C68C1923F03190160C385092289BC93012824A5E114A29B22D73F798D16388FE
          7C7E60EF05FBF0E4F227B5743AED31C6963636367E69E6CC99FB8241E71F5F78
          F1C5978590A1A3CDCDF277BF7B814D9B3A034D63C7AACECE4E320C43412929A5
          E2C190B376ECB871FD005859B44C7E2C0072E2CC2BF97AC92B018AC0198831C8
          52A1D49AF7F3CA2B79D4FDB36E00403C1E972FBFFC32006C5FB870611B11D5C6
          2ACA3165F2A4FB72B9D2AAE1A1A43B30D0671C6F39A68E1D6FA650308860288C
          A25B24DDB0043CF3ED59334EA7E9D366524F6FCFC7811F58A69016F97C5632CE
          95544A41918224B26C2B66D9360CD3A09F3DF6300060CD9A35E2EEBBEFD61E7A
          E8A1DD73E6CC7978CF9E3DE56DADED4F9D7DF642B7542A1EACA9A9D63DCF17A6
          AE5328148265990024DCA2CB398C625579FDAE6C2AAFBEF5ADAFC9DB6EFBA78F
          0740CE7034994E0ACBB688310211832F1549A56609216198961A3365F447037A
          7A7AFCAF7DED6BF4939FFCE4FEB163C7FE61C78E1D239E7EFAB95B2A2A622E11
          63A15004E94C064A49E8BA89A2EBFA02204BB3D63EF4CB55C7AB2BE210F03E36
          F74DB1237BDB9E1C1CEECFD9B6455C3315E79C18B8CA6572A7ADB87A59F99123
          87901BC8D1C5975CFC516F6CF2E4C978E08107546D6DED7553A64C69DDB36777
          FDBA75EBA6255349555111E30094AE1B0031E4F379D2B92EAAE335CF8C696AC2
          F6BD5B081F23F1477FFED8C08E3D1F9E595516AF1B4CA445B190E3BEF4855BCA
          47847007EEBEFBAE0F9E7FE6452352562EC68F1D87DF3CF91B747777231E8FD3
          934F3E99292F2FDF1689442E6A6D6D0D0B21FC5028C89582B26D9B14944CA592
          DA88CA5AB7A17EF46D11AB3C9B18EA45FF40DFC70620331CD6DC37D4FB52C61D
          662346C415C060190178AEE2ED1D5DFF90CEE446315D2B29250D470F7D3450D7
          7555555545EFBDF7DE969933677E66DAB4A9DD9C334AA7339E6DDB649996CA66
          338A81AB4C32B723C02AB25D0347615BF6C7C980609FBDF6F3C8170AAF263303
          C72AAACA78C00EF91AD3B9638444575BA271E2C4498F2EBBFCB2D89449134B9E
          2CFDC55E9AA3478FAA679F78411325AC9D357BD6CD15B1EA82E70B4E9C3CE284
          4C36ED71D2C9D2824FFCF489BB328343C3B463D7D68F15407EEEB9E78612031D
          89743AAD468CA85BAA23E00FF60F3343D79894D26F39D1D294C9A4CE1C3376F4
          FE139D473BCF3E7D11824107BD3DBDE8ECEA82A11B323FE469765FD3410A169A
          4B9E7781A16B4E3693A1A1C161BD3C5459AA8AD5DDE318E11E8339AC6FA8EB63
          756121575CB0B7DE582BEEFDD1EABDA148704E435DC3F8CC70A1E4165DAEEB1A
          2340F425128DC75B8EAF681ADB5433B6A9A96D44DD8881F25839AEBDF653C8A4
          F228E67C99A504730BE260241879DF2FAA5AAF20F470A0EC602C12BF6FCBAECD
          7FD8F8D671B976DD4BAAB5EBD8C7CB818B172CF6376CDAC48514A5BEC1BE5D35
          23E2675494C5470C0DA67CE94B8222A5318D7BAE6F25FB5313A5A786DF7DE7DD
          8D870E1C62BF7BE5776AF6CC3970733E9E7BFD7135B2BE81A4945D73C6AD78B6
          3A56FBF337373DF58BF6DEE3DB8572A5EEDB68696F4667A2E56305900060D5AA
          7BB06BD701964C0FC9CA707C64241CD994ECCBD61F39701C25E182B8EC8C44C3
          AF9E7BCE79BFC8E6327B43C1081EFEE50F90184EFCCDDF9C75A5A5B07F06EEFD
          FAF370AC202D58D9A004B2F8388A00E0ACB3CF4275552DAA9C1A92022A934F7E
          2116AABA239FCD3B0272ED15572E7BF0926BCEDFFEA37FFE39869243D438728C
          FAC6F76EFE8F00FE971203804D1B3601009492EAD74FBD4650EA5162B8F2F433
          67AF78E2A547AE8DC763DB7FF89D9F18FD430996C926D5DE033B4EC1FB5BBAEE
          533782A3129FB9EA7A76E982ABF1C2AF5EC66D377F93677A33FCE17B7F790AD0
          7F46D75CFA0500C03F7EFE767ECFEDF76B4A29FAE37BDB710AE07F90034FDD23
          FD7F20079ED22980A7009E02780AE0299D02780AE0DF9FFEFB00860D31604C74
          40180000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000037
          864944415478DAECBD77981C5795F7FF3DF75655E7303D394933CAD1CAD1B2B0
          2D5BCE09DBD8C6B02C0B262F2FB0ECB2B0B0896561C9ECFECCB22C36CBCB1AE3
          8CD7364E725496AC9CAC9166349A9C7B3A555757D5BDE7FDA35B4232262EDEDF
          3F5BCF534F77B5349AEE4F7F4FB8E79C5B2266C6FF1EBFFF21FE17C1FF02FCFF
          F530CEBDE8D3FAEC7306504B02AE9D83F45DB890D8B46527766D7E1553E65C80
          29EA0464B1036EC946D7E9010467DC828B1735E24B5FFA322EBCE963F8D8873F
          80C77EF47F30911944CE5A8D926F50319BA3D54B971ACFBEFAAAFBF10FDE852F
          7FEBDBC6E91327EB49EBC59E1497B8257785A7BC192465C0100286900592B2B3
          2A910C8543618AC5A32386611C8F86C203B160A477FEB419E927363D77E2F5CE
          93762C14B4AFBBE15ABFB9A5C57DE1D917401E63F3DEEDB8FADA6B0581F4D225
          8B914C2470F1BAF56F1DC05F7F309835F81CC86F3CB45660AD20A52CFF043300
          22AD99ABAA921C62E29EAE2E994CC4573FFDFC73D716F285255634DA1C0885DA
          4CD34858A605CBB4605A06A4901042540398E2B3062B054FF9708AC5EB267339
          F63CCF7EEDF5C3CED8F0E8108062C9F7B343A3A3DEC8D8C4684F5FEF71DFF307
          162D5838565B5DB365746C6C42080121C45BABC05F050EAC21A405D30A21108E
          818C004103600D80A1940FC502550DED1C085561626C024E318B39B36660EFEE
          9D1C0AAE352CC39CDB3B99BE2E93CB5EE569BD6870743436657A3BAA9249C462
          3124627144C211040321364D091204D620D61AAEF2E0B91E1CD785E3D8B06D87
          8A4E3192CDE722994CAEDA2B3AD0AC313499C5E8F008100A42B1AD8F1EEFF023
          F1D83D3535B51F739CA2B62DEB7F1A20430B0364126291186ADA96CC6B197546
          ECDE1D63AA4A429871F82E505DDB04EDF62133D880A619D7E08927B684575F60
          6DB4B303570C4E981364945ABB7B8F6F0CC722F56D4DF5A8ABA9436D4D8DAAAE
          4A89643C814828448669000C68AD8959030C1008420808294024CA5F9656F03C
          1F8E5384520A0C707A328B4D2FBD8099D3A7B989AA144DA633E2A1071FA0AE93
          A7ACDEFEFE75C964B26EC7CE9D434248BA72C3E5FC96013484000150003C5D56
          97302C28D398DFD1DBFFB7853D3F5C9B3CF274A79D31BFC7E1D5932214309905
          1AEBEB8D62B6CF78FC5BF7AD2A9991F9572EE3F091C3D5CB761F190A4D5F7C03
          AA23D55831AD1EF58D0D7E5D4D2DC5C3110190741C07997C0E83C3439CCD65D9
          B60B542ABA50BE0FCD9A84146C180607AC0085822184432144A3118A44228844
          23B00C8B23C10054A9445208BE64ED85464DAA9AF61ED8C7B5D529BAE6DA6BE0
          3845333D99B5945220A2B75681FDA7BBC1CC8845E34855A760114109714DC781
          2DFF5F68C75FB4ADF7B6C36C47535E1B1779C63E8604A15AC1F50CEC3EE1A3A4
          0A58B9B60E175E7A331E7B6E18ABD65DA4E7AFBA8AEAABA248251200C3C86433
          E8ECECC2C8D8284F4E4CF0C8C8288F8F8D51C9298942A100CB3461DB366BD6BE
          619846206052301842381C462812412C16D3D16884A389047C0D92A6093B9785
          EBFAD8BEFF808C45A33C3A3A22AEB8FC0ADD5C5F87FD478E60646C827DCF8352
          FE5B0B70EFCB2F41291F7366CEC7EC8BD662B8A06F3BB5E767DFAB3DFCB1E4F4
          D8A0E6A8206510120106C902111808129F3A26682CE3E915375C872B6FF9388F
          1752B460C1CFA86DF90D148EB7C22EE6A8B7AF8F07070679686888C74747686C
          6C9CD263E3549D4AA1B1A101FD83FDCFCD686F3BB4FBB5DDA6619977A5AA52A1
          42A130929E18EBF15CCF342D3315080452E17024924824100E8701CB84E3FB30
          2C03AC14EF3B78904DCB42AA2AE9BEFAD8A36E5D754D5444A3A7D9080DDE71E7
          6DD09ECB6F29C0603000420039C7C1CF366DBB0076FFB7E7F47D3439BD6E54AB
          B049640980002F2A48860513836490903F56E240224A532EB8838B8E4BD2D98F
          78A2CAF332BDE6A93461B0FF941E1C1C427A7C0CC59C4D45AFA46AEB6AF73534
          D4A5E3E168FDDB6FBCF1FE81C181EF9C3879C279E4E187F0A10F7F78734F6F6F
          DDDC8B2EDA72E4C8D1CE997366CB2D9B3737F4F5F535A427261A7B7B4EB72C5A
          BCA8A9F3E8E116A5756B381E6BABADAD4FF476758727B3592C5EB4C89A4C4F94
          1E7FF8514ED5D54C0DC6A2F35F7AE68903D170085BB6ED78EB008E653C10804C
          296B0E8D9DFCE47A7CB361CECC51ED5916518818012934337C9630AB25699F81
          1021502FA9AABAA8473B1EA01A19D6869E102131451C78F509AF33BDC2F083AD
          82550EE363195CBD7123B7B74FFDF39C53BC77329D76BB3B3B0323A32319431A
          705D8FE2F1386BCF7FF8F1C71EC3FEA96D689DD28AE3478FC1B6EDAC61181D96
          69E2D8F1D771F9C60D387AE4A8B8E3B6DB23DB76EC68BDEAD20D6D6EC9697BEC
          D147030776EDA84DA7D3D7D4A6521790107304EB4F8D0CF6BF6F424A554971DF
          1A8007363F0910D0351CB1E6D5F4B4ADBCB903889B44A6042C220A11FB1E51BA
          57C19C1E8411045832A2AD0233E7BA74E8C4CBE8700D8A073330422D321A6C33
          8ABD3F42634B6D69DD9A45FFBCBFABFAC5D6C6AAE2ACE9D35F3972FC388E77BC
          8EA06139C160108542E14CFE0E66A6402080825DC0C0C0001F3A7C04CD2DCD67
          23801002CF3EB7892DD3D273E6CEC93DF9CCD34763B1E8D10211480868A53136
          3EFEDD402472B76BDBD7B3EB37BA4EC9CC965CFF2D3561BF7F1398814BA6068A
          4B6678AFC7EA8C8BD9921001823689382880808152CEC1C4A089645B038206A3
          AAD1050A0A6B1A32D8B1DDA27DA384EADA5ECAA0E1B55517BEED19273DBC2519
          12CFA6474FE0CFFEFC6FF027EF7D37E62F5A04D330CF49B8DF987C9641492911
          0C06F146E5844221285FC1F33C4829F1ECF3CFA3A1BE1E25D7856959B06DBB0F
          4CEF8F0602FBA56975D456573BCA576F6D10C9BB024A03575F56D29D27E987DB
          8F1AEFB8F012A4B4925A04009602665890AB25228359F4730A91E454AA6D0823
          B5A89574EE085F58338A9539A691F4F4F1C3431B3FE6B8A59DDFF9B75DF8902B
          505BDB84679EBE0FBB776DC3B65DBBFE601F82A8922F0A0110C12DB928E4F328
          15DDD1486BEBE3C234D2A66531980500FD9601340D406AE0D04989F56B8ABBB2
          C5C57FD53F71E23BCDADAEE92B823005CC8046647E08232F6430BDB507033DA3
          E8DEDB02B7C8983CCD0816187356484E4627036BD7DE9D0A5605B16AEF5A1821
          17D97C1E00904C26FFA02A60E6B3104DCB442812413C5185445B3514EB8C150C
          AEEE387EDCB48B45EF2D55604FBF0033F0ECCBC0B10E039CAAFBDEBCD6CE865B
          6FB53E9F68F0852A1AD09EC92D73C2943E1544F7A611CCBF5D20E81F45D7698D
          39D245BC8160D9605D138A869A42AD5B5F3F8DF7FEC55F232281575ED904E071
          944A253073D974FF9BC9AD1402A15008B6E3A07F7010895435E2552908480014
          EAE83C79494163FECC858B96CE9D3F6FE75B5ACE3AD6E7E178BF87A7B6F9F8E6
          FD257CEF072FE3A92DAB431FFC048BEE2E09990A430493C44E02F3AF99897CA2
          0DA79E76D03A3B80D6D92104A68529D208C818C152A370C62E5D7FCFD7E618C9
          74175A5A16E0BA3B3F8103A706F1C28EFDB012F510460CFF9D822E0198CC6451
          D7D000A754423A9B819002D210983B771A4ACAFD80238D554E20146D9DB7F0EF
          AF7EFBCDD3DF520536B5B79CB10980812BAFBA7EE6C103BBDE7760B789AE5B4B
          B8F35D2E6E7B571D37345741174DBAE0D6A538F880E0F8E12E6AA833B9FBA444
          BC2188400010E122136FBDE9D2E58BEF2DEEFFD71727A23E40C054CB022B869E
          2C6176BC0347861BC10840F3EF6E5DE14804FF71DF7D8884C3E77D11040021AB
          BEAAB6EE03226323118D63A258BCEC91471EFAB3775F7BF547DE3280539B9B41
          44704A255C77FD8D704AF6ED3D9D27AA53555063D9A8F8D63F9BF4FCA67EFEDA
          77AA3077613D426E80675C7509F23B8750152EA1CEF7C9772D04EA058CA8D442
          9E0ABFF74F2E7E77CFCE6D2F7AC30FC208C7E0E85F44C2B9532C34B60A24C513
          884622388C3834FFE6929310124A337C36E0E48AC866ED370B2CD303C9647328
          9AC082D933F58CE626911E1FBEF02D55E0E5975D06AD35060707B162D9D2BA7F
          FDDE77EF2C390EC2C100592103D15894BB8713F8D3F71FC75FFF83C4BA4B9750
          421FE1E87CD644A04452B1932D9136A2A0684498F050C8765C5FB5F41B73517C
          E018D1D0197D9C554A1DF540157C044D81053561283703A57F3544D7735155D7
          80F1BC0D2A147F455001082CB2E3E3325C5D87C573668BEB2E598FDED3270FBC
          A53EF0C31FFB083EF9E94FC1F55C7CEEB37F79E3B1C38767052C938904598110
          9456D4DA9242575F89FEE33F177EF3E04EFED9F0C8A01EA73A4A675D325B89C2
          41C5946768AE2216D3B415194CF9D9576E298D1C82A70CF83A055F57C1D755F0
          74151C550B178D2878F5689F12C297BE70358434E179EA4DE38BE369B0062C21
          6142BCE96909896820D8636A3D54748A189E98406F5FCFDEA69AFABBFFD000E9
          5CDFF18DAF7F1DBB76EFC6B6EDDB430B172C7CE6F89103EB0D90364C93C2E108
          0291204C92A455B177F19A4FAC10F2B8BF6AF582174D535E901FD99A59D8F8D0
          E8E2FAB1E99E32A1DBE693156DD1AC2645A1B078B3C74BAE52BA5420327F6DED
          B6AE2E84071ED88CEFFFB8038A819AEA2A64737954D754239FCF235FF4CE53F1
          AF0A2EA614B0EDE2550EF0D78A682CC4FEE7DB1BEA0FFCE7FDF7BF75265C7435
          4D8C0E714B53C3DB4687875793D22C0296302C8B2108F15882FBBBBB212DEBBE
          54F5A961A6F08660A476D6C8F008520D3775BD74BCF9035B767EF73BEFBF6C64
          8D28E6B50E559119AA4390C7EB4D1EAC16C405ADF5AFFDFC768171DBAD2D9831
          BB169FF88B17CBE6487436CF232AA75ABFEED05A616274144288A7E7CF6A7F7A
          7074022218C7E8F8E85BB71221227CE0FDEF35EAEBAA93BABFE7CBA7FB872DC3
          34B42409D30A702014A0F1F1318423615C7AE535A75B5AA76172223D777C7438
          D8DBDD85FAEA48D6910B0E3DBC6DE3C3C589C7D6FEF9273210E138BAFB01CF5D
          73F4B94DA343CB170DA1B12109AD7F53EAA2904CB88846240082EF79C865B218
          E8EDC7DE7D7BE8E4A9FBC594B61AAC5EF6D9F3D6667B76FD5F41C63C62FD2AEE
          7FF809DEB56D80C647E5C6DA6455C813F4F34CD176FED045D5B3267CE61F5E32
          B7F5ED9148ECA1D35D43148986118E846145A2304C0B7575B5B8FEE69B696222
          DD79F0C0A16B6A6A6AFFA8A1B9E9735D9D5DF8E33F7AF78FBFFED52FFFD1BE63
          27164448BEF0A9F78CD6B5AF5CC9FF7C7749AD5E73FD35BDA77B9EDBBCE59572
          1DEFB7387CDF47FBB43638C52CAEBB61069DEAEAA5C71E38A0DFE8180F1D3924
          16CE5FA8CF0F221A93B90C66B6CFFCCC68BEF0C549CF33A73536FCA03A447FF3
          D8E33F1F04C09FFDC2F5F8F217FFEB0F6BC2F7DC2071A094BE7C24B94C4CE43C
          5D181BA744BC8AA52169D6A2C5B872E3463C78FF4FF8A99FFF7CFA82B9F3EFB9
          F2EA6B862727D3C84EA67DC77136B7B44E412E5F1CCEE5EDD3FF784FBE6EC62B
          794AA5DA8E3DFAC83D5BA3D11A2C5FBE089EF7DBE57BCB965974E4E8717172E2
          B0FED63F753000262170CB9D739A972C9EB366CAD4F68B22E1C4AA8015A86556
          45A5BDB4532AF43DFAF0CB3D175E34F3E4D0C050F78F7F7CEAB66855B579F1AA
          55E83A7AF80E954BFFFC2B5FBFE9B1BFFCF4637869D35179D75D57E3E2CB5BF4
          9DEFF83EFF41002E5B5CB30AF989EB27A211CC5EFE69DAF2D83D9C494F22194E
          7177E729F1F5AF7E853B8E9FE4FAFA060E844217BE7EEC289A5A5A611832FFC4
          534FBCD63F380429A5A1B56B462229C4938D60D84F7925BFD039D881BE9ED3BF
          B11CB773C7BF8BECFE715CF6C1BFD4A66128D368C67BEE5A38ABB1BEE1CAE933
          665DD7DCDCB63219AF890782110811A8C41E058207CD2E3EFB9955B0DD34DC52
          1EAFEDF9A97F6CCCC45DB7DC84077F3A39DA3EA5BEBEAFEF70EBCC5975BD3B76
          74AA0B16CE8152008F1CC53FDC375F6E7D85352C702A1CC44FFEC3F9DD4DF8A3
          57BCFF9DEF7FEF8FEF0906EA83A78DAF70DDF475BC7DC756DEF4C2B3E2F4E19D
          FEE844966B6B1BAD7517AFD745DBC1C8D00045A211221243B15874C5833F7DB0
          CF348DF5CDCDCD3F8F2712919ABA5AE7B2D56FBBE140C7A1E72CCB22ADDFDCFD
          2F5868D0E99EE32297997ED6A7D535F636CC9C39EFC6E9D3E7DEDA3675E6BAEA
          54A305840168307C0578CCEC13A048B3664003A499B50F1220414C834323E299
          670F6178A41F77BE730D9249C0B673C5F464FAF5535D833B73B9D28B478F746E
          FDE2FFF9E1C097FEA30D4F3C5E020C88E92D411D4F0A7CEFDBF6EFA6C00BAFDF
          BC2D5153DDDDBE68744E7DCFE7998B6FF7FC1A12E1A9FBE5E15CF19BFB92EDD9
          CEEEBE2F0D0E0C8979F3E772B198C7F0D0207B25AFD6B202B7D5D7D57D63FAF4
          69979E3CD515A9AEAD86D6EAC8BC99B3F76CDEB31DA160F09796BD4DAD45AAAD
          87D8B533A48026051471DB1D2D1BA7D6CF7B57A261CA35A9AAA6942923603018
          25A5D906E00B822F342B307C003E017E5985EC319382D20A0485EA1AC5EF7CE7
          6C269AC90C0691A66038114AD584974C9B51BBC4B6731F7ADBA5B3B38747BFBF
          DBB3DB9F1B1F7BFD276CA16F5A13C00CFAC467A24C02F8D697F3BF9D02DF794B
          EC9668A2E5DEAF7E653C96A87118FD595687203A0F467BB2D6056B78FA1D03F7
          3C7DF2EF1E7DE4A77FBDEEA20B79EEFC85D8B96D07E2F1080C4316E3F1C4A73A
          3B3B6F1A1D1BBDA2A5B5056EC9FD97A25DF8F892A5CB7EA9685057DB4523A3D3
          1800162C1EAF6E699C7BFBF4698BFEB8B575DEF2683409228061FB9A6D622E0A
          8603460960170C97983D003E0005860643571AFD1A0CAEB80A3ED3FCE733AFE9
          72BB569B46804D435026D72DB76DDF86FDFBF6239BF5C67B7BDC2F0B12DF689B
          65C19E64E17A5A5F795512375D35F09B15B8FD95E4FBAF7EEF3B62EFFCF04FF9
          ED978D607A382E6635CF7C605FA0E68BAB6B87074ED8255CB261C3DF054C160F
          3DF4D0679949B6B7B5F1CBAFBEC489782C2C84BCDB735DDF300D0E98961E1B1E
          D971FCF8EBB8E6BAEBCEFE8ECFD70D8A7F1869D44033DF70D3E40CADABEE9A33
          E7DA77B734B5371A86046352F9FA346B5D10CC25595119989988F4999A7F05D2
          99911386A0F2A30640E7C22BBF5E6ED643431A165B8614E9C94E6C7A610B7E72
          7F87AE4E65F5BC7916C7E2B27ADE82E0D74786D5957D5DDE7BEBEA65DFC48416
          82A09F78B50ED7AD1FF9F50ABC68E5B2896BFEE8AEE43FDFF3000F1D794D442D
          79940C6BE5EA05F1C2F5575F85290B3722168BE1E8912337FDDBF7BF7FDFA9AE
          D3A165CB96E99AFA1AEAEFEB85655834343C88682C8E54AABAB3A6BAEAE2FA86
          C6BE58AC5CB68A35DA323718564D33332DF5A9D85FBFEDC2797754251AA30C0F
          8E4AFB9E6F0B224DE58241F95D9DC99A7FA12A7D161A55AECF555CF9F39C791D
          602EF7910C69C23405C6277AF0D24BDBF1E04327B07DB70F5336B161285C7EE9
          084D9FEEB15D14CA34D8C84CEADE6C46DF9EAA36B6054C29A7CF936AA04FE1AF
          3E31F9AB15984856E9FEE16116B244E19A04AA83D6BE402050C8D840D7B845E8
          E9E55C2E7B4D3A9DBE77C3860D0FBD2C5FBEEEE8D14355F5934DBC7CC5729CEC
          E86062C1C42C88F8D5AD3B77F6BDFFBD7F4253A74EE54E9993A962403D37B663
          5D7DA4F9FE2948B51C7BAE1B739BC6D4BC364BB4D49B4634205883E06B4D9EAF
          7E0183F8ACAACAD567FEC5B0D3B9E0E89CE7ACA159C3B24CB0268C8F9FC2E6AD
          BB70FF4F4F62EB2E1721A319916800122E49338AE75F926CC83E9ADAA60DBB28
          FC44956C15029B2C0B6FAFAAA26772592DDC12EB2F7E238E2FFC59F6CD01B210
          A6E338C2777D86AFA195EEF27D0F1D3D39D47776211008E0E1871F9E9C3F7F7E
          70DE9C39272FBB6CC38F77ECDAF5B1FD7BF761627C8C82811042A1201CCF45BC
          AEFEE94BA74DC3682E8B83C7F78B2665AAE351E396E699537FDC36637A9084E1
          8DE76CE3F9E345F9F3BD190E94D2DCD66CD2D29949CC6AB750572D506E606894
          3C0DCF2F2B8F88416F84055D06CC0C5D1978324D135A0B8C0C776370F030FEE3
          3F4FE2FE87B288445A91489890E443080D2983308446225945CF6EB2F9B65BC7
          1089B0E1F9A46209199A9C508FF7F715AF9FDA6E3D5B2CB2B02CE8F7DC15C18F
          FEBDF0CB000BE9C982EFFB716948D6008542C1E678348A99D3A6D3EAE5CBD82E
          97E2B78E8E8C7E69672EF7F72B56AEFCAFBADABAF1483452EB7B3E0762167CCF
          13321C1E8FD6D7EF7AF1B19F61D57B6E160F7DE1ABEAF23FFFE85D539353BEDF
          3E770E0BA555A95834231671804C768D18D94E1087068BD87D220D5D984075D2
          C3F259F558342F8469532DC4C2020C86A7145C5741FB1A42F0194704C51A040D
          D32C2B6E64E4343A3B0F63F79E416CDF65C0570D485455C3921E48684869C110
          12524A082160198C58AC999E79A6845B6FCDB12048DF87AAAA96A69478E4F851
          77C3EC79819D451B6274B4A8DF548183E3E33F6FF7BDF7052361822190B7ED95
          7FFA910F87E7CC9E6D9FEC388EA71F7A1EE17018CDCD4D5F2B168B2B1E7EF8E1
          1BAAABAB4BC96415A7C727589A1276364FADAD539EEC3E7AECF4D2775C2BF7DC
          F73375EB17FFF243D5F575FF3AF382051A4A71315B9000B3D64C4A6968060CD2
          8805252CB6306E5B987092786C5B1E0F3C3F80A0CA60EEEC04562C4C61E1BC10
          5A9A4C9892C0D0705C05CF53B02C03AC09C3C3A7D1D57504070E8DE28597050E
          BC6EC2B7052EBC502264D9600AC290E50E9E210D48212004C1B42CA42706313E
          6A60EFDE10AD5E6573362FA5F25945E332D2D0448F4B412BC6C626FB4C334080
          CFBF1444FEE66FFF66CDC123477FD657E2BA8EC38758D8593DB5B6E64325CFFD
          417D630369160CE523168BC108041A4BB6FDF0E1C387D756555569A535018CC9
          C90CADBC6CE30742EDF5F7EE7FE429B5F0C62BDF57DDD6F283D98B2F50A66150
          219B155EB1C4BEEB91572AC1755D78AE07BF5482F27D948A0E264646601A060A
          D91C8A85028A8E07D7D5D0BE8205078DF5022B16D663F99208E6CF0D239EB030
          383088EEEEA33870780CCFBF2C71F008C3F70D5896069189F9B32D8CA55D64B3
          215852430A03521A10422010B090CF66D1DFDB0B210C082AE15D77965055A5D9
          2B0F6BB8D210D6408FBA7BC9D2451FF3FC0E313156D27FFBB9ECF90ADCB7E7B5
          5DD9747A53D3EC45EF3C1D8970A19897BD43C39FBBF2F28B775B56F0C0C0481A
          52128AF91C56AE5835582A95DE4D423C74BCE3F8D2AA4492C7C746C98718D2E1
          C88E833F7B564DB978C5CDD56D2D3F98B76C890A0482542C1685344CF6E09EF1
          60E5E6B921A17C8952BE804C3A0D3B5F80E7BA509E82563E042B58E4439182EB
          323A3A5D1C3EDC851FDEEF211E14B8EC6D1E5A9A87F0D4A630F61D22943C8980
          A9100A3284B4003291C9F9A8AF8DC02E089826974109818065A1542C62606000
          820040A3900FE3E001E0920D36C1136C59C2304CA9EB9BE8BD6323A9AFDA8ED3
          3338C004E0FC06849D2B68279BFD06E727271A5A5A841549EA22A8FDD5AD3B1F
          29647337B7B7D447E7CE9C89FD070EC1324D8C158A5D66AAF69D4DED33B6B9AE
          4F455721104F6C7D7DFFFEA34BDF79E345D3165DF09FF3962ED2D16814BEE70A
          02330941C2909052409A263CCF457A6C1C03A77B30D0DB8B4C3A0DA5147425D7
          D35A43290D5F69F8BE0F6605833C042D1F26F9989C648C8CF4E3C0B1185EDD2E
          C12044420CCBB2200D0B8661C03225ECBC4032118419B0609816A46120180CC2
          F37CF4F4F480B50F460080C4FAF505AC595B84EF4B844206A414C49A752040E1
          EEDE273F128F37A26D9A41B7DC163A5F81916858B4CF58B977EF6BBBFE71F6B2
          B5FF949DCC880CB4EA1F1E9AFED40B2F3DBCFEC275DF734BDD9F744AAEB3F995
          57919A3215B66D1FCF148B37B45C7CE94D6ACF6B689A37EF99B5EB2E98DA93C9
          3C346BF1A2403295D276C19624041B86414208B8A5123243698C8F8C229B9E84
          5374A07DBFB24A2068CDD04A95412A0DAD35B452D09ACBC3971AD08AE16B86B0
          184D8D02C74F09846204ABA22E29258CF29C7579665B58904222607810C24430
          1040A150404F77377CDF07710855D5455C71998396161FCC26A414D0BAECE698
          412404373454BDDB502BBEB465DBC33933E99F0FB0BBBB5B8592494C5DB0F8DB
          82556AC1CC199F3BA45956A552230D35A9FB5B165C70DFC4E8881FD8BB1FBB77
          ECC0FADA3A1080C1BE9EB1D51FF8E0BFAFBF68B1B07C0EED1BECDDBA70F5F2FA
          86A646BFE43846201864B7E4D2447A14437D03181E1844219B05A93343EBE59C
          4E2B1F4A95D7B267A0295D065986E9831950BE07DFF34020B076110A69A4B31A
          86118061104425BA9E89B2524A1059701C8570440388203B39869ED3A7A1B409
          D330B172691EAB561661052408019010006984C280D682895828C5DAB7B869DB
          FEFB2E6D6C8C3D1E8D87C4F923BE8601434A4CFAAC3A5E3FFA8DCBD65C12A9A9
          AE89AE5FB3FA5FC727D27B06C747611806184020183C5B8495868189D777CBE7
          9E78515D72E78DDF9FB5F48245B3E6CCF64BA592748B451E1C18A481DE5EA4C7
          C7E13A25B066686668E5039AA17D1F4A6928555698F22BC074597D6756B24A29
          78250FBEEB02CC10C204FB19048340265F8EC486212B91F51751564A09120672
          B6874422888E13C3181EE807EB00EA6A6D5C79998396661FCC168434CA9504C9
          8016D8FA32E3542753380C5E79A1E0FA46CD539A53574E5DAC1E2FE67C7ED321
          73D61A44342184F8644D3CCAD35A5A904E4F0ADFF7F59B8DC9FEDDB7BF21770E
          8EAB3557888F37CD59F0CEA6D9F3FCBEC15139D0D3431323C3709D22B4F26106
          2C8044394080C18AA0CABF0B5208B000B41020D295DE8686EFF9708B45B88E03
          BFE496DF9B2827D94C02D2F2611840CE6658A68421CBE31E520848C380210C10
          0156C082639790CF0EA0F77401A1A0C0EA9579AC5E69C30A1800C2300C803583
          04432BC203FF97909D6CC1EC5953313E9EA5877E7C42DCFEC7198EC7A7FC51C7
          51EB3F8322B6F5D74EE9179D22AF58BA084B172EA02DBBF7FCD254D3256BF2E2
          D91748FFCD27FE4CDD7EF3A5579297FD9A7D6293FF5F5B7F2CC686B324BC1087
          822932280C30A0A0A149C1670F25E5C2F17D389E07D7F7401A301920A5E1BB1E
          7CB704DFF3A015C0CAFFC5C43E118801A6F2622412126010E007609A12861490
          42428AF2976218060296855C76123D3D7D48255DB434BBB8E21207AD2D0C5008
          520810F1D95E4D2028F0D84F1976AE152D2D21ECD9BB1D3535555C55D52C8E1D
          B4FCB75D5A17BEEF9E03CBAEBEB5EA7C807BF61FC49EFD07CF5E776EDD861FFD
          0BF0BE4A1979DB6B5FC3DAE57F85AF7CFD6AAAAB6D12C1905497AFCF24DFFD8E
          F57F77C1E2963FADAF4F80D886E73591EBBA5CB01D1A1F2FA0B7378FAE53799C
          3C61A3E77401E9B40FC7F101A9CBA909FBB09587123348102C33008308020C12
          6533A4CAFA9689000288353408F10841290132C2B04C1342100C694010C1B22C
          08020607FA30303C09A18B58BA00B8604109862921850522863A53BC01C10A30
          7ABA195D27E2686890D8BE7D37AAABABA17CD0D8581F4F9F31873CD7E79C1E57
          D7DD394EBFF54EA56DBBBF8DB1B101BCFD3DEB446D5D9D2E167DE57AEA8A0D97
          2DFA4E7B5BF36C66A14B6E09BE0E09269FA5E9523CE12196F43063968B8BB984
          926B6362C2C6A953391C3B9AC7A103799CEACC21973510440086C5F0D883EB2B
          B06182A5842640B186040128ABEFDCF99D5048C357126404619A06A8E2CB8396
          85422187DEBE41643345B436DAB87A8383867A82D6215826A074995C59DD04E5
          3384201C3B4490228444228EB56BD7627C7C1C37DE7823DF77DF4F313494A664
          551D9984DCA3CF23F65B01EC1F7E107BF71D83EB16C407DE7389F64B4D662832
          F44FB3674FFB643C5E05CFF37DCD5E39D89164AD050922282DA19501C735A0B5
          09CD0124E2112C5F96C0B26505D837E731386063DFFE3C5EDB95C3D1239370D2
          E5CA4BC02A019201CB82364DF8C46051DE20753679D58C48C847B124212A11D8
          342D108081C17E0C0C4D42E802365EE463CD8A2282A100B4B650B4CFE94D9380
          2086E731BC9206813034108434188D0D4D704A25D4D6D6E2D0A14304D65A6B25
          C6C70BFD83A731F4F0578DE46F04C8852E3CBEF95E94F2BE4C55B7AB7C6174EE
          B469E287EDEDAB571946883DB7A4A51486D082150C06F94464406B03800F411E
          A49050DA007300BE72E13859781E011445734B0C53A64671D555090C0CA4B0F7
          B51CB66DC9E2D8D13C72133E82211F81A044D80A4249C0270D360C70054038A4
          90CF4B04CC004241816C3683DEFE21E4F32EA634E470CD06176D530840142082
          600DCF6300042100AD8192A3E17A809440D166384513014B60DBF66DD8B0E132
          D8B6CD274F9E44756D35B29949FEF7EF9EDEC20C6F725C077E25C0AF7FF5BDF8
          F45FFC10878EED06FB42249331150AD45E337366EBFF6D6E6E4B29459E522543
          4A4B2A2D19C227413E484B2848100C08F2A0B4045100441E7C3F0DD639082110
          0CD68140F09507B7148152453436DAB8FEC630AEB82A81CE4E1B9B5F9AC4E657
          32E8E92EC2304A88270208042CB00F28092843C3B4341CA79C30F7F69EC6E058
          1E52E571D5450A6B56B80885836036CA05D6B3E99086210D388E865DD0F015C3
          10E57A80E733584B18A681D9EDB3E1BA2E0E1D3A44B7DC7CB31E1A1EA6071E7C
          B06F64387D8088824A9565F24BC7DDDFFB30F293193C74DF36C860A70822A66D
          67EC4F172FA9FA764D6A86F0B5E703BE294580354B067CD22C012DC1428220A1
          49426B034401289D85EB4F020404034D6008B076A1B50B2213860C40A9005C4F
          209F77A0B540FBB40866CC0AE2A67724B17D4B064F3F3181C30772302D0BA9DA
          304C48B0534438E0236F333A4E74C2F56CB4D7E770FDE51EA6B41A0045A119A0
          4A759A8840A2EC3EF3050D3B5F1E601244D0CC905C0EEF45DBC5F48573B0E1D2
          4B303A3686582CC64EA9C4444476A130428449222A31B3F7A6003DE58099D03A
          A35F0CF56575205AFAC70B575CF1D968B855FBDAD382A4C110CCA488B4000909
          837D28486896D090906C01E4C1F386A0751141AB01040B5A97A0B40708134A05
          C0C8C3753370BD347C5584940C212CF89E07A7A8110858B8F29A142EDE10C36B
          BBB278E4FE511CD89741AA368640C84238A8D13DA4E1FB79DC7071016B96FB08
          85C2E5C0025576754495C49BA015A3905795420681CE54B98580E7F9300C8DAA
          6A0325C7C7BEFDFB2084E469D3A661EAD4A9F4C0030F90E338DDCC9804B800A0
          F44B8378A3938F21103271C9A5170AD73BA57D39F69515AB2EFA6C34DCE62956
          201202904C64409075F6240A408800A408C09011102928350A29230806A6C134
          9290C2849451183202CD3E3C7F04257700BECE020418D28221CD72A5449A304D
          136003F9BC80EF49AC5E9BC097BFD586CF7CA10E41CBC6E8E02434339AEA1C7C
          E8B61C365E2C100CC5A0B4802055F679155F694882E3688C8DF9705D2E836580
          B91CDD4BA5128414BC7ACD5ABCFF23ADEC940A7CF8F0516E6868A0E5CB97F381
          0307A8A3A3C3D65A1F27A22C33670014CF53E0AEBDDF45341AC6C2390B840069
          9FDD4FAC5DB7FE33E160BBA7D995445210983583CAE11F201290E7F4624116B4
          3F0CC50558E6140832A07509CC26144AD0FE381C6F18CA9F84D23E44653549E4
          436BAFBCC2008141D0A0F2A838014A136CDB035860C3955558B2228CBBBF3982
          62D1C38239260281303C559E8B212AA726E5BDE1042981C9B48F6CC60751D994
          B52E070DAD01CF2F62CA94169E3F6F39B9FE38179C236CDBF5A2AE6E2A4F4C4C
          A8CD9B3763FBF6ED229D4E1FD05A0F13D124800C00E73C80C3E33D48F5C5A9E4
          D87A603C7FE9C51B567E331C9CA19895644841CCAC0122E24A1AC667DF2C0909
          6605570D022410B4A68159958B050270BD1194BC21787E0E800F1201189050DA
          3F5395AF74DFE8EC49E5AF04A29273B041600DE4B33E1289103EF8F1247A7A7C
          1009D8B646244A50AAE2D334430A4033303AEC219FF3CB03E8E24C1F45C0755D
          581678D5AAB5686A6CA5E19143BA7FB04F749D5074F8C861B56C49428E8C98F2
          D8B163E8EDED3D3D3636B6878846987918400EC0F93E9021303030C4AD532E88
          B6CD18FFF7EAAA79041600B12080094C659F8172678C5169331A0029281E8121
          62209980D63E345C281E45C91B80AF7220D23064105A979BE2FC86B1DC33BDB7
          B369DED9C997CAE66B7641460042080C0E0C213D39897048C0F5CAA948342ACB
          26CB0C21053C576368A004C761188638675B8540A150C0D4B63A5EBDEA622272
          B9B77FABEAEACCC8BDBB8AFE9143CEE652893BB76EDB126F6A6A4A6432998942
          A1701CC029663E0660028003E0FC62C285CBD689A1D15EDDD5BDFB23EB2FBA62
          1AEB940F2A4A8228B7612B8EA3EC9319441ACC16885C681E81216A00442A80B2
          F0751F7C9D293771103A0BEECC805125369EC989CBB5C05FCCD99F338729C0BA
          80402084A25D405FDF69146C1B82247CC5302D82528C52896159040842C951E8
          ED71E1FB0C21CB8A340C42C9D528160B7CD9BA9558B070194DA48F71FFC0EB7C
          70AF23F7EFB5878E1C2C3EDAD7E39D00E011213730309003E01091C7CC630006
          01E42B1FE417F5C0BBBFF73EA49257E854826198F7DC625A792D314A8C2A6226
          26F2CB6B5188B2811197F32B2A41F12808F5208401D8D01880CF232052903208
          D23E08DE9B4E6655DC3904D37983AB1A80A86CF367ED20169F81B18909749FDA
          0BDF2FC190B292A200028C6050C02E28446326262614FA7B4AD00C085189C086
          442E5740281CE677BDFB766A6888A3A77F8B3EDD3D22B6BE52A013C7ECED07F6
          394FD8B64E13413123CF8C0211D9000ACC9C07300E200BC0FDA5C9847FFDB7F7
          A1AF5742B9B5910F7FB2A5A350904D43434A2F593C8D92D13662AE029151F66B
          501024A0B9048D6108AA0771081AE360F44271A95C7DD1E5C0A0B50FADFDCA75
          F935D63E34FBE7FD1DD6BFB8569AE1FBB9721539BC18A74EEF45CFA99F97A192
          4479540367C77D5D57233DEE2316173879C281240604414A01D61AF97C1EF3E7
          CFE38D1B3792A7FAB9B77F8FDEF75A4E6E7D2553E8EA741F3B7ED4D9064011C1
          66461E800DA050515BBEF23C03A0F82B467CA5B870BDAF8BCEC9E4C87073F4E5
          4D593E78A003DB160CD01FFF493F6A528D10D40C896A30226094A0310E896610
          07A1A80F9AFBC02008327F1115CE1AE3F966C9209CBFB02D676DB262B24AA511
          894C01990B71F0C00F3136BC05861907976F4C51F6C8CCE5C45833C26181C17E
          8DFEFE124CA3DC6A3785805D284208E21B6FBC89162C9C4983233B744F4F376D
          7A3A230FECC99E3CDDED3F3038E07512819891ABC02B9E03EE0C4CBBE2F7DE7C
          B4236FA711891BA86D32BC8E43365DBEE14A22F8BC7F7F2736BF1AC586CBB330
          E469C423F59068868680D04D0045E0A303CC436018E5323B97FDA410C659133D
          1F262AD1156510A0F3C02A3581447205F24E35F66CFB7BD8851E58812A28A560
          9A4020282B0557865D506012708A0A23832528062CCB80D6C0C44406EDED53F9
          D65BDF41A168814FF73FAD0FEC1B974F3E368663870BCF9D3EA59E38E3CF9891
          7B13D59D0BCEFDB5D3594B17DD29A2A1713DD0D7DD5255D5606C7A6193DEB66D
          27AA53B538B87F08575E3D1B7B769DC6133FFB2F6CBCBA1D2B57CF43556C2A18
          D1B21A75A89CD55325B854FC9D200188375F726BFAC5E6535D519EAFD388A736
          6074BC88D7767D0260178160157CCF43344AE8EBF5B1638B8DC9B44663B389F5
          978440A471EC68B11292044A8E07D775B0F18A2BF8E28BD75136BF4FBFDE7118
          CFFF7C42BEF0ECE8C8A94EF7C1CC24F6559CB25D49499C0ABC5CE5B158399D33
          01E3D7029426B4EB3486965EB0EA5E5F8D84BABB727E3018347AFBFA118836C1
          3480679EEAC4896351F4740FE247F71CC5CC3901AC5AD382850BDB51DFD0084B
          C4C10801B0409065FF448021185A78F07DAA28B492F87139672BE71E04D605C4
          AB2E47775F370EEEFD1CA40C80280CE57B88C52536BF58C0938F9A6868B800E1
          70089B379DC69E9D43F8F0272220300CC3C0C8C824DADAEBF8AEBB3E80962951
          1A1A79561F3E3C201EF9C9100EECCBEEECEA548FB2C608950D255301587C83EA
          CE802B558CE5374FA83635B4EB60A04E4174455AEA67F09C796394CD2EE56DDB
          F6D08AD5F51092E1BA1A8954082DCD5360C81032A3367EFAA361DCA75E42ACCA
          C1D4F61066CC4CA1BDBD1675F5D5482452888413F0BD2088C390467943B26905
          4064C2717CF8BE03D21A6017A1E41538796A3F0EEEFB2B58561C6082520A9198
          C4AE6D053CF568124B16CF456F7F37FAFA7B31675E1B4E7586F0EC933D78DB65
          160EEC1DE5EB6FB8081BAFB8814027B8BBF765F5FCD3A3F2F18707F31DC79DC7
          32696CAEA8C96546B602AAF00670C50AB8D26FB339FB9C9D4AC74C68ED1D3DB9
          E327B366AEBC1DBACADF7768A759F24E61DA3403D1A8852F7F710B7A4F055053
          1B433018422A95422A550DCB0AC32E94D0D3D383E1E15E64F3C3209143285C42
          22095C73431B9A5BC2604E606C681E0A8520C27189E9B318212B0CCD4104C3B3
          D1D5BD1507F67C0A9655055D0916A641C8663DDCFD358954AA0DDBB6BF0CDF53
          A8A9A941369BC5ECD973A1B48DBBFEB4C4EBD6DE84397367523AFBB23E72F804
          DDFFE301DAF2CAF8F19E6EFDA0EFE154E583E62AC09C378177C6D7B9BFEDCEF6
          B30A3C7A629BD4ACBCC971678BD376EA8E8065F3F2C52B59610A8D4E1C80E7E7
          D03E3D82A38772686A6E462211811002C5A20DD334108D19983D670AA6B635A0
          507090CDE491CBE5D0DD3D8E037B07307D56083B5EAE462E6DE2F5E37B31912E
          60FE52C6BAB70D418A184061749FDA5C565E65CA9499100E034F3DE6415003FA
          FABB306FEE7CF4F4F4E0DA6BAF8514024F3CF924229138CF6A7F072D5C98E253
          BD0FAB179E1F940FDCD7A78E1F2D3C373284672BA07425872BBC41796F549DF7
          BBDCD9E32CC06347FBBCC9711F85A2F3D2BCF9337DCB4CCB92CE405213D756AD
          27DBE9C68D6F0FA02AB5172F3F7F18A5D234B4B7CF465D5D0D820189829D876D
          97502814E0380E3C3F8F70C4402090C7DC05418C0D0BD8B93A5C7FC306380F8E
          C332FBB067DB249A9B4398357B08D9AC5359E5C8B3F3D48641984C7B38D91185
          53CAE2D24B2E45369BC3C99327914824502814B8B1B11E83FD59CA160E73676F
          81BFFBAD93F2C5E74787FA7BFD47B3191CAA94FA8A15786760E5DEA03AA702EE
          7782F74BD35999C263442CF854DF96D7E6CDBE7C1933798A4B2638C8444918C2
          2242166399C378E9C51DD8F7DA18B4DF8CBA9A990885122041D0CA83E3145074
          6C64B30E6C673F3EF6E93AF4743BC88EDE8883070FE3A5975EC6C6CB3760D7CE
          43587D710C1BAE18845DD0181DED8352E595AF6646282871E278093FB9370E40
          E1CA2BAFC4E0E020464646B068D1223CF5D45350CA875B127CEDDB150D0C8E62
          EB2B995D2343788A1963157F97AD002B56A09D498A9D7302C51978BFFF469B44
          3488D1CCFD74FCF501565EFD17A4F5D34766B5DF12121453AE3B2A7DD58F7C5E
          B1F642D4D4341FB7DDB80437DFD48F631D07B07FFF6EF4744F223D4EB00B2178
          6E00841086878BB8F6ED26882C24AA6C0CF59CC094D63988C77661FF81FDD05A
          42EBF280B81404298D72924C12A41820173DA727E19612B09D349E79E6195C7A
          E9A54826933876EC186CDBE6E6E666E4F3457EF267AF67F285E2F36323D85581
          E256560E8573F2B973FDDDB926FB7BDF4FE63C051EEE7C17E6D72CA4079FBE28
          FAC81357BCEF831FBDE8F3EBD6DC510DAE57B63328BEF59DDDD4D43E8FEBAA14
          129122B53627D1D25A879088405309B6378CA1E11E8C8F0D6168781CB94C0133
          6657818482940A43030EFA3AD7213B19C48B2FBD8844551CD7BF63026D536D94
          3CC2647A148542AE3C1BA37CD4D5B523626EC4BF7C6B2FB66CD981C6C6462C59
          B2040F3DF410EEB8E30E3436363211E191471EA1E3C73B7EA4947FF01C5F973B
          4779F973403AE700767F539AF2BB6DF59A7F3F962E7D25B27DDB67A60138F4CA
          4B3FFFF23FFCD3D0FB6FB8F19A3921AB9D1D15D6EFBCEDC3E401D4D3DDC547BB
          F6D1BE83C7615943A8AE5698D2D280E6C6D998DAB2AAE24A4AC8E6B3F0BC025C
          D7467D4D01CDCD13E83915C7ACF9172314EB424323A3548AC33415248520441A
          D5A976B4342E43AA6A0684E8C3B23523F0DCB761FDC52B908827914C2691CD66
          E1BA2E47221161DB768908431520850AC0FC9BE477E74659EFBF0BEFCD766B4A
          00C9482452EF94EC16E5730A40FD7B3FD870C5473FBEEE921327AB8399C23ABE
          68ED253C654A3345CB850EF48E8E5247C76E8C8DEC825D3A82F6761F8D8D6D30
          640A91700A012B06D30C439005D332212A7B8F0812BE16E5A60F97A7F2B5D6D0
          5CC2F8C4319C3AFD2A987AF1D2F33ED24337A3BA3A884D9B5EC09D77DE89279F
          7C92EFBCF34EDEBE7D3B3DF4D043BD232323DF20A27CA5D49E3B2758147E05BC
          3FC80D78DE08D00410035005A09608B542886AA574A8A959CCFEF4E7E66D6868
          4CCECFE71BC87166209E9CAD172F588B39336651A0B2117D6CDCC6DD3FF83CAD
          587D18F5B5351014806184619A11585614A61186694460985198461096158152
          0EECE2381C671C76710C996C37B2B901384E1EF1848993C783B8F7EE2082A1F2
          FCCAEDB7DFCE8EE3504D4D8DFAFAD7BF2E070606FE6B6464E441227299397BCE
          922CFF8655C5EF15697F6B13AE7C2B5EE59766996128A5D930A86AA05F1FFBD4
          470FF7AE59979C7BF36D13ABA74DEF9B55725F355FDDF2233CF7FC1454A756F0
          C27917F192058B1030DBD1D7B30FD3A646E1BA060C2344420440647079660167
          37CC9427505DF85E11AE5B60CF2B8059926586D8B27C2855C2B1C339286DA0AF
          6F08CB962D437B7B3B8D8D8DE97BEFBD57944A257B7C7CFCB54AC1337B8E09BF
          99F2FC3FF4DDDB7E69C33580008050B9958F388044E531661814F77DB600849A
          5A4253365E553F7FC9F2F89C64956AB26D47E6727138CE34F49C2EE0BAEB2CCC
          9EDB08D241B6025136CD08A40C23688560181198660492220082D09844D11942
          C11E45BE308CA2338A4C66401C3B3A88477E3A88575E2860FDDB3640F99EAEAE
          AEC19C397378E7CE9D2293C9504747C7939393938F11D130334FBE4179C5734C
          F60F0EEF57012400168020CAFB4BA3E79C11C3A0881014765D6D554C3E5ADF10
          6958B434D9326396D9128BA986503850954C4623D15828100C06609A41585608
          A61180904104AC200C1904C3846586E0BA79148B59386E0ECC36868686B16DF3
          296C796562B4BB4B4900B1783C6E2E5FBE1C524AE4F37968ADD1D5D5F5EAE8E8
          E8CF009CAA548B33E724C97F9034E5F7017806A2515163F01C98E18A3A434408
          1926859482A5158B4A79EF0CF888154034552D139108458221110E8644D83010
          901216884D024BADB560AD0DC524B45F9E65230665322A7BEA943EE6BB982482
          0520CA8C443018AC6D6C6CACD15AE7070606F6789EB713C05845719973F23EE7
          0F19697F1F80E7DE57C6AC9CD61B80062BD716808090545624B3D41AB2F2B374
          CE29CE2B4D9FFF65A9739EEBCA3513C1603EF39C74E5BDF239E989778ED2CE5D
          DB7ABF4B41E0AD04782E48790ECC3340CF3C5A6FF833B3726335C90CA33C584A
          A2BC65954485021198CEDCEC1CE5497866861602AC145405A43EBB3118504208
          9F887CA594770EC03341E24CB4F5FF27E0FD2E00CFBBE35CE534CE797CB353BE
          E114E72851BC41817CCEA33E7BEF9333A11A6761AA0A9C379E67FCDC9995C5FF
          D8FFF1F1FF0600A3E367DEE55C1A200000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000037
          0E4944415478DAECBC67985CC779257CDEAA1BFA76EEC909180C722008802000
          463080395389A268C99615ACBCD2DAFAB4D6DA96BD7E2CD9565879D7926559A4
          6C054B24184431883982000192C88118A4893DB17BBA7B3ADC54F5EE8F6E8020
          45458BFEFEF8CE739F7BBB26DD3E7DDE58A78A9819FF75FCF687F82F08FE0BC0
          FF5F0FE3F41723E3FAD43D33D09A11F0C30A402E5460E0A9C75FC48E1DCF61FE
          DC3361CD3D8269D98F9A5FC5D0F12C5646DE81D51777E28B7FF325DC78FE27F0
          B14F7C185FBCEFBF219B1FC3FC6023820AA85629D186F56B8CC71E7FDEFFE4A7
          3E8CBFFDDBAF1B830347DA097A75A0E425BEE7AD0B945A4842DA861430A4A810
          C9639974CA893A0E2552C949C3300EC7634E36158B0E2F5B3C6FE6A1479E3A72
          F0D5A3D5442252BDFEA61BC3EE9E1EFFA9471F03021FCFBFBC13D75C739D2040
          9FB5760DD2E9142EBEF082B70EC05F7A10A0598359FFC21F515A8159414AD9F8
          101800116B70A629C38EC93C3C745CA633A9731E79EC89EB2AE5F21ACB8A77DB
          11679E699929CB34611926CC88054902428866007343CD6056084205D7AB5D5F
          28CEF28920A8EED87DD09D9E98180750F3FCB0343E31154C4E4C4F0D0E0D1F56
          61985DB5F28CE9D696E62D5353D379210484106F2D037F11700C0D0101DB74E0
          D80948B289511F673042158295407BA68F137606857C1E65B784254B17E2C0CE
          EDBC882E322CC358369C2B5C5F2CCD5E1D847AD5D8F854626EDF026432692412
          09A49209C49C282276844DCB000901569A98357CA510783E5CCF87EBBBA896AB
          5473DD5869B61C2BCE149B03BF06CD8CF1B102A6262700E9200CAAFAE0C1C361
          2C91BCBDA5B9E513AEE7EA6AD5FA4F0690185A094819452C11435FCB9AE5B33D
          EEE450F5C5E976256189248210686FEE82A7473053ECC0D94D57E0B907B644DB
          CFB1AEC855B357FA6366DE8B06730E1D79F58A6822D13E6F4117DA5A5AD0DADA
          A29A3319914E25118B39649826C00CAD35311860068120848090020401104369
          8DC00FE07A2E94526006CFE48A78E2E9A7B068D1023F95CA50215F109B37DF49
          27668E5BC3C3A317A4D3E9B6175FDC3E2E48D055976FE2B70C40C31020004A03
          41A00102049950CA58D1DF3FFA973B2ADF3DEF48FA67C72A55F35B2D7C4EC114
          B6492CD0D9D96ED46A23C6EDF7FF70C30CC556F8577174DF81E6B5FD2F8D3B6B
          97DC0C279EC2BA0D8BD1DED119B6B5B650321E156048D775512C9531363EC1A5
          F22C576B55F22A35281542339390920DC360DBB2C88944108D3A8827E2148BC5
          108BC7611926C7623654E89114822FB9E83CA3A5B98976EEDEC3AD6DCD74CDB5
          D7C2F56AE64CAE6029A540446F2D03474707C1CC48C412686A6E82651074605C
          BBF3E8B67FDC6EFCF13C7FE336244D745965E3C2C16017AB3A2730EB1BA8BE14
          22EB5560AD6FC3CDE7BF1D07EE9BC079175CA4CF5D7C25B57525D0944901CC46
          B154C2B1A3C7303935CD85429E27272639979B26CFF544A552816599A856ABAC
          598786340DDBB1286247108D46E138312412091D4FC4391E4F210C98A43451AD
          95E07B01B6BDB85B26E2719E9A9E12575E7E85EEEE6EC3EE3D07303591E7300C
          10AAF0AD0570E72BCF406985E50B9762C9A2F33033A16FD97EE227DFDADAFA89
          B4B9604C575890A708418AC1542122860B62F384A0CA74A057AFBB1EBF77D5A7
          D8CC3511CEF8095DBCE8266A32BB50F52A343C3CC263D92C8F8F8F732E3F45D3
          53D33493CF514B7313BA3A3B3092CD3EB6B073DEBE975E7ED9342CEB434D998C
          53A9542667C6734381E79BA66D35D9B6DD1475A2B1542A8568340A9005D70B61
          58169815EFDAB5974DD3425373C67FF6E97BFCF6B696B8908941D291B15BDE73
          0B3407FC960218712220024AB32E7EF693AD679645F6EB3B167F2C6D2D98D2B3
          CA2445020A402910144AC14420250946D963CB8ED3C5736F65AFE6D398DC8D74
          3213E4AA036639AF313231A0C7B2639829E4E0562A54753DD5DAD6B6ABA3AB63
          26198BB6BFED6D37FD283B36F60F478E1E75EFB9F76E7CE4231F7D7E6868B86D
          D9C60BB71CD87FE0D8A2254BE5962DCF778C8C8C74CCE4F39DC3C3433DABD6AC
          EE3A76EC608F527A4E34969CD7DADC9A1A1E381E2D144B58BD6A953553C87B3F
          BDEF5ECEB4B4F4DA91F88A279E7E604F3CEEE0852D2FBE750016C65D10018159
          32B3E3473F93DDF8B50E67E9942E05167944AC2045A8191C4A944C49A4192108
          B62D299AA9E92D537752AA25AA6B465E449DB9E2E93D0F046DC7D619F1708E08
          6415F9893CAEB9E60A9ED7D7FBD9D98A7B47A130E30F0C1CB327A7A68A8694F0
          3D9F92C9246B15DC7DFFFDF761F7AE5ECC993B17870F1D44B55A2D1986D16F99
          260E1D3E8CCBAFBA1C07F71F10B7BEFB96D8D6AD2FCEB9FACA4BE7F98137EFDE
          7BEFB1F7ECDDD19ACFCF5CDBDADA7426A4584A42FFF789C9D10FE4F2520178EB
          82C8B63D0F820178C763965C3E34AF797D3FAA30C9278900443E110721913DA3
          109811080350CC70E302B1453E1DD9F70C827E83C26411CD468F8CC6E719CFD5
          FE0DCD9DADDED917ACFA3FA9DDCD4FB5CFC9D4162F5EF0EC81838771F8483F22
          96E1462211542A159C7C73CC4CB66DA352AD229BCDF2BEBDFBD13DA7E7540410
          42E0D1471E67CB34F5D265CB661F7CF891838964E260A54C1042422B85E9E9DC
          37ED48EC1BBE57BD4170D819F89E592EF9E15B6AC247C3270006D297D8B5F49A
          E05595302EF659C217044F13052CA06120EEB988E44D44D21D901186CEF8A842
          419F5B04BF68517117A1D03C4C3DC58E97CFDB70D1236577624B2C2D1EDD3373
          04FFF38FBF80DFFFC3F762C519AB601AC66909F7EB0E3E099494129148046F64
          8EE338506188200820A5C4A38F3D8E8EF676789E0FD3B450AD564704E883F1A8
          BD5B4AABBFB5B5D9D54ABDB541C42F0BB00262D778DA3D46DF0DB619EF12E7A3
          496AA943016816704D41CA9748C44AA88D36A139D64B4E6B14E5A63994D507D8
          3D7F0AF1F54CCD930B726BF65FF109E17ADB7FFC0F3B808F0834B776E1DF1EF9
          215E7C692BB66EDBF13B7B13448D7C51080004DFF350A99411B8FE542C3AE77E
          12C68C655A0CB000A0DF32008509B00466F749D81B6B3BE69656FFCFE1D123FF
          E077FB2687041602A1A9311973B070B288F282210C67A7D036D003F219990243
          4418C152C95EBA60DF73DE379A3812C1CA0DE7C1367C544A6500403A9DFE9DB2
          80994F8168DA169C680CE96406A99E2628CD45DB8A9CD3DF7FD8AC566BC15BCB
          C021013030F328601C3290E6B66FE5971FEB88BFD3FAB36A2A14516520A64DE6
          9E28156722E81A98C4C00A81A9C84158C735E62EF5612709650BEC69271E3ACE
          9C975E19C4B73FF12540BA78E2D9C701DC0FCFF3C0CC276BE5FFD01B9052C071
          1C54AB2E46B36348259B904C6420214020E770FFD14BAA15AC58BC68D5594B97
          2FDFFE96B6B346F6D630B2AF8AE3F7FBD8FD350F0F7DF369B4FC74BD73E28F58
          F0808427A3888834B5700AE68A45E0F23CCC39E182E6D810731CE4ED28CDC680
          9A24B8D61436B9976E5CF88DA546681EC0B2CE15F8FDEB3F8D837BC6F0DC93BB
          1133DB61730CFF91862E0128CC14D1D6D601D7F5305328414809691A58B46201
          6ABEFFE19A6B6C705D273E67CECAFF75CD356F5FF09632B0B3775EE3C11804E0
          BAAB6E58F4F2DE1D1F283E4D088F2BB4DCE6A3F59636B63B32886993E8CCB3E0
          EE159C4A1EA7B0C3646F4022484640365014353E482FDC7CD1A5ABEF78B9F64F
          4F55F3211880D56B6196195A7BD04BFAA10E74C2D01684F27FE3878FC662F8D7
          7FFB2162B1E8EB3E082200ECB467326D1F16A28A542A895CBE76D93DF76DFEE3
          F7FEDE351F7BCB009C3BA7134404CFF371E30D37A3EA56DF3D3874A4D9E93094
          1EB7C4D417892A8F8FF2D95FCEA075593B628ECDE1C24B50298FC3CB78E86A0B
          291F5A28DA02CA90BA5F9C88AE7EFFC5EF3D30B4F5A95270172C2301EDBE1609
          8D6516A29D02BBD30FC08CC720F727C1EA579BB42001156A6892A8546B2817AB
          6F1658165876BA3BE6A4B0E28C457AD1C22E912B4C9CFF9632F0F2CB2F83D61A
          63636358BB7675DB37BFF54FB7799E0B276A93913011EF4C70785C60EF270F43
          FE85C41917ACA142EA0017E2AC0581744A71C6F528A7E300C5049901FA2BFD37
          BC27F3D5654FE1CE433334FE3A9F2708E0B621842A84880884674451554540FD
          E2BE9D1F06C8A4DB919BAE80A8FAE64145032458948A39198BB661CDEA25E2BA
          EB376268ECC49EB714C08F7EFC13B02C0B9FFE6F9FC29F7EFE7FDC542ECF2EB6
          6C930509B24D07A152D4D6DBCAFD87C7A9F93B2BBF26923C3FDB3A767D486D22
          881CA7C92642BB501C7719AC3314A5B8CE5A634DFB2ACFBE635CEDFBEB849C8F
          04A5A04F4FE9824686E703DC17E2B6BFB906C64113A11F82C4CFB3D1AD848006
          2C53FE92F043B06D63C8AD56C7ABB5DAC2F1893C864686767675B67CE3770D20
          9DEE3BBEFAD5AF60C78E97B075EB36E7CC952B1F397878CF46D3206D1826C5A2
          31187604B629C9D3B5E1F7ADFEF4BAE3E270B8EABC339F92A63C737FF1F9E2DE
          959BA752ABA71788C084D02BA8D9EAD1652E882595D5CF2F0AD65CED29AF6290
          F94B8342ACCDC1D3773E8F17BFDD0FA58096D626948AB3686E6D41B95C46A5E4
          837E45E426024C53A056AD5D5D73F117A1A2E98813FE595F5FFB9E1FFCE0476F
          611A53D3349D1FE7AE9E8E8B2627C7CF11A49984250CC36206219D4C71767400
          425A3F1C6B19988821BE2969362F9E9A9CC4B94D371F4F3EDDFDE1C7B77CF31F
          E67C70F25C16659DD2194A9B6D9889E4DAA7CDB166125CD15AFFD26274BACA58
          724B0F5A16B6E2DECF3C0DD6F51CEF54B24CE25756B35A2BE4A7272184F8D9B2
          15F37F369ECD41C82426A6A6DEBA4A8488F0C10FBFDF68696F4E7B7AE84BE303
          9396340D6D4A09CBB4D9B26D9ACE4DC38946B1E9D26B077BBBFA502CCC2C9BCA
          4D4406878F23D3112B75BA67EC4BDF7DC5DD83B5FBCEEBF96C11B648A236009C
          119C7B70E8B1A971F7EC713475A6C1FA9723508302A77D18310102210C03CC16
          8B181B1DC12BBB76D2DD277E245AE6B5E04FD6FEE9EB6AB3CDAF7C4FF4D1727A
          999FC33D9B1FE0D1AD59E229BAA2A529E528361E9E2954DCDF7553F594099FFC
          C34BD7CC795B2296D83C7E629C6289289C68149615876958686D6BC58D37BD93
          F2B9FCB17D7BF65EDBDAD2FABEB68EAECF9F387E1C7FF007EFFDFEDF7DE54BEF
          DBBBEBC819B1083DD9FAD95CDBDCBEF53CF68F9EBA7AFD0DD78E0C0F3DF6ECF3
          CFD6FB78BFC61186217AFBE6A1EC96B0F4E68534727C9876DDB54BBF31F1DE77
          E08058B962857E7D21CD289466B1A8AFEF73B9BCFBD73385C09C3FBFE33BC966
          FAC203F73D3C06806FFEF31B70DF5FFFF4776BC27F74BBC4E13D33976726D78A
          723ED0D5728E52F1340B2969F192D5B8EAAA2B70D75D3FE2871E7A78C119CB97
          DD7ECDD5D74D148A3328956642D7759F9FD33317D5D9DA4479B63A78E24BD536
          2C2CD3DCCCBC43DFFBC91D2F34459BB1EAEC5508825FAF9A4AACB3E8D58387C5
          FEE3FBF5D1BF7B95013091C0F2DB96772F5FBDF4DC79BD7D17A6A3A90DB665B7
          6A56355F073315AF32F2F4DDCF0C2DBE70D1D1C9ECF8C0C17F3D718BEB5BE6C6
          8B37E0F8F1FDB7922E3CFCAEAFDC7CDF5D7F721F0E3C7150DEF0A16B30E7F21E
          FD8D777D9B7F2700F6AC6DD9701CF91BE6E463D8B0E44FE8912DB773A9584073
          BC99074F9C105FF9EADFF39157FBB9BDAD9D2391E8F9875E3D88AEAE3990862C
          FFF4C1075FCE8E8E434A69841C98E968135A139D70C97D487941E5E8583F8647
          06C1BFC2817D7FFBBF88742987EB2FFB1FDA340DD5213BB1FA43AB1677B5775C
          B568E1E2EB7BBBE7AD6F4DB624A391182C61D7D90A0585003EFB38E7731B30ED
          CFA0EA9531F3CA9D21F619F8D0876EC65DF757A7D4DC4AFBA191FD73DA17B70D
          F76F3BA696AF5C0A28A0C807D1F9F515D27F96756811A7A2368AFFEAFEE626FC
          F1ABAF7CCFE0179FB9BD35D21EB97EF06F7959DB05BC65DB0BFCE8138F8AC383
          DBC3FC54893B5B3BADF32EDCA8DDAA8B89C92CC5E27122D078229958B7F9CE3B
          470CD3D8D8DDDDFD7032998AB5B4B6B9975D70CE8DBB5F3DFC986559C4FACDEB
          3667A54187870E8BB9C505A77CDA78E770C7B245CB6F5ABA60D93B17F52EBAA0
          ABA9D38A200A0D8D10A10A1170C8212928D2AC5943D7EF7408162010D3C4F8A4
          D8FDE8018C4E8EE2C2F76C804803E5EA6C2D5F9879357B7C6CBB3BEB3D75ECC0
          B117EEFDC277B36D5F9F87C2FD1E604891EA31B5480BCC7CBDFA9B3170E0BD03
          5B93A9E681C1BEA9A50FB4FF19BBFCB680431299E86EB9707FED6B33BBFA4A03
          C746FE663C3B2E96AD58C655B78289C9710E3CAFD59EB26F696B6BFDEA82850B
          2E3D7AEC44ACB9B5159AF581E54B16BDF2FC8E57E038919F239F37A746A21DA2
          B6DD51ADE85235D4B0E0D69E2B56CF59FE7BCD4D73AFEDCA7435C5650C1A0C0F
          9EAA70150AA15008856285002114425208EB2CE480435208B50243815B14AF7C
          CF225E410B5883C1A429114D394E4B744DEBC2D635B3D5D98F2CBB7449E9AB47
          BEFDD2BC6ADF63BBA70FFF3B2C6384BA0030A8F5737166014C7FA9FCEB3170EE
          7B12EF688FF7DC61FD7D2E514BB99C4289972988CCB1F850A674E6B94BF8D6EC
          A3B71FFDABBBEEFDF15F9C7FE105BC6CE9197869FB8B882763304CA3964C24FF
          FBB163C76E9E9A9EBEB267CE1CF89EF77FABB5CAA7CE5AB3F6E79A06D9B663D4
          35B98001A0B466BA7979E7B2779F397FD51F2C9DB3FCEC543C0D10504335AC72
          953CAE09172E3C7808D8870F9F420EA01AC6ABA0A151574D34EE4E7DA10E1D9F
          1CABA751AC2386CDD21034383B205FD8B6157B76ED865F0A72B521FF4B92C457
          CDC5164481850AB46EBF3A8D4357677F3503E593910F5EF08E77251EFEE06616
          578DA1794152C4162FBAB3B4ABE5AFA3E74C64678F78B8F8924D7F256C169B37
          6FFE5368C8F97DF3F8C9679EE6543A191524BE11047E689826DB96A9A726C75F
          7CF5F0ABB8EEBA1B4EFD8FF77F7E547CF78BDDBA1B3DECBE2DBF30A9331F5AB5
          F4DAF7F675F5751A8644110535A207B9A22B22604F36580666264DFA64CFFF54
          35C3E0463FB07ED5AF8DD601AD8FD349704DC362D390E244E1189E7B720BF6FE
          A85FD79A4A3ABEDC629994CDB133225F0926D455E1F1E0FD66BB1C51792D0441
          F73DD786131B277F3903CFBF706DFEC66B3F94FEF6FFB99387C75F164E541C34
          A4BD7EDE39C9CA0D375C8D3573AF402291C0C183076EFEE77FFEF60F078F0F38
          6BD7AED54DADAD349A1D8165183436318E443C89E6A6E6634D2D998B3BDA3B47
          1289049819B52E2D9DAC50A5C5959E5493F317ABCF5F7E6B67AA331E20C0B49A
          09AB615530693AD9682310A1F17CA718045D07884F8A4B5ECFB8D3C719806205
          06C39226A42930941FC2D6A7B761DFE623085FB211ABA5584418DE35E3840501
          A326140C3654410FEBA27EB7D96C6C354D29C572A9821185F14F177E3103D3A9
          8C1E199D605F78644653C8B45ABB6CDBAEA822503C6ED13086B9345BBA766666
          E68E4D9B366D7E463E73FDFE43FB33EDF92E3E7BDD3A1C3DDACF82C1442C20F0
          DCD66D3B463EF887EFA7DEDE5E3E362BE552B3A67EBCF7950BDAF3BD3F8A2EEA
          EA3954618C740D2A6B9E27E2ED8661D98215084A6B0A42556FBA82C10D25CE49
          80985E334F7DDAB8A6D340640DC51AA6654268C260EE04B6BDB003077E7C0CFE
          0E0B09AF0531C7864C33496D020F7672EDC61112F3B4819A086546CE218127C8
          C2DB44861E51252DD863DDFED52426FEB8F4E600320BD3755DA1C390053458EB
          E3A10A31DC5FC2B1F6E3B06D1B77DF7D7761C58A1591E5CB971EDD74D9A6EF6F
          DFFED22776EFDA89FC4C8E1C3B82881381EB054826DB7E76E9A5F331959BC5DE
          C1C3A22BA1D4E15AFC1DDDF3177D7FDEFC85116211E40ECD1A232FBB32D01EDB
          A912372DB029BD0888F61122CD021240080D156884611D2A505D37733A587C1A
          2B55C3DB99A609A10586260670686C3F76FFE028663603F1A015E9A809990204
          11240C181181949521F10473E59DC390313638242552D209F3EA7E77A47643A4
          CF7A54D7589005DDF4A118F2FF52F97900ABE542250CC32449C95A83224EA43B
          998C63D1C2F9B4E19CB55CAD7A60E617A62627FF66FBECECFF5AB76EFD4FDB5A
          5B73B178BC350C02B61209846120A411CDC593ED3B9E7AFC27D870F5FBC4E6EF
          FCB9BAFC5D9FFD506F5FFADB7D0B96B120A53CB766C65216DB3162DF33A83AEB
          62704B19871F2F431B1564FA1CB42FB6E12C67247A2D5851010D46A01494AFC0
          A1068B8679531D38403780230C4F0EE2C0B1FD187C650CBC238A76351F1A4558
          4D04620129240C599FF5132460C52452E526F21F2943BD738641901C4219CDD2
          24897BDC83FE2667B9BD1D5588DA544DBF2903C7C6730FCF9F1F7CC08E444993
          40B95C5DFFC94F7E34BA74E992EA91A387F1C8CF1E47341A45774FF7976BB5DA
          BABBEFBEFBC6E6E6662F9D4AF34C3EC7D234512E15A877CEDC07078E1F1A3CEB
          9277CA579EF8A17AE71FFDF5479A5BDAFF69D1B233355871AD5C9220B0569A54
          A8A015C3B009894C045694919BACA2709831FAF234FCB08248B342DBF2249A56
          5A482C3711ED326148828286EF2BA840C1B00C90260C4D0CE2E0F103C8EE9B42
          F88C83E20E075451485E23E0341B608F6018124208185242CABAFACB342CCC04
          E3F00E01C64E8768439551969243562229636617DD2F04ADCB4F17460CD32620
          E49F0B225FF8CBBF3C77EFDE033F191DE6B6FEFE7D4CA2A47B7B5B3EE27AFE77
          DA3B3A098A9811229148C030EC4ECFABDEBD7FFFFEF332998C56AA6E54C54291
          D6AFBFE2C34E7BEF1DBB9FBB47AD3CFFA60F3477CEFBCE92E5AB95691A542997
          44E0D538F47D0A020FBEEF23F07D848107A542786E0DF9DC244CD340A55C42AD
          5641ADECC2AFFAD061082B09342D88A37D650C89352632CBA2B05216C6B36338
          347010D9FDD3D0CF2450D8EE232C33ACA4042942E78634FC194675C883159590
          5467A1100276C446B95CC2E8E83004048403D06D455046330720003E19C25243
          EA1BABCE5AF589E361BFF0A63D9DFD7CE9F50C7C65E74B3B664B334F7477AD7A
          CFE0608CCB95B21C199EF8FC65575DFC926D45F64C6667409250ABCD62C3FA0D
          639EE7BD97486C3EDCDF7F56269DE2E9DC14A9508C6B8EBDB877CBFD6AEE9917
          BFBDB973DE7796AF5CAB6CCBA65AAD26A430386034C24263F2DC30EAE055CA28
          166750AD9411043E541040B382900C2B465021C1AFFA187C711C479E0A002344
          B23902E38A328ADDE3A0275A90DF66C32B78B09304A7C944DD9312C25946ACD5
          863FAA609A461D282160DB163CAF866C360BD168E0F29400EDB1A13755490482
          85250C694A2DBAE8FDC9C9A6BFAFBAEE5098654263A2F9B46E6F457B6EE9AB8A
          0BF9F68E1EE158695DAD51DF0BCF6DBFA756997DFBDCBEF6F8B2A50BB177F73E
          589689E9E9DA71CB6C7D4F77E782AD8117905F53B0EDD40BAF1EDA7DF0AC4B6E
          BD70FEA2553F587EE6593A1E8F23548120012621484803D290908689200C3093
          9F46766410D9EC308A851928A5A075BD70D15A43850A61A01086219818864388
          6404CC28A13CE6223B390AE35013C6EFF7C01A88B598B02C0B920C1886012B62
          421519919405D3B2601826A46120128920F0030C0D0D814903BE041440575680
          F36A10A184E918905210346BB229FAC8F0831FEB4876C29E6F50D32DCEEBA735
          A3F1A858B172FDCEA1D17D5F5CB2A44325522D14B19BD4D86869C1430F3D7DF7
          C8E0F897F7ECD91B715D1F5B9E7F0ED56A15D56AF570A158BBB1BB77D38733CD
          F33FBC78D9F99F79F7473ED82B2D7BF3E265ABED74BA897DDF9744820DC320CB
          B641C240B13083E1C1E318387604E3D951542A6568AD0106B4D2D05AD5810C15
          B4AEBFD64A43A9102AD05081421868688361750A8882091193B02216A4306098
          264CD3846118306D13F024A410B0E306A490883A0E5CD7C5C0E009846108E919
          30E710E4FB4AA08D35988E01CB36EA1A6F06B1069110DCD49179EF5AB52E51DE
          5AD345DB7F432D3C30A0A2F126CC9FB7FAEB42AAA695672CFCFCBE7D2C3399A6
          C9F68EA61FF5F49CF9C35C7E328CD8BBF1D24B2FE2C28D6D2002C62686A6CFD9
          F847FFB2F19A7385254267D7C1B11756AE3DA7BDA3B32BF43CD7B0ED08FB9E47
          F999198C8F8E60623C8B4AB904625517AD533DCBD3ACA0B482D2FA14688A3594
          6A80C90AAC194A870883BA7362A901474397240CC380D188AA52BE1665A594A0
          5040BB0CA7C506950C94CA050C0D0D42D5003362802EAD40AFAF42D812266C40
          0830695014105A30130B56ACD9E2AEEFEDFEE1A52D9D89FBE34947BC41E25B7F
          80424DA9FEFD87BE7AD54517C75A5B5AE2176E3CE79FF2B9995746C7A6601806
          3403B61D39D58495D240DE3D201FFBF283EA929BDEF3EDC52BCE5AB578C9D2D0
          F33CE9FB351E1BCD52363B8C99991C7CD7056B0DAD195A2B406B681D4285AA7E
          AAB0719E649E6EA81800A51402D74318FA0018820538128222802A13AC880143
          1AF5C87A5A94955282484057052229134347C730319105F912D18580BA2C0FD1
          1DC2640B521A00339464482DE03FC3088F318928D8385F303A35B775375D5559
          CDF7EBD9808D37D79A6810515E08F199E696382F98DF83C24C418461A8DF4C26
          FB575FFCBADCFEE2A43A77E3159FEAEA58FA9EAECE25E1C8C098CC6687289F9F
          841FB8D0AC605A36C0540F100C70836DC404290518025A8B531F8CD61AA11FC0
          F76BF07D17A1EF359E4D4008D4E79023001980AE4A581101C338099A8094060C
          21408260D936B8A2912D0D63F4F824EC94847149157A7D19866DC044146400D0
          0C160CA908DEF708ED851EF42DEE453157A2A3DF3F22FC3F28727772EEFB7030
          F58384705EF8A52AFD6AADC66BD7ADC259679D412F6C79E5E7544DCED565E1DF
          4FFA0B9FFFB4BAE1BD575CC576EDCB536247B8F7F927457EA240A21CB2C31132
          020930A058430B202486172AB85E08D70DE08721486B98924150087D1FA1F211
          860174506F4D11A3A1D8271018CC541F731AFA9A1AC3B44D1866234531EA201A
          D2806D5B98AD9430B473084E8F44FC0C0975490EB2876192032944BD3C6CCCD5
          888880F76346D7EC1CC47A1C6CDBB90D4D2D19EECA748BC25E2B6CBBB42DBAF3
          8E3D6BD3EFC8BCF0737322BFECF8DF2F7F199F39FBB3B8E92BD750576B97908E
          54F9D1623AD6E1FC55DFEA799F4CB7A7E071157EE091EFFB5CADBA54CE55501C
          2EA378A28CF2111795C12AAA931E023744088D9018BE66545D05CF679014B0A4
          09C32008897AD520455D6E42383543478201CF84B16C16B8A608F12F7DB0A405
          610818424208826559109230313986EC89490847217E9D0F9C51059902B6B0C0
          C4D00C50C34DC062A821C0FA7E122D1DCDD8B37B0F9A9B9B914A25519A29F3F2
          F3976A3A37148FFDDF173E69FF34F8E6AFBD52E91F5FFA3AB2D3595CF0FB9789
          D6B636EDD742250275E59ACB56FDC39C79DD4B040BEDFA1E6CED084521FBA64F
          8954804C3A40E7621F3E7BA8FA5594F355144FCCA270B08CD93D55948E95E1CF
          04484604749C11B086AF42301B6092D02028CD900D651F097E4D83C980764248
          2541DA80193541000C692012B150A955307C6404A55C19C995027AD30CD04E88
          680764A2912AD5D7A3902070C8F5EB3E82231C2453499C77DE79C8E572B8E9A6
          9BF8C73FFC31F2E3333427D346A070D67B3C9DF8B500BC6FE22E1CD8750815BF
          222EFFFD737587D7654EC5C6FF6EC192F99F4927330883300C3890960409921C
          6A418208819690CA40E01B30B409836D38C918326B53A8ACADA0F2F632CAD92A
          F2BBCB28EEA8A0706016980E619286B03DB014002C68980835814940031027B3
          70CD081D0FE4110C366098064CA30E6276BCC1BA6888C4CD35D0BA0AA28E0D53
          5BD0558D46D30C4475F3D501833D0D806064236083D1DDD905D7F5D0DADA8A7D
          FBF69166A5955662365719C5208F1B7F5F4EFF4A00737C1C5F7FF40EA01CCABE
          E63E3555995A66CC17DFDDD077CE06C770D8F73D2DA430A4166CC0E080420AC9
          40A00D1808115000434804DA80C5367CE563D62D0101214A71C47A1248F6C6E1
          5E5DC36CB68AC2CBB3C86D29A1B8BF8230E701110F56D442D4B0A0B444C80486
          51D78F31A01C1FB26CC1366D3891084AB3250C0F8EA29CAF22B98AC09B6660CD
          25D888A3DE5ED4D0419D7568B05ABB1A3A0020015165983513D222BCB0752B2E
          DB7419AAD52A1F3D7A144D2D2D28160BBCEB9B835BC008744EDBBF10C08F7EE5
          FDF8A73FF92E5EDCF7128C5008279D502D76EBB57317CDF95E6FF7BC26521478
          CA334C6949A125872224A210524B04F52611420A20B4844536420A500C6750D1
          B31042A025D2060182AF0244BD185C5543B4B38AC44D51B45E9D42E95815B9A7
          0BC83D5B42F94405C2A822928AC0B66DB00AA158429340606948D7841002C3A3
          C3181B98868C2924DF5185B1CE45241A8164A3D1F26F746F9486250D28574357
          34B4AABB084D041D320C2D61982696F4F5C2F77DECDBB78FDEF18EB7EBF1F109
          BAF3CEBB46F293337B8828A295D66F0AE027BFF551548A456CFDE10B1895C745
          B34CE83177FA932BD764BEBEA069A1F0751086084D5BD82C59728890044B482D
          110A09098990240C6DC0221BB3BA8442580008E8B4BB000884DA87AF7D186422
          226D44940D1108B86517A40592F363882D8EA0ED5D69E4B61431F1401EA53D25
          98A685585B02A60458D4E0DB21B84AE83F7C0CBEAE21B58A212E9F41648E0193
          E260064E36FA89A85EBC3210543474593596B3113433EA2507C1AFF958B26029
          2EDD7409A6A6A6914824D8753D2622AA562B93201488C863E6E04D01AC2917C4
          8489855951192FE99AE37DF1AA7557FE694F748EF675A025494340B02245A405
          4848181C228484600905098B2D7814602A1887AB6B68B73A60C182AF3DF83A80
          254C58CA461965CCF845148219D4540D2C19A6B0100601744DC3B22DB45FDB84
          A64D09E4779430F6A3291476E5116B4AC0B16310110D3D2E104A17A97795619F
          EDC371A22025A1A15E531B31430882568CB0AC20C00DF557634E4508E8208436
          34EC2603A11B62E7AE5D9042F2FCF9F3D1DBDB4B77DE7927B9AE3B004681C115
          00DECF01F860E13E3C70EFCFB0E1EC75622838A16BBAF6B7179E77F1E7E644E6
          041EFB52901004621020D1289BA0A0212184826409908D922A221F4E212A6368
          373A117000A5039864C2241F85B0805C3889425080A73D3001B6B4500F3E046E
          308614C12F33244B349F97426A7D0CD34FCE207B470EE14400CD0CD55640EAE3
          3E124B0D4895A8572FA41A2AAE7A7A222521AC69043321D8AF2B70891B9A3002
          3CCF83E5987CEEFA73A8D25AE3CABF5530B97F12975F71399D7DF6D9FA89279E
          A0FEFEFEAAD6FA30119598B908A0F63A00BFBDF39B88C6A358B3F40C2105E91A
          FB9F3EFF828D9FEB8DF40501FB52901400333388C1108D28261B73B10405832C
          E4C20954B8826E732E4C32E0690F269BF0E0211FE630194C60362C20D0218C46
          351952884007304F09DD08E1491D0CA10E6A3580608196AB3288AF8B62E46B93
          28D40224969AB0EC28A0D0A8ADEB4142EBFA2F0B09043321826258C78BA82EC2
          94F520520D6B9833B787D72E3F9B72618E0FB90738556D1773DB7A399FCFABE7
          9F7F1EDBB66D133333337BB4D6134454005004E0BEBE99901B426A244935B7AA
          2747CB97AEDBB4FE6BF3230B95622505A410CCCC003171230DAB4F270A10A490
          D0AC30A6C6402430CF9A5F9F11D31A10C054308989601CB3E12C144298C28680
          44A0C3D396D600AAA1D066503DC800AFE9010DAAAFF2288588A61CB47F2A0D1A
          0A2148405735449C00D5F0699AEBE51E03FE4480703604490188BAC90A0804BE
          0FB2C0E76D380F733AE7D0C1C97D7A686C44044714ED3BB05F25D724A53969CA
          43870E61787878707A7AFA15229A64E60900B3005EEF030902E3D9715E31F7CC
          786E61EE5F9666969364014D2CEA4903D3499360AA77453534040C84A430C593
          488804123205A54378F091E7298C0559CCAA5930693832824007085EE3D76900
          BE5E3AA91A737101000304661FC2B0110A8189EC38660A05188E800EEAA9888C
          CB3A799921A480F635DCAC07ED328421EA81820804814AA582F6796D7CD1868B
          29209F5F1C7D41CD1C2BCAF28E5A58D9E73ECF1E8E6DD9FA42B2ABAB2B552C16
          F3954AE5308013CC7C08401E800BE0F5CD844BD75E2006A786F5CB032F7DEC8A
          0BAF9C9FD64DA14B3529214E26EC8D993134A617354CB610908F699E44B36881
          8318421DA08C1246F5086675115A68387010E80021C25302233AF9471BFE881A
          AF4E8D9D5A8B2150D51538B6836AB582A1914154AA551824A115832C022B86F6
          18C222B0202857A136E4834306248135431884D0D7A8D62ABCE182F558B3722D
          1D9E39C4FDD957B9B2D395A59DD5F1CADEDABDDE5070044000C26C369B9D05E0
          1251C0CCD300C600940184AF9B54FAC8B73E804B32576A6418FF6ADEFE8EAA55
          D6054C51021922260E296C6C3851CF033431041BF0C8C3344FA115ED7010858B
          2AC691C5144F4293822D2308758810C19B2AB318040900FC7AF6E9867F0518BE
          76D19B5C885C3E8FDD2776C20B3D18529E9C730781212302AAA220132682BC82
          3BE48119F5D28C19644854672B70A251BEE5BDEFA6744712DB46B7E8C9814951
          7CB6429543D56DE55DEE03AAAA6740506094C1A8505DC95E61E632801C80525D
          D1FD0665C247FFF903E0618966BF2536FF3373FAA922BBFC71A517AD9E4F7DF1
          7994E40C0C32A0B8AE489124E0B187294CA085DA11650779E490C5305CF6400C
          04BA1E18940E11EA10810EA14E1FE3FA58A80384A7BE577FAD35A31CCEC21012
          4BA2ABB16B70279E3EF1707D370F92D027770F39E93B7D8D3017422605CA475C
          0862B0200829C05AA35C2E63F98AE57CC51557D0981AE59DA3AFE8E2CBB332F7
          6CB1523BE6DF573DE86E6DB8E02A18650055009506DBCA8DFB2280DA9B2A1324
          49C11B433DEA1E4BF74EF4C48B8F97B87F6F3F46CF98A0EC1F8EA2B3A9139DD4
          8D66342382180278C823872E74C3E608466904633C0206C124B3A12638C9103A
          6590AF9965232088D325E674CA648B6A06DDB1B9586A9E85EFEFF9365E9ED882
          B899AC37101A3D44666E94630C1915F04635AAA31E84D160B610A8556A20417C
          F34D37D3A2958B68C7E48B7A706880723F2BCAC22BA5A3DE4078A7970D8EA1DE
          259B6D80573B0DB89360561B7EEFCDA51DF9EA0C9CA401A3CB08CAFBAA74F565
          5791A6908FEC3E86F87351942F2F61580EA223D68E2E740310E8D05D70288663
          E8C7248F43C08040E38D112045A3667D5DA07A43DB8CE975A3128482CAE3CCF4
          3A64DC0EFCDDD63F47B63284949D81520A640246A4B12F8D668415555F785353
          F0C63C6806A465803550CC17D1DBD7CBEF7AE7BBA812AFF063A33FD393BB7272
          FCBE69CCEEAF3C169C500F9CF2678CD93761DDE9C0F9BF549D75CBAADB44C1C9
          E98191819EF64C87F1F8934FE817B76E476B530BC6774FA0F59A4518D83188FB
          7EF2532CB8A60FCBCF598E79895E4411870B0FB6764EF946267D4A3D254900C2
          F8C57BD2E8D7F8272050D43338B7E972D4723EFE74C7C711B28F542483300820
          E2047F3844694B156A46C3EA3691BAC481268DD9833530000981C00DE0F92E2E
          BFF24ABEF0E20B685F7997DEDFBF1F930FE7E5F8A35393B563FE5D5CC0AE8603
          A8365212B701DE6CE35A6B9CEEC980F14B016413BACDED74D69DB9E18E2935E9
          948ECF869148C4181DC9A22B2E200CA0FFA163881C8A6370600C7B6E3F0867A9
          8DDE737BB060651FDA3B3A911149587060C282897A171A04B060F82200858DDC
          8ED1909DD5733612F5F85BD3155C90B9120323C3F89B9D9F852D6D3814850A03
          184989E25315E87B4D2CE93813D1A883C1270631B57D1CCD9F8E81C0300C0385
          C902DAFADAF8C31FFA301273E3F4D4E4A37A787F568CFEFB38667695B6FBC7F4
          BDD098ACB7B5516C00587B03EB4E02E735B2A95FAD509DDFD1A75BEC3635288E
          C716B52FE4C9E5D37456E92C7E69EB2BD47E4E1BB464285FC3CC3898DB33178E
          74509DAA62E2DF26F0987A1A6EC645B4CF41CBA226B4F7B5A2A9BD194DA926A4
          A229584104318ED627A4A446C4B2619189C00DE1852EB4D670D9C7C6F435D87D
          620FBEB8EB73485849082668A5201312A5AD1538F7A6B16CF5520C8C0E617474
          04F396F7C239E660ECC121D8975998DC39C51B6FBC10D75F79230DD0117E64F8
          1935F6B329397CF758B972D8BD8F67F07C834D3E18A50650953700576B00E7FD
          3A8BB34F01185B689935E4FD23FDAFBE946E4F2EB8E0C2F3B4484B2937119CF9
          061030ACB80573CA801FF89052A2ADB70DCBD62C836345E1573C0C0D0D61F8C1
          211C2E0FA222F6C38F7AA034B0E0C67988F74491E014168E2F875D8942264DF0
          62859895441A0E9624CEC40B03CFE38BBBFF3FA4EC4C7D168E35A425E04D0710
          F73BE898D3899F3CF853A820444B4B0B068E9FC0B225CBE0F42720AEF4F863FF
          ED6358B86C11BD507A461FD97F8406BE9F9513CFE60E8703FA2E0438D178ABB3
          0DC0DC3701EFA4AFF37FDD95EDA700DC7264AB0C59057ECEDD3230EFC4ADAD56
          95CF5DBD9EE7632EEDCDEF41259C4562410CF97DB3E8EAEE463C15831002D55A
          158669C0481898BB742E3AE675C0ADB82817CB989D9DC5D4400EB99D59C4163B
          483ED30C396362E7E19751CA5720D6120A176511170944288A174F3C8F84957C
          2D4364024501F7BE006DD48113A327B062D9720C0D0DE1BAEBAE8394020F3CF0
          2092B124BFBDEF5DD4BEB2897F3A7CB71A7E7C4C1EFFE1882A1FAC3CA6C7F168
          0328DDC8E12A6F60DE1B5917FC263B7B9C0270F8E048A07221AA35F7E9452B16
          85257346CEEA223AA88BCFCF6CA4217700D6DB6CBCD2B413AF3EBE1FBDDE7C2C
          EE5B8296B616981189D94A195ED543A55281EBBA288765183103B54819D13322
          A0098196D9365C76E326E4EFCA61D41AC1F40B0558DD0E724BC6512BB9F5B95E
          92A71A9F6410829900767F1C25AF844B2FB904B3A5591C3D7A14A9540A954A85
          DB3BDB511A2DD1C1CA7EDE355CE143FFFBA81C7B7C6ADC1F0EEFE522F681A0C1
          A835C03B09D6EC1B58E73680FB8DC0FB3975D64395FBC860C15B46B6BCBC69C9
          E56B892970D9336D8E7092D288088B2A28615F713FB63DF522A65E9E4647D88D
          852D0B9172D28020842A40C52DA3EAD6502BB9D8EFEE46CF9FB4A13AE0E2EAA9
          9BB17FEF7E3CFDD4D3B8EC8A4DD8B77D1F12172751BC320B55D1189D1AA9A72A
          A83738CD8844F5B007EB8E241414AEBAEA2A8C8D8D61727212AB56ADC2430F3D
          545F2AEB09966F5334393685FCB3C51D7A1C0F8131DDF077A50660B506682793
          62F7B4407112BCDF7EA95722EDE09D876E10A3AF66756BD07E756A51EA9EB7F5
          BDC38920A672FE94ACAA0A82B2E268E0504F570FA2B0308251ECEADF8343BB5F
          4561A000E40876C581E5DB70E0A03C5103BFAD86CE4BDA512814B074CF4AF4B8
          7DF8C17DDF83E34421AA02898B13285D93055781B1E931F8810F4112508CC0F1
          31F5E80CDA1FEEC5B43B8D4C2A8D4B2FBD144A290C0C0C60FFFEFDDCDDDD8D5A
          B9C647665F2D552AB5C779123B1AA0D41A9543E5B47CEE747F77BAC9FED6FBC9
          9C32E172D18559B3F41F5E723D75DD79E196B7FDF9959F9FF8F8F89FBDFBDC5B
          9B5BCC76555515B1E3F67DB4BCEF2C1ECB1C80172B5173771AAB17ACC1258B2F
          400D1EC682090C4D0C61727A1C53133904C50A9A9664502C16C186C6AECEED90
          C74C5C73D13578F2E9A7104DC5515C3C5597B1814012F05D0FA1AE4B3CE6A5FB
          F0EEB7BF17DB877622BB65142223502C16B179F366DC7AEBAD58B3660D8808F7
          DC738F708782FB59616FC3D79DCCE7664F4B512AA725C5DE69C1E23FB499CCEB
          32DCDB57FC088F9DF56C6C60EBE7E603D877EFD30F7F69FCEFC63F78ED4DD72E
          EDB5FA38AA32FAF7AEFB3D0A42D0D0F0001F3B7E88F6EF3D80492B0B6A56E8EA
          E9C092CE2558DFB3010C860F0F857209D5A0829A5F45ADA582D9EE3CD489242E
          5D71318612C751EE64845E12DA54889283BC98C1BCA63E9CD5B916F3330B3121
          463073EE242EF22FC2BA8BD7239D4C219D4EA3542AC1F77D8EC562A25AAD7A20
          8C3700A934CCB6FC26F9DDE95136F88F82F766AB352580742C166BAF7AB51E0E
          751380F6B97FD471E5C59FBAE092E8D1E6C8EAE98BF8A27336724F6F37C56375
          973B343C45FB87F6E0A5C92D38E41D80E80BD1DB390F69D984A668131256028E
          19854D160CCB0435F6BE3420C15AD41725705D955FCF093DF4E70FE185C1E730
          4AC3A83D1EE2EAF1B723DA1CC1934F3C89DB6EBB0D0F3EF820DF76DB6DBC6DDB
          36DABC79F3F0E4E4E45789A8DC68B5CF9E162C2ABF00BCDFC9063C6F04D00490
          009001D00A42AB10A2592BED98DD62C9EACF2FDF94EE4CAF682E77D03C770996
          A4CFD06B179F85E54B1793B41B49D674155FB8FDAFE8C839BBD0D6DA8208D970
          8C28A2660C312B8EA81145CC88216AC6113122885A3178CA45BE96C38C9BC374
          6D1A43A5018CCD665176CBB052268CC311E01B11B053D7AFBCFBDDEF66D775A9
          A5A5457DE52B5F91D96CF6A7939393771191CFCCA5D34CB8FC86AAE2B78AB4BF
          B609373E95A0F14F4B60185A69268332C1A83EF4D2C7F70FB75C905ED67B4BFE
          9CA905238B5FF29F36FF7D8785AE67E7E2ECA673F9DC25E7F2DA5567A2937B70
          60680712BD7148DF40C470C8123624192C491001A796C768AD11281F6E5043C5
          AF7035A840B024C7745859213CE5A1B27F16516D6062641C6BD7AE455F5F1F4D
          4F4FEB3BEEB843789E57CDE5722F371A9EA5D34CF8CD9817FEAE776F7B337191
          0DC00110079004906A5C1364509243B60038D11E676EF7D5ED2B326727977246
          75B95557466793E87117A0325843F27A89CE659D88EA0847ED3847CD181C1945
          CC721035627546520C362228A08049771C53D5294C562630ED4E61BC9815A307
          C730FCE331149FACE0928D9B10AA40B734B760E9D2A5BC7DFB76512C16A9BFBF
          FFC142A1701F114D3073E10DCCAB9D66B2BF73F07E118004C0021001106D0079
          F28C9141312128AA7C6D354C3E1EEF8875349D95EE892C367B38A13AECA89D89
          A7E33127E1D876C446C48C2062398818362C198163451091114898704C0755BF
          8C52AD84923F0B97AB181F9FC0F1E74F60EAD9FC947F5C4900896432699E7DF6
          D99052A25CAECB818F1F3FFEDCD4D4D44F009C68748B8BA725C9BF9334E5B701
          F0248846838D91D3C08C36D8E980E090490E1459ACB468B4464F021F838DB8D1
          2C53324631E188A87044940CD890B034B109B0D45A0B686D6826214230913088
          4141519582137C083E1740B000C4C148452291D6CECECE16AD75399BCDBE1204
          C17600D30DC6154FCBFBDCDF65A4FD6D003C7D6F2DB3715A6F0034D2786D01B0
          490A0B80C9AC253464E377E9B453BCAEEDFCFA0F4B9D76AF4F4DC8110C70FD9E
          8874E359F9B4F424388D69A7D7B6C16FD210782B013C1D48791A9827013D79B5
          DEF03DB3D1DB946018101044249899A83E53D4D05B686206888466D638B52053
          80A1A01A40EA86092A004A88BA8A4929159C06E0C9207132DA86FF19E0FD2600
          BE6E5971E3344EBBBED929DF708AD39828DEC0403EEDAA4F9B16D68D3175DA19
          BEC9199CEAF39D64EF7FD2F1FF0600481E8CD8A738900E0000000049454E44AE
          426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000036
          5D4944415478DAECBC77745CC791FFFBADEE9BE64E1EE40C12004112CC392890
          CA59A2A215AC952D27C949B6E5207B655B4E92BC5ECB59C1D6AE64E568452B51
          9418C49C0308022491E3603039DCB9F776FFFE50B092FDF3DADE77DE3B4F7D4E
          1D6006E841E33355D5DD355545524A7C34FEF1C13E42F011C08F007E04F02380
          1F8D8F007E04F023801F01FC687C04F023801F01FCFFD9A07FF605BEF6B5AFFD
          CB16A31A9A71F38F7EA279AA2A9D1BAEB936D7D4D484356BD6A0ADAD0D5BD7BC
          5E3A6CE51ABD7EDFE25C36B7C82A5AAD45D76E658C73C649723052B85210C041
          8FAE8F95464ACA3CA6696AAADA535A5A92D33463A0ACBCAAA1ACA47479757DE3
          24C363823106292512F138FA7ABB5F48E7AD3B37ACDFF0ACA690F8EA97AFC36F
          FFEB7E842B6A2085C09DBFBD49FBFA355FE02956927F7BBD3FFBD6E7FEDF0170
          D6E205BCFB680FA5A3E30E00082170CBCD3F0ADCF7E863756BD6AEAB8B46A3AD
          0AE70B2530CB91A29A11F32A9C295C5138E71C4404CE18880800398094204624
          25A9AA2AA64E9DC6E6CE59C4EA1BEA99ED4AE47205D8AE406C220E01C0340C84
          434114F2597BFDA6AD7B5A1B2A7E72F8E0DE5D03BDFD9992D2CAECC11DDB44CB
          89AB2CBC2F70F51FDFFCCCFFF3003FF9B105CA0B4FDF49653555522F3F15EBB7
          EE83E1C001803953A67813C269E9EAE95DC2489E198BC78F2D169D2011413574
          E8BA0E43D7A1280A14AE485551C015851823C91927220281E042424242E58A9C
          DA3C9DEA1A26E3505717F6ECDD8F62D18255C822998BA1345C897C2E0F010E9F
          3F88D973E6A279D2246CDDB9436E7DFDA5447C7C647FA168F5793DA65DDF507F
          78CEEC39CF758D15F70490A01442F257DFBBEEEF03984EC5E131BDF4CA1BDBF8
          E8C8086D7EFD5531657A9BEB0B047168EFAEBF39777679965DF9CD3BA4949203
          10D75F7FBD78FFEF5C7CE565AD4F3CF6A7E3B3B9CC2945C7590662554CE1F0FA
          BCC2F47A5DD33485A669A4EB3AF7A83AE98641BAAE43535570CEC11801441042
          0252C215028EEDC0EB0D1324F0DC8BAFA0FB7027AAABCB656545A92CAD2C1576
          D11613C9140AB9BC94AE0BAB5820C31360C1D25A7EECD2A5F4DABA7568DFBD01
          6ED1422E93433A9DC2C2F9F3DE28ABA83C2D9FCB6557AE381EA79C7092FC9B00
          63D90C385C9065B160A45C8CD912EB36774164D318EADDCB03A1102AA3AF4270
          0BF96C1CC271C148E0978F1DA4F5DB0EC9EBAFBFDE7DFF6BFEEC8757AF78E0AE
          AF6BAEDB3D1198FA6DFF1B5B0E9EAFAADA0945DB9ECE150ED3E797217FA0E8F5
          FBA0EB3AF77ABD3CE8F3CB90DFCF028120BCA6079AA681330E466F9AAD2409BC
          F5B69094188DC6D037348E443C86C79F7B117E9F898B569D81D29210AC82855C
          3E8742A100C90896654BE10AC4E23174751E422852E286C3D5BCBA7E326DDBBA
          5124C7FB9D6DEB36B90343FD6CCAD496F459679C76E186ED5D6B17CC6C506EFC
          E6B71DE5C3C08D4A89A32319E88A02DB115014554829035DD1C2F1A29899131F
          1F79D1B1ED6D76A18057BB75003A80C03BF3171FDF8CEBAFBF1E0070CAD299B5
          A75E7877FAFB374E5FDED6527BC9ED77FCFAB4F60313DC5F3E33AFEC3BAC7B7D
          BE328FE145201C2C06027EE90F0498D7F4AA217F8022A1107C1E93B8A2424821
          6DDB46C12A209DC9926517E13A2E5CC78184940C4400495738944E17914C26F1
          E013CF60E19245B8E2BCD36428E003E30A182424BD099A730EC7B12581B3E75E
          7949F42A0ABBECBC55CEF6DD078414AE5651554783470E2AA1D2B05252592E54
          9599D1B189CAE9B3E7A1BF670F01C0870274012CA9F4513C9F83022185E13BFD
          40FFF0CF7AF7AC6E607BEFF1FA47BB3E1BCBD7FEB650BFB8F384163F178A4DB9
          5C8C89A22355C67433E4530F6F3FE077268E5EF8DAFD8F345F7FE944BE9C7A23
          F1898BFCAB5FDB82AA692B513AB90DBA4A288944EC4028007F20C04381200BFB
          83F01A065C292997CDCAD1F1A84C653294CDE5643E9F43C1B250B42CE1D8361C
          5BC0751D12C22509801851D01B4443C364FCFEBF9E426DE3244CAA0A60E79E9D
          64783CF018060C8F075E9F178A64523A0286A190D7EBC5D0C810959496C9EA8A
          0AFDB495213CF2DC6B686C68A0F6AD2A162C5820A4EB206B15C8B28B62F1ECB9
          D834DA253F14605FDC812B048DE41D59691A3CEA985FE939D27E5371CBCFCC39
          B1074559C87251869A54A6FF2739DAE73AAE8720251817E46A2E345541572710
          8E6769DF6801A8E2B8E86413252D67E3A95746DD490DE5987FDC29D234390503
          012A094778381060A6614A2105A592498C0C0F63221147269B453E9BA55C362B
          B3B99CB4F20591CFE5A56559AC68179953740192AE942E9312C2679AB8ECE39F
          541E7BEC71A40A4539DD104E5F770F69864EBA6E40D735A6E91A0CAF97A424B2
          6D179AAA48556172622205AFD78B8D3B77019052E192C2013F1A1B9BB070DE6C
          645249EA1918A0A1A161DABD613502FEC00735F0C535EB5011E2484AC832AFEA
          1D4FDB371FEED8F045B6F91BCE7CBEC3312A181304662B24C2A5244B58069265
          4124A59400A92493498552DB8588E75C2A9FADCB73CF3D8B6A9B56C9BE74392B
          F5FE0C2D3316B0F2964928F11A08FA03C41997B95C4EF6F6F7D1782C2693A924
          F2B92C72D99C482553229FCE20994A51269D11D96C46E39C2393C9D886A167B8
          A2F2582CEA036031CE9563961FC3B3050BFBBA7A5162323A72A843353C060CC3
          84D7E7754CD3744CD3143EBF0F2E31CA3B36B8A27155E1E40A97B2F92C8EF6F7
          93949254AE43E5040946562A614D6E68D0A1F0623A9DCDE72C89CAAA3239A9B1
          FE2F006FFFEF7B40445001A64957393238F1BB819EDD57FAB77DBA3827DCABC8
          80460EA42483489104470583AA80188111E00A40F532D9D3CD8964968A251538
          EB92AFA3AAE904C98C30F1F45134B42C6553169C07EEAB900C2E8DC527646C22
          86E47812E97442E6B339994AA7909C88BB13131328142C35934E23120E3B27AC
          385E735D37B163F78EDF9F7DE6E99D236363230F3CF0A0D936B3EDE79AA6D5D4
          D6D48AF90B97D8FB3ABAD48989D8A085CC7E098439E7614551239C2B21AFE951
          344347C01700D35464721990A20A52B9637A34098BE491239D4C533584FC1145
          4AB09EA387ED9FDFF015B970D9323E67C9B2A15FFDF217DBEE7EE4295A3C6FBA
          F8F60D37FC05A0DFAB434AD09A1D078556B4AE8C2686AE2CDDFFC5E2ECBA5E45
          EA1A0417926B8C4855A4E302AE01A9FA39C00804092E08640245B8D2342574A5
          11C1DA936436D52BD5F436E665A6608A6139E95E7D2CA95322574022362A0BF9
          2C657359994E65646C244AF1545280911A0E87506E18FBD2A9A41E09851B66CE
          9CB16BFAB469B73DF7EC330F0DD70E231C0EE3B24B2E41756D4DEAE891A35FAB
          AAA89C938D8F9752218D8857F9FEED77DC77EF4F7F7273D9D1A347CAA4B0CB92
          99549995D72A49511A62B158395778452E9B2D135256EA1EA3CC170CA2BCAC02
          DD5D47E04A81D34E391BE94C1670ED2C63A46FDFBCC56D3F78B022140A9CB673
          C7AE7BAEBDF263E4D1B5BF00B41D979C624E1EE9186A745CF9ED8AC19F3B4B27
          1F65D2EB214945308341724ED02089244947017919A482370FE802804982BC45
          E62D836063A3480DBF000F4DC0A58CD4348554B5841DDCFE2BD7F5AEE0396D01
          59F9340D8F4E88B1E818E2B1313EB575AA58B060BE0285BD1ACFA46F3DF98413
          8F8C0C0EAABB76EC2CDBB37F5FEFD4D6D6FECBAFB85CF3797D72DDC6F5E0922D
          98188F5DDBD0D07092AE6900204BFC1E5C7CCEE99FFBF393CF3E7DF139270E8D
          B40F0DE94A16AD2D4DD00C0D36314C5A70AB72D1259787ED8215B8F0820B43EB
          366C68995C5D37B7A4B4B4C6606CD2443C5939755A5BE3E6EDBBD8C4F878C8F0
          7A5D4D331CC128CC15FED3E71EFAC38E8F7DF6ABFB5EFFD3BD1A7F1BE08C852B
          95EEA18C88C7F39FCDF7FDF9A2CB27BF2CBD152A774948321983A148E8000C22
          684C26465D322A55B0B7208203E423C4C688BC5220164F938043A5813EE412BD
          24737BC8EB0FF0891477F66C7A42EEDC334A7DA396288B384A4DB90F894431DF
          D050A7AD3C76C5C60573E75CFCCC134FEE4B4D4CC41F7DF8E158D0EFEFABADAE
          4EF97D3EF6FCF37F76C6C6C67CA140F0CB0D0D0DBF9452CE8394A2A3A343EEDA
          B58B5556554945516B72D9387FF4A917566F69CFB23273A2A550C4D4D144A171
          6028ED7BFA4FBF8F9787F3E959CD3C5E151E1956586C7FE3B453567FF6939F78
          A1AEBAEA49076A5B5965CDEC871E7C203ED4DBF533279B9BED141D1F49912342
          48D5D47D5C37B70F1C6ED7DED1C0233B5FA19C630012B8A8F575A7B44E852D08
          8A9791509924152439403A930E813229404FBAF0977B400507927390E2A2A45E
          453A55C0A2398497DFD881A049509007531DE4E38FA1B27495D2367D06CF6E7F
          1D85C41AB499156335F58B3E556A941EF08632418F69767EF5AB5FCD7EE7DF6F
          E46B376F94C7AC5C814C3A4DFE5050BEB171A3686B6B5B118BC56E6E69695962
          9A26868686644747073DFBECB3343C3C02DB2ED249A79C09AE783F7BEE129DB5
          D4F0198627DC1C089AA66AA824B9926F9D56363A11CBAE397470E49EF3AF7AB8
          F3FC4B2EC665F34DF9C2ABEBF29D5D5DF3E62F5C72F6BAF5EB914925B736CD9A
          77D38E91E19735CEEEB172B9C9240157B13D2303BD181E8DE11D0D5C523BC1F2
          898488F60E345C735EEADC92D222932A273298248D31A9005263C43406D75028
          D5ED40320E37108237E087101AA4ED8127ECA3F1A885C6BA025472B1F175D0E1
          11891DED8A4CE70A3878A09DC5F2E1B1C58B9A8F9CBCA2F5F9E6C6E6CFFFEAC9
          8AF57DC33C7EB83B3EB26EEDEBB69412FBF6EE953EC323D7BFBE564AD795037D
          FD914C26F3FD7C3EFF0B555527575757A3582C4AC33030313181F1F1E886BEBE
          3EFD48CFB07FE18C2A2C6F1ED15AAB324B4A4BF4C9E1482064FA3C5EAFDFE30D
          86CD607985AFA6A6CC734C5D857ED9C17D4F89326F6A9B1E68757BFB462A1A26
          37DDE9D8CE94871E7DCCD54DF3BA831B571F2E6F9AD9A7A972473E93BD828881
          EBDA5D25B54D1D8A9551DE01585F65C89366A771C78FACA123FD74596DAD0CBA
          0A13641083C6401A033406C9404A50C3E01189A07090E60C05BB06C1F24A3066
          10A40AC5EBA7743A45D31659686E60E005C06B4851DBE8E3DCBF7C7D413DF363
          A180F8C923AF553DB56EAF77ECC7D75AE4315CFADC977F49CB962D839412BAAE
          A3BCBC1CDDDDDDF0783C67793C9EBB3D1ECF458AA268A6698AD2D2524AA552F0
          FBFDD22E1659E3A4496FAC5DBFE5D1C5D33C277EE2246295E102A078C01446C4
          6CA968125C051149B8962385EBC26F3233A8CB93F3A97845FFD0786755F38A9F
          5795979D76EF830F41107FB47A52EB2DB5AD73E49FEFBF83268686FB43656553
          8570C3E1F2D25B4B1BA626620347E81D8053EB3DA80C330C0C21FF9B3FF2C4B1
          C798ABC255454748624C57418A20A80C1204C50B4A5B2A12DBB268984B181C29
          203AEC05F7D7C01B0AC32C2947A0AA1CE9B42B53C8B2E6695C4C6B93B0EC7299
          B24FBC69CFE1F42B61624A2EDE893B6FFB23C6F972D9D9CBB174E95248292184
          80A669A8AAAA422291F8B8CFE7FBA3DFEFAFD7755D0080D7EB65914844269349
          D2340DAAA6A0BB6F746673851BBAFEE27045695948B5A44A0A7749F31AD253D2
          468A770AB8A75A32458728C6E0140B645B521A4A01113F161403A79C1A2C9D72
          EC030FDE8FB13C1DA8A9ADBD2A675929DD307068EBEB74F9BFFF4CF6ECDF5E26
          89CE1252FC7EC671A7C7C7BB0FFE4503674CF2A2B654225845ECE3971676DDFF
          68A2B1B5CD373F582A9DA224CE340EE200A91C100E79AB34B46F97088C5B683C
          86211D1DC260FB04FABA150C1F49E3E09609ECDD9047F7EA0CF23149926BC2E7
          B56934BAB73F83135E5CF5B15FB23D47AE70969E78224CD37C8F783C1E545757
          231C0E57EEDFBFFF37D5D5D575866108C618B9AE4BE170187EBF9FB2D92C5CC7
          A170B884F6ECDC46274C19AA6D9E54A2E41C40D304CCB22690FF38CA44D34021
          4AA290A3544C2552EB486571901DC578C64FE3C6C75060CD2577FDE11E744FD8
          DD212D7965BA8876A678A0281CD3969E0857480C1EDA3B45125D1E09976E8B34
          4EDBBBF19567FEB2893CBE761C8BA74470C9E524909774EDADBDD7AD7D7C76E0
          F44AFD7CD32C166D57A88AAA821883103A0C55C1D4F34AB0E78E612C2ACFA1F9
          781FAA46867160F328860718B4540EF51C883429F03017410592822E6F993A7D
          D939C77D273077EE9CD40FBFA7D28D373DF881FC3A2925CE3FFF7C009891CBE5
          6601001191949218635055158EE340080122A0BB6F58FAC5619AD9EC97E92291
          AE49E929994CB95C237A56DF262772714A5230A628DACE528D376A54D65C3BEF
          18B28CB9C878E6C88EDE043DF5DCC3F0B078F4CA05F14FA513A92D7BAC300502
          42EABA8B7702A98A3ADD155216899DFA5F3FBEFE7100CE07C25972D88FA6191E
          B6A5B347FCFAFB35F50DD5EA33977C92CFF49A05D7CA42E58A29185398703528
          010FDA37BBE87BA413CBCED7E19DEF050D67B1771F21482EBCB19C5474000A41
          1AD2464D40B3B44BD7562FB8F3D4BBEF4371D5150E66D7D54B8FE90563EFFD78
          A6ABAB0B3E9FEF33E79C73CE9DCDCDCD088542D2300C028086860698A689783C
          0EC638B66CD986A5357BB0607A18457069063C24B58572C713BF4636DC0636F9
          124A24AD68B8B462536D75490B77B2AD0E99349623DABEAF0347DA37E2F4E951
          1CD7928E6EDD2FCFAE282F6C19399CA644A228D95B21D327BA2A2677F7F76FCF
          D876C0E3318B55E515670C8F8EBECEDF0FF050E2566CDBFC3C6EBEE507347DCE
          B5ABEE7BACEFEAC1EE71B174A9977B4B7548A191EBEAC4B817B2E845794B1829
          0430F0CA202AAB01A54C816A39189CF020582A49152E28C8C1354E9A56100EF7
          5446476ED97BFF93A51DCBD49778D4982F4706FB904927419020F6E6925A5B5B
          51595939AD50289CEFF57A25E79C74FDCDA8742814829412524A0C8F4631D4BD
          0727CE21E81E038A2AC813699647376FA56737F5D278F55598DC328DCACA225E
          22B7756874BCEC506F945E7E630FBDBE7A8D6C0BEDA14F1E338EC5F551A9807B
          EF7A8C8DD4CF2CBCF6DCAF37E291A7BBB163633FB66CEC875559F5BB84652F54
          7D01DB0233CACACAE77CE56BD7DDFB0180ABCE3D1E9FB8F6EB58307F61B0BB7B
          CFCF87C7A20D5B360A77F3BA945212325056E3852F5402A7C80166821C1595D3
          2B31183790D8DA8BF24906994129D3632E65B82A4311175CE592FB88912E1D45
          8D799C6220F48D1FBCFAE4A77C47ED737FFE0C0DF4F6A17EEA5CE88D73A067C7
          100C47100E872125E28542E178D775AB196392734E9148043E9F0FAE2BC019E1
          E0A1A310B95E1C37C703A66AD04C45120BD0CE755B87EEDD987BB9F768D7F491
          FE23F260C721AC5FBF011B376EECDAF4C68607AA8DCEBB3E7D8EF5C0928AF115
          D5A5C29BCC08C998A0835B52B98D8F1E7992C599D3F499CF9077EF61CCFFC617
          E677F60EDD56501428BAA970D3EF669D42B56A65C73F00703C3A469B36BC8EDA
          9AAA13F7ECD9FDAD7C7CC4367C5C191835F1FCB369DAB9C9415909A3E65975E4
          588CA46B108741656D75D4DBE3129FE893A17A0F19B68DCC3083A7928319449A
          8F4B3235A699695770EFE41BBFFD9BED7FF65D7E28BCEF4AEA29CC861EAA80AF
          BA059F5FB502CFFCF9457CEAB3D7209BC9A602C1A055535B7B765D7D03EB3E7A
          04A5A5A5088542705D078C081D9DDDD0640CCB6679408A02D56310735D6C3DA4
          14A3A8FB756E62C0340DADB922129461BFCEB289F16D7515916B2E3FB3694B6B
          736A341DB32E5415AA90B6251927EADB67143A5F1B7D3A12F02607C20156174D
          CA9EA0FFC685CB8E5974A0BBCF31837E5653568EAA8A0AEA39DCD5F81EC773E5
          151F472211932383DD18183C7275369194C26520C928EC2704CA2AE4FEA3E574
          CDE7FBE5E3F70D0A3D5421555FB953CC2BC25403B2F5C4F9D2651E12AE2B353F
          97654E8E9090642B0A919713F3288C053CC2E3EF5647FA1FBF68C1D0027575EE
          0BD2711CD8450BD275E0F518D436672EB2E9242EBAE492932EBBE2CA8FDFF0DD
          9BD8AA0B2E866198E8E8E84032990411C1715DB8AE03171C600A145501E31CBA
          5748470B949407CDCF84C2912D9A6ED80260AAAAA1B4AC747EBEC85BE2E309FC
          7975B6D4A3A306AE03E13A24A502D7E65E2E525E271947A1E852313E81BCE596
          EDDADF2EB9A25165790566343761D9ECD972C1DCD955EF01285C41179C7F2176
          EEDC3BB3B7BBEF74AB90170470455164BE28C8A3ABB2244230222DF2E69B8670
          FBADDB65CE7214235209D70E4A2D734496342BC2D5B964E490BF5C482D510473
          2584A64AEE630425A4E89EA4EDF11C3DAFE2B4D83400B8E6C27192207045A1F6
          AEA3F2E24F7E1E42F57C674A6BEB33CB8F39E644C72E524545B93CF39C73313E
          3E8E83073B502C16E1BA2E348590CAAB280A058ACE01C6A5EE53A9B1250C4533
          97B5B64EFD72381C7185E3CA4C36876C26915DB7A52FDB7D782F4AB4CCC91E0D
          11D77184748B70DD00A2D19C6D23E748C6104B27A4608468328681B15168868E
          B2700833A7B6E294E396D349C72EDFF70EC0975F7E19C4089D1D1DB8F1C6EF5C
          9749243C10AE2085110448D575A9A81AA5D2055953132635544D3FFE51273DF1
          40EEE0E0804D627C3BF3B0760A4C3549555D6280AB94E852D36CA9E68BD2919C
          C002126E8433AD46A8DA51BF9BBCE36200B0476E87262CF89DB8EC1CCF37ECDA
          B3FF8FA339FC70686CC2C320252348DBB669C9B2E5983B7F013A0EB663606000
          5202A647412AA76024ED87E161E02A27418A3C76B1269BEAFDC8592CE0BAB631
          118FD3F0F01086C6DDC7AF3ACF73A8B282CD9C56C3BFC320A4E3B84428229BAF
          43DFC1FEA8CD316E11835DB4C822826D592297CB12711252B8D2EFF78ACAB208
          4D0C8DDCCF01E09BDFFC1656AD3A8F653359B977F79EDA6C2E77DBF8E88847BA
          0E345D837005F3FA7C924832A67094462AE4D0C0510422A5697FD5AD8B02D41B
          9D181B5AE0844AD9D0888F8F0D8CC970D8E5AA97912C42509E08211DA4974ACE
          75082A03E309B2F354D7E04EDCFDE08EF38AAAA1EB10E2E32555B5FF5D5E5171
          BCEEF15047D711D9DC5003BFCF47B6EB405335D454D760F7EE9D181919416565
          251CDBC6C8680CA66162C12C0F244970AE92A117A9AEAC800387E2D8B37F488E
          C7269C5441FFCD69CB4B6FBE70D9E8CAAA88795F5940AD756C07763641DEF249
          72CFEB117AF5F9E757D744228FA48B0E8A932791D3D32B8DE9D3B2B97CE16336
          91CA1595744DE1DD5D87365C74DEAAEBF8573E7F35B8E6C5CD37DFACF40FF48B
          FAC6C62F751DEE3CD3B672AE90609AAA909480DFEF6739AB202265A5448EE30C
          F6F52B8B962CFAE3EC25D50F0D44D91B9D430D29A99E75CE686CB1B3B7A38A0D
          0CB80955ED75CAAB3D86485BD256399159C614AD54BA3098C67DD22EA6229ED6
          EFBDBA7DFB515FA0A4E217754D2DDFAEACA80C0B292423A299AD4DA88C044953
          5548212583446579090647A3D8B16D0B191E8F0C054394CEA4108FE5317D7208
          911A0DC22AC02D0A84BC0E16B791AC2F97D4522BC6CF58681F5ED852F842A9A9
          DC10F2F290E3B8D2CEA5C830390AEA2A3CF2BD879CA493FA41801B9D595780F7
          F74B2282D2DD7B58D455A58565CFC865B3D9EE83ED6BDE58B3E6D3CF3DF5449C
          B5CD5E04DBCA5367E72177CD9A35DAE0D0D02A2B972351B461E82AD9AE4B8669
          C09542AA8A4A217F400C0D0E309F3F509C3B7FC17F0340D7A13DE5A5E5818F85
          4B4BE04AE17A2BE6B28AB977FDF7F3AF4EBDF4A52DC6300575C13345D7CDA5A4
          7082C4981F45540829215E79E985AF564C9AF662EDA42917F94CAF2C140AB22C
          12A29316CF826267696874547246F079344880566F3D403B77EF23D334656767
          2765735919090711CB39F2C927DA61674BC0542E859D453EEB4A95814E5DE693
          579E555AB1627EF0B30DE5FC5855E3D22E0A59CC4C40F748A9375C259EBEE575
          EAE8EB7AB9D253F292E3481449C22006FD2DA9D9B1EFB663A64F3EC6131F5DD1
          B86DF779337B86FBBC5E2FB1FEC1116684EB281E4F88AF7EE5BA6B478787A74A
          C7762588298A424292F49A3E5896055F2808D7719C89584C0947220FDE70E3F7
          F70040205012D40DBD797C6C847A7ABA5974A84746CC74F6B5EE25CFFFEA9199
          BFBFEFA5A062AAE4B8F9AC2CBA2EA41391C4CBB1ADE734669B8BCE2C2DAFA876
          1C5B168B366634D7536B55082FBCF48ADC71F0882C2B8D90A62A72683C41CFBD
          B6B9F0FCF3CFDD3A3EDCBFCEEFF353369311EDEDED3431312163B1713CBDB147
          3CFBD03A10A610D7CB0091A662218B78BC40894411B99C2D0B054BDAB9344421
          8A606D0BF1DA2FE3B11BB7B05D7F7E7E707238F2B5783E5B949008108349F48E
          744F99AC661F7EB667EAE1814E9308C915CBF8DA0D6F48DE50AA0433DDEBF325
          91E0FC835D87FF904AA47D8E55101EAFC945D1816E7AA0A89A0449AAA9A9C1C1
          BD7B5D00CAB7BE7FD361D3F43E7EDE7967898E0307DB0CC3F329C776687C240A
          4551C48CD90B1EE838ECEE15EA247A65C3E1B3224AC23B772E9349BB84FC5573
          B179A7C64632C793473764D1B2501609614E6B1D067ABAE9E5F55BE48C996D38
          F794159012B47EDB5E5ABF69FBCE83FBF75E2D72F1BB32A9448724BA9800231A
          8DCA582C86F8C43825720E1DEA1ECB3797A4B325E5B374A9D440D31462CC0164
          11449214DD243D34196AD92938BCBF891EFFC6BDB4F3B5974653A676655C3ADB
          BC9C1303C089DE23951309E1BFEAB2937B34E58C9AE38FD5BDCFBFDCB3399D80
          F2EC2B6FD8BAAA60E5D26967277A1311B76059705D0D420224E1F578C8765DA8
          9A2687FB0719544DBDF1FB37398AA65D70E14517BEB87D77C7DD05ABB0BC5028
          98AE1085442AA9D7F8AAF3931AEA3AFBFB36B9DD87776C282FADD9F99307C74F
          9A34B5E0CCBBD0A0B5EBE276E7D022CD17942048CC699D04262D7AF9D5B560AA
          81CF5C792918497A63EB2EACD9B02536363676A7C6E4ADD27552BAAAD2446C7C
          B36E78BEA928CACD8EE38462B118A2E331640B7CDFCCE5911B3A76EE6CCDF71D
          B835543D9371A39EC2D573A5C7E3A1A2E3201B2F62A8639C0EBCF8223A5E5F8F
          1C77D7A6039E6F8C5A85AD7E2808334502787F221662C72CFDEED1B5EBBE5000
          45A2D97CB4FE9495B7E0F1477EA9C453F92C009FE68CCF0D95D7895834430421
          852BC8D00D3092D00D0D86D74FD3A7B7C933CF3C831C21D88F7FF423777464F4
          173367CD6E9F3675FA583E979379AB20D3E93431C652BAA6776E7AE531D6366D
          8A15F6B28D7D6EE8C46FFF26234F1F61623C5FA14E991E414375B968AA296507
          3B0EE150CF0016CD9B8DB9D35B4457CF00BBEF89E770B4BBE7A59ABABA9B55AF
          776D363101AFCA099012200C0F0FDF512814BA55555D954C658276B1B07F469D
          F7DEA1BED181BAD3667DBA756A95E209AAE2E0FA3572CBFD03A49735A1385140
          6A38EE1C3D3A3A144D14764DA8FAB306E70F7B25B20C20FA203700C0DAF240F3
          0C4DFD96A5EA9E9CCA8B79C62A6922FED3534F38F169E5E9CF0152EA6D9BC6A2
          27F0FA63A4C71FE23BD6AE269382D03443AAAA0E57E1A86C68C0CAD34EC3BE03
          EDB8E5C73FA25CA140951595BEF1D1D1878DD9B3775AC5222CCB22BB68C97822
          FEEC8DDFFDFEE8B4B6D9BAAB1896A187064ACA438EAF611997E60934AFAD89E6
          4D9F8C4236C59E7BF935198E4470F139A7211CF0D1D3AFAC634F3CF772D44AC7
          6F59B7FAE53F7CEB96DB52994C1AFB8607E1557DF2CDD016108D4691CBE55E22
          E22FCD9A5ECB2F39A5C90D9B1A3ABA13A7B54CAD3EDD0C7BA17A0DAA686AA237
          FE747442F6ECFCF490664EEC1C857D757D5DEC2892BDAF16E2F978C64285AE81
          137D00DEB6FA4A5AD837228F9DBFA872CC71B8A7B2C23E77C54AD6D8D8683DFE
          E8A37A43C86850560675F3F67CE8AA69F5E33E30A738EDEC4BD412C323DF58FB
          2A98C248D3B9F007CB58261E97B7DCF43D91CD6579DEB2A5C73028100A0A578A
          FA0D1B36D42F58B244A693296E59055235DEEE582EE6CD9F47FB3B8E4090F0FB
          FD2176E2E9E7B13933A6A2A12288DDFBF6CBA16802CB16CFA7C69A4A8C8DC7F1
          8787FE24366DDDFEE7546CE41BCBE6CE3AF868FF51140A7908E182D17B236F8A
          F26628B350745159E673E7CFAC40D79124CD9F537D5938E2D5986948E1422686
          53D43D927F6832739F4CAA00E5152C367CC8200353619401A4F3574A7E17F68D
          48007863EBA6014F7955C10E9704CE3DE5E4626D5944DFB8FA95A8CAD503CA8F
          F3E7CC6BF66D5E397D929095F976761867E2DFAEFF16161FB714BBB76E9313E9
          04CB662CD9BEFF101B1B1D60D35AA7DAAD2D53145FC027A7B5CD407C7CDC8D45
          A3329D4EF2642A49AE94A8ACA8DCF7E24B2FD181BDFBC4A59FBAEED4423EFBCD
          6AC7E6272E9F072B97C2F32FBF8E9ADA1A2C59B480B66CDB8AFBEE3FE424F24E
          EFC040FF7F969544EE0A9AF52E110371EDADACD3B7AE9A9260390CB9BC403A63
          63226EA1AADC834B4E0981F975242DCFBC63A7996769010F98AACBE4608C1DDC
          31906FA90A3E38797A3932B1027C290B8E2D614342BE99A8F57F4D923C3696ED
          E99912BA21ED38DF7EE89187CA3D4487BAF6ECF9FA1FEF79685CD97FFBC2D193
          7EBD6BA8B4C16C9D55765406DB1F841DBF0E977DF24B72E55931F1E8534F2BBB
          B7BE4E538A23E9E6BAB6FE0D3B3BA74F99DC585CBA74B9AA7B3DD2755C562C5A
          32954C2297CD20954AC95C2E173CE1D4F356B6CD5D6AD6D4D47CEF84E3979773
          92D8B57B1F2692192C5A381FB982450F3DF1F4F68E83FB1F323DE6B0709DED56
          36DDE504BCD4D03485142BFB9E5A7021093EBD8049E5698496FA30B7B501C954
          3916B6F9306F41330EF6E659630D2E2D6F5C1A56BDDCCD0CEFA7F1A3634814ED
          67CDC6F0AEA423D01052306DB186D16E1BEC7F5867DEB869FBEFCC8F5FB6EBE5
          67FE34F95047FBCE05DC3C288464CA73C56F74ED7A7AC6DA9288B152AD146241
          60AD8C0F0EC9ECC645D6C498A637673BECAAC8212DCFDC876E7965FC97C72C9A
          F7F0868D9B677ABCFEE2B12B8E532B2B2B64219FA574268D543A895CB6400383
          23B72C5D393B326BF62C4FCBE44673606008BBF6B5A3BEBE1ECBA64FC7FE8E4E
          77CF9EBDB765D2895FD5D4D4F48722E5888E0C229B4E4102D275DD0FEC834587
          C154F3985D3F82190D3E283C08C608E98C458AAF4AE68B83B58BE74FFAA45679
          82B4C75EA078FF28EBED18CB5A1C0FD7B596E787BBC691CB3A88EA80D7AB8389
          BF3F0B9F8170576A9437DC79FB2646D8A4B980F7B8E5BC58B45CE58927BDF577
          DC969AF7FD6F1B583EBBC00A3195C2D3DB210677E90107EE4C01F570C1B436C4
          A7FCEE9A4B96B737B7CDF858BEE03C70A8B36B8EEBDAD6CA95276875F58DD8B5
          6B274ACBAAF9199FBE108669B6CC6E9B2A15AED2966D3B613B028B16CC47DF68
          14F73EF4B06B6793FFBEFF40FBAD255ECE6B5BE792EBDA124464985EF9612D08
          2C1BA82993B8EAC2081416847CDBE8A404E74463E9A22CF1C7AF2CAB3B2F2C72
          FD2235B0839283291C1E4CEE7235FEDC444F14B1E1141827D8390158EA7B5CC3
          87560C10C195122E80370A29781973E79C77BE124B44299C4E89B56B5E7667CF
          698172ED05C5E31B17D62EFDF9638694C61EB6F4581DBCA802913C63E91C4F3A
          65F628557FF3131767F7C695A0DED51B6BFFEC35D75CF69BDFFCEA891DDBB64D
          639C9C15279CC48F5F7122D54E998D96490D288F04D0D3D74FC95412B57575C8
          D92E9E7A658D9CE83F4CD1E19E438F3DF4C8FDC79C72B69CB1649188E5DDB7A1
          4929DFAF16128ED0505FE960D9C2E29B30DFFD318E94D0154D64D2C9D0E4C6AA
          4F72AD02F9C1D5480DC731DC1BC744AA706F696DC0CE8E65201C172419C00452
          CC86F3C14D17128042040F11069C22461C1B1B0BE9777EFEF4E30F39EF9FA3D8
          1EF7AA13561C13A2B25A9C7A693BBBF81447AE5C2C65D036E4E448F90B33AFBC
          EA3B8F9E7678AF66EEC06F5F7BD83AE9ACAFF263A6B71EBCFEAB5FFDD8EF7EFB
          BB07F7ECDF37554211975DFD253E77C65414F3596CDDB11BE17010D53575D8B4
          A71D2FBDF09CCC457B1D2A5A6A6D5DCD9E2FFDE0C703F7FCC74FF8F12B4F7681
          F4DFB01F0D2CD38E0B570AA4E30EECBCFC8BC39712609C720A49E60C7D221458
          5AEF6487911E394089A11CF5F5260F914F79A4CEAB606B5F0A86A90242400170
          D448814B80DE9722AE1121E63A18722C6C2D6421F07F77948AD7175CE0F17915
          185C86AB26D1BD8F1D92F7DC97E0861EE82D58639FC5BFDD38F4990BE6714D95
          EE2557DE84A19171F7CF7F7E011E8F67FFF2638F79AD6760A86DC99263E5692B
          97E1F0D11E0C47E3689A548BA1D1281E7AFA05ECDDFCBA10B9044CAFC9345DB7
          E6CD99FF425FDEC2A73EF3B9BF69435202705578ACDD40DA07D76200EC77FE25
          92806A2AB2AF2F1E2E318D4B4D7F0D4F0D6E90A9E1A41C1F4CD3D181F49D93EA
          7DE9A34726C8F0A992B1BFFC39CE086E8B843CF8F6B1FC4D934D0917BBAC3452
          C2FDBB3717251008684C550B9DBD039A600E55B6D4CAD420C98AB0FFC0D8E8D8
          10233F67446EAEC0A0EA5EAAAD35A8B4B4B4A2AFAFEFBBEBD7AFFFB73BEEBCD3
          2DAFACE11BB6EC82DFE7477D75399E7B6935F6ECDC063B392E93237D2C1289B8
          56A1C0C3A170FFD7AEFFDA8B5FFEE14FD0D4D4E40E259D0F5D945524345486F0
          C2DDCB100E0343C33948F12E6D2042215F44B29043554DE0B4D248C3FC626614
          D9E12E991CCDB3BEEEF8C0C2A5150F59C3398C260A52D338DEED5B8900514A30
          3D0C4681C191C01E3B8FA47061FF0FDBC028A6C70B4144E9549AB9964B76A100
          29257974CFEE49939BE8ED13FAA937ECC3AA55F729A954CA668C9DD9D8D8F8B9
          79F3E6EDDB75A887A57776B4690A87DF13C56F9F790E89E8B09C31AD496E6BEF
          274DD32424849082FB7DDED55BF7ED8F5E7EC12AB673D23471DC8A933E44F308
          213D899046A82931603B2E0AF9F76A0411A01A2A068F58BA47B52E9DD652C152
          A3BB646A348DF8701A2329F7BF4A5C3992CC16511AD43EDCD731C2452797E0BF
          378DE2D5CEC43F5C68A410E3ACE838AA5D2C4282C0248849887CA1D8E3383959
          B46DBA63CF1000A0B2B252FCE94F7F0280EDC71F7F7C2F11D55887BBBF98B7EC
          4B8A45EB9C9EDE1E777C7890D9B625078E1E22BFCF0F5FC08F42214FAAA1B9B6
          A6BFF4B3FFB895FEEDDA6BE9A5175EFBA0CB23205BD4D116EE44391BC468D4F8
          6B068E9679CDA8CC942E2EF58C9C981CEB477AB047A6A359D6DF9D1C9FB6B8E9
          09363C0ABF4200A30F3D9AA89CE1D76B87B0EE70F29FAAD452F299949B4B6738
          5738BD592045528098C7639438AE0BCA13DD7DFB6F71F5359FC7EDB7DFEEFEE0
          073F502291C8EE9E9E9EDFAE5FBFFEA74D4D4DFFB1EAACB3FEF3E9679F6D8EF8
          3C537BD22937E00F70555361680620042CABC8B5402017A9ABDBF5994B2F938B
          E6CE15C79E78FA0716932D28583E3D8AE5F3185CBB14F243EA80880844405FE7
          2145CBF32BC33555A6931B92B1614E439D59EC6D4FFCA9223B7280640EF95CE1
          7DC74909484057395E3C9CC4BA23A97FBACE4F61125DA96462AAC763AA8C0892
          33089224A498EF0A17BA479733A64E7E67C2F0F0B073F3CD3793EBBA3FBBF8E2
          8B576EDBB6EDF454267D5D637DC378341A65FE6040A4922944C261289A0ACBCA
          3B02AEAA68C66A66F12300F0E5EFDD24776ED8FC9E85141C8E5995392CD40EE0
          C8661D8EFB41788C1126D2058C250BA82CA3C9D515251709D7467E22062B3E4E
          19E1890F27E9FEF044CC8D3B79A4B22ECAA6D4814A7D2041609C601A2A1E7DFE
          2076FF0BE00100DBDBDD7BDF44742CEB310C523CBAE49C131897996C6EEEC756
          AD8A1C3AD881F17896CE3EFBAC3793D1FD7EB4B5B5E1B6DB6E9335353557CF98
          31A367CFEE3D75AFBFFEFAAC44222E4B4B4A3900A96A1A881372B91C29AAE656
          56573D0800575FF56FEF3EC8C18582229968F48C6045C97ED84586F8848D74B2
          F801C9242C24530E8606B3A5C909F7B7E5A5BE80B026642EED22DA2FD1DE3EB2
          79DAF4F275766801424DCBD176D219A89D3F17AA06187E1D1EBF013368C0FA17
          B60B6377FEE1EE67B2A964BBE23A22180CBA20CE548FC74D65B2F51B376DB9AA
          A97192F8F8D59F5153E9144E3EF914FCF4A73FC5F6EDDBE58E1D3BE88E3BEE18
          4E2412974D9E3469787474944FC4261CF5ADF40B4DD3E03A8EB0F205C51F8C14
          4391C87A00B8FB9E7BDF59BE8082B018417D7613E6F1EDC8E75C5879078EF561
          6243146DD24341847CE6E7962C9A715264DA2AC13C15143D3C8AF158B29021FE
          F3A6BA0CEE5F772B42673D4BCD67FF086E210329E47B84D1BF10A057619D1363
          234F58C938ABAEA894600C9AC7842525EF1F1CF8623A9799A4A8AC082935D5F4
          FFE5AAA3AAB2BCBC9C06C6129BE6CD9B77E5AC9933873863944AA76D8FC743BA
          6EC86C2623C1B84C64B23B58A434F37E576E730F4ADD7E34275E46215D40216B
          A398B53E54ACB4059B981CE89D28AF0ACA8B6ADB6643D53C1428E5B2B4A9860A
          39B09659254DA666685FBAFA79347A5E95D9A1B5904CFD17E2FA1080575CF509
          E40BF9A73313B1C3E59130F704FC0E5354AE997EB77774AC71EAB469BF3F7FD5
          7925D3A7B6158553E4EF4B4193377CE75BCACEF623AB17CC9FFF85928A8ABCED
          DA9C33B239276452299B549514AFEF9EF69D87D3AF3EF5100180E43AA49DC6D4
          BEBBE04B7561DC3291CFDB28E48BC8E7ED0F955CD642D6064C4D9CDDDA5A3E83
          D4080AE33B281B1DA6B1DE09D9BAB851BBE8930BFE73DE2597EE3FF70AFF3301
          DA7286470CE901BF4F166DF7ADF4B9B762CEFF4213E6279D74927FBCB77F2C99
          4CCAEABADA3361984E7422CE54A6302185D3DDDDDD9C4E2497B5344DDA3F70B4
          6B60C9B12BE0F3FA303C3C82C1C1011C3C7454D4344D52BA3ABBDB4BAAAB3A6D
          D73955658A3793CED0F8445CF59794154B6A6A7F0CD2870B6E9E5DB06A953CB0
          7D038AC39D986A8CC1755C388E84E388BF2AAE2BC04D03CF3CD3634EAE643F3A
          E68C45CD929BD2491DC0584F9C8E6C4FD2BCF3E6A3B48C69FEB225257E33DBEA
          73F75DAEB0FC8A6C5E583A2F8C1B7E2393C819085A02FBF6F4613855F8D700E4
          D265CFBDB2DAFDF94F6FDE1BF4F916D6D635B4C673F962A1607155511824DCB1
          E858E3D123872F6A6969AE6A6E6EEEADADA91E2F2989E08ACB2FC7F6DDFBA032
          4504ABCAD940E7E1F6B286C6350557D6E48AAE6A86C2EDC1CACA5B776DD9F042
          757DAB583A7FBE9CB77429FA1EBD09D3593FD2058E42C181F537A46839C8A48B
          5878FA0CECDFDE77C205E736DC50D2D0CAEDEC308AC921EA78230A235C21679D
          DE48D9A82BB5B2163079589A7E3FAA2A3D0D0D75B820E0F7AC48A755242DB9CB
          741CB9EBC0C05F0348EF44B0DE147ADF731FE833C18F3DFE0467FD1BEBB9146E
          31161DDD555D59B9345C51591D4B261DC71524419271855BB66B442792D36C21
          E32FBFF4CAFA03ED07D9534F3D294B2BAAE1F307904FA6A41130094567B0E5D2
          8B1F2AA9A9B973C3C3F7DF55DF38657B75CD2401AEA3B6BE1E3302456C7CE601
          584245B608648BF26F4A22EB62E6CC72ECDA3DAE5587DC1F2E3A6EF22CAEFBA4
          933E4AA33D711CD995C59C33A793CF4C43F006D24D1B5C0C13631C8EF448CEAA
          A96A465D75DFDAA1931F7CE08D3B9B2B42B9BD4747D870B2F03618FE161CFE2E
          61EF82F6EEA035BDBF61073F74A803975F76992C1231DD34C7547FF08590D7BC
          C8F4FA22896C96699ACA7D7EDF406D7DC37DE75D72C9170225258F2F5E790276
          6E7C4316F259BC0D500A81743C8E8D6B57D3D08E83F2E086CDCE9C254B71DD03
          0FD0E63F3D0525588D23DB5E86E7D033C866F3704881EB028EF8DB92B35C9A3B
          BB1C5B360FCE38F9B8F06DD5936B989D4FA2908ED2A12D4930C58FB9A756A110
          CF408F4C92B27098323183D480413DDB27F0E4AD1BB35454782A3EF4CA92D366
          DEAB0EA4D4B14C86B70F255500EA5B15AB6F7F7D3FC00F8BF813DEE549150078
          F1C51750565D25AA9BDBC805FAE289C40F4B4ACABF35AFCDE305C4EA0BCF3BEF
          17979E79CAF6732FB8108EEB52557DFD5F75C3279E71AEDCB7B7E39DC7BFB8FC
          0A09C650C6E2283762985DE3A0B52A8CBFB777ABA1125E5BD387860AE59AEA5A
          53B1ADAC708B09161BCC62ACBB8859A74420ED385CD70F2686911D4FC95F7D71
          E3D8A4A9158E2FC2F49E74CF255D4FF65470AF67B029E0E15FBC7B8D5753E96D
          ED92EFBA1EBF2D02EF341080F8902DE73DDB900200EBD66FC005975C042984BC
          FFC5A768D5D295BF67C0F6650B16F8BEF6D9ABD67FE11357E3BB3FFB9536111D
          7372998C38B06307E2B1B1BFDBD10AE1E27C750DF4168689340128FEBD1341A5
          3E0985374C6960E71BA64031334E76218FC14339002AEA5A3972B1044833514C
          F6CAF4B060C5C0C406158DBFBB7BCDC6E61DFDF15DD1643E0F20800777570120
          DB7A0F08F77DF27E90E25D203FB087BF53E6F0C4238FE1F2CF5C03A4D352D554
          76B8A76FD7B14B96E20B377C874F9B32055B76EF2AFEE0FA2FFD433B95900407
          2AB810E0FF83531901B00C039327395F9EDC502C730A092904A3C438C360A72D
          A72EF143D7B3488E5A30025164720EF3F899BCFE07B34FDDBC379279F1FEA1AF
          83A856E1A403908AC245C172C45BA01C00F6FBB4CD7997B8EF028CBF76F8794F
          C5FA0377DD8E733EF9693CFA5FBF179FF8CA37F9A12347E8D73FF991BB66D38E
          7FF8E4E4488E69C1011C7109E2C37B5CFCCD61F7A4B16C4E595DA0C60FE96688
          90C2D84046C6FA1DCAB658B07380A6D9525A31722597A228A5CA4B7CDD870ECF
          05D0A232F2DAAE10001CC7756C00D6BBB4EDEDC7C5B7BE7F1B9CF82BE6FBC137
          F99FED233D75D6025456D740380E32A904226565D8B7B703F97C1E5367B54127
          604EB80FBA6241C8FF79AB2EC77131657275980BE5FAB04D57F8A45B2F9D1476
          6D4F0C279DCA6DFEC2C87153679684DA8EF7225C6D81514108A1B1DD5DD6A1DF
          3E9F78E0C5F5BD07DE825200900590039001907FEBB9C25BF0DEAD8D7F171429
          2594FFCD6B8E2D186604E2A8240ECBF1FFC3DDBD468EA4E3C3D9C277FA469277
          CB51FBECA612E3B8AA45B39EF5D55C7BCF033F3EEBECA6E1D4156DDB23CBE72F
          ACAA99BA34CCCA6A92E2C4A5A1D684D3F0A917D7F7FEFB5BD0D4B77658BCCB34
          DF6FB2FFF370D6FF76773321E92D5BF8C7359D2B04DB1158BD77F828805F420B
          FF7249B58DEFDFFF5D6F3FD1CB035662D3AEC1E4EC35E323672EDB5579C6FCB9
          F5AD738EA9C2EE5D7BC6010488A04A89E45B20F12EF37D5BDC7F746DFFEB00FF
          656DE6DEDC7C68764550CEAF89205B50F0D5AF5C51F8DA577691C765F190AEBD
          BA3B97DE78A82BFD87752383A71ED75979C2DA91D83A009D90C801480048BD65
          BE85B7FC9EC03F7933A68F7AE9FF93D1988F107C04F02380FF5F1EFF670048C1
          8976FF51387B0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000035
          FB4944415478DAECBC79981D55B5FFFD5D7BD774E6A9E73949279D794EC8C414
          4040662420830882B3575170E072F58A5744BC5E1127144505044406654C0C10
          42E6B9D399BAD39DF43C779F3EF33955A7AAF6FEFD91804CD757BDDEF779DFE7
          C77E9EEF537DAA4FD553FDE9BDF6DA7BD55A9BA49478BFFDE38DBD8FE07D80EF
          037C1FE0FB00DF6FEF037C1FE0FB00DF07F87E7B1FE0FB00DF07F87F59A3FFE9
          0D6EBDF5D67FDAC3A8BA61DC7DD7B7358FBFD2B9FD2B9FCE4F9932051B366CC0
          AC59B3B06BFB8692A171ABC1E70F9C92CFE5965AC56253D1719B1831CE142E39
          8114CE4D21D0EAF1E8A325B168A9C7E3F56A9ADA5D525A92D755BDBFB2A4B2BE
          B424B6B2A6AA6192D7F0823106292592C904BA7ABBD6E633D62FB66ED9F23CD3
          48DCFAA55BF0E04F7F87B24835A414B8EB3777695FBEE5D35C4B450B6F3CEFD7
          BEFFA9FF6F009CBBF014DE75BC9332A93107008410B8EBBBDF0E3EF6D8D3B51B
          5E7DBD766C6CAC4951F8122931D771651523F2292A57385738E71C4404CE1988
          089070409090444492544D13B39A66B025F316B3DABA3A266C09336FC2B10526
          E209480178BC06C29110F266CEDEBE79574BDDF48AEFB41E3FD8DCDFDB932D8B
          55E40E1DDA29964FFF90F54E585FF9CF4FFCBF0F70F5C7162B0FAFFD05C54A2B
          E552FF05D8BDF9200CEE3800307FDE345F3223A67674742F630A5D108F274E2D
          9AC5101141D50CE8BA0EC3D0A1280A14CEA5AA2AE05C21C699E48C11118100B8
          029000344591739A66D0A49A49387AB403075B0EC12A5AC817F3184927505552
          86423E0F263882BE1016CC5B80298D93B06BD75EB971D79F93E3C991439655EC
          F57A3D765D7DFDB1F9F3E6BD106FB75A9C508A9454487EF347B7FC6D00939904
          BC1E1F6D7C79371F1919A66D3B5E15D3A6CD7203FE105A8F36FFD56B4BE6E5D8
          EDD7FF5C4A29390071DB6DB789777EE7CA6BAF6F7AFA89274FCF15F21F28169D
          159054C9B8029FDF2FBC5E9FEBF57A85A669A4EB3AF7E82AE9BA41BAAE43D354
          70CEC138034010AE0020E1BA02AEE320E68D10A4C4DA175EC6F1AE0E94D594C9
          58794CC6CACB855D2C8A89780A66212FA57461D945F2AB7E5611AAE1A79EBA9C
          36BEB609BB8E6E83ED5AC867B3C8643358B264D1D6D2D2F2F30AF97CEECCD567
          E00367AF967F15603C91035701E1E658345426C647250E6CEA802B32681F3CC0
          03C1303215AF22272CA40A0940B8904CE0A5FB5AA979F35179DB6DB7B9EFBCE7
          2DDFBFE98CBB1EFDB2D6EB764D5C53F28DC0FECD472E57157575B168CFE48A02
          AFC72FC3A140D1E70F40D775EEF3F97828E897E17080050341F8FC5E689A064E
          0C9C9D305B4100891381612289B19138467BC7114FC6F1DC53EBE00B7A71E19A
          0B10290DC3324DE40B0598A6090906AB6049E10AC41313E838D68E68B8C4AD0C
          55F0FACA49B46DF7363194E977F6EDDCE6F6F4F7B169339A32175EF4C12B5A36
          B6BEDEB46CB2F2F5DBBFEA28EF056E644C62F05816BAA6C0160E385785943238
          D0619E6E89ECFC6462789DE3D8BB1DDB44E7AB3A001D40F0CDEBCF3AA511B7DD
          761B0060D507E6D47CF7DC07334BBE397365E3AC9AAB7E74FF8FCFEB3A32C163
          813985A3816EDDE7F3977A3403C170A4180C05652010643EAF570D8702148D86
          E1F77A887315420A69DB364CCB42269D25AB68C3751CB8AE03094846204892AE
          74A9982A22954AE2E9C79EC3A2254B71D975E7C960D80FCE1410939020104970
          CEE1B88E6492D8F32FAD173DBD0AFBF055173B2D7B0E0B215DADA6BC963A875A
          954038A2CC8F950945E7DEB1A1D18AB93317E258F7010280F704E8BAC0FC657E
          4AA40A60AA2BC9F59FDF7A78E8FBFB7B5EA9DFCB7EEB4B043A3E29E3353F6D30
          4F699FBD3AC0F3C2A6783ECE4838525599AE79FDEAE0B1C38109A7F38A5FBFF6
          44A379DB44E148594FB434B126B0F5959D58507B36A6944C87E66188C5A27630
          1C462010E4E15090454201F8BC065C21299FCFC991B171994E672997CBCB8259
          80695A28162DE138361CCB812B1C12529094003146D1401093EB26E1995FFE09
          35B593503239843DFB9BC9303CF0780C1886073EBF1F0A419214D03C2AF97C3E
          0C0E0F532C5A22ABAACAF5D87961BCF4C46B6868A8A79DAD2A162F5E2CA47490
          2B5864D9B6983F7F01FA7674C8F70438DEEBA020048D0D3BB2A442E78931CF17
          DBFBDAEEDC5AF89E7760FE63C25B6AB92A50EDA6FBBE93C91F740F3A1E7221C1
          9820D775A16A0AF21D8019C951F7411323E0A85FE3C539B18BD0FDA711B77252
          194E5B7496D4032A8542418A45233C120932AFE191420A4AA753181E1EC24422
          896C3687422147F97C4EE6727969990551C817A46559AC681799B05D08485742
          3029A4F0F9BD587DCDC794A79E7C0AB974516A3385D3DBDB459A6E90AEE9D00D
          9D69BA0EC3F0917425394517AAA64855E7726234019FCF876DDB9A0192522A92
          C2910026D54FC1A225F390C9A6A8BBA79F06078668DBFE57100C04DFDD035F5E
          B709810A0E91822C29517D9971FBEEFDDDDBFF65BDB8D5E18BF63ACC602C2BC0
          0A36098A9094B12C84CC41929452022E91E429859CB410A9844B89325D5E7EC9
          85744ECD6512BD65ACB5E4FB58387531AB2B9F8458A917A160803863329FCFCB
          9EDE5E1A1F8FCB543A8D8299473E9713E9544A98F92C52A934E5B25991CD6535
          CE39B2D9ACAD1B7A56E12A1F9F18F703B018E3CAA9AB56F17CCE42C7C11E7863
          8C3A8EB7A986C7038FEE81D7E773BC5EAFE3F57A853F1880EB10154C079CA95C
          5539B9C2A55C218FCECE3E92529257D5C15482221915ACA4356972BD0EA614B3
          E95C41E6252A2A4A65FDA4BABF00BCFFFEDF8288A02A609A2E94FEE3F19FB50D
          1DB8FE45EF4D4563518F92911A0947CA02113185603A602E1480086080740157
          6552E9E664508EEC62396EBBF0CB5856B95A0658843A7927E6D72F67A74DBB14
          65BC5C1217343A9E90F18909A4E31348E752B290CFC97426835462C29D989880
          655A6A369B41341A71CE5C7DBAE6BA6E724F73F32F2FBCF883EDC3C3A3C38FFE
          EE51EFAC39737EA0695A754D4DB53865E12976EBC10E757C223E208AB9435222
          C2398F285C892A5C097B7D1E45D30D840201105791CDE741500429AAE3F57B24
          8A963CDE7D8C69AA8A9260448104EBEC3E66DFF5832FCA254B56F005F3570CDE
          F7A31FEE7EF8C13FD1A215B3C5BFFEEBED7F011888780109DABAA155E89A757D
          5F7CE8FA97A39F2BAAF37A949CD46009212567244991B603982EA4AD72481040
          129C132C02B4A22B0DAF44B9DE8085A1B3E550AE471E517733C3E7151A33ACB8
          D3A3BBA33AA59326E2A91169160B94CBE76526959689B1518A275202446A241A
          81AE1B0733D9B41E0D87EB67CF99DD3C73E68C7B9F7FE1B9C787066B10894470
          CD3557A1AABA26DDD979FCD6CAF2F2F9C9DC78499132F046956FFEE8178F3CF4
          BD7BEE2EEDEC3C5EEAC22DCDA433A58562AE8248A98FC7E3655C55CAF3B95CA9
          90B242373CA57E7F086525A5E83ADE0157485C72CE85C866727061E78891BE77
          CF4EF7C891D6F2603878DEA17DCDBFFDC4673E4C1EAFFE9779E06F1E7E8CCAA2
          31D9D7936C108EDCB0B7FC07B5FAE5BB20C8C32D5984C31800851C827484242A
          2A48EB0CB67CB313C2E624D43D4516B50BC26D6EC0F9677F129667429A4A9614
          4D016B8FD9CDE94D6C967B06AFCB2FA6829DC5E8405C8C8C8E229E1CE5D39BA6
          8BA98D0D4C32FE6A2299BDE79CB3571F1F1E1A509BF7ED2DF5F9FD3D575DF9A1
          BEB56BD7697EBF4F6EDABA0D1C72716969E9EDA150F8225DD70040BAC281699A
          FB9C827B7EE5CCF2B167861F415ECFA1B2A9028AA6C1B519BE35E91EE5EA2BAF
          8B2412C9E095575C11DEB469CBD4C993272F88C54AAA4746472625E2A98A1BAF
          BEA961CF8EFDECF53D2F61DBAEF5AEA1198E2B4817E0631E433FEB92333E7AF0
          D98D0F69FC0D804B669EA18C7665452E51F8644BE1A535ECDAF5B2E853B9ED0A
          6911630E1469013041E482494ABA54305458EC044417408E082C4EE4F309A4E2
          192A0A87C64B7A3192EFA12ED9423E5F90BB13DC79B9E569D9B76F84123D9650
          ABA412A9F2C24A140BF50D75DA59679CB16DE1A279573EF7ECD307D3A989C41F
          FEF0FB782814E8ADA9AE4A07027EF6E28B2F3AA3A3A3FE7030F885FAFAFAFBA4
          940B0129DADADA64737333ABACA8948AA25627F209FEFC93EB5E89EFCAB16CC9
          C45432697A66D46C48F765FC0F3CFBCB845996CF18737962AC7278685C891F5A
          DDF081573EF1C91BD7D6D4543EC31D75564569F5BCC71E7F34D13BD8F17DC7CE
          CF736CDB0F26F244082BAA7A50E7DE3DC7FB8F686F9AF0DEE32F13F2C689A5D0
          9A8D4EA44485B0098EC2C8114CBA047224E01093450714CE02D05D58010F5472
          00C9017221622AF21913FEA584E3EBF7C209111CA5009D39182B3C8925159729
          7366CDE6BB721BD16A6EC0A469E5A3F3AB97DE1C88961C265F26E4F178DBBFF4
          A52FE5FEED8EAFF38D9BB7CB55A79E896C36438160586EDDBA4DCC9A35EB8C78
          3C7EF7D4A9539779BD5E0C0E0ECAB6B6367AFEF9E76978681845BB481F3CFB02
          F8B8EF9365176BAC626A70368C70A327E8F532552548A5106D2A1DC94FE4368C
          1D1DFEED2397FFBEFDF20F5D05CFD55EF9EADA4D85F6F68E85A72C5A76D1E64D
          9B91C9A676354D5978E7F6BD43EB3583FDD6B2F2938900E9DA9EFEE11E8C0EC5
          FF62C22B6E2E55F878D8B1469D6BA63C38FE1BD994E770156633262518B38494
          8E642439938522A7CAFE020A1E15294F09F4A80A725C7082745D859C8E61A94F
          CE800E72B8DB548CD92E28CFA4A831E1A6184DC282D1F27991E1D824DF9E5834
          78DFD0B74B0FBE7536208440381CC6E4C993B171E346949595C1308C98C7E3F9
          8A61189FF5783CBED9B367C3B66D2984404B4B0B5EDDF0EA969D3B764EF5727F
          C5CD775C0F7E5A1EC9C82898A1C1507D605C055355704D830B82704CA4C62726
          727DF677C7DB46EFBB2CF89162B23755DE5037E54943D54EBDEFDE9FBA5C512F
          6EE9DAB86E52E96C99B48756C4C7FA5F8524AE689E358D950BFE746C708FF1A6
          0987EA0C193E3B839A9F5B8385E3740DAB91A1A2CB449188D9607089C1018390
          205BD1A00E4804430E52198612B31AE150057466900A15AA12A074264DC91916
          7C8D0C3E0E283E293C357E3E8BAFDCBCC4BCE0C32C2CBE633D51F9A7EC26DFE8
          A4BB2C921E97BEF3A9FB68C58A15905242D775949595A1ABAB0B1E8FE7428FC7
          F3A0C7E359A3288AE6F57A45494909A5D36904020169DB4536A961D2D61DAFEF
          FC43F414CF59253712732A4CA8F08018238B6CE92A122E07499280EB48215CA8
          01E65543F29C4C21513ED23BDABEBCF28C1F9457969EF7F0438F8304FFC3A4AA
          A6EF4EAB992F9F78F1E7949818EA0B874BA70BE9468291927BEA4AA62707E2C7
          E94D8065D33DF0573038FD288CFD842743A77A2FCB458A8E14C4C054D824C805
          8394044B01B9191555C91C32F584CC8009FF980F415E8D802F02BFB70CDE6019
          9C8C2B07D339468D5C608644C42A930BD367DDD9DF92793916614A5FBE1D4FDC
          FF30EAE22BA5D9CEB17CF9724829218480A669A8ACAC443299FC88DFEF7F3810
          08D4E9BA2E00C0E7F3B168342A53A914699A06455331D4353C476B74C3D36E8B
          94074AC22A2C955CC525453364A367164D56A6A18C574995E94888388A8E49CC
          96B26898E0512C5E51FCC0B98DA169A73EF2E8EF901FA5C3D5D53537E4F3565A
          D70DEC3BBA91BE70DDF7E5E1EE3DA542D285AE10BF5C31FBFC44EF78ABF226C0
          CAD93EF86A24CC1031ED236673EFEF920DBE26FF2227241DBB485C300E418024
          0E01872C9F06F588446DD0C2480343223308676002BC5781339441B1750274A0
          80D2AE2C8C8224929A70FD361D1839D0372FBB7ADD8397DDC7CE6AB9CE59BEE2
          2C78BDDEB7C9E3F1A0AAAA0A9148A4E2D0A1433FA9AAAAAA350C4330C6C8755D
          8A442208040294CBE5E0BA0E45C351DADBB29BACD58335258D31C5CE03AE2650
          E39D8265741A39D90C92182347E4299056A99A6A29A926304163F08C07E8DCF1
          0FA3DE6C8CFDFA81DF22D1657799E1F4F5C58C3C62300FB8C2B164C65910AE44
          477FCB3480AE8D4562BB6BA3330EBCBCEDB9BF389196A7C671F62951A8579100
          24ADFD4CCF2D97BF3E2FE8395FBFDCF5168BAE2D54AEA80031A842073714C4A7
          C7106A1942FDD23CBA1BFD88570EA17078047C88C1A7E511AD03B4A802E67131
          1E824C90CB6BA7CE5CF1938BEF08962F989F0EFC874ABFFEFA63EFCAAF9352E2
          F2CB2F0780D9F97C7EEE89280B91949218635055158EE34008011030D0352407
          03C7A87C4E40DA1922D2A5ACF64CA6C67C039EECBE570E4D2488A542714DD1F6
          854A78438D56DA38A366154DB316604676BE1C6D4BD2AFFFF47B6402D93179FD
          E8CDC54C7A67A0254A3C2825F71070320590913653B890B6CDCFBDE7D7B73D05
          E0EDD19857BE3C8155B7053058E7A5D0BED254E1207D91A7D914BACA37C7F699
          8EB4A46A705D70A690EE6810B51E24327EC476B5A36685893E5F04DAE21C9C03
          040A7961F8F27015074510B8634147108B438BF21BB1C76AFFD27EBAF6B47DB8
          67FC87F07A7C60ECEDAF67EEBCF34EF8FDFEC9175F7C314F26930000C330C018
          83A228705D174404D716D87F681F29CB6D28CC4F8243AA9A971AEC5AF9F8FE1F
          A034370B37B02FC0322D5112292F9404628ECD73521BF5C21C25DAB5A70DBB8F
          6F032E1B43F0B40CEC5D9443A38E42E5766492453076C2CF669F2E9FCCB8F659
          2148E4F3F243E7ACBEF4C1C1A1918DFC9DFFFD1B8EDE8375BB9EC37FDCF36DBA
          AEE95397B5FCB6F3A6CCF084082FF771E1D3A14B8D7457272FF321247DA0B208
          DC7410C1FE01500590511418AA037BC003272449555DE489039C93A599821C4F
          C51D63DF3D400F95B499CBD6F1E8D8223930DC8B74360590043B392C373535A1
          A2A26286699A97FB7C3EC939275DD7A1EB3AC2E130A49490526264680C47065B
          10388BA0E9061C4550ADA7517676EEA296E77BE8B4F11BD0347906454AA33E41
          6ED3C8E07869FFD131DAB1BE85366DDC20FB66B590FAB171D8A78C495DE13EFB
          01363C5867BE36F2C2361C7BA20BF1BD7D18D9D907DBAAFC592A692FD1D4A05D
          B49851565A36FFF35FBCE5A177013CEBB2D3F1B99BBE8AA58B97840EF61CF8C1
          D868BC3EFD5ACE35F716147FCC805AEA43D01F83E270E8F0C2472AD48A0AD803
          068C640F449941B6574A35E3522EAB4A37EC029C4B9313B3483A0925EE093AC1
          F0135F79F599B36EEEB43F73E97334D0DF8B19750B50ADCF87A98F22128A2212
          89001209D3344F775DB78A312639E7148D46E1F7FB215C01C609C75B3B31247A
          103ECD03856980A6C81005E9C8BE5D83ED0FE5D777F674CCEC193E2E8FB61EC5
          96CD5BB075DBB68E6DDBB73C3A54D5F180F271F35165D9F819AC4AF8DC949082
          0962ADE9BCBDEDF833658C3933A77E92029E0358B4F4D645C78F0EDC5B3015E8
          8A575179C04DE6CC2AD5288CBF0BE0D8F8286DDEBE11D5359567ED6FD9FFB554
          61D8560386E274AA48ADCB91DCE7402D65146BAC25D5616448837CDC20ADA296
          8ADD2E59BC573A610F790D1BFE2C43CEC3516444AEC6A54B1A4B69195711BEC9
          3FFDFA4FF6B82F5D7BF489C8F514EE9E87B05E8E2AFF545CF5D933F0E273EBF0
          899B3F8D7C2E970E0643564D75CD45B5B5F5ACB3EB384A4A4A100E87E1B80E88
          118EB77521A5C51159E1019102453508CC85BD4B2906C66A7F3C92EFF71A5EAD
          315A1E92BE88CE92B9F1DD65B5D14FCFBE76F2CE64537A0419EB0AA652B9232D
          29195175AF614E6CDBF36C796528353010633555A3B2A73BF2F5A54B562D6D3B
          DCEBE8DE00ABAD2E436565397576B537BC6DE0B9FE23D761223521FB86BBD035
          D875532E9B945C3028C4C85FAE211C2C97D817A1C39FEE93C34F0D08BF5E2E03
          6A99A3151511D583B2AC6991545C0F09E14A47E3325A9AA72024D9B642267172
          98C21CE611DD9E2EF5A5E1A7D6FC78F16275EA2B9F938EE3A0685B10D281C767
          D09C590B90C9A5B066CD55677FE49AEB3FF2F5DBEF646B2EBB125EC38BB6B636
          A4522910111CC73D01D2E56050C015058C711475213527180B95793F110D4777
          EA9A610B01A6A91A6225258BA8C0A7661249E45ECA959007D5022702B3AA54A0
          BADCC743C267CB146CD3A5A29B805D704B5B9A8F48856B5459518E59B3A760E5
          8A7972F192F9956F03285C97AEB8FC4368D9DB32A7B7ABFB7CCB320511B8A228
          D22E08D23DAAF4546AA834A6CABEBB0771F8FE3DD2CA3B8ADFA840C80DC98C76
          5C66638AB05C2E5DE6503E2064542B426112AE50A5C519791156927ACAEEF374
          5EFA7074640600043E3D4E9004CE156A3FD2296FBCF2B3E0C273C7B4694DCFAD
          5CB9EA2CDB2952597999BCF0824B303E3E8EB6D636148B45B8AE0BA611585A05
          151540E160E052EA2A791B22F028DE15D39BA67F211A89BAC275642E9B473297
          CC756EEACD1DEC3A0011CB9EC33C880AD7118E2C22E4065118CBDA16872325C3
          683C295DC1303416476FFF08544D4769691873E634E1EC0FACA4B33F70EAC137
          01AE5FBF1EC4188E1E6DC51D5FBFE3964C26E101B9421223922055D5A5AA6854
          489B325A1D211FABA08377B553E1E97C6B71C0A63EB187F57A8E5032E8255775
          8933B896A24B47B3A5472D4A389C7C08CA12447929AB16DD6A67E079F6AB2B01
          E079FB7E48CD821B48C8E1F642FD81E6430FE746F01F6383131E30298941DAB6
          4D2B96ADC4C2058BD1DA7604FDFDFD800454AF029656A00E0700838138272614
          A99FAAC9F09400906741DBB58D442249834383280EBA4F456EF01CA50A362730
          83DF2199908EE352918AA8CFD562A8A375CCB2F978B14028DA16154D826D5B22
          97CF91241242BAD217F089B28A28C547077EC701E06B5FFD1A2EBDEC5296CB65
          E58196FD35B95CFEDEF1F1118F940E544D831482F9BC7E09928C184779AC4CF6
          0E7721142CC97C3170CFD274B0676C746270B1744A9836E8E7C9D15129222E77
          54468A84F01251013A7C542275AE23244A916249526CAA8DD64F3C58F9D8A545
          55D575407CA43C56F39BF2B2F2D375DD431D6DC765436335FC013FD9B6035DD3
          505D5D8D7D2DCD181E1E464545051CC7467C380EBFD70BDF620F1C29A172956C
          A34876AD8989C3090CB40CCAF8F884A3A4F59FD49C577277E18A9133C395DE47
          BCA56A8DEB38C8D949AAF04D92335AA2F4DAC675AF5455479FC8658A708B53C9
          763AA5D7989D33F3E6878B36A92A5749D515DED9D3BE65CD1597DDC23FF3C59B
          A0731FEEBEFB6EA5AFAF5FD4D74FFA7CFBB1F60B8A4EDE95024CD51402804030
          C072795384A325C499EB0C0EF4298B972E7DB87C5ED5E3663FDBEA6FAF4F9F26
          2FBC78F6C8298EEF402573FADDE480DAE368651E431596346D4E5E2A6561A544
          2AAEC1829A5F66EC74F4AAC0375F3DB6EBB83F162CFF6143EDD47FADACA888B8
          4248C68866CC9982584588544D3D31BB6612A515310C0F8C61D7DE9D64181E19
          0E852895C9A09828A07466187654831026E00AC8B003FD14924A9D243E558C1B
          1FB48FB125E6E7FC25CAED5A988785E3CA829D26181C179B9761E7C3F73BE339
          E75BD1206FCF675C10EF9127B21E3A8F09599381B067E7F3B95C57D7910D5BB7
          6CF8F8732F3C9D600B662D856517E868FB5177C3860DDAC0C0E065969527296C
          68864AB6ED926618705C213555A56838280606FB59C01F2C2E5CB0F8370070B8
          F36059B02CF4E1702406C715EE64DF02766BF903BF297971FAD5A93F1B4326E9
          C2CB8B6ED14DCB9008919F05102C960B2921D6AD7DE94B93CA67AC9B5C336D4D
          C0EF93A669CA686998969F3D178E92A3A1C111C938C1F06B9012B4F395C3D4B2
          EF2079BD5ED9DEDE4EB97C5E86A32164E38EEC78E6086AEC18C0B82C881C5070
          25574125E7FA65FDF525E5E567843EE9A9E7A732954BD842A68B137074292FD3
          6F10FD4F3E4F6D9DBDEBEBCB3C7F16B683A243300C82AE9F5055D5EE7B4F5935
          7995668C9C5157BFE3D2D9B3BB7A7D3E1FB1C1BE6116356A2999488A2F7EE996
          CF0C0F0F4E97D2762189298A4252900CF8FCB02C0B5E7F08AEEB381313712512
          893E76C7EDDF6C0180B02F12D20DA3713C3E425DDD5D6C38DE2B4534938BBCB6
          EC45FD47737E997824A4E85E726C37278B4517311995512AC3CCDDE7B1267BE9
          05A525E555B6634BBB68A371761DD53485F1E7B52FCBC37B8FCB586994544D91
          6383497AED851DE60B2FBE70CFD078DFA6602040B95C561C397284262626E478
          7C1CFB9FED16CDCF6FC22C9A46315E8A0C32942FE660264CB29345D8795B5AA6
          250B7606093186EAD054BA917F01A947D6B3E6832F0D4C9E1CB935912A142580
          4090E0F1FD453D9DD3D57CEEC9EEA619C7DA3D3E423ABD9A6F7A7DABE4D17A25
          743CBBB910898516B5B51EFB552E93F1DB8E290C8F974338D0750FB8A2490949
          55D5D5686D3DE00250BEFAB53B8FF9BCBEA72EB8F442D1DED63ACBD08D9B5DC7
          A189F13130CEC5FCD98B1FCDB4B9074AC5246A79F9D8852C9AF4E90B98D45331
          6A082C80BD436373874F278FC79056D142AC348CA9F36BD1DBDF459BD6EF9433
          67CFC2B9979C0148D09ECD0768E7E63DFB0EB71EB8292F120FA4B3C93629E94A
          2218636363321E8F239E182733E9D0E0D1D18268CCE4E6C4E6EA95B21A8AA690
          C31C145184204986E2A51A7D3256A91FC0C2635368CFEF7E48FB0EBF3692CA78
          AF4F24E56EAF8F136300E7F4369557C645C87FE339DDC7B50F56579CAE7B022F
          74EFDC9185F2F2F35B6D4D57B0E8CC19170D259351E1581691AB11240424823E
          0FD9B60B55D5E4E8D0000334F5DFBE7EA7A3AAFA87AE58B366DD913D6D0F164C
          73A5699A5ED715662299D2ABABAB0A0D93EBDA9BFBB6BBFB7B9BB754C6AAF7F5
          7C67FCEC49934CC75D68D0D8EB09BBB17DA926FD122089E9F327C166166D58FF
          3A3466E0A39FB81A6092766F6DC6960D3BE3A3A3A3BFE09ABCC7954E5AD5558A
          4F8CEF3074CF571545B9DB719C703C1EC7F8581C2CC70FD6CC89DEDEDAB6AF69
          B070F89EA6F01C56C3EB68496481F4783C248A0E28574471709C7A0E3C8DCDAD
          1B912BF2D753D9E0574647AC5D81001089307922A0F1F605C6C4D0AA6FECEBDF
          FC39D3A46862E2C8584DDDF9DF059EB84FC9240A39007E4B1B5F100DD78ACC68
          9A8422A414823C8601300955D7E0F30469E68C99F2820B2F20C711ECAEBBBEED
          8E0C0FFF70EE9C794766CD98395A28E465BE60CA4C26438CB1B4AE69ED2F6E7F
          9235CD9A6679236C1BF586CFEAFFD7AC0C9CCF84315EAE86A74551555F26AAA7
          94B0B6D6A3E83CDA8F854BE761D682A9A2BBA39F3DF5C80BE8EAECFE737575ED
          DD9AEA7B3D939B80E1E3044849200C0D0DFDDC34CD2E55552FCBA4B221CB360F
          C566FB1E8A0F8EF44FAF9DFBF1CAA64AA5E851C5F6D60DD2DED94F15FA142845
          13C574C219ED1C19CC8EE59A3371F579C3C37FEFF1C91C9D48B379CFCACB4DAF
          9735CE9FEDFD9A65E99E4C9E17F305562129F1BD73CF59FDAC72CDB38026F559
          C7B78FAD9EA49F2E03DE08DFB1E7650A7842D0145DEAAA0EDBE5A8A8ACC799AB
          CFC3C1038771F777BF4D85824515E5E5FEB1B1E1DF6B0BE6EDB3AC222CCBA2A2
          6DC98944E2F97FFFFA3747E6CC98A72BAE6105B5607FA824E24CF5AFE067CAD5
          3469E1149ABE703272669AAD7FE13519894471F195E72114F1D3FA6737B1179E
          5E3F96B512DF7D6DD3FA5FDDF9B57BD3996C06C3070760F8FCF28DB4D0B1B131
          E4F3F93F73E27FAE9B5BC3175C35C5F545348CB725CF2B9B5A75BEEAF581A906
          55944FA1CEAD9D13C372DFC72706BD13A3FB605F7D536D7CA273B867FDAB6621
          31914559A50ECEE95DF0F6ECACA3C5A7F4CA53972FAA189F905CF794DBD75D72
          266B6868B09E7EEA0F7ACD24A35E39ED4CDDFBE8FDE11BB419E37EB5D52A9E33
          F54A351631E4A66DAF823823C550443050CAB29984BCFBBBDF14B97C9E5B055B
          7A3C06054361E10A59B765CB96BAC58B97C96C26CD4DCB2445578F88A28D050B
          1752FBA1E3708140D81F62179E75299B357F3ACAEA4368D97F488E0F26B178C5
          22AA69A8C0C468028FFDEA8F62D7F63D2F8DA787BFB274C5DCD687FED0898259
          802B5C107B7B2299A29C88C439A68B6085DFAD5A548E54478AAA16555DE38DF8
          34304392807492694A75151EAF9CEC3E934D011EC7C629A7F8B12F0B185E46A9
          14A4EBBC77C9EFE2537A25006CDDB1ABDFE7AD346D3B16BCE492738A5535517D
          FBB697C7028A7A58D979D7C50B038D3BCE2CCE1412154798E7D805B8F186AF61
          E1B2E538B07FB71C9B48322B67C9A387DBD8E0683F9B3963BA3DBD699AE2F5FB
          E5CC19B391488CBBE3E3A3329D4DF3642A45C295A8282F3FB86EDD9FE9F0A103
          E29357DF726EDECC7DD5A9B2F9B2B3162267A5F1CA8B1B51555D8DA5CB16D3AE
          9DBBF0D823479D42D2E9E9EBEFFBAF5869F4016FA8CE65C4A0927622EBF48D7C
          6441208BC1CDBBB03336AC090BDE4A0FAAAE0AC3613A78CAB33070AAF742D23C
          50982EAD549C255AFB0B1553438FF9279721983551E1B700C7856D0327F2584F
          BCD7FE6B6DD569F1EEBEEE19B76733CEBF3EFAF8E3655E0F1DEDE868F9F2130F
          3D3EAECCF88133927B491F9C28F1368DCDED945DA1C730BD780B3E7ECDE7E5C8
          9971F1873F3CABECD8BF91A2D38633958DB3FAF66E699F39755A4371E5F295AA
          6A78A4705D66152D994EA790CB67914EA7653E9F0F5D78E625672E9EB9CC5B55
          5DFDEFA7AF5E59062E71B0F9205213592C5ABA0885BC454F3DFEEC9E436D871E
          F779BD43AE70F6E4AD4C47C0F1D194FA69042527DF3A2291208890836C5D0291
          70008D0BEA51489521B2C48F490B1B916C2D30D680AB17952D8FB82A773BB387
          C81A1F453A693FAF7923CDB99440B85E41608686DE11178CFD7D85E6B50D5B7E
          16346E685EFBCA9F261FED68DBB768016F954232E5DEE21F3BCE6C9EFDBA2766
          9C995485D8B1F875994E0CCAB6DC52CB9CD0F4BEC6365BAD3CAAD517DCC7377E
          77FCBEE5AB16FE7EDB961D737C9E4071E5A9A7A9E515E5326FE62893CD229DCD
          A090CFD360DFD0779B96CF8DCE993BD733796A8377B07F10879A8FA0B6AE0ED3
          57CCC49143EDEE819603F7A6B2C91F555757F79586CB303436806C2E0D29215D
          D7057BC7784E4586829E417ADE3022B3FD2855422046303316C5944A992B0CD4
          D49C32E963CBB4B3E546FB45CA264698D9339ACB5BF8BDA7B6AC901B1A879377
          D036064CF2E9E024FEB62C7C0238031E7820CDEBEB7FB69D186D57B98B906F35
          B78A96ABD033BEBAFDF7A71786BE6920B7D264BAA9D2E6C8111C16CD7A240837
          3A076AD931AFC5B64CFBD9273EBDF24863E3EC0F17F3F6A31DEDC7E6DBAE6DAD
          3E73B5565FDB807DCDFB501EADE0975E77050CC33B75D6BCE9525354DABB731F
          5C5B60F1D24518E81DC3C30FFFDE2DD8A97F3B7CF0C83DDE12853755CF27DB3D
          9120E2317CF2BDB6209016A0D52B28BB218A122504BC99582B419C28376ACB74
          2C71FD19A5974606458F684DEF25914A63F458AAD971F90BD6C418CC781A6027
          5E012850E1FE3FD8ADAA125C57C27581AD5B4D787DCC5D3C7F8D32323146D168
          466C787DBD3B75FE5428CEC772A787A7CD5D6E3C582A93722BA3E53A3C5C05A1
          C088E5792C556A63A4EAABEA8DB903F313211D1DF1239FFAD467AEF9D14F7EF4
          F4DEBDBB6730853B679CB69AAF3EFD2C9A5E330F93A7D6235216446F771F2553
          29D4D4D4C2CCBB78E1D90D72207E8C06E2BD479F7CE2F1DF9DB3EA22B974CE02
          618EB96F4093420ABC35C22B21A13A1A502FC197E790850DBC2D575E42D53551
          CC26C355932B3F56C6CBB1A3F00AAC7402F65002F909F321BD2468BBB92CA470
          C1888141209EB6E173DF0D504A405108868730D0EF6064D8C1B66DE69BBF7FFA
          D9C79D7715DAE418BBE1B4D5ABC2A7569C8D9E735596B8D99185875DA93C6B88
          586BC30B95B1CF2E1EFB61D97DE95DAABCF396DF5B8347C37CFAACA6D6DB6EFB
          D2874F5DB5EA70C7D1A3B4E9B58DA232D880D90BA68334817DBBF6C3B61DD454
          D562DFF636FCD77FFE50AEDDF4B4D37C78075495B5DCFAF9BBFAB71FD8C0B542
          E0AFDA910A0D23DE2EA43ED4011670E0DA165C699E540152DA64E52586D9C08D
          F5E19ABA716708C73387899279CAF4A68E5AA43C5152ABC01E4D43E50087804F
          017675A691CB4BF077305435C244DCC5EE5D269EFD63F66DF0FEBBA6047DA1C5
          1EAF5F2170591E9944C30F1D95FDBF4DF25E3DD8B3DD1AFD64165F1FFCE02716
          72BF26DDAF5C75274606C7DDB52FAD85C7E339B472D5A9AFF5F50CCD5A75CA2A
          79C6792BD075AC1B634309D44DA9C1F0E0189E797C2D761CD8280A3205AFD7CB
          344DB716CD5FB076A8AF884FDCFCA9BF6E4312D0C1D142DB51053FE032B8B0F1
          C6D0480408559189DE44241C33AEAEF256F33DE92DD249A7A41CCF50B233F38B
          E8247F26D93941305429DF320DE29C70DCF541CA14A490203A61B2E9B4404BB3
          85745AFCCDCE450906831A63AA79BCBD5F338543E1CA1A994E910C57040F8F8E
          8C0C0659803346AECC3318AA8F6A6A0C2A292929EFEDEDFDC6E6CD9B3FFA8B9F
          FFC2AD2CABE6BBB734231808A0AAAE0C6B5F7805FB5A76236B8FCBD1542F8B46
          A3AE65993C120EF7DD7ADB6DEB6EFBC2773065CA143733E8BCF7535984507D18
          E7AF5D055F04280CE6DFB1B622D8661189541EBECAE079B525F58BE2C5110CE6
          3A24520596E94DF48796943F6E587924464CC9340EF1D6EB09981004E6E5D0FC
          3A1C5BA2E5808D744AC0B6FF3EEFACF8BD3E084994CD6418B92E99B609292579
          0D63FF94C98DC44EBAC39F9C7B1003973DA2A4D3699B3176414343C3A7162E5C
          78B0B5B99BEDCBB4CD52348E78600CCFFDF4058C268764D39C467974571F699A
          2621A51052727FC0F7CA9E5D87C6AEBEEE723669DF74B1FAB4B3DFEDF524C18E
          E59009A7E1AD36206D178EE9BEAB408DA92AEC014B87C7BABA6C46393B926E96
          4E3A0399C82037ECFEDA1F93C38554119E12ED3DC73AAE10426B62D8F91B077B
          3624FFE14223851167C5A2A3DA76119004CE409C41588562B7E3E465B16853CB
          CF070100151515E28F7FFC2300EC39FDF4D37B88A8BAD3EAFA17336F5F6539C5
          8BBBBABADCD1F101663945D9D57F94027E3FFC81204CCB2455375CC7D1FFFCBD
          1F7C8F3E7AC36768D3DA0DEF59B9A7E4740C4F3F8289B2016823C67B3EB48044
          F9D446042A4A4E314B86CF1A49F5612CD32D4526C70A7DA9F1D88C294F733602
          3B40273268DF6B6AA232BCFEE3411CDB94FA1F556A29B942DACDE7B29C714E42
          4A4092948298E131628EE38288E8570FFE1437DFF459DC7FFFFDEEB7BEF52D25
          1A8DEEEFEEEEFEE9E6CD9BBF3765CA94FFBCE8F20BFFEBD9679F6F0C463DD38F
          75A7DD6020C0554D83A16900042CD3E29A1ECC4763B5CD9FBAF91AB964E90271
          CEA9E7BFBB7434A7C05A19877F2543D82D01C9F7FAE3092060B0F7A8A26AFCFA
          BA48A577C41994BE38A7DC600E8903C93FF2F2E1C379CAC32A986F2B47152771
          AA3AC7C175291CDB94FE1FD7F9299CA1239D4E4E373C5E9531822B191C214948
          B9C815029A61C8A6D993DFBC606868C8B9FBEEBBC975DDEF5F79E59567EEDEBD
          FBFC74267B4B437DDDF8D8D8180B0443229D4E211A8D40D57414AC82E342AA2A
          375E09821F07805BBF70A73CB06FC7DBC1981CFADC3C324B0E411CD741CE7BC0
          6384EC8489F4A8095641934BAB626B1C61235F88C3B1C689B29E4471887E5788
          C4DDF1440176DA45A0B41645F24321021841F7AAD8FD8756F4EFFF9FC3030076
          F040CF231389B19CD763105374C939270297D94C6EC187AFBA347AB4AD15A9F1
          1C5D78D1852792D10301CC9A350BF7DE7BAFACAEAEBE69F6ECD9DD2DFBF7D76E
          DCB8716E32959425B118072055550318433E9F2755D1DCF28ACAC700E0C69B3F
          4A6F9DE731578152F4C26A1846FE8C43E036839BB0E1648AEF929BB5E0A41C98
          83B9124AB93F0D94F98369312129EFC23326317A6478476C46D9A6A9F622CC09
          AFC492591F444DCD02481560860EC56380790DD8D63FB1E0FA815F3CF85C269B
          3CC2154784422197813345F5B89974AE6EDBD61D374C99DC20AEBFEEE36A3A93
          C107CEF900BEF7BDEF61CF9E3D72EFDEBDF4F39FFF7C28994C5E3379F2A4A191
          91113E118F3BAA7A22FD42D334B8AE238A96A904FD9162381CDD0C00BFF9D543
          6FBA392E141422C318AADB8EE4C23D100517D27200E7DD128E0D296CD2F51002
          61EFA7E62C9B7DF619D1CB44949593393682E478CA2C64F90F7253B2F8E88F6F
          C6DDE1E7E9E6C66FC374B327BCC6499194A07F629939F3F8587B7C62F869D34A
          B0EAAA0A29C1A06B5E9896E47DFD03FF92CEE626319517A5149AAE06DEB2D451
          655959198DF527B72F5CB8F0FAB973E70C72CE289DCED81E8F870CDD90D96C46
          12B84C25737B192BC9BEDD5F1098ED41AEA40F7D8DEBE19A268469C32D5AEF29
          6959706C26D3FD13655AA55C33B9661E3CAA87EC209781926AE22698676A6C8A
          DF6B686B3FF53A7635BC2A77E75E07972AE17FB1B18F5C7723F285C2B399CCF8
          B1B2B208373C018733951B5AC0EDE9196D983163E62F2FBBFCD2D8EC19338BAE
          28BE2D97A6A3A343DE76FBD79423FB8EBFB278F1A2CFC562E505DB7539E36413
          2764B3699B482545F1FF76ECC8B1CC73AF3E7EA23C4AEAC8CB0C5AA63F80A4BF
          0334EE8553B0E198C513C7F750316FC1C901E41517953695CD0E531487CDBD94
          CC0D51617442869B1AB4296B16FFD7B285571F8A7DA2E9B9E6E0CE0F4E7806F5
          40D02F9DA20BC618E8A447FE6712E5679F7D766062BC6F34954ACBAAEA9A0B00
          AF33369660BAAA302184D3D9D9D598CDA456344E9D7CA8B7BFA37FE5B23310F0
          FB313C348CFE817E1C6FED1465D59394DE8EAE239158657BD1B6CFD514C597CD
          6468229E508381D2622C56739717FAD08459606B3E74996C6EDB8121B30DCAF4
          5108D78570248423FE7BB9028C1BE87FAEDBEB99CCBE3D7DD5D2465D7A658773
          18C5D10429C75354BA70116409D3160796C572815CD331FFC16B2DA57086C809
          ABA89BE3CC30B24AD2402C243070B0178921F39F03907197BDF8C22BEEF77F70
          F78160C8BFA4B6A6BE299928144DD3E2AAAA3002DC91D1D186CEAEE36B1AA736
          56363636F654D7548D4763515C77DDB5D8BFE7200C55119E50191BEE3F762456
          DAB0C13265B55570559F37722414AAB8676FCBD6B5532B9BC48AE58BE4A285CB
          F174F7BF83CFEC83CC70B8A603D7FA2B2A3AB0B345542C998DF143BDABEB3E54
          7F7B6DAC898FD943182F0E12DAC61032CA259FDB4046CE9595DA5474B063D2EB
          0DC053E9A917F5F89037E83943CBA8B0526836BCB6EC69EEFFEF00D249B193A2
          779C7B5707E6A79FBADAD9B4650B17C22D8EC5479AABAA2A9647231555E3F194
          E33882204932A6F0A2E5181363A9198E2D13AFAC7F79F391C3ADEC993F3D23CB
          4BAA10F007512CA42533BCA4C2199834E3CAC723D1EA5F6CDAFCBB079AEAA6ED
          69A86C102A74D4D4D42136BB8817B73D0AB2543839C0CEC9BF2A33E9A2644E19
          269AC735A5CAFD8F8AA593E77AB85FF6399D648D24A01ECF21347F2665FC19D4
          8A7ACAEB3646F91031C661381E59CBAB285239A58AF7F69DB3E3B1ADBFA86E0C
          E7BB0E0CB3C490F906187E120E7F8BD85BA0D15BA0D13B37ECE06D47DB70EDB5
          D748DBE1CCE3F18FAA4A706D38EC5DE3F7FAA3C9648E299ACAFD7E7F7F4D4DFD
          23975E7AD5E782C1D8534B4F598DBDFBB6CA8299C31B00A514C86512D8B8ED15
          CAF4B7CACED61DCEC2F9CBF1C95B1EA57D3BFE848852855DC7D7E3A8E7391472
          054847817401E1FC75D97997CA16946164E7C0EC927322F7C6AAAA59C64E61C2
          1C237E34053F0B000B2AE1985954EA9364B73C4691AC41500DE2DD13883FB32D
          E721E2C3E9C1976B96CD7928A2A6D5B1D12CEF3F925201A8272B56DF38BE1320
          BDC7904927421DF84BBDF0DA756B51565E2D6ACAA793EBA2379948FE4749ACEC
          6B8B167A7C12E2952BAEB8F487575EFD813D975E72051CC7A58ACABAFF76C57D
          FE5997C8F6836D6F7E7EE087D7498041942680B2383CF31CD43645F0B7EEDDCA
          0DC2E06BBDF0D62B9FD6AABC4ADECE89949B64229E833E5A049F1B455A261073
          03186143B0736939FAA36DA3A149E54ED6CFF4E6EEEEAB321DDDE58C7B066253
          BCFCE7FFB2C1471ABDD1BBE45F623F6F4A9C144E1EE5BBE3447F39A700C0E64D
          5BF0A13557414A211F7EF205BAE283A7FE9231EC59B962B1FFF3B7DEB0F90B9F
          BB09DFFAC68FB4F8C4A893CF67C591C37B114F8CFECD03AD2B5C38976FC0149D
          C19E2000C5BFF14A01497E09F07A7D1ABBDC360492C5712ADA05680379A85091
          AFE530F34938E4C550B147FA3382B51527B69CAD36FCECD70F6E6B3CBE37D19C
          1E2B144EEC49B0BFF24428E76D20DC77E89D20C55B40CA77027D334BFFE9279F
          C047AEFD34203352515576FC586FF369A72EC7BF7CEE0E3E63C6346CDFD95CFC
          C6B73EFF8FB92A41608E0A7001C6FF8E3916019665409DEC7C414E2E96669CA4
          648291916430066C694E0FA0A0E7C0521612C6189CACC3F21E26AB6E9B77EEC8
          8E68B679DDE09701AA610AE9002457B8B04D479C04E500B0DFD1DB9CB7C87D0B
          60BC474FC4BB2AD61F79F47E5C72F1C7F1FB3FFC527CFCC6AFF2A3478FD38F7E
          FC6D77F386BDFFF05EC9E470D833FA31709C00A1FCFDECED0CAA5794D6560503
          C8C92C65280D399A957ADC213B6741B58182664B5BC6895C2EA590B24C8DF97B
          BB8E2D00305551C9E7D842007084E3D800ACB7F4B6373E174FFEFC0638F1DF98
          EF7B84DFFE87FB48CF9BBE189515D510C2413A9B44345A8AF6836D28140A983A
          7D16541DB0E6F7C2D62D90F8FBD750AEE3A2765A55C4C395DB4A23749DC7EFD6
          65641A85E6E4507022B4DB09A74EF34F8F85B3B37C88472C98CC14BAD0587ABF
          75B4FDA7C947DBD7F51C3E09C504900390079005503879CE3C09EFADBDF16F82
          22A584F2BFB9CC81CDA0CD4E2052C121ACC03F7C1B399C49F40E9977ECEB4D3D
          1891F645A5538CD36295739F5FEDBFF1B79F7B74CD4553A74C5C3763567465D3
          A2DAEAC2F4081B2E4D89DAB3C24D15C9FA9BDBD7F5FCDB4968EA490F8BB798E6
          3B4DF6EF0F67FDAF6F6F260842E0ED21F5BF7718E0275E471E7965A813C07D0B
          11B92FBCCCC637BEF91D5F4F1FADEFEBCF6DDFDB9C9B57B561FC825356547CB0
          61515D53707E25D6EF6F19071004418544EA2448BCC57CDF90FB8F3EDBFF3EC0
          7FEE3E73D4382F24A72D8A82E5145CF7A58F982DB7EEA7808712E1B0F6EAA183
          F96DC78E76FCAA76D3C0B9F34EAB587DE4F5F82600ED04E4259004903E69BEE6
          C9714FFCADE6FABF3606FEDFDEDEDF80F17D80EF03FCFF75FB3F0300A877B996
          BF9F12B00000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000031
          F64944415478DAECBC77909C5795F7FF3DF7DE27F5D369A6276AA4D1481A4956
          96255936CE39DBE0840326BDB00B2C8617D678317189261626189BE4B559836D
          B0318ED8382ADB9615AC1C4633A3194D9EE99ECEFDA47BEFFBC708F3B2B08BE1
          FDEDAFDEAA57A7EAD4D47455773FFDA973CE3DF7DC732E69AD714CFE7E61C710
          1C03780CE03180C7001E9363008F013C06F018C063720CE03180C700FE3F26F4
          7FD3C37CEA33B7DAB77DE56BA6D39A8C7E7FDFC3D58F7DF156B86E0A5EE4638E
          3DBD61D81FEB7013EE89D54A75B51FF8F303E9CF678C73CE49337012DCF014D4
          3EC772C61AEA1B1A9D9813330DF3704343A6AA81D7013DDC52376D32954C0E94
          27CBEA43377C6862FAB9332686760D00009AA737E19CB3CEC699679F851DDB76
          60A06F108F3DFE183EFABE0FE19E67EF376FF9D0CD9C38ABF99E8FAFFCEB97FF
          EF01F8F35FFF9CF7F6F4D1176EFD7C0400CDF3DAD0BFFD60F2BEDF3C30E3C5B5
          6B668C8F8FCF175C9CA0A197463A9AC688BB8233C185E09C7310113863202200
          14015A831891066928054E0A0A3546E473129E567A58184232B0BE03070EECB5
          2C3B4826D2F9C8AF0E9C71E619D6D9E79C7DE4F74FFF3E77E4F04029D3D252DD
          B77987B2E73BFE290B4EC1D0C83038E358B66409AEB9F2EDFFFF019483FD20CE
          B16FE33AF1F4DD3FA6C6F6561D3FEB02BCB8ED35BCFB8677440F3FF43896CC98
          EF165479EEC1C3DD2731C225D9C9DC694110A68808866DC2B22CD89605210404
          37B42104B810C41869CE381111080C12121A1A5A292DA5A4288A104511225FC2
          0B6B08A2003292A894ABC8E7262103892894B01D138B972C86C18DE8D0C143D9
          42217FD0F3BD7E37E686ED33DB0F2D5FB6FCC96AADB6A3542AD1F9E79CAB4F3F
          F50C8837F3E34B939370E22E3DB779131F1D19A1575E58A7E62D3A4EC65349FC
          E38DEFF98BEF59FFA5DB600981FDFD47D8BB7EF403CDA6CDE000D4A2ABAE8F1E
          BFFEAD187FE801ACCD0E6328560780CF0770C62B07B69C1F44E1C9206A6582A1
          B1A549C5DC58188BC594699A645916770C872CDB26CBB2601A0638E79A310288
          B4521AD01A52294819414A8948463A92125114EA308C1005910E65A0C32054B9
          421E5ED5D75A2AF8418D6C3B46A10A71E4481F975C372532C9E6844AA25AAE61
          CFDEBD709DD8450DCD4D174A292B7EE01300FD5F5A60B6320903045D0959AAA9
          518DE90AD675F540953C0CED7C9D27D329B4BCB019CA2FA1369983920A4C297C
          6FDF1E5A7FE08046655252BC1E58F536E8571E020903BA6BEF99BFFCCC2DA61C
          EDCD357CFCD38997B6EDB8D2308CB383305CC805432C1ED7E9443A70132E2CCB
          E2AEEBF2543CA9D389144B265370633198A609CE04189B725F0D09E8A9F59034
          A0A0A19444144508A3104114C0F77DD4BC1A7C2F40B55681EFFB50A4E0FBA156
          4A239B9B40D7C10368686A8812C984AA7921E760EA50D741BCB6699B1C38D2C7
          E6CD9F53BAFCE24BAF6E696D5DDB7BB8577CF6939F8BFEA2058EEA027ACA0558
          C24414051086505AEB6497573C4395CBCB2747B2CF4461F45AE805A81F1C8096
          1EA24A19325230B9C05D2B57E3B53BEEC4DC95CBF0FB7B7F31FD82AFFFB8F4C5
          8FDF74CA435FFFF2B577DDF9830BF74EE478A27349CDDE7FC072E36EA363BB48
          D625836432A113C904736371239D48517DBA1E71274EDC10504AEA300CE1F91E
          4AE532F9A10F1929C8288286D60C8C40A485602484D0A661936999DA364C38F1
          34CCB40013021C040509D204CE3964146910674F3EFBA4EA13067BFBA5D748C1
          85F642DFC866B3D1D6975F35D2754991693A5E199CC546C7265A0A853246C646
          08C05F7661098593E23368B2568005D2326E5EB467B8F7DB7D6B37CC643FFD77
          37D1D5F781ECF4693FF44E5C7930BB7829576199AAB971A642A50D6658B18465
          1C7AECF9C486DBEFBE7A2C28767EC21BAA35ADEFAB9FBCE09AC4F32FBF8AD6D3
          4F46C3710B613142A63E1326D3092492099E4EA6595DA21EAE1D83D492AA95AA
          1E9D18D5C572912AD5AAAED5AAF07C0F811FA8280C11451A328A4829491A53EB
          0623A6B960E05C6843186499162CD382EDD8706C07B663C38DC720606AAD08B6
          C1C9755D0C8D0C52A6A1514F6B6EB538110CD3D2DB260BA66DDB58B56A95D691
          44C5AF901FFA2A92112CC7D67F11607FE441AA328D4425DD6225F838F33F7E78
          FFBE2F06DFBC33B6FCFE4754A32F2510B6158F0CDF56DDB547468E206809A640
          524A9842A00B16EA2A9A7679792055C3358D31642EBE0C8F0E8DCA592D4D5879
          CEF93A6610A59229CAD465785D32CD628EAB9592542C1431323C8C5C3E8772A5
          8C5AA546D54A4557AA55EDD77C55AB79DAF77D16043E8BA406B4925A49A63594
          300C2D388710429B96459669C2300D326D932CCB866599CCB40CD8AE435A1385
          52C114421B9CE9DC6411AEEB62D3F6CD80D63A9D4CD3C1FE4338F5B433F4F4D6
          36940B453A3CD04743C3C3A4349074DD3FB7C067D6BD8466CE5180A91B8DB83B
          11FA5F3BBCE5E58FA88FDE1AADDCBA2FB299CF144216DAA4EA38E98C2A437B04
          C2D4D11419A40B91A06239A926A5A4A6D650BFF5F2B7D1F4F3AED0FD8D4DACE1
          3BDFC6DC9356B1A659339089C5914AA48933AEABD5AAEEEBEFA389EC842E14F3
          A855ABA8566AAA5828AA5AB98642B148E5724555CA2593738E72B91CDA9655E6
          86C1B3136371003EE35C1020880886302184985AB51D0BB6E3C27563512C168B
          62B1988A275C48D2548B3C70C3E406E7246544956A093D470E93D69A0417D04A
          69550D989F2F5767CF9C6941202855AA3505205397D6B3DADBFF08F0AE7B7F0A
          228201CE4CC5447776ECCEE1BD3BDF157BF70782957D834227A6122C32390910
          22130C9600310203203560384C1FCE72A2A2A6A0D9C6A59FFD2C5A4F3D5BB374
          1DF1C33D98B9FA2D6CDEE56F036F6ED74C291A9B1CD7D95C16855C19A5425ED7
          2A355D2C1550C815642E9783E70746B954427D5D7D74F619679A52CAFCB6EDAF
          FDF4F28B2F39383C3632F28B5FFCD259BC74D1EDA669B6D5A5D26A6070B0574A
          79B0582C16AAD54A5243D773CEEB8430EAB930D2AEE308D336914CA4C00C8672
          B504125C914191EB585AFB4C771F3AC84CC382548AE6CF9F17FCFCE777CBD737
          6DE5279CBC9A2F3F79F5D0F7BFFBDDD7EE7EF4213A71F122F5E94F7DEA8F79E0
          2F7FFD0B645A6790C824B5E9E1FDE323877FDAF0919B83530EF708B8261453E0
          262332081180280618710E3002D31A5A13B80DBCD6AB501831B0FFC4C5B8FAEE
          3B351BE8D3466E84F9464C1DEC1F083A162CB0721D7328EF55901F1DD35EAD42
          956A45978A659D1D9BA4C9C2A4026951974EC3B2AD5DA562D1AA4FD7CFBCECE2
          CB762E5CB0F076227A60CD9A3538EBACB3A0B5C613BF7BE2CC818123977012BB
          8228D8F3E10F7E78271185C393A3C6B7BEF68D86EEEEEE26256543B95269742C
          A78504EB300CA3890BD65CAD541B95562D966335C65309343536A3BFAF1F524B
          044188534E3EC5AF0C4F1EF9D977EF6CD38C99B1A45B8C48FE7358A9DD1B1982
          9996A1DE0078CFFDF75063A645F7E5C73A22AD5F6CBEE3CE1957BEBA199476B8
          560198CD00531019D08A34055CC06A60D0C654EA0005709BD496AE8085DD35B5
          BD6316CEFDC43FC2C9E7B4A895C9140207DD4C587C6D1D93279EC9AB0B97935F
          2E61389B536363A3981C1BE3C71DB7407576CC61E0FA85C972FE1BE79D7D5EF7
          C8E0B0B17DEBF646371EEBBBE1ED371C79F9D5970DBFE663C3A675F8E2BF7E59
          8761182D5BBD14375C753D3EF9C94F416B4DCC644C054A1191BEEEC6EB50AB55
          51C817502A95B175F356E8D017D7BEF39DE9896C36F9F6ABAFA95BB761FDDCD9
          B3671F9F69C8B48D8E8ECCEAE9ED4D8C8F8EA1B1A57116ABC9F8C617D649D376
          2245CA02C7B86DD9E78C65277635651ACC375CF8507692EF2BD722A5D4B5C6C6
          75B36ED8BC59F28CC122449A5CCEB4C51504008B08C474291B9161DA602E414B
          05441A3A0E32D3026E4A50626C00FDCF3E87F94E8872B94676218BD6D5A799A5
          545DB0EB273FD4BD8B4FE29833472F6E498B050D756A67C5ABD6A552B113579F
          B4A9A5A9F106221A1B9339244B4910C3013FF4313438C4E2C978B8F9D5CDF8EC
          A73F0F00D05A3322A24BCEBB0400F0AB871F543AD4EA031FFE00AE7FE7F5AC5C
          2E1300B26C1B894412071B0EAA55179C1BCDCA344F78356FE2831FF820CEBFE8
          82ADF7DFF7CB07B5D6CE817DFBE2BFFBDDEFC46B9B5FC3F8E878626270F434DB
          897F2B0CC23A2255254D8D64EA5393A6BDAB522CF13700763FBF86AA96058070
          CDA635514383819008C266A42CA64980B400C8623A12A0F23060D52412AD0EA8
          12415B1C6448641A0D94463CAC8E08CFAEDB8A543B41D46A604184DAE84368B9
          F00AB168D1625ED9B206DEAB2F62DEACE6B1B6E357BFBF3ED9B0C70D6B29C78D
          1DDC7B604F652297E36B9F59AB0BB93CAAD52A2D5FB65C4F6B9BA6FEAC1A42A4
          00E0B6AF7E0D0070DD35D703007E72E74F00E02FB65D1C377D06F94140F1A40B
          AD35AEBCF62A00504454DBB87143CD97213401DD7B0E0D33531C6402074C66DC
          EB57BDD904820C95333C918384FA630C7C7F63B3984867A2B1886EB83BE8BF67
          3EAB72690AC66CA66130A684D6DA64C44DA60397D3C0D61A9C4603CE8A06D4DB
          06225F8224B4B405756D1FD1B3CB25EC9AE4D854B210C6435415D3D399878266
          84C5C78F2D6BA91B999570B7D4BBC9EFDD3167E9AE3F3C87520A4B962D434F7F
          2F366E7D05F9A08A90F1C4C2CEF957CC48D6BD3DD3D4787E3A536770C651F36A
          C8E5B22817CB1BB2A3E38F9472B9DFCC9A35A73FEE26F0E4A61770F2F21360D9
          D67F82F12F4B5D8D68F7EEDD38DC7B18A66362FF6B3BC8AB78AAA5BDED94F181
          B11740C40DC7B886883DAA2269BF6181133A94E74E0EE0C3EDECF7AFE6D830D9
          C60C2D486A9B380CD26430C020AD0864C605AA7103C96C84C278157EC76CB4CE
          4A00E52A2108D0B2D4A6DC9E2EAC6EAAEAD939869DE3C00453AAB12925C6E6AD
          5A3776C2791F0EC7BAF6BF1099D1E89CD9B82577983679C0D9B7DD812F7EFF9B
          FAA86BC2316D08D3BCF8D4B79C72DB8AA5C72FB32C0B7EE0A352ABC20F0270CE
          61D9368AC9D2A9762A7EAA5F69BEA5349EBF2B5F2C7CDB32ACDA5475E66F9349
          47EBB61316A1ED8445F8ECBB6F02006D80537622BFA9AD63C6C3A1E79D9A4C27
          76B8C93886FB86247FC3AC630E5A18C38087DA1D9564FEB42671455D2C881423
          C66C03C414C160D08C206C50C93490DF1362E63485C1B287F1D0059FD1063753
          87585B1392ED4D28F9521759857566B85A90D2F0134DBAB8EC9C2FA2EC3F1704
          4C1CE93984EF7DEFDFA1AE7A9B3E9248E3EC8BCF87D61A4DCDCD28972B686D6E
          B9E91D575D7BF75B96AD6CB3B8A1651441469294D2904A426A0DAD3504E75A29
          052F0C133C669E65DBCEE969616F002167D9F6DF6481FFBBBCF8E8EF000071D3
          2662A41375C9464DFA52A5E44F674E9F3959F53CF106C0C5AE8BE9A4914A117B
          675D71FB2FBAF21DF3A7C557A61C1D058238333988016472208AC86D32B1F748
          8464AF8F8EE3184AFD4318ECCEA1BF2A303C50C2BEFD39EC3C5443EF761FB57C
          44DA31551C218D1EDA79E4247FC3339D952D2CF69E4F46D34E3D61EA076A0047
          81386E0C6074DD5BCFBDE8EEF6C669A25029EA894A81CA418D422521A7C21EB4
          D688A208524B320D93B406CA953242A8996EDC3D276DBA4F4BD279FD7F085038
          362427A4EBEAE681E81DF59986D75E7DEDD59D93C5C21F57E187C7277062533D
          AE9D430A054DFFB4AFEF636B2F5B96BCA8CEBA32A68220D4CA10A601120C0A16
          6C2670DC3919EC78B484D5AF55D1794A1CAD43C3D8F3F228862B0CE6680DEDB0
          512F349C9C422A1168B2259FDBB9F0E4996C4B124C14B70E8F51FBEC596FFC3C
          A924D2C93472D9ECF4D3579DF49DF6FA66F44E8E62A834498046A952C6C8F818
          8AA5221831A4EBD288C75C98CC44D5ABE9B81BA39A1FD7D95C161526173A71E7
          FED2C8C4F9966397A4947F772DB3522E034420532C94903AE0EA8242A9F43080
          E8CF8284BE2881399B33ECD5BEBDEA072BDADA673AC6E3D72EE24B5CE549DF87
          C19D98625C30C54D883A077BFB24FA9F18C5C9B33DB82B5D506F053B8B845445
          C23D5CD342684010B4A343CC499AFE79D7AF9D76F8C717DC3788E09235051CD8
          73E80D808661A2ABA71B5AC9AFDE70C9959F1EAF14747776883434B6ECD8869D
          7B7679A383C3F7E746279EB0E3B1BCF4FC599D4B165EB160C17197B44E9BC66A
          9EAF8330A0E1D111144B459D48C48957E4773CDFBB591806F4DFE8CBFD5BF662
          FFBEBDD0C4D1DAD83CBBF748DF9672584D3A3137686D6EBD78787464CD9F1D2A
          5D7FFA9730901FD18DF1188D9CF7DEB36F2BA6177DFEE5A22C6A9B5B8DAE26DB
          A4C8B4414E1C52C6B160790B1A2F6EC78E6E03E1FE2AA84E603A93184F38D033
          2D622681D5718898C1ED7C29E27D7B4FE87DEBFD17E1EA3B74F9A64FB3A4E920
          693A489931248405132CBE78CE715748AD305CCA12E75CAFDFBC096B36AD3FEC
          57BC0B6A1385F745BEFF687934BBC6B49C7BB46B5FFEE8438F5CB9E3F51D7D82
          33129CEB84EB42704EA55219563AF6C162B1B8989B1C5CFC6D9A88C771A47F00
          5B0FECC6783EFBD52A4575665D22AA19CA1109E7F67FFDD2E76DFE1F015E71CE
          19F81F9FFC0456AD3C21D5B76FC7774627C667AE1D56724B6F51641C1B8D8D2E
          E28D19449A034E0CA40CB42C6CC1A026E4370CA2A9C9A498AD75292FA99C3474
          DA94E026D73C468C2C1D896AD689CC64FA9A9F3DF0C8FB0FC7C2D62FBC9FB42F
          611A06126E1C7DBDBD4B579FB0FA9F8B415514430FBB0FEEA5B59BD67B8E6DDD
          1884FE8BC5F13C1414B454701271B42F9C8FEAE4E481B1F1D19740ECE269AD6D
          6922A052ADA2E67B70628E1156FD309FCB3DC340088310A11FBC298D4A558AB9
          315C73E1452B0F1CE9BBDD131222660B9E7064C52B4C336AD1C49F019C181BA3
          97D7ACC1F4D6D67376BCBEFDD6DAE878188F71D14B313CD3EFD3B67E1F8D16A3
          CE853328928CB4B089739B5A8E9F4187F321F1FDFD3ADDEA905D0C512E30380D
          1CCC2632635C53C264A62A49E5BAB33FF78D3BB64C50D781EA0FEEA29E858B51
          AE55F0E4534F61FBB6ED6F79EB6597DD90AB95912B17F0C2CB6B51C8E69E4B37
          D67DC9726C540B25D42A55406BD871174DB3DB31393C828E8E8ED191DEC1D79D
          64ECDAC6C626A356ABA156AB229211D2C954DA75DC5F5AC99847441096F1A6B4
          775717B39D98CE4EE63F77C2A96F59BDA7BF3B8A251CD6D6D486D6E6163A7CB0
          BBE34FCA59EFBAF15D78E1A5E775E0F9183CDCFDBE4ABEA21533C019A3269B01
          E9B8DEA60CFAD0F3FDFA2BCCD1579FB794B432A45FF0986D2569FE252B51E9EB
          2215496DC6391A7B6B04DB42D82A603B00999C187322A7D06B8D3CFFF035EADE
          7F7BA6E7C1DF879012F043343436627A7B7B83A74268821E9D18A37CA900CEF8
          CB95421956CC417D7B2BFC2040399B9F3AD836380215612C9745A152587360EF
          BEBB66CEECF8E7542281EC64166110C24859F3FCB152E76076744BA95A05636F
          EE38DC9392A02418B1C6ED7B776B6E9AD4D2DC82451DC7A1B5A9598F241B5BFF
          E493A45474E5555763EBEB3B971C3EDC7F91EFD514015C08A16B4A926318BAD5
          E5B03B3BF5D736E570D7435B74358A843DBD05D24A69F340B7CE4C134ABA5C33
          1951222EB5391280851ACA353477192195165658089D6CCFDB32BBB20B981038
          61DBEF89048769DB609C0BA924343415CA258008E0AC16F8114AB902A454689D
          DB81C6996DA8148A183AD00D288D426E12C95412837D033FCA8E8F17EA922918
          424069AD2329D9A85F5CC85D07F5CD8D483766DE9466F3E37A243B8CF1EC0806
          4607605A061AD3192C99BF10E79F72069D77DA99BBDEB0C0679F7D16F7FDFC3E
          1CDC77009FFBEC673E569E2C39902A240601301896A9856952B15AD3333AA651
          16025FDD70006EE7A27DE72C0B8F6BEADE424EDF5E6DCD8D01E3654805C91A2C
          C29007CA3344D31D325C5783C7388BA52323DB93908FFEE8EDE6F2D377860FDC
          05F3CCAB61DB1688731E1D4DDCA492204610C23089086FEC2C08709B33686D6D
          41C7CC0EA0A3035A6B30CEB06CEEC2AEDEA1C1ED96659F699A266A9E87288A90
          AA4FB71FDD3BBFE95538F403D2A4112AA9AABE47AE6B2A2D254BB831D5529FE1
          BB37BDF60B01009FBCF5562C5BB68CF59CD2A31E7CE057D30707072FAF552B5A
          2BCD4CD3D04A29E6C6E34A4AC94C5368DB4EEA52B61B8D33A795765FF0B1735A
          F73FF5CE81ACBAB561D9B258AD5635D1BB4BCF4D805B2E41D5841405CD544D43
          3627B5E006643CC58DF141EDF7BE7EC3ACAEB1AFEFFEFE53658A02680238038B
          5404A5153863605C804D1DA24F59A3D6886C133386B2B0771F80B56821C00076
          B44B65EBEE5D20C676CE993BF74CCB304144249584695BF56E2A01ADDE7C2A93
          7053DA75629032BAD79B1CBD2AA8D6CC91DC0476EEDFC5867A7A36BCEBEA1BFF
          4D7CFC7DEF07005C7EF9E53C93C9A839F3E7BC67CBE6CD19C8486A026344A409
          DA364D56AE9454437303F9E54A54297BE6CA55AB7EF5AD2B4E1C1EFBC0FBBE39
          77E9B9A545F33A7F18FA4134947995EFD9B9717279FF2B62FE7427A10F575558
          F089B460229951D232B9D9D4AE79696456C3A7BFB07AD7C1232FAE9AE8A13576
          A366A6C1A552472D8A4F55BC0537B829C018436419983D5E42ECB135E8AB5420
          366E035BBD0441A90C468462B188783C5E320D03A6694EC53B0D80B1D8B4391D
          306D0B6F7636C60FAB4AFA3E468AB9A79BE2E95BCAD5F0E6F1FE11F674CF939B
          4BA3B98F3E72EF83115BB47A35C29A47070F1C902FBEF8A239383474855FF548
          850AB621289411D9B609A9A4360C93D289B41A1A1860F16422387ED5AA7B16CF
          5F80B8E04D0DA9D87575993A4825A5BB78096BBEED27F73C651F77FDEF237B98
          3296E2D940CAC9A256568A98934050DFACB896AAF2E8BDCB85212026FA89710E
          0213524DA5BC9CF1A92E042184615B080D8EB9F92A8E7F7C1DB452F0B4C242C9
          F19600B09271C453099896091985D2344C98C200630C1A0031120DD3A7A17556
          3B5A3ADE9CBEF2DC7A00C0ED37DD0A00B79F3A7BD1A9CEA8772638DEE6384EBF
          EBBAC48E0C0F337B461B4DE6F3EA9F3FF6B17F1A191A3E4E8791D4444C08418A
          48BBF1047CDF473C15878CA22897CD89BAFAFAFB3FF585CFEF78CF07DE073759
          97B26CB3736274940EF7F6B089FE23BABE5AAA2CBCE28AA7BE9F5AFAD3FB744A
          C440912C567400096DD76BA3BE11EEBC0EC6E3096D2512B0534930CE01C679A4
          25B4060C21605B26E2C9246FA94BE3B59F3E8C0DDFFA19928CA0F8542F8C364D
          24376E45FDB6BD881887921A1AA44CC384210C3062D04A21167785690A548A25
          84818F280C508B027851F89FEA1FE4B277DF00AFE8198DADD30EA79375073F73
          C547D1D8D2CCD76EDCA045EF868D49363C963FA773DECAE79E78FC73958A674B
          CF978E1B1351A874CC7120A1B4109C1A1B1AB07BDB4E0843E0C3377F34FEEC73
          CFC933CF3E8B7EF3EB475A2BC55A5A063AAA963DB26D3332EBEBFA1E4F74F0C4
          7999753FFA7536971A29A7AF0A423D512853C38A768C8D8EF135FDBAF0F68F7C
          EAC9ED9FFF24828B2F5236E7907E20A452505A410881981383A2484F0F09B143
          4780580C74B49188008031906383BDB011490023CD19706E8606175300190363
          1C95429167C72760B80E725BBB10F90166C71C48ADFE4B379EDED20600A895BD
          30572C9C2705E63FBF7DDD0E37E6AE2F572A104F6C5C1F5AC2C0590B165C96CF
          E7EBA52F7D489853D51105D7895128250CD3D0C383A30C26373EF7A5CF45C232
          AEBAE69AAB9F79E2C927EFF67CEF14CFF36252292F5FCC5B6DF1B6DAECF69907
          EFFAF07CB968C5A20D4DD3666CBB6D7CF2DC59D94AB4A2C5A657BB86823B5EDA
          6165EDA67BD72C5AD0F5A219A30B77ECD5677DE483B0EAEB4285A918680A1389
          BA06B8DBF79D53D8B8E523CB1A1A7A6A51D477B052C94E944AB992867FDCFCB9
          1859BF1EA1696062FD66E8AB2F023142108500018C1188802054A806015AC726
          B0E6FE67502C9431CDAF2064FCAF2F2689043AE7CCFEFCDAF5EB6EF298ACCFEE
          2D8FB74F6BFB3A80EF89C95AAD02D4E2E644F6F8747B9BCAEE3F4CA4A4564A93
          6D3B605AC332059C6482162C5CA82FBDE4120A55C4BEFA95AFCAD191D1EF2E59
          B66CEF82858BC66AD59AAE79355D2A95883156344DEB60269964335B66F83617
          9BFA9389733E5D227DDEABC3F2F7E359E6B4CDD227CD9B7E5F7EB00FA72D5D86
          FCB3CFF2D1479F5AD676CA4967963A66C0344C70C7019926F8BEEE950DDBF6AC
          3CAD2E054D2C08188D7436350DB65BE6E0DE877FD35D0DFCEE80B3AEB57DFD87
          2FDCBE375B5CB5D42F7B35680D703E75F4EA41F1CC53EB9079E22598733A61C4
          5D40E8BFDAE1A7B5467373732777C4ADBE4D4E9547418D955B6872E49B179C7D
          FE63E231B8D0566CD1CBE363675BE79CAC9D74826F7D6E1DC552299896AD0DCB
          82141ACD33A7E1AC0BCFC5CE3DBBF1F5AFDC4655BF462DCD2DF1F191B1078F5F
          B67C9B1FF8F07D9F423FD09393B927CE3BFFFCD105CB96599986563F0CC381A4
          6B46FB42C1F263B6EC9C3FCF485BE6ABCF3FFBFCA177BEF52A96A856AF352EB9
          F49DE92038DB7BFA396BCF2B9B112513F0BD1AECFE01240646E074CED6DC34C8
          B04DD3B4AC7643F076019AEA8D716C68ADB03C9D2ED3C048DFC49C0EB3147850
          5A8233865046686B6DB132DD3BD840A5A2AA410065587FD5F2962C5E4ABD877A
          F4692B4F6D19D345EE3427C2B79E7525EBE8E8F01FFEF543D64C3B33539C6575
          C6EE9A31F29E058395F83E3F0AE6BEFD0A2363D7E98D2FBC08C640A6602A91AA
          63E5C9A2FEC617BFA2AAD50AAF85818ED90E25D349A5B46CDFB06143FBAA9356
          EB52B1CC7DAF46A6C1F72693712C5CB880868786A1B5B6223FA286644A1F3767
          A65281471163BFDB7BB0A7D09C485E77FAA9A7DD1F4FA7E1872142CFD37E3E4F
          956C16DEE4248274236A330BF00A7992A51254AD0AED7B086B0A4A038C337062
          600408CEE286632FE2518481D087D480E002916DA2E9C0E10B2B1B376F916EAC
          7B4631FFEB32170F6937367524FB9FC8AEDD3BF5F5D7DE808D9B370C38ADF55E
          9831926F3DEF92607A7DA3B5E9B9B5E382B97BC457AF98B7A2F3F5DC590B534A
          B71CDACB0EE90BF1EE5B3F8C134F5985D75FDDAA73C51CABD402BD775F171B1B
          1C600B8E5B10CE9F3B5FC413AE5EB0781126277272626C5C978A795E28E4492A
          85E6E6965DDBD5EBF4D4934FA9CECE4E0038C9F33C914AA5FC9AEF0B02D50C1E
          AD7BD78D372251282FE4F91C2A93130017E0A645F14402C9860690690242406B
          0D198608AA55048502FC5C16DEF818FCF17104D90944F949A84A053A08012511
          8D8D63A2A7173E6708B4865FF375D43F14AB338CE3EB62CEF1A95AF5EABD85E2
          19453BB62EAA5640F45FEF8DC70BB9C32B16747EAA14059F7EE0815F3639641E
          E87A7DDF2D3FBFEF8109F19D174F18FD5DC7F6A1063B367F69D4A353BFFD15C2
          A65B70C34D1FD6675D3FA17EFDD823E2F5356B68DEC870A973D1A2231B0EEE5F
          38AF6376F096534E312CC7D4522A16F89E2E168AA896CB28168BBA5AAD2637AD
          DFA853A9BA70CD9A35CD279D74E24AA914DCB8AB8220B01C3BF6EAB73EF3BDBD
          3FFBF58F51E83EE4F9089058B5122A9250951254A900A501CD19C038601820D3
          826959B09B9AC066CC00192634236829213D0F51A988707212512E8786DC381A
          76F6A0108590A502DC6A8D5241083F9DC464AEA02727F3A42BDEB99255D6E14D
          9459277339AC7BEEC53BFFF103FFB4FDB9479F9CDDB57FFFB6D5279EB64F69CD
          4470CEBF746DCF2D5E9BA9D86719754AADCAAED593B70FE9CA63ABFD1C37ADCE
          03FBC3D6BD07CC9AB41EF8FAC4C4F74E5D71C2831B5E797989938807A79D7EAA
          D1D2DCA4BD4A85CAE5124AA5224647C668E78E9D372B85E7BE76DB6DE5F5EBD6
          9FBBE1E5F51D86694486214845124AC935FFF0A9778F6BA559E36831082C0571
          E965D08E0B1DD4A086470029419609EDF9503282AAF8D065403282C41FC1C230
          C02C1B663C01AB3E035A60029CA14D01144550E3A318FFCDAF313CD283915C1E
          938532059104D35A7146D07F6550E1815FDD3FB52F0E033EBDBEE565CFABBDAC
          22C0726D1EF8BE148F4CB8ED77F514577C61AE8D531A3CE69906D5057BA1D66F
          B79259C825591887A8D1DF306FEE9D1F3A65C5DECEC5C75D570DC25F1EECEA5A
          2EC3D03FEBECB3CD191D1DD8BE6D2BBC20E2C71FBF5C8E8F8D9FF2F18F7FECDF
          1FFECDC35796CBE525D56ACD8E27DC9A94D2525A176DDBDE186331542A151629
          198218E0F9D08601921A5A2970D7051926946182AB08DC0FA1A3008822E8D007
          9482AE6880084A08682EA00C03601C5A0844A60970016DD9F03A8F43CF8BEB50
          0924400C8231402BF966EB0A5FF9DAB7F1D94F7D42BED2B55DCCE8E8A04CA641
          AD7DF639B97CE15CF0353DC9CBED79B3DF3738A32596C98EA2A3D924212C70CD
          182B4A51E5CDD1C1599DFFF25639FAF8714B57587E648D2CB8E88C755D07F79F
          BD6DCBB69630F2E5AC39B3592A95A6C18141B8AE0330C8B5EBD62E6A9BDE76A2
          EFFB4B0687065B33998C545A8B44227EE8C1FB1FFCCEEBDB5F2F5E77FDB5B00E
          1C3A7E7E4BC325B1654B01D304021F281641B60D280944217414816434F5BF94
          47FF4620DF03AA15B04A19542D81950B60A522A85A020A79F84343080A799473
          7974BFB66DAA9B9F3330C6E0433F1713C6061003FD27FAC8D8C8D4E9DC0BCF02
          000EECDEA3FA7BFAD4F0E0F01B5ECF4D16DD7ECDF5D7CF4F2C5CC26EFAF53AEA
          9E802E96953E3C6168E934FFAEE35BFF78DD27F7F1C7DB8AA3F8F2BE2D3275DA
          5BF8AA152BC6161CB760FDD8E8D8E97BF7ED6D3C7264401FBF74394D64B378FC
          F1C7A8A9B1914C61E8C387FBE655CA9569046837EE6AD24C3464EA5FE8E9E9BD
          C7360CFEFA8E9DEAE46466D982D686CB138B16830C1BBA56056A35906D43C970
          CA95A308FA28484453AFE920008200A41534D4D46B5108781EC8AF211A1B41F5
          C00104952AAAF922460F7583730EC6088C1142C69E8B09B19118E13FAAE01CAE
          21F0C0D0E05F9F547253A9554EDC1136275D37AB1D3F1F96FADDAF4EF26BFBC3
          81A507C63E40577E6E67C3F84E6E42E1DA4F7D117E18CADF3DFD34FA8FF4EF3E
          E5B4535ED24AF3C12343EA89279ED0EDEDEDFADAEBAEA39EEE6E54CA559AD9DE
          1E55AB5569DB36A4541C1CFEF2E52B9FFED6B7BE8DF77FF00334323C024F695F
          2B051D86D02A02F93EB49208221F1406B082104618424411B88C405242FB3EB4
          EF034A426B35E5CE5A818E96AAB4549052426B0D7F7010FED8D8D12D1D8111C1
          34054C5B84CCE6E0B6F8A35A1C8E63A0CA15EE1D3EF2A6DC5B2493499319DC3B
          38D06FAAC8A396E9695D24A55B52E93DA3A363432C91E48C485689C3705D9A6E
          DBD4D0D0D0DCDFDFFFF9F5EBD7BF7BC99225A35D870E35F71DEE53C3438374FE
          45E7EBF7BEFFBDD475F0107213392EA524C33065E0F9BC2E5D77E4139FB8F919
          00F8E19D3F94005008021F5A0351386569E532469AD3D81DD55067305814C2AE
          0588A900312F841B44B07C1F9C34384D555A2411A4029456003422CF838A2268
          222819219A2C1FB53C06C1196CDB44290A15F8D120A801CE08716160CDE8187E
          D87508C5287A7300636E1C8A34954A65262551E805D05A936D39AFCF9E3387D8
          D154F3825D3B71C57DF78962B11832C62EE9E8E8F8E08A152B76C5DDF8FF7CF8
          E1877E2B954C1C3CD8A51E79E811B664F952CC9DDBA9070606C8344DAD3594D2
          8A27DCF8F3F3E6CD1D07C0D275750A00B29E1F90D44010422B8989C57351883B
          98C9382A7E1525DFC748AD02BF5A4558A9806A5534881444BE04393006A75C45
          1D23D49906EA9C1802DF471878D0726A3FADB5868A2230C6C019836519108283
          6414694DD004589CA122259E1F18C44FBA7B20FF865606419CB3200A8D3098AA
          081FCDEB552D080E47D5AA0EC2907E3434040068696951BFFDED6F0160CB1967
          9CD147446D0DF5192C5AB8F81B95A0725B2E3FE94F8C4E98BD87BA75F7C14314
          8F279048C6E17B1E99B621430BBF5F7ED24A5ABA62198D0C0F4FB5D515B20163
          040A7C945A1B30917211158AE0A6012E15628CC3B05D44A60D994C2390124519
          A25A5743A5B101C56C0EBA5643B6E7084EEAEAC5E53367C00F2574144141034A
          030470C62038C1B24C308383492941048B31F84AE16B7BF7614FBEF0B74F6BD6
          8A25592D5715E74C6BADB426684520C7B6338E63C3324DBAFB873F9AEAA3BEEB
          2EF9A52F7D49DC71C71DAF9F70C2093FDCB16347FDE1FEBE5F9C7EC6E97EE005
          7B5B9B5B8D300AA56158944824605B36A000CFF7394CEED5CF68DA5EA896F567
          6FF9ACBAF99F6F9EF21ED70A7424A1A20855DB44B67F18AFAFDB8C9EAE6E1067
          A87A1E26C627E07B1E82D047E47BA030802915628C61FAF456CC59B2100BCE39
          0D2F266278A8F7304CADA09402D4544A3455F5220843C0101C626A4027E49CA3
          A215BEB06BF7DF05EF68358D7715F379E9D83631622046503A22ADD54AA9242C
          DBD48B67CF79E30DC3C3C3D12DB7DC42DFFFFEF7BF3D77EEDCA7B76EDD3AED97
          0FFEF2630D99069F18B1442A8152A908AD340CCB80EF7B112049D8F6F33FBBED
          8EEE86966620946FF8C83DF7DC1B4C160B40142206C2E0C4181EFEED6F31313E
          01621CE552196EDC85D20AC5C9223CDF43AD5A43A554810A2290D2905E80A463
          E3E20FBE079B3A3BB06668043600A5FFB0CBD0109CC1340D08434018028CB4F2
          5584DB76ECC6FEBF131E00B09D7D07EE9B1CCF561CDB216171CD392770A64B95
          CAF1D7BDED9AFA03FB0E60A252A1CB2EBDF48DDAD8A2458B70FBEDB7EBB6B6B6
          F72D5EBCF8F08ED777CC58B366CDD2423EAF1B320D1C80364C03C4806AB54ADC
          30644B6BF3FD9D9D73B0F3E52D7F92BE1EFAF1CF4266DB1A5104EAEAC1DCF99D
          F8C77FF928162C598072A9041985A856AB28E60B80D6F0CB1E945290613815D7
          38872082EB3154462670D6A517E21593C3ABD5003D353B0700FC0F0085D04C2B
          580D4D6AA304F6160A1C003F3A3BFD373714B21FDFFDD3C7CBF9E25E1141A552
          2909CE99E158B25829B76F7AE5D5F7CCE998A36EFC87FF6194CA459C77FEF9F8
          E637BF892D5BB6E8AD5BB7D28F7EF4A3E17C3E7FC3EC59B38747474779369B8B
          0C6E507D7D3D4CD3848AA4F23D5F24EAEA82747DDDFAB9AB97210AC33F89D0E1
          C484520A52690D777018B30EF460465B2BA46520D20A6E2A092E3862AE0BC332
          60C56C28A560D90E6CC781300C847E88179E7E1EEB9F5B8B4C2A016B5A1B26CA
          15B0A35D738C180C2160980688087EB586C6254B7969EE5C0620012076546D00
          E651A06F0A26739979303732FA1B7FB2C4A6B54CD3608019B3E1EB901F19ECFF
          48A9529C65081668A54D23E1E28F9D54866E6A6AA2175E78E1E5152B56BC6BE9
          92A5439C712A968AA1E33864D9B62E97CA1A9CE97CA5B49535C4CA135D83B01D
          E74F1F4070A9B4965A86905AA3BE7F00D3BA0F438C6711944B08A1A16C1381C1
          10098E9024B8C161C52C1011A25A80782A093313C7CCB91D803091901208C329
          17D6532304DC10202228A5A0010C8E8DDBF9C97C06401D80F45190EE7F80F8D7
          57E11BDFFB6E2C9A35FBB1D244FE9F9A6637CD7212B1A81A45C24CB851DFD860
          C749C7AFFAE9C279F3AF256E647B878E70006F34DA757575E97B1F7A40BCB6E9
          E5E757AD5C7953D9ABFC3C3B3EEE9A42849C48948BA590C52C21E2F6BDF77EF1
          07A53973E650F7A1437F62811A4C6A40C20F003B4200A0F1400F5CDFC3FE9131
          945C0746633DECE606E42D0E1D73403107304C30C66100608CE3C2B75D0C1E8F
          2377B01BF37AFB200C01793495393A7F3D95D600B02D1B0F3FF964EAA9C1C1D6
          A3C07C00B5A38AA9A10DBCA944909F7BEEB98989236363C562514F9B3EED12C4
          8C687C32CB0C6132A554D4D3DBDB592A944E9E3B7BCEEE81AE9E8193CE3C1D71
          378EE191110C0E0EC0304D950BAB62B4D3D91BAFD1C1300C2E3084E9964A65CA
          4EE68C44637D9099DEF45533E90E33D764B9C1D13F017869A6395D1FB7DF9F69
          A8B7221941053E4229213490B10DD4576B480E8EC039D08DC4FE1EC47BFA111B
          1E875BA9222E38A402CC5412C3D949D0DA8D98F6FC1AA48A65988E0DAD35423F
          40108488A2084C704069C830A4E78747B67497CB63475DF70FDE1EFC07FDEB00
          B9D4ECC9E79F91DFF9DAD777A6E28913A6CF9C397FB2560A3CDFE78630184072
          6C6CB4A3B7BBFB9AB99D9DAD9D9D73FBA64F9B3691A9AFC78DEFB811856A0995
          C85334566635E9EF8DA7522F7A3A6AABC9D088D525F7A65A32DFD8BEF1E5A79F
          E95EAFD6FCE6793D78E8F09F3CC0876EB9A510142BA73A63C39DC2AB81AA5315
          E728F4A1A2105C03866DC0B10CC40547C2F79198C8C2E9EA81B16D17EC9D7B60
          ED3F04DA7710B10DAF20AE35CC9803CB1008FD00328C1006212229419C21F403
          2092F4D2F8D8BEBE6A6DF868ACF3015401948F6A0D6FB2B39A9F76D659D1860D
          EBB89232C88E8E6E9FD6D2FA96BA968669D9422E8A94224DD04C08EE47A13D5E
          C82F08B59A7CF6B9E7D6EFD9B78F3DFAC8237AC509AB50897C3C71CF837AC6CC
          76524A0DCEBBE68407326DCD3FDEF08BA77E32D2DDBF45FB52458E81FE83BD18
          EB1DF8D318585FA7EEDDB07EFB44C573C7260A7C746C22262A35CBA87A20CF03
          F953252C2525B452201048700853C0641CA69410D91C12D91C8C980321C45481
          412A48A9118501823044A424A494A030A25C10840F0E0EBE540CA3B1A3C0F200
          26004CFE2DF0DEB874E2B6AFDE86ED7BB6B3622EAF922D8DEDC9546AC368393F
          634FF701483F005734904EA61E3BE7BC737F52299577C65309FCEC9B3FC4E4D8
          D85FFCCCABED957AF772E05F7EF575D871976E98799A46F92FF7289B2004D0F8
          F297BE8CEFDEF183E43CC5661A9C2D4C98C6CAE599CCE205E9BAF92D7167466B
          226E2463368421A038839A9A29D1524A4825492B0D194553298E52300D13522A
          04D51A2A951A4A5E15A6D2E82B578ADF3974E837BB4BA5F500C6010C1DD5DC9B
          75DB3F0378FAA9A7A2A9AD196E6B1349285DCD97FE21D194B9B55CADBA50F2F9
          ABDF76D577AF3FFFB22D5FF8F17790CFE5A87D4E87FEF24D9FFECF00FE4DD260
          3B98F06A88BB71785E0D17B5B5E3B9C17E78534DE14C1035CF4DA5E7B5BB89C5
          CD8EB5627E2ABD70517D7A56ABEB36DB9C908ABB108640A435224CDD97104591
          E68C9394127ECD43A5584150AD604B3E3FFA83EEDE0707BCDAEB004600F40118
          06503CBA70FCFDF7C65C7DED55883537E2DF9FBC97AE38ED4A9D6E6E387EF1C2
          25F19BDFF30FEB5FDAFA1A5EDAB8C6CC177251B55C551A1A777FE3FBFF9FDCE6
          F107800060328E25F5196C9D1883CD397C29A1019CD8D4827D935914C31019CB
          7638D1344E58F88E934F592CF285E50D8C162FAAAF6B6B8EC752B610B00C01E2
          0C7E1441FA21AAE50A7EBE6FFFFEBB8F1CF995A7D47E00FD007A8FBA6DF87FF2
          FC7F1C73F8D56FF08E0FBD0F2885DA30043BD47F78FB696F390D377DE666BE60
          DE717875FBE6E04B1FBDE5BFFF2AA5FFADCE4E47831141C3E6028C180A41508B
          B4EA06D0ED9EB4FA89DBEFFE37D0F844AADE894DB7382D39B1A169D9AC447CE9
          B498B3684622DEC489D8BFEDDFBFF1C1BEBEFB01EC3B0A6FECEF71D7372597FF
          C3D4B0DE7B3FF93FF927BFFD55A1B5A617B6BC82AFFFEC87FF2DDFD760FF31B1
          3619C7098DCD00009BF3378E7B4E6A6A4693ED20655A30FF422BC6B498037ED4
          99DEDB391749D30480E62BDADBDF72457BFBA9005A0138FF2D573F1DBB47FAD8
          E563C7001E03780CE0313906F018C06300FF9F94FF35000105028D0AF3992600
          00000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D49484452000000500000005008060000008E11F2
          AD000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
          830000F9FF000080E9000075300000EA6000003A980000176F925FC546000030
          8F4944415478DAECBC77945CC599F7FFA9BAB1C374F7244D50188D1268140189
          9C9331C69864E3C5EBF51A7B17ECF5DAB0DEB5B1D7C66004365E271C00E3F53A
          AD17078230D80481C84288288484721A693479A673DF54F5FBA37B342310AC03
          FEBDEF7B8EEF3975AAEFED7BABFB7EEBC9CF5325B4D6FCF5F8D30FF95708FE0A
          E0FFD1C39C782284785B07FFC974481BD05346B6D9885C0449090840D7FAB7E1
          181B0E0D42405CC04339F447BE80BAEB46B8BAF7ED056DA2D833FF92B3B32182
          2512D1DB83AA6F84D21068FB0F00822A106FF91207C3BF76311740BF02D740AC
          CDA05F9D0EF357FFFF40816FD72180355AF3FB6942868EA302BCB3862BCCF00C
          94070281F8632850FCA1000A3402AD05B20CAB86FACC97DD7228BD76D4AB3361
          FEB6FF0700D45F3907F1B9FB78D41146AB92D1E6C8FBF8FB3F77D9F7A79E792E
          4A2B10F24DF977E2D5312E9948956F4689FB3F69015A61E88859DFBE61E88997
          D75C70FA5EF1C4AE262DA79A28BD14C473BCFDFC3CD6FEECB1DE399BC73F7A0C
          BF5ED42CEF38EB9D7C192EDF70CD155A6B1D96B5F6CA5A0763ADF216CD9BD05E
          7F3ED6FC5A7BFD354FEB20D0BAA286FBF55D271E3BF41F70C253930477CF40E8
          93E0BFDBDF5ECCC444E0FE1C25A2DF7738CF0D8E30626AE9778FA86DE6A4CB4F
          BFE09DB7CCBBE6A668A4E089404B29E296D60A81005113F8BAD60B71A0FC13BA
          4691B5EF0E24CFDA3571209B8F0DA1F315E126DDD01EED35EFFEE0F9838FFF6E
          F585E7D4C9274E3B4CC96543A80FB5B4327D65EFFF5D4A240BE40647647E3454
          9B7A0A97BFE7B39754C1CB7B22741C69F6766BE757B70B6D5BA0F48477D707F0
          E31858BA26D2DEC8E37A1C5CC6EFD38008B5D0A90CD17B2FD37ED93775A6353A
          FFA7F734C90F9D7BD7AF7EF7EC05FECBF209A75949DF79FB64E29F4D81FA2BE7
          C05537F348579751D81544EB4ADEC7CFBFE6CAEFCFFBD237A3915C59846E4CCA
          BEDD3AF1DD7F17EEE476742C066188D00AD484A6FFB7CF115AA92AC9AAE80DF7
          69A51052A2FB7BA82C3C51AB4FDF882E7BC2729CD01EE9337FFB77E70EFEF2FE
          35175E6C89275A8FCC480646D431E93F4D261E80D99F03A07EE76C9E4E27E919
          2CCABE2776A8AC1F7CFC3D577FF2FBF3AFBD498D143C42C791B2AF5B27BEF519
          E1762D4037348357AE81A0DE00847E13F08456E8B17B5515C0EA3585500AAD6B
          BD8A10A689DABC9ECABCE3B4FECCD7D0655F58AE1DD9C37DC66F3FF0EEE16D0F
          3E77FE4953924F743B0571FE14F42FB6C0DFF6FCE900CA3F47613CE68594FA86
          653266A81E3FF8F879D75E51052FEF11DA8E94BDBB75FC9B9F116ED77C74BA1E
          9D1F05DF03AFB2BF69DFAB5EF32BD5E6557B3176EE57D05E05BC03EFD307EB03
          1F55C8213A67E3AC7D4C881BFF1511B37558F60CBFA1253CF7F6DF3574BEFBB8
          E5BFD9533829332075A011DB93B0F31387FF5926DB9F7CFC6E4146BE6BDDA8BA
          21C1E5EFF9CCA76EE9BAFADB55F01C47CAFEDD3AFEADAB843B772E3AD500E552
          F5D70E60DBA84A51BA4A5D61A4304D934AA9882BC57E2AD44A510A42FACB3EBB
          CB015B464B7417CAEC2E9641080C59352D5DC3A0CD9634D8262452E057A86F9D
          42FAB47368486548A653AA5E8572F535578E3CBF237BF9577EFBD08AAF1C9DCA
          7E7E070A60D294364E3DE5644E39F534D6BEF8127B777573CF6F7FCB273FFA11
          7EFCE0EFAD7FFBD827A4300CCFAB5458F6A56BFE3C009F3BACC158FAD270742D
          5C7ED135FF724BD797BE118DE42B22705C69F4EDD6B16F7D46B873E741BA014A
          05841013D8701C98FDAC5B634B6A6C8969928D34BDB9227BF225BACB21DDE590
          E12024D020A440480343CA2A88422004C89A6AD155655FA5D8641A6B72079634
          B06D47A72C53EC7BEE696F6F45DFB1B9BFFFF198ED84C9445D2E08CB7D279D7C
          B27DEA69A7F63E78FF03D93D3B77171B9BDBCAAFBDF09C760F99EA1F3777313D
          BDBD1852B270C17CDE77C1457F9A16FE0F1363E94BC3D18DF0B1775DFDA99BC7
          C00B1D57CABE6EED7EF333C23D742EBA2E03C57CF59526C8BB4845085595835A
          2B640DC04869F2C2606745B13D08593F52A0E085086160DA2E56C2669265611A
          068634300D036918181284306AE68F40A1D1542726529AA85C22083D54BA09CF
          F7446F50D17AF65CC7D8BCF9FDA964E2583F52A591DC286EDCA56F68883BEEBC
          3BDABA79CB68363BBAF3D5CD1BF725E289B0D16737F078269DDE94CFE745CBA4
          49FA0F3663F2B91162F18458F1F47372F0B1DF194FF78E869FBBE5E6CBCFFED2
          276F9E77CDB76BA68A2B65DF6EED7CE333E36C5B2A80001545556A1813F46354
          56A338CF76D99C2DB3A514B2ABE29157026918241A1A698AC588390E966561DA
          36AE6161390EB665619926D290C89AF2535A83D228A58854888A22C228AA8158
          24B0E344F59D846120A248E9B6F6C9C6E4CD9BA616B5DC5111BAE8BA7111A888
          EEEE3D32328C86BAC686C63AA528154AACDFF01AF158EC84E696D6CBA2282A7B
          BE2F00FD96000E150B184428CF93A669ABDF9DD6A163D7ACF0677FECECCBCFBC
          E653B7CCBBFA5BD148AE2242C791F4EED2760D3C559746960BFBB5AD186355AD
          100DF50CF6EFC25201CA69E6A5910AFB4A8A3EDF42DA0EF14C9CB6789C583C8E
          65DBB8B11875B13875890489641D71D7C1B24CA43090889A015E330CAB9E010A
          505A1185216114E1870141105029E4F14C974A5D86A0E20925A7EBE09043CD6C
          F7EE1903156FF7B6DDBB8A935B5BA3430F9D13962B816180DABA6533CF3DF18C
          DAD3D32D1CD7997E4EC7D4AE199D739F7FF6B93506101D14C03EADD9DE5BC031
          4D8250619A96CAAD7F29DDDB7CE8614F7CFDC6CB4E78DF85EF9FFFC5AF56C173
          5D29FA766BE79B5789D8A187402A832815D10284527808FC92C7302185A4CBB6
          7DDBD9B17D0BA9FA164834E099491C3B46476B8264224E3C91C075AB80A5EBEA
          88BB31A434505A118601BEEF51289608429F288C5061844655659F06C334300C
          8965585896856399D4B931AC6412D9D48C087C54328D6C6A410A2122A5B458B2
          D4F8DD1DBF9CBA3B8AF6BCEF9CF70C9B86412508C4D0D0907AE1995556A6A9DE
          686C9DA42D4BC606FA879BF2D922BDFD7DE24D5938028E6E4D8A91720913A503
          619EB4B7AEE55FB6DEFFC3C52DA935D372A9A45EB5E24E59D7315FC40B43DAB8
          F387A2326B2A59C7825C3FD23218191C6157CF4676E747116E91C6B6185A9CC6
          53CFAEA579C69134B4CFC4360593537524EB12C49349EA1275A4124962B64DA4
          35955289A1E1210AA512E572998A57C1F73D02CF270A03C240A154845251CDED
          AB6A63C31418D2C0304C6CCBC2364D6CD7C5B56D1CD7C5B57A317AFBA1A105C7
          92229688EBB2E39A6DE9BAA9F5F1B84EA6EB8A96E5E81746862CD77559B26409
          3A0A297A15E105BE0EA31027163FB80CDC3D121229257ACBA16E8DBBB2DF77FE
          7ED7EE4DFF547C7859FBE1E5C7DADA6635118948147AD653DEE3A04687859C62
          23844095422CD360F72EE8EB29B179D08366C91947B8643ACE60E5AA41A6B637
          D075F831B8AE24994C90A94B934A26716D0785A698CF33D8DF4F369FA3542A51
          2997A9944A542A65FC8A8757AEE007017EE013050A8142E9083455E562484CC3
          C0346D6CDBC4B02C2CDBC6B66D2CCBC2B24DEC7802EDEF247053386D9331A510
          A3858A4EB64E315E78E6E9693A9EDCD5D8D25ADAB27B37C71F7FA29ED2D64621
          97153BF7ECA1A7671F4A695271E78D14F8C0CA2768C9186435BA3961C50673DE
          95DB36ADBA2478F85F328727F6B6A5BADA75A022A12C93542A2033B40DD1E120
          0C0F1D29842528E40D0AEB15B94A44D3210E279F7202AD534E655FB181FAD84F
          98366B1E8D1D9349C76CEA1249A49054CA657A7AF7313A3A4ABE90C7AB94A994
          CA14F379BC62897CA148B954A4502A614849A55422E95808C3A07F6414138D96
          72BF7F6C9A26A661605B36B663E3382E89988BEB38C45C87583C8E92924A792F
          223B8AD536191585A214A247A565E4B66DE9D8DDDBB75BD85651954BD2CB8D56
          667474D8984690CF173DA5A0B1A95E774E9F360EE02D3FFE0942082C90B68E8C
          6D7B06AFDEB3EB95773B8F5E9A5EDA5299ECCC98A27D85C0D118614834DA876E
          88232C13A91591929831C9DE3D12549920DDC049EFF87B9AA71E89B053C86237
          6DD316D131EF548C580302C5707694D1EC2885913CC5621EAF54A6582C50C866
          C966B3943D9F72B1482655C792254B90BE87F9DAB3CC9CD204852CDDFBF6F24C
          F3143CCB21954C52E9EBA14179E8729E92AF2815A1220C46A545BFB470632EA6
          6D918C25919641A95246ECD8896C6C26D1311D2A81D8D3DBA36DD33246366F98
          3AF9D0AEADFFF3F39F665F5EB5CA587AECB172F1D1C70E7CE7A66FBFFAA35F2D
          17471DDEA53FFFB9CF8D03589770D01AB1F285D7945D295F3090EB7D777AF5C7
          D34B6754A63853A6EA002564BC6AA646830350E722EBECFDF110A940B810E888
          98ABB08D76922D47512EECC314EB880917435A4485BD0CE72DF2658FFCE8209E
          57A65C2E512C94C80E0E932BE4D14290AAABA333A328961C44AA81790D495AF7
          74A32AFD50EA05AD688969E6247DBA1D9754791F492B4BA69C05198023286A41
          2E50E435E42B8A42C560449894A44DC930297A21A318F8FB7A888F8CD234671E
          FBB6EF14115A07958AE96ED934EB88050B9E7F65F533F2F9D5CFAA0DAFBDD698
          C9A48EFFE4072F5C1E0A4BC41C7B1CC0208C44E897F4F6F5BBA60498FFD0B4F9
          6B9933E714273B1DD374A003215CA36A0C8FF661D4DB04DA0617B4510B2A29C0
          11885844AC1EC4F0208581A770C9128922966960986976ACFF05516C09656B1E
          7EA5C8E05096E1E121B2A3C3CC983E9DAEAE2ED285015A76BE4A7D1810A1C80F
          0F9278642D915744D702875A6B54145137B8972EB57BBF37A3B54685215268E2
          9122AE15AD4A0155334A470A2104A5B2A2AC344632C59E108A3D79E89CC6C091
          4BE9DEB55B8CE6B27AC0F3CDD17D7B96A6E2F15D38B1AC92226598C6A7D37575
          EBFB0787B634A6EB2C630CC0F94B4F319A975D2AD6CD38F5A2CAE6E517BFFF90
          7593337327EB40218849901A72BD55AA732CF283214E93897025DAA88625441C
          46860531AD18CD165184D427F651C9F7407913B144825CDE60F3DA87D9B07180
          DE219F4C2AA2A5214639E7D3D2DEC6D153DB98FCF223C44A59845FC1F02BB87E
          1923F4AA867710401442E023A2B03A775188D60AA554352D226A3901ADAA80D6
          0C7835668B4621960A88A900B79CA7D9CB31D51FA5E59915CC9C3A5D1FF5897F
          E5A8C38F108B962E8D1AEB33C686A79EAACB15CABE46E585A0CEB2AD2D868ED6
          7B9E67EDA7C06D2FAE10EB169E1BF1C24A2E9EB63ADD3A7F0A9E06232E514488
          D15E44C246B816218A5201EC7C44BCDE4178A08544181199568362DE63FEA1B0
          EAC50DD43960504198115EF6411AEB4FA373C60C0AEBD7E0E79EE5507B12B3B3
          7339C511E8DD4338EB1F22CA0EA32B6574A980F64A68CF47841E84013A0AABD4
          AED5FE109C069002A4819206DA3010860986058681308C9A6F5C35EC958A20AA
          F9DF68741411060146268EF783AF0A5529EBCCBF7F43D70581D176DE457E6264
          C0BEF2F3D730E4078ED0109981BB6FDF20D1442D9CCC3EA32BC50CFD0361EFBC
          933DAD8C10A4098E400E0F40CC04D70203B465A2A390D230A8FA18E99449E847
          4415686833C8F7864CC91459582EF3D2D306410CBC8A494BB34FBEF4004E623E
          272C3E9CC9A6437C9B87DEB50D3D3A84CE6509CBF92A9529858E2684CF040853
          2024553F1AD052A2220DD184D4524D152B598B9408095282618269557B698C05
          43D1BA1AA8D52A42871AD998A4E7DB370963C6A1D47DE032ADC250764E9BA616
          84DE134F5ACE42100686B167FAF40E54188E0338588CD4E98BFAF8A74BE5D34F
          3E68FAC236419A6853216C81706DB404253456DCA02C4D12C590FC4019BF3C99
          A6B6383AA84018D038DD243BB8930527FB4CE9844D1B205BD0645A6344C3F3E8
          D8E29178FA79F4602F7E51A3C35AA44B54DF155105CC88558140080C34615653
          8E20AA091E33543816586941A4C6D37822005D1A4B16D4D89610A854030E2E08
          D74449B3FA801435568FD05A121A82705F3712D0A689525AA672D97EAB7DFA43
          8157393C559FD918AF4BD2BBABFB00574E973C935FDDA34777AC48EE9D756CA2
          61524748E883304D84118161A094401811B1768BA13525A6CD90EC1A1966D4AB
          A779E60CD2194166B24297A691DFBD81726A80F927488482EEBD8DF83B9A08BC
          5E4626CD81D64311D24048B99F7CF4D86B6B817C753519958748932D823AEBFD
          C4CF780FCECCB9681551D9B896DCEFEFC07CFCF7D4A5414901BE6638DD863C6C
          3E82D7A551A3108A65F4BEED18FBFA49B82122519306B24AB24A4BB4D260D9FB
          C37D42D722CFA6F1A2D0F649C56251764C9D4A612427F603681A12211424859C
          EDB843AF761FC982F4333435990479856598556E3024DA0B6999EDF0FC1A9BCC
          4697D9E724D8BBBD9BEEB57976DAED18128AA39A91EE26BC757DB437E5685A34
          89FAE929B2B38F62DAE24F02E1413DC931633802BACF5D0AAF3D4FD68A11FFFE
          ED4C3AFB3DE8DA930A881F7638F57FF361FA7FFA4346AFB99C4CBDC01F8970CE
          792753BEF623A2D7053C75ADF90343149F5FC5E837BE4072FB2B9869810A1452
          56293FAA0526A410D548ABA80903D32E48445D3ADDB868C5CAC7BA8594727F48
          FF8EC70701B8F803426901C79FFD79768E9E44594B4C5B1089086D4A30050A0B
          5B0A3ACF99C296BD09F22F959932DB62D6AC018CD1750CAC5F87BF69036DC110
          0B1635D2AA3C1AA44F3259C2917B28170628E5034A45BFDA4A3EA5A247295FA6
          942B51CA9728957CA45094F2105FF69F4C3AFB3D944B1572D912E55C092F57A2
          922BE1152A347FE81FE08A651487228409220A88544431571DA754A850CA9729
          E74A54F225C834907AE7BB69B9EB2972739712E535C21055C5ADAB90FB4A134C
          88DB571D5F6B66244DED0B797C3697774647B3D10139917FFBE130481FAD1052
          C3947957AAA756CDA262B85871935029B4B690D221F412B41FDA46DB19D358B7
          2AA2F85A80559FA0AB4BD336C3A47381CB941645539B457C763361CE23F42C12
          75F310C934B2CE0543528B86826521EB62C8541C5917C788DB502E102DEEA2F9
          824BA8547C7C2D305271442A5EBD2F110729F1CB3E998FFE0B5EE74C7409A494
          5545518B568BB80B75B1EA737571541852C91691A93AD25FF91145ACAAF8A801
          A534444A53042A35020CEAD275866DFF8D721C5D52FA8C53CF396FE1DCA5C784
          6F482AFDCD17BE0CA22A8D76EDEC17DFFBAF216EFE4E8162C1C24EC510964518
          59083783AA24E85CDC44FD8987F0DA7D7D784FBE8A1ADA4193DEC74810835617
          AD0304450C4760168751FD0F907DF6198A2FBE8C546135C32F05512E4BE19935
          1456D7DA0BCFE30FE5489CFD7ED01ACF0B908E4579ED4B0C7CE83C062FBB186F
          E7368469A0BD002BE1609C740E7E118451F58B5111C23119FDF9ADF4BFF70C86
          3EF141467EF683AAB2B26DA24285F8C205E8A34F26CA55E560950A6B097DF687
          19D9D93EEDF09216293B551F96A5E59889BACF7E69D9979D3708A1D953CB886D
          E00711AB9F5E2922A1B9EFFE383BB6E7B9E48329162EB5A94B2609451C215DA8
          981C72EC645E7C25CD8EC7BB997366920C438CE44C86648A49A55DD886023340
          ED1DC5717BC8BFBC97FCF2F5641EDF813263E098549E799EDC4567E2A6AAD94E
          21C1F6C05E742421553B5301B9EBAF20FEE413E8004AB6C4F9EEEDE852B5CCC2
          3C64119118AFECD2AA3A39E1A6B5380F3F8CD508959FFF37857281D43F7E9A28
          EB61688DB5E444C24757600B8116556BA05AA5544572B858622451D78961ED93
          4ECC722C27DA5BC81EBAEA8995EF7D0305DEF99BDB05404F6F1FAB57AF464625
          1219C9A6DD29AEBDAEC8359F1D65CD5339AC742311364160836F31F7AC059426
          CDA17F7311E91AB4D003EBB7A12D89AA93984903B33E869B2C125F52A2E9D823
          D0C8DA0C6B90066E1AE21949BC1EE229B0EAC068682614024C8B285B40EEDD84
          6C96C82689B17B1366A8D086891602A3A50325C68AB4C641906E0C9192E87A17
          BB41229F598125344A547FDF68EFAC2607B5DE9FB2D65AEC57402F6CD9CE49A7
          9C0AA6A39CBA041D6DAD624EE72CBDF6D5D7DE7700807FF7B71F6474744803AC
          7A6E35957C011549B412A41282647D035BF634B06C592F0FDDB917BBAE0933D6
          48E8DBC4DBE6D071EC422265A3A2083B216952257441131A26226E205C031173
          70EAF6E2751A40506599B14C9A8228AAB630046599C8648A48831602E5F9888A
          57F5699542FB1544108210280D32E1A265CD40AEE5E6C6C756E83042A1210A31
          74553B2804C2746A1329F6B3305A33560B9A2B79BCBA713386698BD6492DCC9F
          359363172DD24B0E5BD47C00802A52E2C20B2E223E6D66EC89275711043E5A2B
          2CD3A0E247B8B6452625B09D667E78E3467EF5A30D548210BBAE116DB7E0363B
          6416B61059264245C4EB35563E40461A659AC8B80427856DE571178608ACEA4B
          8AAAF12226981AE8DA1521F783ACA3A82AECC72AD9BC3222F2ABDFA95A99801C
          1BA96ADFE931DF580A3004AAA0918DCDC85A9A55A3D1B9C1FDC9506A06BDAEB9
          881A28548AEC1B1AC4761D9AEB332C38F410CE3CF13871FA09C76DDE0FE0430F
          3D849082CD1B37B2A6A05AB3C3434834420A9402CBB69186497E6088E6861886
          9DE607DF5AC7AAA7D2F4F5FAA8A17538D62E524777E2CCECC4C8342053369611
          627A01919654ADD634C2988495EC2128BF82D655EA418C19D0B538C0FE9ABF1A
          60351F4DD4E49416554A138C51D2842A2DC17ED1A085407B3E614E138CF8A819
          53C87CF4DF8894AAB2AA10A8ADEB6ADE8F4089EA7F1833EC05A0C28872B98430
          84D22AD2757509D5DADC20867B7AEF93009FFDEC552C5AB4481E77DC71DAAF78
          2D9BB2E58C57A9108511A665A194C2B51DC27C164B8263C62915476831A16BF6
          C5E4A333D8B8D9A12F9ACBE6ADED6CEE8EA13ADAB016CE40D4C7300A1A114014
          2511D241C949986E48E4AD4445016A0C9109B55ABAC662421C689F8D7DA7F71B
          B8D5DAACF16B138C6669109542321FFC0493EEFC1DCDBF5CC5D495EBB1E61F4E
          B1188065A10A3E6AD5038838D590D884491C0B541C377F2EAE06BF5CB27A0787
          E52B9B369ABFBAF38E17DF75CEBBEF32AFFCA78F0070EEB9E7CAC6C6463563CE
          ECF3B6BDF8AC196F6CAECE72AD99A147B95C26D3DC48582A502C96785F6B1A3E
          721AE91B6E6374D2E5F4F5F411791EFD7BD7B223B191399DAF32FDB0D9786B36
          A08A3E226E809921921696E11089AD0823AA518F1E2FF213E3057FA2E675A831
          86127ABF6921459572F79B1E13EB0B6BCFC9304277CE451D321734E4CB01FE70
          BEFA7C631DFE0FBE019BB743834047BACABEB55994350067B5B73273B4FFB9CD
          8EEB0EECDE2DEEDFB57D5D7EA0EF2B77FDECA7919CB7E84802AF2C366FDEA456
          AE5C69EDEDE939CD2B57D061886D998491C236042A08312D8B543C41DF401FA9
          4482238C2CECDD42EE236731F8FB3B48C51D9421709BE6327DC975949CAFB17A
          572762DA64642E20AA14512A899471021A918626AABC5693697A9CBA748D8D6A
          C250EBF1AA50C13860553FB5AA69C794C6D83CE80955549520A25881A20F15CB
          42D5D7417D1DC1AF7E86FFF5CF22520215D5C6A8993163955763933579D7F6F5
          C777CDF8606A64DFA598C62763B1D8BE442221CCEEBDBDD2AD9FCAC8C8A8FAFC
          E7AEFAC0FDF73F38231605280D9621099526164B50C90E93AC4FA3C38091D12C
          EF6E89131BE881A441E4C408CB4586D7AE61EFE028AAA10977E9E1C4EA0FE7D5
          AD1F62EFC67ECE9BDC4FA15C22882B4CDD80998C61353553CADB2855FDE7A2C6
          3E620278E3608803EAA7C7A8B6CABE55395D8DAC1C5867AD8480811E18DC5B65
          D17C09BD631DD1E3F7133DB90211032D6B0A478E03A65F27539514B27952DBDE
          5F7B6BC59A0B3FC1CDF7DD2B1F7FEC1165EE78F5C9842CEDCB9F76E4ACAE150F
          FEF6F242B6645BDAD38EEB1005116ECC4515AA09EB864C3D3B5E5B8F619A2C39
          F954E4CA5F12E5224A9362143458A3A394F6ECC52964B1BC0015B7E89C750437
          DF3B8BBABE8D9C7E7AC848B1447D7B1BC3F91CEB1EB159747CD77E05A027C4F3
          748D85C484103EB5F3A8C666D2721086890A55AD78558F874F001D45E84402F5
          AD6F107CFF2648035EB5180C13A813FBD1D2E31F991019DB3F1112AD46728563
          2E6D3B63C6EC975EDA9888C55F28148A98F7AE783A742C93538E997BF2E8AED1
          7454F17C652831C62331DBC18B226CD3A2BFB79FC8B4F9D8C73E4A3E9922B765
          3B532667D894F729050A4795C8F925DA2A0EE9B54F523EF712DA5B52CC9EB784
          DB7EF124ED6DA3749DEDF0CA8BBDFCE2EE9D1C79EE99449142A99ACD35C63E63
          2F148568AF54954B2A02CB42D816946A2FE8B86059E8B25795D79500C271E13F
          AEBDABEB53B42B11B6AEFAC8358B59BFBEC89F03A970ECF3C89CF98B5F7EFC89
          A32B88745FB1323C6D4AFB7F02FF6D8EE4CA65206E8783733393A6AAA1818200
          858A14B61343088DED5838AECDCC59B338F1C4138894E287B7DC4649C377BEF7
          0B1A9F798CCDCFBF4C60280AC522563C895DCEA3B4C2332CE6CCEAE48928C977
          7FE97174FF00AB9E1AC1494DE7E4E397A2F4FEB9AA525EED5F6B09AAACD12303
          8859D54491114F22334DA89E41A20A9899A6AA2F1C8655193ADC8756E395B655
          B929AACA40D7E27E51B5C2F5F50B2D262AA109D200010C8C8C506A9FB6C01B1C
          1E2C59465096B2490C8F7CFA1DA79EF6A8BCE772587E9933AB35367054C7CC0E
          E61FBDD4A8043E52486CDBC1B21C8461D0D4DECE91C71FCFE66DDBF9F7AB3EC7
          D69151BCC616BEF18D6FB123D54A58DF40A95026AAF834940671CE388FA8E4A3
          4D8B742C412A26D8D66FF1F0C33699493358988948C41335C15D936F7A5C8968
          29892AA0BAB755EDBA30443916F2EF3E43BCA189E4B416521FF934A1D2449142
          4B81D8F51A3A1AA740F5BA32F5FD143641DB8F9D1FF0598F53AF0022AD094C43
          C45A5BC24B2E7CAFFCDC9557FA99C626AB6366479B794ADA716F2967CE9B3B6D
          308E0C83B9EFBED89C664A76F4F7836762390689589C5236C78F6EF93EA54A19
          CF0B49D4A548A453F4F6F773DF1D7730EFB0C594438DC2A2E3A3971236B650EA
          1D85C60CD1D67584A50AF5E9041D1DAD84DA636A7E88782CC6A8A70FBAA84668
          4D6880F7E4EF302FFA284A18C8A247F0EE0F933AE96C52491BEAEA192EF86058
          084FC3B30F115A54EBA72768F4B12511FA60EB7B26DA8D62A282AACAE090AA32
          EDEDD91BF92D93CDF79C794630A5B9C15EF5F08A11CBB0B699D797CFED9A955C
          7D6457A7D2ADE50D722BEFE2FC8F5EC6C0501F1BD7BF46B694A7901D62EBB65D
          0C8FF4317BFA743AA677904CC698716817D94289ECD010A57C8E5CD923B01DDC
          8636FAFAF3F88685AB60C78AE5943C9F9654924A1861284D5B7904A210A1A8F5
          514D79D434AFD29084C2C3F753BF7E2D62F622F4480EA122F2F146CA801E2E11
          F9217A520AEB91FBF09F5F8D4E501D2B0C112AAC8EAD55359157532E075BFAF4
          7A99375189346632CC28E65ED816B6246EFFD5ED0D3121766E59BBF6EB3FFBC9
          ED23E6ABB72C1D3AFDBB2FF53775C4A72F6CDEAED31BFE8772EE039C7DDE251C
          794A8107563ECAFAFE01E6E476919C34858736EF61E6D47616CC5F88EB17885C
          97205347A158A4522A92CFE7C9173D626D75D8684A9FFB305BF60D12A188C562
          F84148475062AA2D10A90C841A650AA8CB54811362DC9E3304C59287FBD94B88
          DFB682524B3BA21021428F0001A60D2D71DC8DEBD1D75E4659D6F2178E5BADD6
          CF34800BC28DD552A162BCC25E1C984398A83826BA9363B74DDAB57563D319E7
          FCF7C3BFBD6BDA6B1B5F5B7FF492E3B72BA5A5799FFF995D2FDD33FFF9C606F7
          48AB55A925A9C765CFBABD545ED94276C4A2C3DB4D26FD3C0DD60089FE0A626E
          170FBEBA15271667F1114B68322AF8158F52E8532C7B0C0F0DF1D48A7BB9B0BB
          83D8FF7C97CDAF6DA73B72702C0BC3944451485B611015F511FEE4EB38986853
          62EFDA826FD4627863EFA534222E187E750375EF3F96F83F5F4B78E4A9E8744B
          355A32B81BE3EEFB08BF7F0DF9C111484AB4A58936ADC5BCFDBBC48B1E226663
          6E78B6AA85953E70B5D3983C1C036CCCB3194BA34E58D6A0404C6E6C58FB88DA
          F04A7B8876E231E9FB9E32EFBC2BD176EBB77273AFF9BCCB718B2AB2326489F4
          ACADB8E29724B4CD6C15B12D398AD7EBD364867C30E82198D3C9EA5DDDA828E4
          F0A54731C930D8B879035EC567EEE476D63FB09CA96BE22C5CB5926DED9D140A
          3EA9B84BA0348E0A981A642964B314BEF8198CDA54174D8812E3A1A8FD9C1669
          480A46F7EEC2F997BFC7694F231BDB416BA2FEDD94FA4A7831907101A14224A0
          EFD93588C7D68CAF7A8A818A8DF3E6C4554E137F4B0AF0942044206A0254D76C
          4F09EA990DAF191B9A8F94871F45F4F8CA87D4A2C5B3313F7EA1BF64FAD2298B
          BFF91B576B77AD3CE604075570B4E5C691158FBC6AC1EBB131465FA4D464E38E
          0CF0E17A89D7DEC863EB3780141C71F4314C9FDEC9BAB5AF50291630A5E487EB
          367356D7D10C96033C6F1F4E7D1ACF0F687725EE701FCA02556FA2C600D31A11
          45075F371069A42BF063126F240B03D9EA4B5B20EA0DA452E3D4A52072043A66
          4C8CD35593F1E28DAB3CC758D794500860872788BCAAE6914268A1354A2BAD81
          7BEEB83DAA250CC7D7CA05B1E8BC534F3EBE4E344FE11D7FB341BCEFCC509F36
          5F8AB61657CF9C7DB66E39FB93627AE225BDEBE90B44255F40C525B1913E2E6F
          327017CEE5E91DBBC9E58A9C7EDAE924EB923CF8F00A961C761875F1380FEE1E
          C4340C5CDBAACAB648D1A6021ACDAA9C9141309E0CD7E371C037AC68DF5FEB52
          CDBA6189F1CA8230AA46A1C584688CD2A0C3F13127C4185F9F421D032F1FC08E
          8A41B93FA4F394A5B47FF01F75E80742D89636DDB8366A39D8E1798886F5E323
          C944323D2F964C18AE6BE8FAB64E7EFA1BC5273E3F147CF5FB4A18B3FE390A4A
          099D3AE534D1F1E3BB75A413948B8AA2165843FB38AE2585528AC1BE3E1E7BEC
          31DA5A5B39EBAC77D2DDBD9B72A94C7B6B0B5EA58CED38844A6348C17CC3AFCA
          1A3931FF50F340260AF303ECB1D735A5AB6D02E8BA6AF81D704D4DD4AE13FBFD
          E3802920EFC3B692A4DC1FD179F4120EFFCDEFB5DDDE2EC208A540F6FEFE0ED9
          1DB00B6022780032954A59D2B2FCADBBF6A06448EBEC293A4CA50774DF8E7DF6
          0B8F5B46C289C27C45674E3E5DCCF8F96FB5224E59A6D971EC7B78CC73583CAB
          133B1EA7775F0F8F3EB612DB3679CF85173063F62CC2A8BAFAC8322D3CCFA7D9
          14B8DBD7D7106342F8FC7546F441CEDFAC4DBC4F7190B1C441FA5AD0D430201F
          C2B6B2A432A0987ED4111C71F703DA6C681241395051CC62E3173E657CEBC65B
          6FBB23D6F0EB83EEDA118F25504290CFE545E445A252AAA021D869C67E76EB87
          FEF6F1DC037799462A1EF9D9824E1E7F9298F9F37BF506916265C964C1D4562E
          1543CC6C6F61FA8CE9A828E2E18756F0ECEAE7B06D9BBEBE3E2CCBA2264798AD
          4AD4490E48E0BC0128269812130D5C0EE239BCEEFAC4EA032DDE1859193B57BA
          9A8ECEF9B0B524A90C2A3A8F5DCA92E50F6AA3BE5178654FF98EA5B75C7D85FC
          EAF5DFB9F5D7745CF73F8DB9FE830228A421FD30B403BF9A5B901A2135918178
          E99A01EF13B7FEDD258FE7EEBFD334D2C9282A5674FD49A78AB9575DAB87B66E
          63C7609E914AC0398EC7948EE93436D4E3D80E7BBB77F1D4134F12F801B6E350
          F13CA480C995E15AA4581C08C284763021CFC12889B70075A23CAC35A5C77BA3
          B631C5F60994B7E4AE07B451DF287C2F5061DC61DB35571A375C77D3AD77352D
          BAFE1FEABBF75DB23B8C0E06A0D19088FDE3B45973E4A817D0BD670F3A0C7450
          2ECBC686FA973EC0F0C35F1B8A9E4B3C7857D7BCF95D33E2F3174741B620A61D
          79A448BBAEBEF7FE0744B6A583F96997DE62998A61D3DFDF8FEBC6705D17DB76
          10023C3F209188734630801D7A6FB907C2C4979ED8F4EB56B8FF513B14D4EE55
          BA2AF30A358551056F09472D7F409B8D35F05C8BAD575F296FB8EEDB3FB87BE6
          BF2E7B47EE9EDE5F6755F466431BAD99CC594D53A6A4B5133376EDDA8D56A1F6
          CB05994926721B9DF4FD6725F4C8F7F615D7A41EBC6BC1BCF95D9D89058B5598
          2F88194B968AFCE0108FAC7C940133C6A4748ABEB24FB95CA2502CE0D8364E2C
          461478843A62912B5852DC37EE8FFE915B34E883786113A338FFDB78134D95FD
          9477CC111CBDFC416D363609AF52056FCB17AF90372CBBE9B6BB597CDDCDB1BB
          F67D6748ABB71AD7E81BCDC6A6774C5B946C6E7577ECDDA30902E1954B5802E7
          6FDF7BD17DDFFBDD8ACAAC476E1FFED4A6C135A987EE993F7F41D774A76B9152
          85B29877CCD162CFDEBDAC7A7A157B47F3842AC4755DF2B91CC96412D3B62816
          0A588EC3B9568946AFB03F6CA4F581D6CA9F40500750E79B51EED8FD13C1F3FA
          151D471FCEB1CB1FD4664393F0BD40056394B7ECA6DBEEEE7CE7755F739FEABD
          621FEA7FFB2FC60FFEF347A36B5F786E717D736B4B7F36A7CAF9A2542A547EA9
          948C3C7FF4CBD75EFBF2F23D23C6BAAE70F0826DC1EABA15F7CC9F376F6EA733
          6F616478A1E89CD725767777B379DD2BE830C24DC49180ED38A015F95C9EE6A6
          499CE5EDC50AC3FD68E9D7B3A8780B10C4EB56378BB7D8436622A07A1CBC9C5F
          036F4031FDD8233866F983DA6A6C12BEE72BDFB5F596ABAF30BE7ADD4DB7DD7D
          C117BF7CF3CE1FF75DD1ABA33F64328DF75F70FEE8A30F3F5457DFD87C3C6E22
          EAEFEB93520A5D2E152581DF992BE41F350C31BA6AF261C6255ECFC0B2BEE0B9
          D4437777CD9F3F6F86336F6194B66362E1914B454F6F2FFDBB76128621866513
          775C8A853C41A49866441CA5F3C837172507ECD8A1DFCC987E7DFF66145733CC
          15559997F36167C5C01BAC2A8CE3EE79405B8D4DC2F3822A785FBCC2F8CAB29B
          6EBD3B7DDAB21BF7FD74DF957F207800C65DCBEFA13E9D1CAA4BA64F4CB7B665
          7A878654E8FB061A3534349859BC70C1EC934E38FE89494DADA5D7922DE2BDF9
          6D83CBFAA367530FDC317FDE8279339CAE8551CA76C5DCC58BC5CB1B3733DCB3
          07C730306C8BDCD000DA7238C7A9302D2ABC29958DA54FF504D0FE2465314134
          A89ACCCB79B0B3226BE02DE1847B1FDC0F9EE7587AEB173E65DC70FD776E5DCE
          CC2F7FB5FEC5DEABFAB4FA637ECF38FDF4D31383BBBA87B3D92CED53A79C881B
          0F078647A4254DA1B48A76ECD8312D3F9A5D3C7B66E7963DDBB7F485879DA4D7
          A80DC367EE56CFA51E5CBE60DE82AE4E6BEE8228E3C4C4AC850BC586EDDBF1B3
          398A852283A33932F5F5BCCBC89308FD3F4A598C91E44400FF505939A630723E
          ECA854655EE7514770C26F1FD46663A3A85402E5B9165BFEFD93C6576FF8EE0F
          96B75FB8EC32F974EF8D4328FEC8C3307424EF5BF170F4CDAF7D65533A995C30
          656AC7F4915239A8543C6999A640A3FA07FA276FDFB6F51DB367CF6A9E356B56
          CF239D4B874FCB6E1FFEF2EEFCB3C98796CF9BBF70DE0CB36B61D492AC13471E
          7F82181C1A6168CB56DA6336275B65E679C318627C239D3F88AA26C84A210E0C
          C3BF25FB4E006F67A526F38E3E8213EF7D505B8D8DC2F30355B12DB65F73A5BC
          61D9776E5D7ECE2F97FDA8F7FADEAB07F41F0D1E8071C249A7464F3EFDA4D42A
          0A8706FA5E6B6F6D5D54DFD23A69289B8DC248498DD0D230A51744CEC0707646
          A074F6A10757BCB0A6A0795FD21FFCCE60B0BAEEFE3BE7CF5F307F86D5B550A5
          2D5B9C76F659E2E4AE4374F3FFFC97486747F0A5206654C345EA7F9181AFF728
          0EF6DD1F42793B6BA64AE7B14BABE035348A8A1F56C1FBD215F286EB6EBA75F9
          B94F7FF9E5EDEFEA3D7BDB9F061E80B169D3463E70C925DA17423AF1F8905597
          7E2A9388BF239E48A6478B4561DB964CD625FBA64CEBB8F7BC8B2FBE3ED5D8F8
          D051A79CCA8BAB9ED6AB07F37A515C8EFC2AA79E4FAFB87BDEBC05F33BADB90B
          225D2A8BFA398788FA238ED23D77DE292A818F270571A3FA824CD8D2E94F6AB5
          E4F9FEBE46818684AC0FBB2A0695C11AE5DD73BFB61B1A85E787CAB34DB65D7D
          A5FCEA7537DD76D7D4F72E9BFBCABFF62EDBF7A78307600004814F3C99D08D53
          670AE9B8F97C365BCA3436CF6ACCD40793DB5A57FEF3C73E7EE3F7AEBFF6CE33
          CFBF68288C4231A5B39327EEFF3D957291BE40EBAB5BCDA16BFBC367D30FDCB5
          70EEFCAEE9CEBC45912E55447ACE1C517FE4D17AEFAFEF10153FC033245240A0
          258116F85A10D49A3FA13FA0A96AEFA909D7A2F1DED3828A12044A900F614FC5
          A0321831FDA8259C7CEF43DA69AC8257B64DB67EF153F22BCB6EBAEDAEC4A22F
          DF64AFDCF7F351FE2CF00EB0A82EBCF8BD241ADBF8D903CBC5F9C79CA233CD2D
          73E7CFED8A7FFAB2BF7FE1D1552FF0E8AAA7ADD17C362A150A4A033FFAC68D07
          0CF4F57993AC7F5DDF7FC8354DF6CD97FEF4172764CEBE28B48B25C349C445FF
          638FE855EF3B57948A25843956B7C741AAB10E7EFE06BFF8201E89D6D562165D
          86E9C72DE1947B1ED07663A3287BBE2A3BB6DEF6C52B8C1B96DD74DBF269A75D
          F753FD58EF87BAA3F0EDDA2B71FFF1817FFC18BFB8FB97BCEF9C0BE5BE9182FA
          F0FB2FE6C5B5CFCB2F7CFA2A7EF2EB5FA9AB3EFED1B71C6CE322C33C746D74E8
          35CDF6F72EFDF12F4E4ABFEBA2D02D570C3BE68ABE471FD1AF5EF34521ACE860
          DB8E1D60F34D0C7EEA375947F206974E0854A88837B572F46D3FD64E63A3A804
          A12A1A26DBBF7485FCEAB29B7E70D78CB3AEFB8791877A7F38A222FE52C7B997
          FE03001FBEF2B3F2B3D77FDDD05A8B47563DCF576FFECF3FE8F94F4F320C60FE
          B54DE6633BEFFD8DCE691DF8E58A525A6BA5F5587F40D313FAB7E1505A6B5D09
          826848EB70CD173EA5CF875BC99C36F98319F9F66FBAFB766EC0B86A2E2C74E0
          B32D9609CCBFA6B10A625EEBC00BA2D08F74E4AB6A0BF481CDAFB5899F5FDF82
          FFA5F95A477EA4A2B2D2E1B0D2E19A2F5CA1CF875B88CD99F28D3661FC25307B
          5BB7003D26098D063C361A84FF35CDDA78E9EEE013E2D2BFFDFE877E189E9839
          F99D445E58AB3A7D1D0B1E64AFC0FD916AF11606B778C3F683D5714CC1F66F5F
          C7D796DD74DBDDC7FEFBF51F597FFDBE390E7F11B67DDB76B09C78BCBF0E36F8
          3062986677299C775513D7CD3C74CE8C200A95107F09369A183C50CA44880756
          6F7BF4AEC597FEC77BB7FF57CF6FB2443F9E0A1FEE7EFB28F02F0AE0440DA5AA
          39B466AAD5796FDBCE716F15E50214E6A421C2FE1171C06AE2BF30807F3DFEF8
          E3AF5BC1FF15C0BF02F8FFF4F1FF0D0038A9D28616A21A450000000049454E44
          AE426082}
      end>
    Left = 520
    Top = 320
    Bitmap = {}
  end
  object query: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      
        'select produtos.preco_venda, produtos.descricao, bico.* from bic' +
        'o,  produtos where bico.cod_produtos = produtos.codigo order bY ' +
        'POSICAO asc')
    Left = 344
    Top = 440
    object queryPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 3
    end
    object queryDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 70
    end
    object queryCOD_BICO: TIntegerField
      FieldName = 'COD_BICO'
      Origin = 'COD_BICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryCOD_BOMBA: TIntegerField
      FieldName = 'COD_BOMBA'
      Origin = 'COD_BOMBA'
      Required = True
    end
    object queryCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      Required = True
    end
    object queryCOD_FRENTISTA: TIntegerField
      FieldName = 'COD_FRENTISTA'
      Origin = 'COD_FRENTISTA'
    end
    object queryULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object queryULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object queryULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object queryCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
    object queryDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object queryENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object queryOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object queryID_BICO: TStringField
      FieldName = 'ID_BICO'
      Origin = 'ID_BICO'
      Size = 2
    end
    object queryPOSICAO: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
  end
  object sds_tanques: TADQuery
    Connection = DM.coneccao
    SQL.Strings = (
      'select * from tanque order bY cod_tanque asc')
    Left = 408
    Top = 456
    object sds_tanquesCOD_TANQUE: TIntegerField
      FieldName = 'COD_TANQUE'
      Origin = 'COD_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_tanquesID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object sds_tanquesLITROS: TBCDField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      Precision = 18
      Size = 3
    end
    object sds_tanquesULTATUAL: TSQLTimeStampField
      FieldName = 'ULTATUAL'
      Origin = 'ULTATUAL'
    end
    object sds_tanquesULTATUALCODSETOR: TIntegerField
      FieldName = 'ULTATUALCODSETOR'
      Origin = 'ULTATUALCODSETOR'
    end
    object sds_tanquesULTATUALCODSETORUSER: TIntegerField
      FieldName = 'ULTATUALCODSETORUSER'
      Origin = 'ULTATUALCODSETORUSER'
    end
    object sds_tanquesDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object sds_tanquesENABLED: TIntegerField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
    end
    object sds_tanquesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 255
    end
    object sds_tanquesCOD_PRODUTOS: TIntegerField
      FieldName = 'COD_PRODUTOS'
      Origin = 'COD_PRODUTOS'
    end
    object sds_tanquesLITROS_ATUAL: TBCDField
      FieldName = 'LITROS_ATUAL'
      Origin = 'LITROS_ATUAL'
      Precision = 18
      Size = 3
    end
    object sds_tanquesVLR_SAI: TBCDField
      FieldName = 'VLR_SAI'
      Origin = 'VLR_SAI'
      Precision = 18
      Size = 3
    end
    object sds_tanquesVLR_ENT: TBCDField
      FieldName = 'VLR_ENT'
      Origin = 'VLR_ENT'
      Precision = 18
      Size = 3
    end
    object sds_tanquesEST_INI: TBCDField
      FieldName = 'EST_INI'
      Origin = 'EST_INI'
      Precision = 18
      Size = 3
    end
    object sds_tanquesEST_ATU: TBCDField
      FieldName = 'EST_ATU'
      Origin = 'EST_ATU'
      Precision = 18
      Size = 3
    end
    object sds_tanquesDAT_ULT_ENT: TDateField
      FieldName = 'DAT_ULT_ENT'
      Origin = 'DAT_ULT_ENT'
    end
    object sds_tanquesNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = 'NUM_NF'
    end
    object sds_tanquesDAT_ULT_SAI: TDateField
      FieldName = 'DAT_ULT_SAI'
      Origin = 'DAT_ULT_SAI'
    end
    object sds_tanquesESTOQUE_MEDICAO: TBCDField
      FieldName = 'ESTOQUE_MEDICAO'
      Origin = 'ESTOQUE_MEDICAO'
      Precision = 18
    end
  end
end

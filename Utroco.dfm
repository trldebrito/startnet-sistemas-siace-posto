object FormTroco: TFormTroco
  Left = 322
  Top = 166
  Width = 271
  Height = 430
  BorderIcons = []
  Caption = 'Tela de Lan'#231'amento de Troco'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 255
    Height = 350
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    BevelWidth = 2
    Color = 16710131
    TabOrder = 0
    object PanelOK: TPanel
      Left = 2
      Top = 2
      Width = 251
      Height = 95
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = cl3DLight
      TabOrder = 0
      object RxLabel3: TRxLabel
        Left = 2
        Top = 46
        Width = 43
        Height = 16
        Caption = 'Troco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape8: TShape
        Left = 69
        Top = 36
        Width = 180
        Height = 42
        Brush.Color = clBlack
        Pen.Color = clSilver
        Pen.Width = 3
        Shape = stRoundRect
      end
      object RxLabel11: TRxLabel
        Left = 2
        Top = 6
        Width = 69
        Height = 16
        Caption = 'Diferen'#231'a:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtDiferenca: TCurrencyEdit
        Left = 72
        Top = 6
        Width = 178
        Height = 21
        TabStop = False
        AutoSize = False
        CheckOnExit = True
        Color = clInactiveCaptionText
        DisplayFormat = ',#0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ZeroEmpty = False
      end
      object EdtTroco: TCurrencyEdit
        Left = 72
        Top = 42
        Width = 172
        Height = 30
        AutoSize = False
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel8: TPanel
      Left = 2
      Top = 97
      Width = 251
      Height = 251
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 16710131
      TabOrder = 1
      object Label13: TLabel
        Left = 1
        Top = 1
        Width = 249
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Formas de Pagamentos'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBGridFormas: TXDBGrid
        Left = 1
        Top = 17
        Width = 249
        Height = 233
        Align = alClient
        DataSource = DSFormas
        GridStyle.VisualStyle = vsXPStyle
        Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgExtendedSelect, dgInternalSelect, dgRowResize, dgRowScroll, dgHotButtons, dgTitleButtons, dgTitleHeaders, dgTitleWidthOff, dgMarkerAutoAlign, dgMarkerAutoToggle]
        OptionsEx = [dgBlankRow, dgTotalValues, dgTotalFields, dgTotalFooter, dgTotalHeaderBox, dgTotalValuesBox, dgTotalFieldsBox, dgTotalFooterBox, dgAutoAscendOrder, dgAutoUpdateSequence, dgDelayUpdateSequence, dgAutoUpdateTotals, dgDelayUpdateTotals, dgCalcWholeDataSet, dgCalcSelectedRows, dgDelaySelectedRows, dgSelectedAutoHidden, dgClickSelectOff]
        TabOrder = 0
        OnColEnter = DBGridFormasColEnter
        OnDrawColumnCell = DBGridFormasDrawColumnCell
        OnEnter = DBGridFormasEnter
        OnKeyDown = DBGridFormasKeyDown
        OnKeyPress = DBGridFormasKeyPress
        OnTotalsUpdated = DBGridFormasTotalsUpdated
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Formas de Pagto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            TotalFooter.Alignment = taCenter
            TotalFooter.Caption = 'Total'
            Visible = True
            Width = 150
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            TotalFooter.Format = '%n'
            TotalFooter.TotalResult = trCalcValue
            Visible = True
            Width = 77
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 351
    Width = 255
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnGravar: TAdvGlowButton
      Left = 135
      Top = 1
      Width = 114
      Height = 37
      Caption = '&Salvar - F10'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424DFA0900000000000036000000280000001900000019000000010020000000
        0000C409000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F00FF00FF00FF00FF00FF00
        FF00FF00FF00B0791D00AE771D00AE771D00AF771C00A27B4A00B3B5B500CBCD
        CD00AA9D7B00B3A98E00FBFCFC00FDFEFE00FEFFFF00FFFFFF00F0EEEE00D4CE
        CE00B7AEAF0094857F00906D13008D6C1300AF781F00AE771D0092541F00FF00
        FF00FF00FF0092541F00B06D2000B06D2000B06D2000B16D1F00A27B4A00AEB0
        B100B4B8BC00906B16008A630A00F4F6FB00FAFBFB00FDFDFD00FFFFFF00FEFE
        FE00E5E1E200C9C1C200A39690008F6A13008C6A1400B26E2200B06D20009254
        1F00FF00FF00FF00FF0092541F00B2642300B2642300B2642300B3642200A27B
        4A00B1B3B300B2B6B9008F67170089600D00EDF0F400F6F7F700FAFAFA00FEFE
        FE00FFFFFF00F7F6F600DAD5D600B2A7A1008E6615008C661600B3652500B264
        230092541F00FF00FF00FF00FF0092541F00B45B2600B45B2600B45B2600B55A
        2500A27B4A00B6B8B800B5B8BC008E631800895C0E00E5E8EC00F1F1F100F6F6
        F600FCFCFC00FEFEFE00FFFFFF00ECE9EA00C2B8B2008D6116008B621700B65C
        2800B45B260092541F00FF00FF00FF00FF0092541F00AC582400AC582400AC58
        2400AD572300A27B4A00BFC1C100BBBFC2008D5F190089591000D6DADE00E9E9
        E900EFF0F000F8F8F800FDFDFD00FFFFFF00FDFCFC00D1C9C3008C5D17008A5E
        1800AE592600AC58240092541F00FF00FF00FF00FF0092541F00A3562300A356
        2300A3562300A3552200A27B4A00CECFCF00C6CACC008E5B19008A551000C7CB
        CE00DFDFDF00E7E8E800F3F4F400FAFAFA00FEFEFE00FFFFFF00E0DBD5008B58
        18008B5A1A00A4572500A356230092541F00FF00FF00FF00FF0092541F009A54
        21009A5421009A5421009A532000A27B4A00E8EDF000C7CDD0009F9F9D009D9F
        9F00BBC0C200D5DADD00E0E5E700F1F5F700FCFFFF00FFFFFF00FFFFFF00E3DA
        D1008A5519008A571C009B5422009A54210092541F00FF00FF00FF00FF009254
        1F00915220009152200091522000915220009152200091522000915220009152
        2000915220009152200091522000915220009152200091522000915220009152
        2000915220009152200091522000915220009152200092541F00FF00FF00FF00
        FF0092541F008B511E008B511E00894E1A00894E1A00894E1A00894E1A00894E
        1A00894E1A00894E1A00894E1A00894E1A00894E1A00894E1A00894E1A00894E
        1A00894E1A00894E1A00894E1A00894E1A008B511E008B511E0092541F00FF00
        FF00FF00FF0092541F008E561E008E561E00E3DED900E4E5E500E4E5E500E5E6
        E600E9E9E900ECECEC00EEEEEE00EFEFEF00EFF0F000EFEFF000EEEEEF00ECED
        ED00EAEAEA00E6E6E600E4E5E500E4E5E500E3DED9008D551D008E561E009254
        1F00FF00FF00FF00FF0092541F0090591D0090591D00E3DED900E4E4E400E4E4
        E400E7E7E700EBEBEB00EEEEEE00F0F0F000F1F1F100F1F1F100F1F1F100F0F0
        F000EEEEEE00EBEBEB00E8E8E800E4E4E400E4E4E400E3DED9008F581C009059
        1D0092541F00FF00FF00FF00FF0092541F00945E1D00945E1D00E3DED900E4E4
        E400E5E5E500EAEAEA00EDEDED00F0F0F000F3F3F300F4F4F400F4F4F400F4F4
        F400F3F3F300F1F1F100EFEFEF00EBEBEB00E6E6E600E4E4E400E3DED900945D
        1C00945E1D0092541F00FF00FF00FF00FF0092541F0097631C0097631C00E3DE
        D900E4E4E400E9E9E900EDEDED00F1F1F100F4F4F400F6F6F600F8F8F800F8F8
        F800F8F8F800F7F7F700F5F5F500F2F2F200EEEEEE00EAEAEA00E4E4E400E3DE
        D90097631B0097631C0092541F00FF00FF00FF00FF0092541F009B681C009B68
        1C00E3DED900E5E5E500EBEBEB00EFEFEF00F3F3F300F6F6F600F9F9F900FAFA
        FA00FAFAFA00FAFAFA00F9F9F900F7F7F700F4F4F400F0F0F000ECECEC00E7E7
        E700E3DED9009B681B009B681C0092541F00FF00FF00FF00FF0092541F009E6D
        1B009E6D1B00E3DED900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
        CC00CCCCCC00E3DED9009E6D1A009E6D1B0092541F00FF00FF00FF00FF009254
        1F00A2721B00A2721B00E3DED900E7E7E700EBEBEB00F0F0F000F4F4F400F7F7
        F700F9F9F900FBFBFB00FBFBFB00FBFBFB00FAFAFA00F8F8F800F5F5F500F0F0
        F000ECECEC00E7E7E700E3DED900A2721A00A2721B0092541F00FF00FF00FF00
        FF0092541F00A5761B00A5761B00E3DED900E6E6E600ECECEC00F1F1F100F5F5
        F500F8F8F800FAFAFA00FCFCFC00FCFCFC00FCFCFC00FAFAFA00F8F8F800F5F5
        F500F2F2F200EDEDED00E8E8E800E3DED900A5761A00A5761B0092541F00FF00
        FF00FF00FF0092541F00AE832900AC822600E3DED900E5E5E500EBEBEB00EFEF
        EF00F3F3F300F6F6F600F8F8F800FAFAFA00FAFAFA00FAFAFA00F9F9F900F7F7
        F700F3F3F300EFEFEF00EBEBEB00E5E5E500E3DED900A7791700A77918009254
        1F00FF00FF00FF00FF0092541F00BC994800BC994800E3DED900E8E8E800ECEC
        EC00F0F0F000F3F3F300F5F5F500F7F7F700F9F9F900F9F9F900F9F9F900F8F8
        F800F6F6F600F3F3F300F0F0F000ECECEC00E7E7E700E3DED900BD9A4900BD9A
        4A0092541F00FF00FF00FF00FF0092541F00FF00FF00A4744C003535B3003838
        B3003838B7003939BA003A3ABB003A3ABC003A3ABC003939BA003838B8003838
        B6003737B2003636AE003535AA003434A5003434A10033339E002A2BA300A474
        4C00FF00FF0092541F00FF00FF00FF00FF0092541F00A4744C00A4744C003535
        B3004142BA004343BE004344C1004444C3004445C5004445C4004444C2004343
        BF004243BE004141BA004141B6004040B1003E3EAC003D3DA7003C3CA2003232
        9F00A4744C00A4744C0092541F00FF00FF00FF00FF00FF00FF0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F0092541F0092541F0092541F0092541F009254
        1F0092541F0092541F0092541F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
      OnClick = BtnGravarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Enabled = False
    end
  end
  object qFormas: TSimpleDataSet
    Aggregates = <>
    Connection = DM.SQLC
    DataSet.CommandText = 'select * from CONDICAO_PAGTO_FORMAS ORDER By COD_FORMA ASC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 28
    Top = 174
    object qFormasCOD_FORMA: TIntegerField
      FieldName = 'COD_FORMA'
      Required = True
    end
    object qFormasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object qFormasTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      FixedChar = True
      Size = 1
    end
    object qFormasMOSTRA_VENDA: TStringField
      FieldName = 'MOSTRA_VENDA'
      Size = 1
    end
    object qFormasTELA_TROCO: TStringField
      FieldName = 'TELA_TROCO'
      Size = 1
    end
  end
  object CDSFormas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 216
    object CDSFormasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSFormasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object CDSFormasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object CDSFormasCONCEDER_DESCONTO: TStringField
      FieldName = 'CONCEDER_DESCONTO'
      Size = 1
    end
    object CDSFormastipo_pagto: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo_pagto'
      Calculated = True
    end
    object CDSFormasVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = ',0.00;-,0.00'
    end
  end
  object DSFormas: TDataSource
    DataSet = CDSFormas
    Left = 64
    Top = 216
  end
  object SPC_MOV_DIARIO: TSQLStoredProc
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
    Left = 399
    Top = 1
  end
end

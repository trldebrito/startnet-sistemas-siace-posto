inherited FrmCadAdmCartaoCredito: TFrmCadAdmCartaoCredito
  Left = 593
  Top = 152
  Caption = 'Cadastro Administradoras de Cart'#227'o'
  ClientHeight = 456
  ClientWidth = 752
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 752
    Height = 405
    object Panel4: TPanel
      Left = 2
      Top = 57
      Width = 748
      Height = 346
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 16710131
      TabOrder = 0
      object Label3: TLabel
        Left = 128
        Top = 72
        Width = 60
        Height = 13
        Caption = 'Taxa Cr'#233'dito'
      end
      object Label4: TLabel
        Left = 304
        Top = 72
        Width = 55
        Height = 13
        Caption = 'Dias D'#233'bito'
      end
      object Label7: TLabel
        Left = 376
        Top = 72
        Width = 57
        Height = 13
        Caption = 'Dias Cr'#233'dito'
      end
      object Label30: TLabel
        Left = 2
        Top = 2
        Width = 744
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Bandeiras'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 80
        Top = 24
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label10: TLabel
        Left = 8
        Top = 24
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label5: TLabel
        Left = 216
        Top = 72
        Width = 58
        Height = 13
        Caption = 'Taxa D'#233'bito'
      end
      object Label6: TLabel
        Left = 448
        Top = 72
        Width = 56
        Height = 13
        Caption = 'C'#243'digo TEF'
      end
      object Label11: TLabel
        Left = 8
        Top = 72
        Width = 55
        Height = 13
        Caption = 'Tipo Cart'#227'o'
      end
      object Image1: TImage
        Left = 632
        Top = 16
        Width = 100
        Height = 100
        AutoSize = True
        Center = True
      end
      object EdtTaxaCredito: TCurrencyEdit
        Left = 128
        Top = 88
        Width = 73
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 3
        ZeroEmpty = False
      end
      object EdtDiasCredito: TAlignEdit
        Left = 376
        Top = 88
        Width = 57
        Height = 21
        TabOrder = 7
        OnEnter = EdtDiasCreditoEnter
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
      object EdtDiasDebito: TAlignEdit
        Left = 304
        Top = 88
        Width = 57
        Height = 21
        TabOrder = 5
        OnEnter = EdtDiasDebitoEnter
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
      object EdtNomeBandeira: TEdit
        Left = 80
        Top = 40
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        MaxLength = 50
        TabOrder = 0
      end
      object EdtCodBandeira: TAlignEdit
        Left = 8
        Top = 40
        Width = 57
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
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
      object CheckAtivo: TCheckBox
        Left = 448
        Top = 40
        Width = 73
        Height = 17
        Caption = 'Ativo'
        TabOrder = 1
      end
      object EdtTaxaDebito: TCurrencyEdit
        Left = 216
        Top = 88
        Width = 73
        Height = 21
        AutoSize = False
        CheckOnExit = True
        Color = clSilver
        DisplayFormat = ',#0.00'
        FormatOnEditing = True
        TabOrder = 4
        ZeroEmpty = False
      end
      object ComboTipoCartao: TComboBox
        Left = 8
        Top = 88
        Width = 105
        Height = 21
        Style = csDropDownList
        Color = clSilver
        ItemHeight = 13
        TabOrder = 2
        OnChange = ComboTipoCartaoChange
        OnExit = ComboTipoCartaoChange
        Items.Strings = (
          'CR'#201'DITO'
          'D'#201'BITO'
          'AMBOS')
      end
      object BtnGrava: TButton
        Left = 547
        Top = 33
        Width = 75
        Height = 35
        Caption = '&Gravar'
        TabOrder = 9
        OnClick = BtnGravaClick
      end
      object BtnExclui: TButton
        Left = 547
        Top = 73
        Width = 75
        Height = 35
        Caption = '&Excluir'
        TabOrder = 10
        OnClick = BtnExcluiClick
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 127
        Width = 744
        Height = 217
        Align = alBottom
        Color = clSilver
        DataSource = DSBandeiras
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Color = 16776176
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Width = 221
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'CALC_TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'TIPO'
            Width = 81
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'TAXA_CREDITO'
            Title.Alignment = taCenter
            Title.Caption = 'TX CR'#201'DITO'
            Width = 70
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'TAXA_DEBITO'
            Title.Alignment = taCenter
            Title.Caption = 'TX D'#201'BITO'
            Width = 66
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'DIAS_CREDITO'
            Title.Alignment = taCenter
            Title.Caption = 'DIAS CR'#201'DITO'
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'DIAS_DEBITO'
            Title.Alignment = taCenter
            Title.Caption = 'DIAS D'#201'BITO'
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'CODIGO_TEF'
            Title.Alignment = taCenter
            Title.Caption = 'COD. TEF'
            Visible = True
          end>
      end
      object EdtCodTEFBandeira: TEdit
        Left = 448
        Top = 88
        Width = 89
        Height = 21
        Color = clSilver
        MaxLength = 10
        TabOrder = 8
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 748
      Height = 55
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      BevelWidth = 2
      Color = 16710131
      TabOrder = 1
      object Label2: TLabel
        Left = 80
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label8: TLabel
        Left = 424
        Top = 8
        Width = 56
        Height = 13
        Caption = 'C'#243'digo TEF'
      end
      object codigo: TAlignEdit
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
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
      object EdtNome: TEdit
        Left = 80
        Top = 24
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        MaxLength = 50
        TabOrder = 1
      end
      object EdtCodTEF: TEdit
        Left = 424
        Top = 24
        Width = 89
        Height = 21
        Color = clSilver
        MaxLength = 10
        TabOrder = 2
      end
    end
  end
  inherited Panel2: TPanel
    Top = 405
    Width = 752
    inherited Panel3: TPanel
      Width = 748
      inherited btnNovo: TAdvGlowButton
        OnClick = btnNovoClick
      end
      inherited BtnGravar: TAdvGlowButton
        OnClick = BtnGravarClick
      end
      inherited BtnConsultar: TAdvGlowButton
        OnClick = BtnConsultarClick
      end
      inherited BtnSair: TAdvGlowButton
        OnClick = BtnSairClick
      end
    end
  end
  object IBSQLAdm: TIBSQL
    Database = DM.IBDatabase
    ParamCheck = True
    Transaction = IBTRAdm
    Left = 440
  end
  object IBTRAdm: TIBTransaction
    Active = True
    DefaultDatabase = DM.IBDatabase
    AutoStopAction = saNone
    Left = 312
  end
  object DSBandeiras: TDataSource
    AutoEdit = False
    DataSet = QBandeiras
    Left = 200
    Top = 328
  end
  object QBandeiras: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRAdm
    OnCalcFields = QBandeirasCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *'
      'FROM BANDEIRAS_CARTAO'
      'WHERE CODIGO_ADMINISTRADORA = :COD'
      'ORDER BY CODIGO')
    Left = 200
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object QBandeirasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'BANDEIRAS_CARTAO.CODIGO'
      Required = True
    end
    object QBandeirasCODIGO_ADMINISTRADORA: TIntegerField
      FieldName = 'CODIGO_ADMINISTRADORA'
      Origin = 'BANDEIRAS_CARTAO.CODIGO_ADMINISTRADORA'
      Required = True
    end
    object QBandeirasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'BANDEIRAS_CARTAO.DESCRICAO'
      Required = True
      Size = 50
    end
    object QBandeirasATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = 'BANDEIRAS_CARTAO.ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBandeirasDIAS_CREDITO: TIntegerField
      FieldName = 'DIAS_CREDITO'
      Origin = 'BANDEIRAS_CARTAO.DIAS_CREDITO'
      Required = True
    end
    object QBandeirasDIAS_DEBITO: TIntegerField
      FieldName = 'DIAS_DEBITO'
      Origin = 'BANDEIRAS_CARTAO.DIAS_DEBITO'
      Required = True
    end
    object QBandeirasTIPO_CARTAO: TIBStringField
      FieldName = 'TIPO_CARTAO'
      Origin = 'BANDEIRAS_CARTAO.TIPO_CARTAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBandeirasCALC_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CALC_TIPO'
      Calculated = True
    end
    object QBandeirasCODIGO_TEF: TIBStringField
      FieldName = 'CODIGO_TEF'
      Origin = 'BANDEIRAS_CARTAO.CODIGO_TEF'
      Required = True
      Size = 10
    end
    object QBandeirasTAXA_CREDITO: TFloatField
      FieldName = 'TAXA_CREDITO'
      Origin = 'BANDEIRAS_CARTAO.TAXA_CREDITO'
    end
    object QBandeirasTAXA_DEBITO: TFloatField
      FieldName = 'TAXA_DEBITO'
      Origin = 'BANDEIRAS_CARTAO.TAXA_DEBITO'
    end
  end
end

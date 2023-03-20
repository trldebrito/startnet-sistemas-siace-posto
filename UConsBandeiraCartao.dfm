inherited FrmConsBandeiraCartao: TFrmConsBandeiraCartao
  Left = 552
  Top = 136
  Caption = 'Consulta Bandeiras de Cart'#245'es'
  ClientHeight = 498
  ClientWidth = 685
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 685
    inherited EdtCons: TEdit
      Width = 433
    end
    inherited BtnOK: TBitBtn
      Left = 461
      OnClick = BtnOKClick
    end
  end
  inherited Panel2: TPanel
    Width = 685
    Height = 358
    inherited DBGrid: TDBGrid
      Width = 681
      Height = 319
      DataSource = DM.DSBandeira
      OnDrawColumnCell = DBGridDrawColumnCell
      OnDblClick = BtnLocalizarClick
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'COD.'
          Width = 45
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'CALC_TIPO'
          Title.Alignment = taCenter
          Title.Caption = 'TIPO CART'#195'O'
          Width = 84
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 243
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'ADMINISTRADORA'
          Title.Alignment = taCenter
          Width = 129
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'TAXA_CREDITO'
          Title.Alignment = taCenter
          Title.Caption = 'TX CR'#201'DITO'
          Width = 74
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'TAXA_DEBITO'
          Title.Alignment = taCenter
          Title.Caption = 'TX D'#201'BITO'
          Width = 74
          Visible = True
        end>
    end
    inherited BtnLocalizar: TBitBtn
      Left = 241
      Top = 328
      OnClick = BtnLocalizarClick
    end
    inherited BtnSair: TBitBtn
      Left = 369
      Top = 328
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 479
    Width = 685
  end
  inherited Panel3: TPanel
    Width = 685
    inherited Label1: TLabel
      Width = 681
      Font.Color = clBlack
    end
    inherited GroupBox1: TGroupBox
      Width = 681
      inherited ComboCons: TComboBox
        Width = 657
      end
    end
  end
end

object FormNfe: TFormNfe
  Left = 532
  Top = 177
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Siace -Modulo de Envio da NF-e/NFC-e'
  ClientHeight = 401
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = CHE
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1
    Height = 401
    Align = alLeft
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 22
      Top = 8
      Width = 294
      Height = 377
      Caption = 'Configura'#231#245'es'
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 2
        Top = 15
        Width = 290
        Height = 360
        ActivePage = TabSheet1
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Certificado'
          object GroupBox2: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 144
            Caption = 'Certificado'
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Caminho'
            end
            object Label2: TLabel
              Left = 8
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object sbtnCaminhoCert: TSpeedButton
              Left = 235
              Top = 32
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnCaminhoCertClick
            end
            object Label25: TLabel
              Left = 8
              Top = 96
              Width = 79
              Height = 13
              Caption = 'N'#250'mero de S'#233'rie'
            end
            object sbtnGetCert: TSpeedButton
              Left = 235
              Top = 110
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnGetCertClick
            end
            object edtCaminho: TEdit
              Left = 8
              Top = 32
              Width = 225
              Height = 21
              TabOrder = 0
            end
            object edtSenha: TDBEdit
              Left = 8
              Top = 72
              Width = 249
              Height = 21
              DataField = 'NFE_SENHA'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 1
            end
            object edtNumSerie: TDBEdit
              Left = 8
              Top = 112
              Width = 225
              Height = 21
              DataField = 'NFE_CERTIFICAO'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 2
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          object GroupBox3: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 269
            Caption = 'Geral'
            TabOrder = 0
            object Label7: TLabel
              Left = 8
              Top = 176
              Width = 57
              Height = 13
              Caption = 'Logo Marca'
            end
            object sbtnLogoMarca: TSpeedButton
              Left = 235
              Top = 188
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnLogoMarcaClick
            end
            object sbtnPathSalvar: TSpeedButton
              Left = 235
              Top = 236
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbtnPathSalvarClick
            end
            object ckSalvar: TCheckBox
              Left = 8
              Top = 224
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object rgTipoDanfe: TRadioGroup
              Left = 8
              Top = 16
              Width = 249
              Height = 49
              Caption = 'DANFE'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Retrato'
                'Paisagem')
              TabOrder = 1
            end
            object rgFormaEmissao: TRadioGroup
              Left = 8
              Top = 72
              Width = 249
              Height = 97
              Caption = 'Forma de Emiss'#227'o'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Normal'
                'Conting'#234'ncia'
                'SCAN'
                'DPEC'
                'FSDA')
              TabOrder = 2
            end
            object edtLogoMarca: TDBEdit
              Left = 8
              Top = 191
              Width = 225
              Height = 21
              DataField = 'NFE_LOGOMARCA'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 3
            end
            object edtPathLogs: TDBEdit
              Left = 9
              Top = 238
              Width = 225
              Height = 21
              DataField = 'NFE_CAMINHO_XML'
              DataSource = DM.DTS_CONFIGURACOES
              TabOrder = 4
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'WebService'
          ImageIndex = 2
          object GroupBox4: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 141
            Caption = 'WebService'
            TabOrder = 0
            object Label6: TLabel
              Left = 8
              Top = 16
              Width = 121
              Height = 13
              Caption = 'Selecione UF de Destino:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ckVisualizar: TCheckBox
              Left = 8
              Top = 118
              Width = 153
              Height = 17
              Caption = 'Visualizar Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbUF: TComboBox
              Left = 8
              Top = 32
              Width = 249
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ItemIndex = 10
              ParentFont = False
              TabOrder = 1
              Text = 'MT'
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
            end
            object rgTipoAmb: TRadioGroup
              Left = 8
              Top = 61
              Width = 249
              Height = 52
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              TabOrder = 2
            end
          end
          object gbProxy: TGroupBox
            Left = 0
            Top = 152
            Width = 265
            Height = 105
            Caption = 'Proxy'
            TabOrder = 1
            object Label8: TLabel
              Left = 8
              Top = 16
              Width = 22
              Height = 13
              Caption = 'Host'
            end
            object Label9: TLabel
              Left = 208
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label10: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label11: TLabel
              Left = 138
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object edtProxyHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtProxyPorta: TEdit
              Left = 208
              Top = 32
              Width = 50
              Height = 21
              TabOrder = 1
            end
            object edtProxyUser: TEdit
              Left = 8
              Top = 72
              Width = 123
              Height = 21
              TabOrder = 2
            end
            object edtProxySenha: TEdit
              Left = 135
              Top = 72
              Width = 123
              Height = 21
              PasswordChar = '*'
              TabOrder = 3
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Email'
          ImageIndex = 4
          object GroupBox5: TGroupBox
            Left = 1
            Top = 4
            Width = 264
            Height = 324
            Caption = 'Email'
            TabOrder = 0
            object Label3: TLabel
              Left = 8
              Top = 16
              Width = 72
              Height = 13
              Caption = 'Servidor SMTP'
            end
            object Label4: TLabel
              Left = 206
              Top = 16
              Width = 25
              Height = 13
              Caption = 'Porta'
            end
            object Label5: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label26: TLabel
              Left = 137
              Top = 56
              Width = 31
              Height = 13
              Caption = 'Senha'
            end
            object Label27: TLabel
              Left = 8
              Top = 96
              Width = 121
              Height = 13
              Caption = 'Assunto do email enviado'
            end
            object Label28: TLabel
              Left = 8
              Top = 168
              Width = 95
              Height = 13
              Caption = 'Mensagem do Email'
            end
            object edtSmtpHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtSmtpPort: TEdit
              Left = 206
              Top = 32
              Width = 51
              Height = 21
              TabOrder = 1
            end
            object edtSmtpUser: TEdit
              Left = 8
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 2
            end
            object edtSmtpPass: TEdit
              Left = 137
              Top = 72
              Width = 120
              Height = 21
              TabOrder = 3
            end
            object edtEmailAssunto: TEdit
              Left = 8
              Top = 112
              Width = 249
              Height = 21
              TabOrder = 4
            end
            object cbEmailSSL: TCheckBox
              Left = 10
              Top = 144
              Width = 167
              Height = 17
              Caption = 'SMTP exige conex'#227'o segura'
              TabOrder = 5
            end
            object mmEmailMsg: TMemo
              Left = 8
              Top = 184
              Width = 249
              Height = 130
              TabOrder = 6
            end
          end
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 70
      Top = 392
      Width = 153
      Height = 25
      Caption = 'Salvar Configura'#231#245'es'
      TabOrder = 1
      OnClick = btnSalvarConfigClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 1
    Top = 0
    Width = 593
    Height = 401
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 53
      Width = 591
      Height = 124
      Align = alTop
      TabOrder = 0
      object CheckBox3: TCheckBox
        Left = 16
        Top = 93
        Width = 201
        Height = 17
        Caption = 'Enviar dados Contribuinte NFC-e - F9'
        TabOrder = 10
      end
      object btnImprimir: TAdvGlowButton
        Left = 416
        Top = 0
        Width = 155
        Height = 25
        Caption = 'Imprimir DANFE'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360300000000000036000000280000001000000010000000010018000000
          00000003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF737373696969656563929391FFFFFFAFAFAFAFAF
          AFAFAFAFFFFFFF7B7B754F4F4F545454545454FF00FFFF00FF73737393979793
          979775777590918EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B755B5C5C787B7B
          606161545454FF00FF737373939797ADB5B56667665F5F5F7777777777777777
          777777777171715A5A586869697F8282707171545454FF00FF737373ADB5B5AD
          B5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5A2A8A86AA47708B518
          767878565757FF00FF737373D2D2D2988D91997C809A797BAA8186AA7F86AA7E
          86AD828AA77F859D7C7F8B7D7A5E9063787A7A575858FF00FF737373D2D2D285
          5A62956B6D8A6969896D6D876B6B866A6A886E6D8A706F8D6A6993636A9C6C81
          9397975C5D5DFF00FF737373D2D2D26F4952583F415F4C4C7469697267677166
          667166667166665E424254393C8A72749397976C6D6DFF00FF737373ADB5B57E
          686A757272A6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B6E5F61988989
          ADB5B56C6D6DFF00FFFF00FF7373738E81818F8485A6A8A9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF9B9B9B8473748F85856C6D6DFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFA6A8A99B9B9B9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A9FFFFFFFFFFFFFFFF
          FFA6A8A9FFFFFF9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFCFCFCFFFFFFA6A8A99B9B9BFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 2
        OnClick = btnImprimirClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Enabled = False
      end
      object btnConsultar: TAdvGlowButton
        Left = 216
        Top = 57
        Width = 155
        Height = 25
        Caption = 'Consultar carregando XML'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = btnConsultarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnStatusServ: TAdvGlowButton
        Left = 216
        Top = 0
        Width = 155
        Height = 25
        Caption = 'Status Servi'#231'o NF-e - F2'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnStatusServClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Enabled = False
      end
      object btnCriarEnviar: TAdvGlowButton
        Left = 16
        Top = 28
        Width = 155
        Height = 45
        Caption = 'Enviar NF-e - F3'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D220E00000000000036000000280000002400000021000000010018000000
          0000EC0D000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEBD389CE934B
          B35A1F9F331D9D2F45AD5683C78DCCE7D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA2DBAB38B24B19AB2F1CB5331EBE361DC13716B42F15A52A2FA6419AD1A2
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFE9E8E8BBBABA538C5C21AC361EB53423C03C23C23B17AD2E19B330
          23CC3C1ECC3816B62E139E289AD0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF0F0F0D9D8D99F9D9E666365333233233F27229E3523B33926BA3D
          27BE3D17A0293DA64B0487151CB93522C83B20CB3914B62C2EA440CCE7D0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE7E7E7B0AEAF817F805756572726262929293A3A3A494848
          3E854925B23B2AB83E2ABB411C9F31F7FCF8F7FCF740A94E129C2524C73C22C7
          3A1ECA3714A52A82C68CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE8E8E8D6D6D69393933D3D3D1919191A1A1A373737575656
          7D7B7B989292AAA1A0BAB0AE1F9F332AB33F2EB94427AD3BF7FDF8EDFAEFF7FC
          F8D2EFD60789191FB83624C53D23C73B16B22E44AB54FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFCFCFCDCDCDCA1A1A16B6B6B353535121212292929363535
          585757827D7DA7A1A0C3BAB8D3CCC9D5D2D1D7D6D4CECDCB1F9F333FBB5136BA
          4BEFFBF2EEFBF130C64DA1E3ACF7FCF865BD71139F2823BF3A23C33B1EBC351A
          992CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F36C67671111110A0A0A2E2E2E
          6D6C6C8D8989ACA5A4C5BCBAD4CECCDCD9D7D8D6D5CFCFCEC2C0BEB8B4B0ADA7
          9EABA2971F9F336ACC795FCD713AC04F39C24E38C34D31C54DF7FDF8D2EFD60A
          8C1D1DB13224C03C1FB8361C9B2EFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB5AFAE
          5A5858797676958F8EBDB5B3D4CDCBDAD7D5D8D7D6D4D2D0C7C6C4B9B6B2B4AD
          A5B4AA9FB4AA9EB8B0A7BAB6B2BEBCB91F9F3359C66A94DFA05ACA6A4EC86140
          C4543AC44EA4E6B0F7FDF892D59C10952027BC3D1EAF3448AF57FFFFFFFFFFFF
          FFFFFFFFFFFFCEC7C69A9695C6BEBBDAD6D4D7D6D4D0CFCEC7C5C3BBB8B3B6B0
          A8B5ABA1BAB2A6BAB4ACC1BCB9BFBCB9C5C4C2C4C2C2BEBBBB9A958F1F9F333F
          BD5293DDA19BE1A684DA9271D3805ACD6C3CCE59EDFAF0F8FDF846AC5034BE48
          1DA93386CB91FFFFFFFFFFFFFFFFFFFFFFFFBBB5B3BDBCB9C6C3C2B6B3AFB5AE
          A6B5ACA1B9B1A6C1BBB5C8C6C2CAC8C7CBCAC9D0CFCEA9A59FCCC8C7A5A09BCD
          CCCCBDBCBCBDBCBB839C7F1F9F3355C76784D9929FE4AA85D99186DC9676D484
          81E294F3FCF34AC35D30B54435AE47CEEAD2FFFFFFFFFFFFFFFFFFFFFFFFF0EF
          EE939291ABA7A5BBB3ABC7C4C0D1D1CFADA9A4D8D8D8D7D7D7D9D9D9AEA8A2D2
          D1D1D0CDCCABA6A1CFCAC8ACA8A3CCCCCBC0C0BFC6C5C486BF8E1F9F3359C86B
          9DE3A8A0E3AA8BDC997CD68A7BD58B70D18040B95221AA359FD6A6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD5D0CEABABABC1C1C1CFCECEAAA6A0CDC5C1AB
          A39CCAC8C6D8D8D8DBDBDBAEA7A1D6D3D2D3CFCEDBDADADAD5D5D8D8D8CFD1CF
          A0ACA5707974366F3E1F9F334BC35E71D28089D99677D28459C56A39B74D34AF
          4668A070F2F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0B5B59A
          9A9AC3C0BFCAC8C6A6A099C7C5C3C2C1C1D2D2D2DADADADEDDDCDEDDDCD4DED8
          9ED2B280CA9E7CC197519B6F11492812261A21212146634B1F9F331F9F3329B3
          3F27B13E41B15180C68BAFCCB4AEACACE8E7E7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFAF9F9A9A1A0A1A1A1C8C8C8C2C1C0CBCBCAD0D0CFCDCCCB
          D0CFCFC6C6C693A69A49B27439B66C38B76B41B06E569E7386978D9195939A99
          999C989898929197908FD1C8C7E3DCDAF3F1F0F8F7F7F2F0EFE9E7E7DEDFDFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7A59D9DA2A2A2
          BFBDBCADADAD9595956F6F6F7D7D7D6E6E6E687B70779B8680A28E89A594959B
          95A09B9AAAA3A3B2ACABBFBBBCC5C3C3AAA8A88B9191FAFAFAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F7F7ADA2A2A4A4A48989898181818B8A8A9695959794959D98
          98ACA5A6B9B3B4CAC5C5DDDCDDEEEEEEF0F0F0EFEFEFF1F1F1E8E8E8BCBBBB78
          7B7BDEE1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCABCBCA29695B6AA
          A9D2C7C7DBD5D5CECACBA9A9A9DCDCDCF6F6F6F9F9F9FAFAFAFAFAFAFAFAFAFA
          FAFAF9F9F9F9F9F9D5D5D5848383ADB3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9B9B9BC7C7C7FCFCFCFC
          FCFCFEFEFEFDFDFDFCFCFCFAFAFAFAFAFAFAFAFAF3F3F3C7C4C4919494FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAFAFAFBABABAFDFDFDFBFBFBFEFEFEFDFDFDFCFCFCFBFBFBFBFBFBFBFBFB
          FBFBFBE8E8E89B9999D1D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBE6E6E6F1F1F1F9F9F9FCFCFCFCFCFC
          FBFBFBFBFBFBFBFBFBFBFBFBFCFCFCF4F3F3BCB9B99EA0A0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA
          E6E6E6F5F5F5F8F8F8F8F8F8F9F9F9F9F9F9FBFBFBFBFBFBFCFCFCFDFDFDD9D7
          D7858585EFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0F0F0E1E1E1EDEDEDF5F5F5F7F7F7F8F8F8F8F8F8FAFA
          FAFBFBFBFCFCFCFDFDFDF4F4F4999797B5B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDBDBDBDEDEDEF1F1
          F1F4F4F4F6F6F6F5F5F5F4F4F4EFEFEFEDEDEDE7E7E7E1E1E1B9B7B7797878FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE2E2E2D2D2D2DEDEDED9D9D9D0D0D0C9C9C9C0C0C0B9B9B9B3B3B3AB
          ABABA5A5A5B6B6B6D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5BABABAB2B2B2C5C5C5CFCFCFD7
          D7D7DEDEDEF0F0F0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
          FFFF}
        TabOrder = 1
        OnClick = btnCriarEnviarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnGerarPDF: TAdvGlowButton
        Left = 416
        Top = 56
        Width = 155
        Height = 25
        Caption = 'Gerar PDF'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = btnGerarPDFClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnEnviarEmail: TAdvGlowButton
        Left = 416
        Top = 85
        Width = 155
        Height = 25
        Caption = 'Enviar NFe Email'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
        OnClick = btnEnviarEmailClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnConsultarChave: TAdvGlowButton
        Left = 216
        Top = 86
        Width = 155
        Height = 25
        Caption = 'Consultar pela Chave'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        OnClick = btnConsultarChaveClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object btnCriarEnviarNFCe: TAdvGlowButton
        Left = 16
        Top = 28
        Width = 154
        Height = 45
        Caption = 'Enviar NFC-e - F10'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          8700000006624B474400FF00FF00FFA0BDA793000000097048597300000B1200
          000B1201D2DD7EFC0000000774494D4507D30A081033356984F60C00000F5C49
          44415478DAED9A7970DDD575C73FBFFDEDBB9E24CB8B842D83B1011B3B0B1830
          A60C743AA44CC2A49374A63329294BD2AC341D2049036D20256C490C21C51887
          180FB669C1091030B6B1BC1B79B7252F5A2D59DBD3BEBCA7B7FD96DB3FF4245B
          B671489A4033933BF3E65EBDF9CDEF7DCFBDDF73CEF7DC23F8331FD2C7F5C38E
          654999EEEE687E60C0A7BABD43BE9915C39224893F0B03868F1F2F3FF5CB97BE
          956D3DFD19B3AF2F926EE9ECF35FE56EECBAD9AEFEC7078E3E319274463FECBB
          948F1A7CD7DBEFDC52FFE3275EF7C7E3B746CB2BC2EEC16197DAD11949D777CE
          5AFCE5A21B4D97CD8EFDA92D1FF67DF247093ED5DC3CBD73EDBA67A75EBB787A
          E9A24FE21919C5DBD145C4B289392A4EBA883B964EFFF23498FEB118B0724DF5
          8217D7ECFBCD332BB6DC03B8CF7EBF6D5952CBF2171E8B54545486E7CC818646
          A43DD5E8891E3CB6C0EFD1D12B2204DC7AF17D2EFDD60FFB9BEA1F0BFC4BEBF6
          2E300CBDEADA4533829DDDC9BF5DB9F6C0130383436B5B9A8E2F7BF6C9AFD7B5
          BEBCFA4E7968F88B915B3E85686FC7D9530D6DED6059283981B6C48FE7CA38BD
          9B0F10CE49951FA9012FFFCFDE0586AE57DD7CFDEC6038E4667A59884F5F3DCD
          5FD7D47FD7E12925772DBA7267CDC07BBF2C2FBF6929F2E010F6FB7B114DCD88
          5C0E2927C8973BF87EB008333342FB7B5DE842497E64147AE5F57D0B1C47A92A
          2D89040F9FE8E5E8F16E52A91C96E570E9CC287F77DB657CB267FF15C573E7F8
          0D8F077BDF0144ED314432053658AA89F16FF3F12FA8E4C8CBBB48EFC8DB9A2E
          6DFD939DC0E3BFD8BDD471ECAB25A4F91E8F5EAE68BEEBCAA7FB09F80D027E83
          77AA9A08FA0DBC6E13599618786D1DA2ED34C1A54B700ED7208ED420FA07C176
          10590BFEA984D067AFA06BE726EA9E6A279097D77ECE4EEEF83F1BF0D3157B43
          B66D2F706CFB26C71115D188F74ABFDF7DC5B4523F45510FF1A88780DF00C034
          6D4CD306E0A66B67B0737F07B72C8CD2BB7307C9DA1AA65F7F3D667B074EF53E
          E44437D836E41CEC051A9107AEA3FFF811B6DC7F14778B68CAEBCE83D81F7E43
          55806756EEAA10820A90960AC1FC50D0736534EC9D1E8B78282B19036CE8CA24
          B0B62D181C4C93CB59083196408580A9253EDA4BFD9C7CF0BB14632117C5E86D
          6CC038528BD2D08091CBA2DB32B6CFC2F3F0A7913C19763EF43EDA6E41E24BF7
          D989CB16DDCE039F7911C801CEEFCCC4CFAFAABE6F4A69E8A919538344C31EA6
          14FB0B6004B62D304D1BC771304D07CBB219C32A108273D6634648924430E8A2
          EAEEAF314332090F0CD1517B8C3E2B4F289B232AABE896C0737F05F1FB17B3F7
          C9DFD0F4FD0EAEFEDEFD84BFFA6D0ED624683835901C1A1A5ADBDE7A62D9F29F
          7DA30EB0800BCA0CA5F2D2F94DC5A565F7DCB478A6E1325472398B6CD62493B1
          C8E72D2CCBC1B24401A0340172F27A4C954892841082E4BE6A8CFE04F9A9659C
          DEB59B705F3F615B9030732447F3B8AE713363D967196A3ACEFBDF3A42C55F7F
          91CA477E4830E0A2B222C2FCB9C54628E85B28E9B1AF5EB3E40BB75CBBE40ED7
          F6CD6B6A0A2732C910E5FD9D6FE7162FF96C2C160B5D130AB830CDF15D1E0775
          EE7A1C38173002A4D4307DCB9F63EAE2C5F86D875C6B2B2DDD0924E150E1F230
          9AB318AE5029F94C09F51B6A491E8C32EBF1A7C90A9564328B6D3BB85D1A65A5
          7E165E51426971706A4B67EE6FAE5CF857CAEE6DAFED07CCB38D5000A7A8A8F4
          583876C95DF32E2B312C6BDCC80B809BB4DBE71B263916BDCF2DA378EEE5B874
          1DAB6A1BFAF17ABCA645AF99A3C73229F779F0770BF6AE3FC2F10D235CF5EF3F
          C53BFBB2091FCAE52CF2791B9F6F2C40EC3DDCC5D12347773CF51F7FFF129002
          D270C6CD6580D5BF7C229148245634B70E60180A9234066A1CF0D8DF67AFCF50
          E6CC1AFAD7ACC665DB78A64C41D435A034346364B2046595992E0FBA2471289D
          24670B3E713A404C2DA3BBE892C951459589C7C7FC70CF810EAA0F34B4AD5EF1
          BD5F5D08FCD96AD4298A971E8BC42BEEBA7CF6F8293089DBE7D36832A5ACD3A7
          48FDF64D4AAEBF0EB9AF1F67FB4E38DD8662DB28928C2CCBB86599BC6DD1984D
          939305A38642EFD5D7D3D8E9309A3109F90DA64E0DA1AA0A8D2D83BCBBB521BD
          FA85EFFDA8B5B9F604700AE8FF200338727057FAC69B3F178D4543D784431E6C
          DB99542E5C943E8EA0F3E927295DB410C3307076EE461CAD45A4338084224948
          4898C2C1746C74E1207EF42895DF7D809B6E5CC8FCB9A520491CA8EDA6B17588
          5CCEA26ACF69D6BCF4C823470F6E390C3401DD05FE7F603DE0C4E3538EC58A2B
          EEBA6C56B161DBE22C5F903ED86925895C533DD681FD8467CF461C3B89B3A71A
          D13F30F18C00F24290762C864C93F097EFE6923BBF82DB1DC071240C43A134EE
          E3AACBE314453D34B60CD2D79F4A7BFD315B55B5836D2DC7EB80CC8542E9B915
          99BAE2E5CD8FDF7CE3826F979584C8E5AC8BC6FCB1B543E7CF9E26A469789170
          76ED8193F5609A13E04D21485A26FDF92C5D9F5ACAA75E7C1EC7190BCDE3B3AE
          AB04022E3C1E1D5996C8E56D1A5B06395893A0BDB3BF3A934EAEFEE10512DC24
          03B6EDA80EAB9A7B7BDE32E6DDB87836998C8910A2F06122C19D6D8C3532CCE9
          EFDCC7D4F9F3918FD422D5D4C2C8193199170E19DB66D0CC919A3E95F40F7E8E
          5114A3724664920113514596F07874020117BA3EA6747AFAD31F98E0262874F8
          C88990A6E95B675E32F54A555549674D424137B6ED5C34718DD61CC13E568B57
          4850730C697068FCB8C66863DBA42C9341C7A2ECB1A7B8EAB61B3870B49370C0
          85AE2B67E51C264E359FB7492673A4D3269224110EB999551E66CEACA8515337
          B4B0BBABA5E9D0BE8D75405E06385A733204626BF98C29574523412A66C4686D
          EB4351C6A2C7D961F5CC3CB6CE3435A238205A4E230D0C826D231005F016492B
          CF683E47E09FBF41F0C6A5E4B2264BAE29A7B6A117D3BAB8D4C9E7C754C1F8F8
          CDC6065A9A8E6E5CF9F37FA92D547C920A60DBF69DB22C5F95CF9BE4F326BAAE
          51120FD2D13548493C483E6F17765E2084C4F8ED8710305A5F8FDED787393004
          B92C92109805F0292B4FD2B171EE7F80CABBEFC5B61D0606069165074D4EB26D
          670765C53E8410288A822CCBE8BA412010C4E7F3E172E9C4623E00366C6DE6D8
          F193879E7DFCAE178181425EB0558005F3E73EFBE3C79F3E3167CEDC6F96964D
          BB35120E120EF96968EAA6AC348C2C3B6769A1C9B3E4F230D2D088E60874338F
          E3404ED8642D93DE6814F9A187B8F486A5B4B49C2291E8A2A7A787647204DB31
          395ED785DFABE2D25524494255553C1E2FB366CD66DEBC2B282F8F0170B02641
          F58186B6977EF1AFCF011DC069600470267C60F3A677136BD6ACAEEAEDEEDEAE
          E96EC711DA4CCB169A61E8F87D6E1C475C20944A58D9419A7EB11219301D8BAC
          6D9134F39C9C7319997BEF452E2AE2C081FDD4D61EE5D4A96612892E06070749
          A552183A9CEE18221CF2E2F37A89468B282B9BC6942965CC9E3D0DC3D069EB4A
          F2C6BB27CF4E68CD405F41A14E8A4212A0015E2008C41E7DEC675FB861C9CDF7
          5EF7E9CBBDF9BC7D4E441A9BB3ED0F9358B689E6F5A748E323591C6370C1D528
          73E6904C67181D4D6159F684005414154DD3F07A7D8442014CC74033C22C9877
          095EAF0FB7DB4D4949089FCFA0A73FCDAB6F9E60FDBA677EBC65C3AFB602F585
          13C85DA8221340BE90ED5240BFAEC91B25ECBBBB7B8688179DEF0B2068EDCE30
          EB2B3E3645EF20294FC316028120D7DF8F10024DD370BBDDB85C6E028100D168
          8C70384A3C1E23180C50541466E7DE7614DD83DFEF251070E1F319E4F236EF6E
          6D6647D5FA955B36FC6A37D002240A182F5A520AC0ACDE77749EA6E9AF5E5A39
          C3DFD492A0381E4251641CC799F001499270C5EEE1D77BB76194CA1808244946
          51140CC3C0EDF6E0F379F1FB0384C341C2E13081801FB7DB852CCB0C8F64E81F
          CA108D7868EB1862C6D430918877C2690F1D3EB4FBD5558FBE0DB4029D40F6DC
          6C7CC1BBD1FD076A16A89A5655396B46D0E376D1D3370440513488693A93B273
          3E9F636424492E9743511454554155555C2E1DC330D034155555194966194966
          184E66181EC9D2DB9F42D314DC86864BD788843D54CE8C23CB12557B4EB365DB
          E1BA471EBCFDE182886B04062F54629E7702870ED72E9024B96AF6ACF2A0DB3D
          A6C9E3B11027EA5A89C742C8B284104CE4034D73E3F37990E5337B31343C4A32
          95A5A33B4932996538994153555C868ECBD08886BC9415879025692238949404
          90658963F57D6CDF7DA2ED8565DF7CB2C0F75660F883EAE3F30CB06DEB1245D1
          A4F6CE6E8A626142C1316D5E140BD1D73F4C2C1A9C78D6B26D464773A4D25952
          A31952A92CC95416974B2F80D5298D8799555E728EF661928488C7FDE8BA4A4F
          7F9ADF6EAE4BBFBDFEB9E5DD5D2DCD05DEF78F479C0F753BBD7CF97F35261289
          F52EC38365CB1543C369AF10108D06E8ECEA219FB7E8EE19A0ADBD87B6F65E32
          D93C9665E3D27522613FD3A716138B0408FABD783D63141A4F7A179AA3512F1E
          8F4E2E6FF3F26BB56C79F795E7ABDE5DB5A3102ECF73DA0FD31F90011710068A
          1E7AF847B72FFAC4B59F8F1515CFD5758580DF4D38E4C7ED36F0B85D38CE999B
          0BC7E13C9579E179EC398F472312F192CBDBBCFAE609366F7A6BEDAAE71F5C5B
          E07C2B30FA41B71117EB0F884228CD00C3DBB6BE57B3E69597DEEAEC68DF5E5C
          32236A5A4A71DE149ADFE7C1EDD20B19544651E40205C545777C7CD634654226
          6CDED1C2AE3D7B773FFF93AFAD2CD0E6742194FFCE8ECDC51A1C4EC1903430D2
          D850D7BEFEF5359B0E1FDAB7C11F8C665369697AA237E55554058F5B47556454
          5546D3C66A6ADB76CEAA2326CF8A225354E44392240ED624D8B2F378DB63DFBF
          E3D102F0968B39ED1FD2A1110527CA02C99E9EAEDECD1BDFAC5EF7CA8AD7A2B1
          D24426AF16257A32F14CD6C2E735307415559571B9341465CC9071DA8C4B9048
          C48BAACA34B60CF2DBF7EAD3CB1EBBF3FBA3A9A19602EF07CEAD7BFF982D26A7
          90C6D3C0F09E5D5B6A7EFDDAAAB7BABADAB7BB7DF1685B225D3C3C92D75C2E0D
          AF474751C60CD13405210496E51008B8318CB188B3FE9D13E9752FFFE763F527
          F6D616EADE9E0BD5BD7F8A1ED9247AB534D7B7BFF3D6BA4DC76AF66FD08C70B6
          77484C6F6D4F7A354D2112F24C18E2F5EA689A422E6FF3C6C606DEDBB87ED5C6
          B756541576BEEB6C8DF35135F926D1ABAF37D1BB63EB5BD56FBCBEF2B560B838
          3198548A1A5B9371D316F8BD06863116527FBDA19EAD5B36BFB16AF977FFBB90
          69DB0B9BF1FFA24FAC0206E00722D7DE70DBBC5B6FFBD23DF1921937555644C9
          E46CB66D7B7FF7933FFC879F14C037FF3E4EFB51F68965402FC8F3D0CCD9F32B
          6EFFFCD7EFF4FAC2952F3CF39D67139DCD7505DEFF5E4EFB7134BAA5C2A98CD7
          19E1C2F789B30B933F977F3518A79754705893BF8CBF8C8F77FC2FC6C58EC3E2
          D0CE800000000049454E44AE426082}
        TabOrder = 7
        OnClick = btnCriarEnviarNFCeClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object Button1: TAdvGlowButton
        Left = 416
        Top = 28
        Width = 155
        Height = 25
        Caption = 'Imprimir NFC-e'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360300000000000036000000280000001000000010000000010018000000
          00000003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9B9B9B9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF737373696969656563929391FFFFFFAFAFAFAFAF
          AFAFAFAFFFFFFF7B7B754F4F4F545454545454FF00FFFF00FF73737393979793
          979775777590918EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B755B5C5C787B7B
          606161545454FF00FF737373939797ADB5B56667665F5F5F7777777777777777
          777777777171715A5A586869697F8282707171545454FF00FF737373ADB5B5AD
          B5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5ADB5B5A2A8A86AA47708B518
          767878565757FF00FF737373D2D2D2988D91997C809A797BAA8186AA7F86AA7E
          86AD828AA77F859D7C7F8B7D7A5E9063787A7A575858FF00FF737373D2D2D285
          5A62956B6D8A6969896D6D876B6B866A6A886E6D8A706F8D6A6993636A9C6C81
          9397975C5D5DFF00FF737373D2D2D26F4952583F415F4C4C7469697267677166
          667166667166665E424254393C8A72749397976C6D6DFF00FF737373ADB5B57E
          686A757272A6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B6E5F61988989
          ADB5B56C6D6DFF00FFFF00FF7373738E81818F8485A6A8A9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF9B9B9B8473748F85856C6D6DFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFFFFFFFFFFFFA6A8A99B9B9B9B9B9BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A9FFFFFFFFFFFFFFFF
          FFA6A8A9FFFFFF9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA6A8A9FFFFFFFCFCFCFFFFFFA6A8A99B9B9BFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A8A99B9B9B9B9B9B9B9B
          9B9B9B9BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 8
        OnClick = Button1Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object Button3: TAdvGlowButton
        Left = 216
        Top = 28
        Width = 155
        Height = 25
        Caption = 'Status Servi'#231'o NFC-e - F5'
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 9
        OnClick = Button3Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 177
      Width = 591
      Height = 223
      ActivePage = Dados
      Align = alClient
      TabOrder = 1
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C000000413C0000271400000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'NFe'
        ImageIndex = 3
        object trvwNFe: TTreeView
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        object memoRespWS: TMemo
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object Memo: TMemo
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object MemoDados: TMemo
          Left = 0
          Top = 0
          Width = 583
          Height = 195
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object GroupBox6: TGroupBox
      Left = 1
      Top = 1
      Width = 591
      Height = 52
      Align = alTop
      TabOrder = 2
      object myLabel3d2: TmyLabel3d
        Left = 143
        Top = 11
        Width = 302
        Height = 33
        Caption = 'SIACE-Envio da NFC-e'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        AStyle3D = Resit3d
        AShadeLTSet = False
      end
      object CheckBox2: TCheckBox
        Left = 72
        Top = 32
        Width = 65
        Height = 17
        Caption = 'Off-Line'
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox1: TCheckBox
        Left = 3
        Top = 32
        Width = 70
        Height = 17
        Caption = 'On-Line'
        TabOrder = 0
        OnClick = CheckBox1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    InitialDir = 'c:\siace\nfe'
    Title = 'Selecione a NFe'
    Left = 440
    Top = 8
  end
  object SPC_N_NFE: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMERONFE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIENFE'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLC
    StoredProcName = 'SP_NFE'
    Left = 369
    Top = 8
  end
  object IBTRAce: TIBTransaction
    Active = False
    DefaultDatabase = DM.IBDatabase
    AutoStopAction = saNone
    Left = 472
    Top = 8
  end
  object QBuscaItens: TIBQuery
    Database = DM.IBDatabase
    Transaction = IBTRAce
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT I.*, P.ICMS, P.COD_ANP, P.COMBUSTIVEL,P.APLICACAO, P.IPI_' +
        'IRPJ, P.OUTROS_IMPOSTOS, P.NCM_SH, P.QTD_CAIXA, P.UND_TRIB,'
      
        'P.ML_QUANT_BEB, G.SIT_COFINS_VENDA_EST, G.SIT_PIS_VENDA_INTER_ES' +
        'T, G.SIT_COFINS_VENDA_INTER_EST, G.SIT_PIS_VENDA_EST,'
      
        'G.CST_IPI_SAIDA, G.CST_VENDA_INTER, G.PERC_ALIQUOTA_PIS, G.PERC_' +
        'ALIQUOTA_COFINS, G.CFOP_INTER_VENDA, G.FLAG_PIS_COFINS,'
      
        'G.CFOP_EST_VENDA, G.CST_VENDA, GR.NCM_SH, GR.PERC_TRIBU, GR.FONT' +
        'E, ncm.alic_nac, ncm.alic_imp, P.VEICULO, P.CHASSI, P.COR,'
      
        'P.COR_DESC, P.N_MOTOR, P.ANO_FAB, P.ANO_MOD_FAB, P.TIPO_VEIC, P.' +
        'N_SERIE, P.COD_MODELO, P.ESPECIE_VEICULO, P.COD_COR_DENATRAN,'
      'P.TIPO_COMBUSTIVEL, P.PESOBRUTO, P.PESOLIQUIDO'
      'FROM PEDIDOS_ITENS I'
      'INNER JOIN PRODUTOS P'
      'ON (I.CODIGO_PROD = P.CODIGO)'
      'INNER JOIN grupo_tributacao G'
      'ON (G.COD_GRUPO = P.GRUPO_TRIBUTACAO)'
      'LEFT JOIN grupos GR'
      'ON (GR.CODIGO = P.CODIGO_GRUPO)'
      'left join tabela_ncm ncm on (ncm.codigo_ncm = p.ncm_sh)'
      'WHERE I.CODIGO_PROD = :CODPRO and codigo_id = :Cod_Ven')
    Left = 504
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODPRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Cod_Ven'
        ParamType = ptUnknown
      end>
    object QBuscaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PEDIDOS_ITENS.CODIGO'
      Required = True
    end
    object QBuscaItensCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'PEDIDOS_ITENS.CODIGO_ID'
      Required = True
    end
    object QBuscaItensITEN: TIntegerField
      FieldName = 'ITEN'
      Origin = 'PEDIDOS_ITENS.ITEN'
    end
    object QBuscaItensCODIGO_PROD: TIntegerField
      FieldName = 'CODIGO_PROD'
      Origin = 'PEDIDOS_ITENS.CODIGO_PROD'
    end
    object QBuscaItensCODIGO_PRODUTO: TIBStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.CODIGO_PRODUTO'
      Size = 13
    end
    object QBuscaItensDESCRICAO_PRODUTO: TIBStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'PEDIDOS_ITENS.DESCRICAO_PRODUTO'
      Size = 50
    end
    object QBuscaItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = 'PEDIDOS_ITENS.DESCONTO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'PEDIDOS_ITENS.QUANTIDADE'
      Precision = 18
      Size = 4
    end
    object QBuscaItensPRECO_TOTAL: TIBBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PEDIDOS_ITENS.PRECO_TOTAL'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
      Origin = '"PEDIDOS_ITENS"."PRECO_UNITARIO"'
    end
    object QBuscaItensCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'PEDIDOS_ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensDEV: TIBStringField
      FieldName = 'DEV'
      Origin = 'PEDIDOS_ITENS.DEV'
      FixedChar = True
      Size = 1
    end
    object QBuscaItensQNT_DEV: TIBBCDField
      FieldName = 'QNT_DEV'
      Origin = 'PEDIDOS_ITENS.QNT_DEV'
      Precision = 18
      Size = 4
    end
    object QBuscaItensVAL_DEV: TIBBCDField
      FieldName = 'VAL_DEV'
      Origin = 'PEDIDOS_ITENS.VAL_DEV'
      Precision = 18
      Size = 2
    end
    object QBuscaItensENC_FINANCEIRO: TIBBCDField
      FieldName = 'ENC_FINANCEIRO'
      Origin = 'PEDIDOS_ITENS.ENC_FINANCEIRO'
      Precision = 18
      Size = 2
    end
    object QBuscaItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = 'PEDIDOS_ITENS.UNIDADE'
      Size = 6
    end
    object QBuscaItensSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'PEDIDOS_ITENS.SIT_TRIBUTARIA'
      Size = 5
    end
    object QBuscaItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'PEDIDOS_ITENS.VENDEDOR'
    end
    object QBuscaItensFRACAO: TIntegerField
      FieldName = 'FRACAO'
      Origin = 'PEDIDOS_ITENS.FRACAO'
    end
    object QBuscaItensCOD_NCM: TIBStringField
      FieldName = 'COD_NCM'
      Origin = 'PEDIDOS_ITENS.COD_NCM'
      FixedChar = True
      Size = 10
    end
    object QBuscaItensPROD_SERV: TIBStringField
      FieldName = 'PROD_SERV'
      Origin = 'PEDIDOS_ITENS.PROD_SERV'
      Size = 1
    end
    object QBuscaItensPERC_ISS: TIBBCDField
      FieldName = 'PERC_ISS'
      Origin = 'PEDIDOS_ITENS.PERC_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ISS: TIBBCDField
      FieldName = 'BASE_ISS'
      Origin = 'PEDIDOS_ITENS.BASE_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ISS: TIBBCDField
      FieldName = 'VL_ISS'
      Origin = 'PEDIDOS_ITENS.VL_ISS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICM: TIBBCDField
      FieldName = 'PERC_ICM'
      Origin = 'PEDIDOS_ITENS.PERC_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS: TIBBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICM: TIBBCDField
      FieldName = 'VL_ICM'
      Origin = 'PEDIDOS_ITENS.VL_ICM'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_IPI: TIBBCDField
      FieldName = 'PERC_IPI'
      Origin = 'PEDIDOS_ITENS.PERC_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_IPI: TIBBCDField
      FieldName = 'BASE_IPI'
      Origin = 'PEDIDOS_ITENS.BASE_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_IPI: TIBBCDField
      FieldName = 'VL_IPI'
      Origin = 'PEDIDOS_ITENS.VL_IPI'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_COFINS: TIBBCDField
      FieldName = 'PERC_COFINS'
      Origin = 'PEDIDOS_ITENS.PERC_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_COFINS: TIBBCDField
      FieldName = 'BASE_COFINS'
      Origin = 'PEDIDOS_ITENS.BASE_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_COFINS: TIBBCDField
      FieldName = 'VL_COFINS'
      Origin = 'PEDIDOS_ITENS.VL_COFINS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ICMS_SUBST: TIBBCDField
      FieldName = 'PERC_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.PERC_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_ICMS_SUBST: TIBBCDField
      FieldName = 'BASE_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.BASE_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_ICMS_SUBST: TIBBCDField
      FieldName = 'VL_ICMS_SUBST'
      Origin = 'PEDIDOS_ITENS.VL_ICMS_SUBST'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_PIS: TIBBCDField
      FieldName = 'PERC_PIS'
      Origin = 'PEDIDOS_ITENS.PERC_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensBASE_PIS: TIBBCDField
      FieldName = 'BASE_PIS'
      Origin = 'PEDIDOS_ITENS.BASE_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVL_PIS: TIBBCDField
      FieldName = 'VL_PIS'
      Origin = 'PEDIDOS_ITENS.VL_PIS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIMPRIME: TIBStringField
      FieldName = 'IMPRIME'
      Origin = 'PEDIDOS_ITENS.IMPRIME'
      Size = 3
    end
    object QBuscaItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'PEDIDOS_ITENS.COD_EMPRESA'
      Required = True
    end
    object QBuscaItensICMS: TIBBCDField
      FieldName = 'ICMS'
      Origin = 'PRODUTOS.ICMS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensIPI_IRPJ: TIBBCDField
      FieldName = 'IPI_IRPJ'
      Origin = 'PRODUTOS.IPI_IRPJ'
      Precision = 18
      Size = 2
    end
    object QBuscaItensOUTROS_IMPOSTOS: TIBBCDField
      FieldName = 'OUTROS_IMPOSTOS'
      Origin = 'PRODUTOS.OUTROS_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_PIS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_PIS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField
      FieldName = 'PERC_ALIQUOTA_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.PERC_ALIQUOTA_COFINS'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaItensFLAG_PIS_COFINS: TIBStringField
      FieldName = 'FLAG_PIS_COFINS'
      Origin = 'GRUPO_TRIBUTACAO.FLAG_PIS_COFINS'
      Required = True
      Size = 1
    end
    object QBuscaItensCFOP_EST_VENDA: TIBStringField
      FieldName = 'CFOP_EST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_EST_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA: TIBStringField
      FieldName = 'CST_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA'
      Size = 3
    end
    object QBuscaItensNCM_SH: TIBStringField
      FieldName = 'NCM_SH'
      Origin = 'PRODUTOS.NCM_SH'
      Size = 8
    end
    object QBuscaItensNCM_SH1: TIBStringField
      FieldName = 'NCM_SH1'
      Origin = 'GRUPOS.NCM_SH'
      Size = 8
    end
    object QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField
      FieldName = 'SIT_COFINS_VENDA_INTER_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_COFINS_VENDA_INTER_EST'
      Size = 2
    end
    object QBuscaItensSIT_PIS_VENDA_EST: TIBStringField
      FieldName = 'SIT_PIS_VENDA_EST'
      Origin = 'GRUPO_TRIBUTACAO.SIT_PIS_VENDA_EST'
      Size = 2
    end
    object QBuscaItensCST_IPI_SAIDA: TIBStringField
      FieldName = 'CST_IPI_SAIDA'
      Origin = 'GRUPO_TRIBUTACAO.CST_IPI_SAIDA'
      Size = 2
    end
    object QBuscaItensCFOP_INTER_VENDA: TIBStringField
      FieldName = 'CFOP_INTER_VENDA'
      Origin = 'GRUPO_TRIBUTACAO.CFOP_INTER_VENDA'
      Size = 4
    end
    object QBuscaItensCST_VENDA_INTER: TIBStringField
      FieldName = 'CST_VENDA_INTER'
      Origin = 'GRUPO_TRIBUTACAO.CST_VENDA_INTER'
      Size = 3
    end
    object QBuscaItensCOD_ANP: TIBStringField
      FieldName = 'COD_ANP'
      Origin = 'PRODUTOS.COD_ANP'
      Size = 9
    end
    object QBuscaItensCOMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'PRODUTOS.COMBUSTIVEL'
      Size = 1
    end
    object QBuscaItensQTD_CAIXA: TSmallintField
      FieldName = 'QTD_CAIXA'
      Origin = 'PRODUTOS.QTD_CAIXA'
    end
    object QBuscaItensUND_TRIB: TIBStringField
      FieldName = 'UND_TRIB'
      Origin = 'PRODUTOS.UND_TRIB'
      Size = 3
    end
    object QBuscaItensML_QUANT_BEB: TIBBCDField
      FieldName = 'ML_QUANT_BEB'
      Origin = 'PRODUTOS.ML_QUANT_BEB'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPERC_TRIBU: TIBBCDField
      FieldName = 'PERC_TRIBU'
      Origin = 'GRUPOS.PERC_TRIBU'
      Precision = 18
      Size = 2
    end
    object QBuscaItensFONTE: TIBStringField
      FieldName = 'FONTE'
      Origin = 'GRUPOS.FONTE'
      FixedChar = True
      Size = 18
    end
    object QBuscaItensALIC_NAC: TIBBCDField
      FieldName = 'ALIC_NAC'
      Origin = 'TABELA_NCM.ALIC_NAC'
      Precision = 18
      Size = 2
    end
    object QBuscaItensALIC_IMP: TIBBCDField
      FieldName = 'ALIC_IMP'
      Origin = 'TABELA_NCM.ALIC_IMP'
      Precision = 18
      Size = 2
    end
    object QBuscaItensVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = 'PRODUTOS.VEICULO'
      Size = 1
    end
    object QBuscaItensCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = 'PRODUTOS.CHASSI'
      Size = 44
    end
    object QBuscaItensCOR: TIntegerField
      FieldName = 'COR'
      Origin = 'PRODUTOS.COR'
    end
    object QBuscaItensCOR_DESC: TIBStringField
      FieldName = 'COR_DESC'
      Origin = 'PRODUTOS.COR_DESC'
      Size = 30
    end
    object QBuscaItensN_MOTOR: TIBStringField
      FieldName = 'N_MOTOR'
      Origin = 'PRODUTOS.N_MOTOR'
      Size = 30
    end
    object QBuscaItensANO_FAB: TIBStringField
      FieldName = 'ANO_FAB'
      Origin = 'PRODUTOS.ANO_FAB'
      Size = 4
    end
    object QBuscaItensANO_MOD_FAB: TIBStringField
      FieldName = 'ANO_MOD_FAB'
      Origin = 'PRODUTOS.ANO_MOD_FAB'
      Size = 4
    end
    object QBuscaItensTIPO_VEIC: TIBStringField
      FieldName = 'TIPO_VEIC'
      Origin = 'PRODUTOS.TIPO_VEIC'
      Size = 10
    end
    object QBuscaItensN_SERIE: TIBStringField
      FieldName = 'N_SERIE'
      Origin = 'PRODUTOS.N_SERIE'
      Size = 30
    end
    object QBuscaItensCOD_MODELO: TIBStringField
      FieldName = 'COD_MODELO'
      Origin = 'PRODUTOS.COD_MODELO'
      Size = 30
    end
    object QBuscaItensESPECIE_VEICULO: TIBStringField
      FieldName = 'ESPECIE_VEICULO'
      Origin = 'PRODUTOS.ESPECIE_VEICULO'
      Size = 10
    end
    object QBuscaItensCOD_COR_DENATRAN: TIBStringField
      FieldName = 'COD_COR_DENATRAN'
      Origin = 'PRODUTOS.COD_COR_DENATRAN'
      Size = 10
    end
    object QBuscaItensTIPO_COMBUSTIVEL: TIBStringField
      FieldName = 'TIPO_COMBUSTIVEL'
      Origin = 'PRODUTOS.TIPO_COMBUSTIVEL'
      Size = 10
    end
    object QBuscaItensPESOBRUTO: TIBBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'PRODUTOS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensPESOLIQUIDO: TIBBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'PRODUTOS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object QBuscaItensAPLICACAO: TIBStringField
      FieldName = 'APLICACAO'
      Origin = 'PRODUTOS.APLICACAO'
      Size = 500
    end
  end
  object DSQBuscaItens: TDataSource
    AutoEdit = False
    DataSet = QBuscaItens
    Left = 536
    Top = 8
  end
end

object fPessoa: TfPessoa
  Left = 101
  Top = 46
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pessoas'
  ClientHeight = 496
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 659
    Height = 496
    ActivePage = sheetCad
    Align = alClient
    TabOrder = 0
    object sheetLista: TTabSheet
      Caption = 'Pesquisa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 651
        Height = 46
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 0
        object butInc: TBitBtn
          Left = 1
          Top = 2
          Width = 67
          Height = 39
          Caption = 'F2-&Novo'
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
            0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
            33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = butIncClick
        end
        object butExc: TBitBtn
          Left = 141
          Top = 2
          Width = 67
          Height = 39
          Caption = 'F4-&Excluir'
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = butExcClick
        end
        object butPesq: TBitBtn
          Left = 211
          Top = 2
          Width = 67
          Height = 39
          Caption = 'F5-&Pesquisar'
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = butPesqClick
        end
        object butFechar: TBitBtn
          Left = 576
          Top = 2
          Width = 67
          Height = 39
          Caption = '&Fechar'
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
            03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
            0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
            0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
            0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
            0333337F777FFFFF7F3333000000000003333377777777777333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 5
          OnClick = ButFecharClick
        end
        object butAlt: TBitBtn
          Left = 71
          Top = 2
          Width = 67
          Height = 39
          Caption = 'F3-&Alterar'
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = butAltClick
        end
        object butConf: TBitBtn
          Left = 283
          Top = 2
          Width = 67
          Height = 39
          Caption = 'F6-&Confirmar'
          DoubleBuffered = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 4
          Visible = False
          OnClick = butConfClick
        end
      end
      object Grade: TDBGrid
        Left = 0
        Top = 46
        Width = 651
        Height = 422
        Align = alClient
        DataSource = dsCad
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GradeDblClick
        OnEnter = GradeEnter
        OnExit = GradeExit
        OnKeyDown = GradeKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPESSOA'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 312
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE1'
            Title.Caption = 'Fone 1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE2'
            Title.Caption = 'Fone 2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RUA'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CGC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end>
      end
    end
    object sheetCad: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      OnShow = sheetCadShow
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 649
        Height = 425
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 20
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = Codigo
        end
        object Label7: TLabel
          Left = 88
          Top = 20
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label8: TLabel
          Left = 16
          Top = 64
          Width = 38
          Height = 13
          Caption = 'Av/Rua'
        end
        object Label9: TLabel
          Left = 288
          Top = 64
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label5: TLabel
          Left = 432
          Top = 20
          Width = 21
          Height = 13
          Caption = 'Tipo'
        end
        object Label6: TLabel
          Left = 496
          Top = 20
          Width = 16
          Height = 13
          Caption = 'F/J'
        end
        object Label10: TLabel
          Left = 360
          Top = 64
          Width = 32
          Height = 13
          Caption = 'Compl.'
        end
        object Label23: TLabel
          Left = 432
          Top = 56
          Width = 135
          Height = 13
          Caption = 'C-Cliente F-Fornec. A-Ambos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 16
          Top = 104
          Width = 46
          Height = 13
          Caption = 'Vendedor'
        end
        object butVendedor: TSpeedButton
          Left = 251
          Top = 120
          Width = 23
          Height = 22
          Hint = 'Pesquisa Cadastro'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = butVendedorClick
        end
        object Label3: TLabel
          Left = 16
          Top = 144
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label11: TLabel
          Left = 288
          Top = 104
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object butBairro: TSpeedButton
          Left = 523
          Top = 120
          Width = 23
          Height = 22
          Hint = 'Pesquisa Cadastro'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = butBairroClick
        end
        object butCidade: TSpeedButton
          Left = 251
          Top = 160
          Width = 23
          Height = 22
          Hint = 'Pesquisa Cadastro'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = butCidadeClick
        end
        object Label13: TLabel
          Left = 384
          Top = 144
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label12: TLabel
          Left = 288
          Top = 144
          Width = 19
          Height = 13
          Caption = 'Cep'
        end
        object Label14: TLabel
          Left = 16
          Top = 184
          Width = 30
          Height = 13
          Caption = 'Fone1'
        end
        object Label15: TLabel
          Left = 152
          Top = 184
          Width = 30
          Height = 13
          Caption = 'Fone2'
        end
        object Label16: TLabel
          Left = 288
          Top = 184
          Width = 37
          Height = 13
          Caption = 'Contato'
        end
        object Label4: TLabel
          Left = 16
          Top = 224
          Width = 27
          Height = 13
          Caption = 'CNPJ'
        end
        object Label17: TLabel
          Left = 152
          Top = 224
          Width = 41
          Height = 13
          Caption = 'Insc.Est.'
        end
        object Label18: TLabel
          Left = 288
          Top = 224
          Width = 20
          Height = 13
          Caption = 'CPF'
        end
        object Label19: TLabel
          Left = 424
          Top = 224
          Width = 16
          Height = 13
          Caption = 'RG'
        end
        object Label20: TLabel
          Left = 16
          Top = 264
          Width = 25
          Height = 13
          Caption = 'Email'
        end
        object Label21: TLabel
          Left = 16
          Top = 304
          Width = 56
          Height = 13
          Caption = 'Home Page'
        end
        object Label22: TLabel
          Left = 16
          Top = 344
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object Codigo: TDBEdit
          Left = 16
          Top = 36
          Width = 57
          Height = 21
          DataField = 'CODPESSOA'
          DataSource = dsCad
          Enabled = False
          TabOrder = 0
        end
        object Nome: TDBEdit
          Left = 88
          Top = 36
          Width = 337
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dsCad
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 80
          Width = 257
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RUA'
          DataSource = dsCad
          TabOrder = 4
        end
        object DBComboBox1: TDBComboBox
          Left = 432
          Top = 36
          Width = 49
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPO'
          DataSource = dsCad
          Items.Strings = (
            'C'
            'F'
            'A')
          TabOrder = 2
        end
        object edtFJ: TDBComboBox
          Left = 496
          Top = 36
          Width = 49
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPOPESSOA'
          DataSource = dsCad
          Items.Strings = (
            'F'
            'J')
          TabOrder = 3
          OnClick = edtFJClick
        end
        object DBEdit5: TDBEdit
          Left = 360
          Top = 80
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dsCad
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 288
          Top = 80
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dsCad
          TabOrder = 5
        end
        object CodVendedor: TDBEdit
          Left = 16
          Top = 120
          Width = 41
          Height = 21
          DataField = 'CODVENDEDOR'
          DataSource = dsCad
          TabOrder = 7
          OnExit = CodVendedorExit
        end
        object DescVendedor: TEdit
          Left = 64
          Top = 120
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          TabOrder = 8
          OnExit = DescVendedorExit
        end
        object CodCidade: TDBEdit
          Left = 16
          Top = 160
          Width = 41
          Height = 21
          DataField = 'CODCIDADE'
          DataSource = dsCad
          TabOrder = 11
          OnExit = CodCidadeExit
        end
        object DescCidade: TEdit
          Left = 64
          Top = 160
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          TabOrder = 12
          OnExit = DescCidadeExit
        end
        object CodBairro: TDBEdit
          Left = 288
          Top = 120
          Width = 41
          Height = 21
          DataField = 'CODBAIRRO'
          DataSource = dsCad
          TabOrder = 9
          OnExit = CodBairroExit
        end
        object DescBairro: TEdit
          Left = 336
          Top = 120
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          TabOrder = 10
          OnExit = DescBairroExit
        end
        object DBEdit10: TDBEdit
          Left = 288
          Top = 160
          Width = 81
          Height = 21
          DataField = 'CEP'
          DataSource = dsCad
          TabOrder = 13
        end
        object Uf: TEdit
          Left = 384
          Top = 160
          Width = 33
          Height = 21
          TabStop = False
          Color = clSilver
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit12: TDBEdit
          Left = 16
          Top = 200
          Width = 121
          Height = 21
          DataField = 'FONE1'
          DataSource = dsCad
          TabOrder = 15
        end
        object DBEdit13: TDBEdit
          Left = 152
          Top = 200
          Width = 121
          Height = 21
          DataField = 'FONE2'
          DataSource = dsCad
          TabOrder = 16
        end
        object DBEdit14: TDBEdit
          Left = 288
          Top = 200
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATO'
          DataSource = dsCad
          TabOrder = 17
        end
        object edtCNPJ: TDBEdit
          Left = 16
          Top = 240
          Width = 121
          Height = 21
          DataField = 'CGC'
          DataSource = dsCad
          TabOrder = 18
        end
        object edtInscEstadual: TDBEdit
          Left = 152
          Top = 240
          Width = 121
          Height = 21
          DataField = 'INSCESTADUAL'
          DataSource = dsCad
          TabOrder = 19
        end
        object edtCPF: TDBEdit
          Left = 288
          Top = 240
          Width = 121
          Height = 21
          DataField = 'CPF'
          DataSource = dsCad
          TabOrder = 20
        end
        object DBEdit18: TDBEdit
          Left = 424
          Top = 240
          Width = 121
          Height = 21
          DataField = 'RG'
          DataSource = dsCad
          TabOrder = 21
        end
        object DBEdit19: TDBEdit
          Left = 16
          Top = 280
          Width = 393
          Height = 21
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = dsCad
          TabOrder = 22
        end
        object DBEdit20: TDBEdit
          Left = 16
          Top = 320
          Width = 393
          Height = 21
          CharCase = ecLowerCase
          DataField = 'SITE'
          DataSource = dsCad
          TabOrder = 23
        end
        object DBMemo1: TDBMemo
          Left = 16
          Top = 360
          Width = 393
          Height = 57
          DataField = 'OBSERVACAO'
          DataSource = dsCad
          ScrollBars = ssVertical
          TabOrder = 24
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 427
        Width = 651
        Height = 41
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object butCancelar: TBitBtn
          Left = 561
          Top = 5
          Width = 72
          Height = 33
          Caption = '&Cancelar'
          DoubleBuffered = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = butCancelarClick
        end
        object butOk: TBitBtn
          Left = 481
          Top = 5
          Width = 72
          Height = 33
          Caption = '&OK'
          DoubleBuffered = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = butOkClick
        end
      end
    end
  end
  object dsCad: TDataSource
    DataSet = DM.Pessoa
    Left = 416
    Top = 136
  end
  object dtPesq: TSQLDataSet
    CommandText = 
      'select '#13#10' B.DESCBAIRRO,'#13#10' C.DESCCIDADE,'#13#10' V.DESCVENDEDOR,'#13#10' C.UF' +
      #13#10'from TPESSOA P'#13#10'left join TBAIRRO B on P.CODBAIRRO = B.CODBAIR' +
      'RO'#13#10'left join TCIDADE C on P.CODCIDADE = C.CODCIDADE'#13#10'left join ' +
      'TVENDEDO V on P.CODVENDEDOR = V.CODVENDEDOR'#13#10' where P.CODPESSOA ' +
      '= :CODPESSOA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 456
    Top = 136
    object dtPesqDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object dtPesqDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object dtPesqUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object dtPesqDESCVENDEDOR: TStringField
      FieldName = 'DESCVENDEDOR'
      Size = 30
    end
  end
end

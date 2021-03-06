object fEmpresa: TfEmpresa
  Left = 103
  Top = 97
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Empresa'
  ClientHeight = 416
  ClientWidth = 552
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
    Width = 552
    Height = 416
    ActivePage = sheetCad
    Align = alClient
    TabOrder = 0
    object sheetLista: TTabSheet
      Caption = 'Pesquisa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 544
        Height = 45
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object butInc: TBitBtn
          Left = 1
          Top = 1
          Width = 67
          Height = 39
          Caption = '&Novo'
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
          TabOrder = 0
          OnClick = butIncClick
        end
        object butExc: TBitBtn
          Left = 139
          Top = 1
          Width = 67
          Height = 39
          Caption = '&Excluir'
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
          TabOrder = 2
          OnClick = butExcClick
        end
        object butPesq: TBitBtn
          Left = 208
          Top = 1
          Width = 67
          Height = 39
          Caption = '&Pesquisar'
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
          TabOrder = 3
          OnClick = butPesqClick
        end
        object butFechar: TBitBtn
          Left = 470
          Top = 1
          Width = 67
          Height = 39
          Caption = '&Fechar'
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
          TabOrder = 4
          OnClick = butFecharClick
        end
        object butAlt: TBitBtn
          Left = 70
          Top = 1
          Width = 67
          Height = 39
          Caption = '&Alterar'
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
          TabOrder = 1
          OnClick = butAltClick
        end
      end
      object Grade: TDBGrid
        Left = 0
        Top = 45
        Width = 544
        Height = 343
        Align = alClient
        DataSource = dsCad
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GradeDblClick
        OnKeyDown = GradeKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CODEMPRESA'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 372
            Visible = True
          end>
      end
    end
    object sheetCad: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label14: TLabel
        Left = 0
        Top = 280
        Width = 55
        Height = 13
        Caption = 'Nro Inmetro'
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 545
        Height = 57
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = Codigo
        end
        object Label7: TLabel
          Left = 80
          Top = 12
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label1: TLabel
          Left = 392
          Top = 12
          Width = 33
          Height = 13
          Caption = 'Vers'#227'o'
        end
        object Codigo: TDBEdit
          Left = 8
          Top = 28
          Width = 57
          Height = 21
          DataField = 'CODEMPRESA'
          DataSource = dsCad
          Enabled = False
          TabOrder = 0
        end
        object Nome: TDBEdit
          Left = 80
          Top = 28
          Width = 297
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = dsCad
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 392
          Top = 28
          Width = 81
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'VERSAO'
          DataSource = dsCad
          ReadOnly = True
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 56
        Width = 545
        Height = 161
        TabOrder = 1
        object Label8: TLabel
          Left = 8
          Top = 12
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label9: TLabel
          Left = 392
          Top = 12
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label10: TLabel
          Left = 8
          Top = 48
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label5: TLabel
          Left = 8
          Top = 84
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = CodBairro
        end
        object SpeedButton6: TSpeedButton
          Left = 354
          Top = 100
          Width = 23
          Height = 22
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
          OnClick = SpeedButton6Click
        end
        object Label11: TLabel
          Left = 8
          Top = 120
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object SpeedButton8: TSpeedButton
          Left = 354
          Top = 132
          Width = 23
          Height = 22
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
          OnClick = SpeedButton8Click
        end
        object Label3: TLabel
          Left = 392
          Top = 116
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit2
        end
        object Label6: TLabel
          Left = 488
          Top = 116
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object DBEdit7: TDBEdit
          Left = 8
          Top = 28
          Width = 369
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RUA'
          DataSource = dsCad
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 392
          Top = 28
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dsCad
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 8
          Top = 64
          Width = 369
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dsCad
          TabOrder = 2
        end
        object CodBairro: TDBEdit
          Left = 8
          Top = 100
          Width = 49
          Height = 21
          DataField = 'CODBAIRRO'
          DataSource = dsCad
          TabOrder = 3
          OnExit = CodBairroExit
        end
        object DescBairro: TEdit
          Left = 63
          Top = 105
          Width = 289
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          TabOrder = 4
          OnExit = DescBairroExit
        end
        object CodCidade: TDBEdit
          Left = 8
          Top = 132
          Width = 49
          Height = 21
          DataField = 'CODCIDADE'
          DataSource = dsCad
          TabOrder = 5
          OnExit = CodCidadeExit
        end
        object DescCidade: TEdit
          Left = 64
          Top = 132
          Width = 289
          Height = 21
          CharCase = ecUpperCase
          Color = clSilver
          TabOrder = 6
          OnExit = DescCidadeExit
        end
        object DBEdit2: TDBEdit
          Left = 392
          Top = 132
          Width = 81
          Height = 21
          DataField = 'CEP'
          DataSource = dsCad
          TabOrder = 7
        end
        object UF: TEdit
          Left = 488
          Top = 132
          Width = 41
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          ReadOnly = True
          TabOrder = 8
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 216
        Width = 545
        Height = 57
        TabOrder = 2
        object Label4: TLabel
          Left = 8
          Top = 8
          Width = 22
          Height = 13
          Caption = 'CGC'
        end
        object Label12: TLabel
          Left = 144
          Top = 8
          Width = 64
          Height = 13
          Caption = 'Insc.Estadual'
        end
        object Label13: TLabel
          Left = 280
          Top = 8
          Width = 46
          Height = 13
          Caption = 'Fone/Fax'
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 24
          Width = 121
          Height = 21
          DataField = 'CGC'
          DataSource = dsCad
          TabOrder = 0
        end
        object DBEdit10: TDBEdit
          Left = 144
          Top = 24
          Width = 121
          Height = 21
          DataField = 'INSCESTADUAL'
          DataSource = dsCad
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 280
          Top = 24
          Width = 121
          Height = 21
          DataField = 'FONEFAX'
          DataSource = dsCad
          TabOrder = 2
        end
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 296
        Width = 425
        Height = 81
        DataField = 'FRANQUEADA'
        DataSource = dsCad
        TabOrder = 3
      end
      object butOk: TBitBtn
        Left = 464
        Top = 296
        Width = 75
        Height = 33
        Caption = '&OK'
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
        TabOrder = 4
        OnClick = butOkClick
      end
      object butCancelar: TBitBtn
        Left = 464
        Top = 336
        Width = 75
        Height = 33
        Caption = '&Cancelar'
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
        TabOrder = 5
        OnClick = butCancelarClick
      end
    end
  end
  object dsCad: TDataSource
    DataSet = DM.Empresa
    Left = 416
    Top = 136
  end
  object dtPesq: TSQLDataSet
    CommandText = 
      'select '#13#10' B.DESCBAIRRO,'#13#10' C.DESCCIDADE,'#13#10' C.UF'#13#10'from TMEMP E'#13#10'le' +
      'ft join TBAIRRO B on E.CODBAIRRO = B.CODBAIRRO'#13#10'left join TCIDAD' +
      'E C on E.CODCIDADE = C.CODCIDADE'#13#10' where E.CODEMPRESA = :CODEMPR' +
      'ESA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
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
  end
end

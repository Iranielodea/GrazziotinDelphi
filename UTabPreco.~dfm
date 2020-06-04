object fTabPreco: TfTabPreco
  Left = 149
  Top = 112
  Width = 395
  Height = 381
  Caption = 'Tabela de Pre'#231'os'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 387
    Height = 347
    ActivePage = sheetLista
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object sheetLista: TTabSheet
      Caption = 'Lista'
      object Grade: TDBGrid
        Left = 0
        Top = 0
        Width = 377
        Height = 272
        DataSource = dsCad
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GradeDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CAPACIDADE'
            Title.Caption = 'Capacidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NIVEL'
            Title.Caption = 'N'#237'vel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORUNIT'
            Title.Caption = 'Valor Unit.'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 278
        Width = 379
        Height = 41
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object butNovo: TBitBtn
          Left = 107
          Top = 8
          Width = 81
          Height = 25
          Caption = '&Novo'
          TabOrder = 0
          OnClick = butNovoClick
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
          NumGlyphs = 2
        end
        object butSair: TBitBtn
          Left = 283
          Top = 8
          Width = 81
          Height = 25
          Caption = '&Fechar'
          TabOrder = 2
          OnClick = butSairClick
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
          NumGlyphs = 2
        end
        object butExcluir: TBitBtn
          Left = 195
          Top = 8
          Width = 81
          Height = 25
          Caption = '&Excluir'
          TabOrder = 1
          OnClick = butExcluirClick
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
          NumGlyphs = 2
        end
      end
    end
    object sheetCad: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 57
        Height = 13
        Caption = 'Capacidade'
      end
      object Label2: TLabel
        Left = 24
        Top = 48
        Width = 26
        Height = 13
        Caption = 'N'#237'vel'
      end
      object Label3: TLabel
        Left = 24
        Top = 72
        Width = 28
        Height = 13
        Caption = 'Pre'#231'o'
      end
      object Capacidade: TEdit
        Left = 88
        Top = 16
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object Nivel: TMaskEdit
        Left = 88
        Top = 40
        Width = 40
        Height = 21
        EditMask = '####;0;_'
        MaxLength = 4
        TabOrder = 1
      end
      object Valor: TDBEdit
        Left = 88
        Top = 64
        Width = 97
        Height = 21
        DataField = 'VALORUNIT'
        DataSource = dsCad
        TabOrder = 2
      end
      object Panel2: TPanel
        Left = 0
        Top = 278
        Width = 379
        Height = 41
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 3
        object butSalvar: TBitBtn
          Left = 187
          Top = 8
          Width = 81
          Height = 25
          Caption = '&Salvar'
          TabOrder = 0
          OnClick = butSalvarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
        end
        object butCancelar: TBitBtn
          Left = 272
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 1
          OnClick = butCancelarClick
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
        end
      end
    end
  end
  object dsCad: TDataSource
    DataSet = DM.TabPreco
    Left = 248
    Top = 32
  end
end

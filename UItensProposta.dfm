object fItensProposta: TfItensProposta
  Left = 113
  Top = 91
  BorderStyle = bsDialog
  Caption = 'Itens da Proposta'
  ClientHeight = 205
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 47
    Height = 13
    HelpType = htKeyword
    Caption = 'N'#186'Extintor'
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 26
    Height = 13
    HelpType = htKeyword
    Caption = 'N'#237'vel'
  end
  object Label4: TLabel
    Left = 16
    Top = 72
    Width = 57
    Height = 13
    HelpType = htKeyword
    Caption = 'Localiza'#231#227'o'
  end
  object Label6: TLabel
    Left = 16
    Top = 104
    Width = 40
    Height = 13
    HelpType = htKeyword
    Caption = 'Re-teste'
  end
  object Label7: TLabel
    Left = 136
    Top = 104
    Width = 63
    Height = 13
    HelpType = htKeyword
    Caption = 'Valor Unit'#225'rio'
  end
  object Label5: TLabel
    Left = 296
    Top = 104
    Width = 51
    Height = 13
    Caption = 'Valor Total'
  end
  object Label2: TLabel
    Left = 144
    Top = 24
    Width = 57
    Height = 13
    HelpType = htKeyword
    Caption = 'Capacidade'
  end
  object lblMens: TLabel
    Left = 136
    Top = 48
    Width = 278
    Height = 16
    Caption = 'Digite (0) zero para Extintor n'#227'o Cadastrado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object butLocal: TSpeedButton
    Left = 435
    Top = 63
    Width = 22
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
    OnClick = butLocalClick
  end
  object Numero: TMaskEdit
    Left = 80
    Top = 16
    Width = 46
    Height = 21
    EditMask = '#####;0;_'
    MaxLength = 5
    TabOrder = 0
    OnEnter = NumeroEnter
    OnExit = NumeroExit
  end
  object Capacidade: TDBEdit
    Left = 216
    Top = 16
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CAPACIDADE'
    DataSource = dsItens
    TabOrder = 1
  end
  object Nivel: TMaskEdit
    Left = 80
    Top = 40
    Width = 46
    Height = 21
    EditMask = '#####;0;_'
    MaxLength = 5
    TabOrder = 2
    OnEnter = NivelEnter
    OnExit = NivelExit
  end
  object CodLocal: TDBEdit
    Left = 80
    Top = 64
    Width = 46
    Height = 21
    DataField = 'CODLOCAL'
    DataSource = dsItens
    TabOrder = 3
    OnEnter = CodLocalEnter
    OnExit = CodLocalExit
  end
  object DescLocal: TDBEdit
    Left = 136
    Top = 64
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    DataField = 'DESCLOCAL'
    DataSource = dsItens
    TabOrder = 4
    OnEnter = DescLocalEnter
    OnExit = DescLocalExit
  end
  object Reteste: TMaskEdit
    Left = 80
    Top = 96
    Width = 44
    Height = 21
    EditMask = '####;0;_'
    MaxLength = 4
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 208
    Top = 96
    Width = 81
    Height = 21
    DataField = 'VALORUNIT'
    DataSource = dsItens
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 352
    Top = 96
    Width = 81
    Height = 21
    DataField = 'VALORTOTAL'
    DataSource = dsItens
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 164
    Width = 536
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 8
    object butSalvar: TBitBtn
      Left = 99
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
    object butNovo: TBitBtn
      Left = 187
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Novo'
      TabOrder = 1
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
      Left = 275
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
  end
  object Seq: TDBEdit
    Left = 392
    Top = 8
    Width = 41
    Height = 21
    DataField = 'TotalItems'
    DataSource = dsItens
    TabOrder = 9
    Visible = False
  end
  object dsItens: TDataSource
    DataSet = DM.ItensProposta
    OnStateChange = dsItensStateChange
    Left = 352
    Top = 24
  end
  object Qproposta: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <>
    Left = 480
    Top = 16
  end
  object QTabPreco: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <>
    Left = 480
    Top = 48
  end
end

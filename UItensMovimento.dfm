object fItensMovimento: TfItensMovimento
  Left = 147
  Top = 111
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Itens'
  ClientHeight = 156
  ClientWidth = 471
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
    Left = 24
    Top = 24
    Width = 21
    Height = 13
    Caption = 'Lote'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 23
    Height = 13
    Caption = 'Qtde'
  end
  object Label3: TLabel
    Left = 152
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Texto'
  end
  object Label4: TLabel
    Left = 328
    Top = 24
    Width = 47
    Height = 13
    Caption = 'Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 232
    Top = 24
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label6: TLabel
    Left = 376
    Top = 64
    Width = 19
    Height = 13
    Caption = 'E/S'
  end
  object CboLote: TComboBox
    Left = 24
    Top = 40
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    Sorted = True
    TabOrder = 0
    OnChange = CboLoteChange
    OnExit = CboLoteExit
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 80
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QTDE'
    DataSource = dsCad
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 80
    Width = 209
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TEXTO'
    DataSource = dsCad
    TabOrder = 4
  end
  object EditEstoque: TEdit
    Left = 328
    Top = 40
    Width = 105
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 115
    Width = 471
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 6
    object butSalvar: TBitBtn
      Left = 216
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Salvar'
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
      TabOrder = 0
      OnClick = butSalvarClick
    end
    object butNovo: TBitBtn
      Left = 304
      Top = 8
      Width = 81
      Height = 25
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
      NumGlyphs = 2
      TabOrder = 1
      OnClick = butNovoClick
    end
    object butSair: TBitBtn
      Left = 393
      Top = 8
      Width = 81
      Height = 25
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
      NumGlyphs = 2
      TabOrder = 2
      OnClick = butSairClick
    end
  end
  object Data: TDBEdit
    Left = 232
    Top = 40
    Width = 81
    Height = 21
    DataField = 'DATA'
    DataSource = dsCad
    TabOrder = 1
  end
  object Tipo: TDBComboBox
    Left = 376
    Top = 80
    Width = 57
    Height = 21
    Style = csDropDownList
    DataField = 'TIPO'
    DataSource = dsCad
    Items.Strings = (
      'E'
      'S')
    TabOrder = 5
  end
  object dsCad: TDataSource
    DataSet = DM.Movimento
    OnStateChange = dsCadStateChange
    Left = 424
  end
end

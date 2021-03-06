object fItensCompra: TfItensCompra
  Left = 157
  Top = 122
  Caption = 'Itens da Compra'
  ClientHeight = 182
  ClientWidth = 473
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
    Top = 16
    Width = 90
    Height = 13
    Caption = 'Lote/Complemento'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 23
    Height = 13
    Caption = 'Qtde'
  end
  object Label3: TLabel
    Left = 104
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Valor Unit'#225'rio'
  end
  object Label4: TLabel
    Left = 184
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Valor Total'
  end
  object Label5: TLabel
    Left = 264
    Top = 64
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
  object CboLote: TComboBox
    Left = 24
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 0
    OnExit = CboLoteExit
  end
  object Qtde: TDBEdit
    Left = 24
    Top = 80
    Width = 65
    Height = 21
    DataField = 'QTDE'
    DataSource = dsItens
    TabOrder = 1
    OnExit = QtdeExit
  end
  object ValorUnit: TDBEdit
    Left = 104
    Top = 80
    Width = 65
    Height = 21
    DataField = 'VALOR'
    DataSource = dsItens
    TabOrder = 2
    OnExit = ValorUnitExit
  end
  object ValorTotal: TDBEdit
    Left = 184
    Top = 80
    Width = 65
    Height = 21
    DataField = 'VALORTOTAL'
    DataSource = dsItens
    TabOrder = 3
    OnExit = ValorTotalExit
  end
  object Panel1: TPanel
    Left = 0
    Top = 141
    Width = 473
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    object butNovo: TBitBtn
      Left = 187
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
    object butSalvar: TBitBtn
      Left = 99
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
    object butSair: TBitBtn
      Left = 275
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
  object EditEstoque: TEdit
    Left = 264
    Top = 80
    Width = 89
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object NumItem: TEdit
    Left = 384
    Top = 88
    Width = 57
    Height = 21
    TabOrder = 6
    Text = 'NumItem'
    Visible = False
  end
  object total: TDBEdit
    Left = 384
    Top = 112
    Width = 57
    Height = 21
    DataField = 'TOTALCOMPRA'
    DataSource = dsItens
    TabOrder = 7
    Visible = False
  end
  object dsItens: TDataSource
    DataSet = DM.ItensCompra
    OnStateChange = dsItensStateChange
    Left = 192
    Top = 8
  end
end

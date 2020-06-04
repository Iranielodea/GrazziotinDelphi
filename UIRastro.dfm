object fIRastro: TfIRastro
  Left = 143
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Rastreamento do P'#243' Qu'#237'mico'
  ClientHeight = 179
  ClientWidth = 419
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
    Left = 136
    Top = 32
    Width = 56
    Height = 13
    Caption = 'Per'#237'odo de:'
  end
  object Label4: TLabel
    Left = 136
    Top = 80
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label2: TLabel
    Left = 280
    Top = 32
    Width = 19
    Height = 13
    Caption = 'At'#233':'
  end
  object Label3: TLabel
    Left = 136
    Top = 56
    Width = 21
    Height = 13
    Caption = 'Lote'
  end
  object DataIni: TMaskEdit
    Left = 200
    Top = 24
    Width = 73
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object EditSerie: TEdit
    Left = 200
    Top = 72
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 105
    Height = 105
    Caption = 'Relat'#243'rios:'
    TabOrder = 0
    object RLote: TRadioButton
      Left = 8
      Top = 24
      Width = 65
      Height = 17
      Caption = 'Por Lote'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RSerie: TRadioButton
      Left = 8
      Top = 48
      Width = 65
      Height = 17
      Caption = 'Por S'#233'rie'
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 138
    Width = 419
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 5
    object butSair: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
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
    object butImprimir: TBitBtn
      Left = 144
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = butImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object DataFin: TMaskEdit
    Left = 304
    Top = 24
    Width = 73
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object CboLote: TComboBox
    Left = 200
    Top = 48
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    Sorted = True
    TabOrder = 3
  end
end

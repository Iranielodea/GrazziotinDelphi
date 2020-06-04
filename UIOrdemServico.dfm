object fIOrdemServico: TfIOrdemServico
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Ordens de Servi'#231'o'
  ClientHeight = 226
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Left = 32
    Top = 17
    Width = 53
    Height = 13
    Caption = 'Emiss'#227'o de'
  end
  object Label2: TLabel
    Left = 233
    Top = 17
    Width = 17
    Height = 13
    Caption = 'At'#233
  end
  object Label4: TLabel
    Left = 33
    Top = 45
    Width = 23
    Height = 13
    Caption = 'Nivel'
  end
  object Label8: TLabel
    Left = 233
    Top = 45
    Width = 17
    Height = 13
    Caption = 'At'#233
  end
  object Label3: TLabel
    Left = 35
    Top = 72
    Width = 50
    Height = 13
    Caption = 'Selo Inicial'
  end
  object Label5: TLabel
    Left = 233
    Top = 77
    Width = 45
    Height = 13
    Caption = 'Selo Final'
  end
  object Label6: TLabel
    Left = 35
    Top = 104
    Width = 34
    Height = 13
    Caption = 'Pessoa'
  end
  object butPessoa: TSpeedButton
    Left = 406
    Top = 96
    Width = 21
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
    OnClick = butPessoaClick
  end
  object DataIni: TMaskEdit
    Left = 90
    Top = 14
    Width = 89
    Height = 22
    EditMask = '##/##/####'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object DataFin: TMaskEdit
    Left = 284
    Top = 14
    Width = 90
    Height = 22
    EditMask = '##/##/####'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
  end
  object Panel1: TPanel
    Left = 0
    Top = 185
    Width = 459
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 8
    object butImprimir: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Resumo'
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
      TabOrder = 0
      OnClick = butImprimirClick
    end
    object butSair: TBitBtn
      Left = 256
      Top = 8
      Width = 75
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
    object butRelacao: TBitBtn
      Left = 175
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Rela'#231#227'o'
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
      TabOrder = 1
      OnClick = butRelacaoClick
    end
  end
  object NivelIni: TMaskEdit
    Left = 91
    Top = 42
    Width = 28
    Height = 21
    EditMask = '###;0;_'
    MaxLength = 3
    TabOrder = 2
    Text = '0'
  end
  object NivelFin: TMaskEdit
    Left = 284
    Top = 42
    Width = 30
    Height = 21
    EditMask = '###;0;_'
    MaxLength = 3
    TabOrder = 3
    Text = '999'
  end
  object SeloIni: TEdit
    Left = 91
    Top = 69
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object SeloFim: TEdit
    Left = 284
    Top = 69
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 5
  end
  object CodPessoa: TEdit
    Left = 91
    Top = 96
    Width = 46
    Height = 21
    NumbersOnly = True
    TabOrder = 6
    OnExit = CodPessoaExit
  end
  object Nome: TEdit
    Left = 143
    Top = 96
    Width = 262
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    OnExit = NomeExit
  end
end

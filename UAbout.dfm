object frmAbout: TfrmAbout
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 267
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblEmpresa: TLabel
    Left = 48
    Top = 64
    Width = 380
    Height = 74
    Alignment = taCenter
    AutoSize = False
    Caption = 'Grazziotin Com'#233'rcio de Extintores Ltda.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 5
    Top = 207
    Width = 37
    Height = 13
    Caption = 'Vers'#227'o:'
  end
  object lblVersao: TLabel
    Left = 48
    Top = 207
    Width = 37
    Height = 13
    Caption = 'Vers'#227'o:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 226
    Width = 457
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 192
    ExplicitWidth = 185
    object butFechar: TBitBtn
      Left = 382
      Top = 2
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
      TabOrder = 0
      OnClick = butFecharClick
    end
  end
  object sqlEmpresa: TSQLDataSet
    CommandText = 'select VERSAO, NOME from TMEMP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 224
    Top = 176
    object sqlEmpresaVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 5
    end
    object sqlEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
end

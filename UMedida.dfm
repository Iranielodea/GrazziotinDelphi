object fMedida: TfMedida
  Left = 172
  Top = 114
  Width = 358
  Height = 248
  Caption = 'Conf.Relat'#243'rios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Altura'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Largura'
  end
  object Label3: TLabel
    Left = 232
    Top = 32
    Width = 27
    Height = 13
    Caption = '11.69'
  end
  object Label4: TLabel
    Left = 232
    Top = 56
    Width = 21
    Height = 13
    Caption = '8,26'
  end
  object Label5: TLabel
    Left = 40
    Top = 104
    Width = 73
    Height = 13
    Caption = 'Margem Inferior'
  end
  object Label6: TLabel
    Left = 40
    Top = 80
    Width = 80
    Height = 13
    Caption = 'Margem Superior'
  end
  object Label7: TLabel
    Left = 232
    Top = 80
    Width = 21
    Height = 13
    Caption = '0,25'
  end
  object Label8: TLabel
    Left = 232
    Top = 104
    Width = 21
    Height = 13
    Caption = '0,25'
  end
  object DBEdit1: TDBEdit
    Left = 136
    Top = 24
    Width = 89
    Height = 21
    DataField = 'ALTURA'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 48
    Width = 89
    Height = 21
    DataField = 'LARGURA'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 173
    Width = 350
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    object butSalvar: TBitBtn
      Left = 168
      Top = 8
      Width = 75
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
    object butSair: TBitBtn
      Left = 248
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
  end
  object DBEdit3: TDBEdit
    Left = 136
    Top = 72
    Width = 89
    Height = 21
    DataField = 'M_SUPERIOR'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 136
    Top = 96
    Width = 89
    Height = 21
    DataField = 'M_INFERIOR'
    DataSource = DataSource1
    TabOrder = 3
  end
  object rel: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ALTURA'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'M_SUPERIOR'
        DataType = ftFloat
      end
      item
        Name = 'M_INFERIOR'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 24
    Data = {
      5F0000009619E0BD0100000018000000040000000000030000005F0006414C54
      5552410800040000000000074C41524755524108000400000000000A4D5F5355
      504552494F5208000400000000000A4D5F494E464552494F5208000400000000
      000000}
    object relALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object relLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object relM_SUPERIOR: TFloatField
      FieldName = 'M_SUPERIOR'
    end
    object relM_INFERIOR: TFloatField
      FieldName = 'M_INFERIOR'
    end
  end
  object DataSource1: TDataSource
    DataSet = rel
    Left = 312
    Top = 24
  end
end

object frmImpressaoOrdemServico: TfrmImpressaoOrdemServico
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impress'#227'o de Ordem de Servi'#231'o'
  ClientHeight = 307
  ClientWidth = 692
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
  object Panel1: TPanel
    Left = 0
    Top = 266
    Width = 692
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 104
    ExplicitWidth = 185
    object butImprimir: TBitBtn
      Left = 230
      Top = 6
      Width = 100
      Height = 25
      Caption = '&Imprimir'
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
      Left = 336
      Top = 6
      Width = 100
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
      TabOrder = 1
      OnClick = butSairClick
    end
  end
  object dbGrade: TDBGrid
    Left = 0
    Top = 0
    Width = 692
    Height = 266
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMORDEM'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPESSOA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 501
        Visible = True
      end>
  end
  object QOrdem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  O.numordem,'
      '  P.codpessoa,'
      '  P.nome'
      'FROM TORDEM O'
      '  INNER JOIN TPESSOA P ON O.codpessoa = P.codpessoa'
      '  WHERE O.dataordem = :DATA'
      'ORDER BY O.numordem DESC')
    SQLConnection = DmBanco.BancoDados
    Left = 48
    Top = 56
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = QOrdem
    Left = 128
    Top = 56
  end
  object cdsOrdem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 224
    Top = 56
    object cdsOrdemNUMORDEM: TFloatField
      DisplayLabel = 'N'#186' Ordem'
      FieldName = 'NUMORDEM'
    end
    object cdsOrdemCODPESSOA: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPESSOA'
    end
    object cdsOrdemNOME: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME'
      Size = 70
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsOrdem
    OnStateChange = DataSource1StateChange
    Left = 320
    Top = 56
  end
end

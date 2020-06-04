object fPesqSelo: TfPesqSelo
  Left = 161
  Top = 108
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Selos'
  ClientHeight = 341
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 51
    Height = 13
    Caption = 'Selo Inicial'
  end
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Selo Final'
  end
  object lblQtde: TLabel
    Left = 456
    Top = 304
    Width = 33
    Height = 13
    Caption = 'lblQtde'
  end
  object SeloIni: TEdit
    Left = 120
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object SeloFin: TEdit
    Left = 120
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Grade: TDBGrid
    Left = 56
    Top = 88
    Width = 449
    Height = 201
    DataSource = dsSelo
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 280
    Top = 24
    Width = 129
    Height = 25
    Caption = 'Selos Duplos'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 56
    Width = 129
    Height = 25
    Caption = 'Selos n'#227'o Encontrados'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 416
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Imp.Duplos'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Imp.N'#227'o Enc.'
    TabOrder = 6
    OnClick = Button4Click
  end
  object dtSeloD: TSQLDataSet
    SQLConnection = dmBanco.BancoDados
    CommandText = 
      'select'#13#10' C.NUMSELO,'#13#10' count(NUMSELO) AS QTDE'#13#10'from TIORDEM C'#13#10' w' +
      'here C.NUMSELO between :SELOINI and :SELOFIN'#13#10' group by'#13#10' C.NUMS' +
      'ELO'#13#10' having count(C.NUMSELO) > 1'
    Params = <
      item
        DataType = ftInteger
        Name = 'SELOINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SELOFIN'
        ParamType = ptInput
      end>
    Left = 200
    Top = 112
  end
  object dspSeloD: TDataSetProvider
    DataSet = dtSeloD
    Constraints = True
    Left = 232
    Top = 112
  end
  object SeloD: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SELOINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SELOFIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspSeloD'
    Left = 264
    Top = 112
    object SeloDQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object SeloDNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
  end
  object dsSelo: TDataSource
    DataSet = SeloD
    Left = 296
    Top = 112
  end
  object Qordem: TSQLQuery
    SQLConnection = dmBanco.BancoDados
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMSELO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select NUMSELO from TIORDEM where NUMSELO = :NUMSELO')
    Left = 200
    Top = 144
    object QordemNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
  end
  object SeloNao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 144
    Data = {
      360000009619E0BD0100000018000000010000000000030000003600074E554D
      53454C4F01004900000001000557494454480200020014000000}
    object SeloNaoNUMSELO: TStringField
      FieldName = 'NUMSELO'
    end
  end
  object DBSelo: TppDBPipeline
    DataSource = dsSelo
    UserName = 'DBSelo'
    Left = 328
    Top = 112
  end
  object RelSelo: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OnPreviewFormCreate = RelSeloPreviewFormCreate
    Left = 360
    Top = 112
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'DBSelo'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Selos Duplos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 76200
        mmTop = 0
        mmWidth = 20638
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 167217
        mmTop = 0
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Selo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 8467
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 8467
        mmWidth = 7673
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 2381
        mmLeft = 0
        mmTop = 10583
        mmWidth = 195792
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMSELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBSelo'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBSelo'
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 0
        mmWidth = 27252
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DBSelo'
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 3704
        mmWidth = 7938
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 7
      end
    end
  end
  object DBNao: TppDBPipeline
    DataSource = dsNao
    UserName = 'DBNao'
    Left = 360
    Top = 144
    object DBNaoppField1: TppField
      FieldAlias = 'NUMSELO'
      FieldName = 'NUMSELO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
  end
  object RelNao: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OnPreviewFormCreate = RelSeloPreviewFormCreate
    Left = 392
    Top = 144
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'DBNao'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Selos n'#227'o Encontrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 76200
        mmTop = 0
        mmWidth = 36248
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 0
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Selos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 8467
        mmWidth = 8731
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 0
        mmTop = 12435
        mmWidth = 197380
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 32015
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'NUMSELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBNao'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 42333
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 3969
        mmWidth = 7938
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'NUMSELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DBNao'
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 7
      end
    end
  end
  object dsNao: TDataSource
    DataSet = SeloNao
    Left = 328
    Top = 144
  end
end

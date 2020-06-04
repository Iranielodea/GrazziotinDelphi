object frOrdemServicoI: TfrOrdemServicoI
  Left = 0
  Top = 0
  Caption = 'frOrdemServicoI'
  ClientHeight = 185
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object QOrdem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '    o.dataordem,'
      '    o.numordem,'
      '    o.numnota,'
      '    coalesce(('
      '        select count(i.numordem) from tiordem i'
      '            where o.numordem = i.numordem'
      '            and i.tipo = '#39'BC'#39
      '    ),0) as BC,'
      '    ('
      '        select count(i.numordem) from tiordem i'
      '            where o.numordem = i.numordem'
      '            and i.tipo = '#39'ABC'#39
      '    ) as ABC,'
      '    coalesce(('
      '        select count(i.numordem) from tiordem i'
      '            where o.numordem = i.numordem'
      '            and i.tipo = '#39'CO2'#39
      '    ),0) as CO2,'
      '    coalesce(('
      '        select count(i.numordem) from tiordem i'
      '            where o.numordem = i.numordem'
      '            and i.tipo = '#39'AP'#39
      '    ),0) as AP,'
      '    coalesce(('
      '        select count(i.numordem) from tiordem i'
      '            where o.numordem = i.numordem'
      '            and i.tipo in ('#39'BC'#39', '#39'ABC'#39', '#39'CO2'#39', '#39'AP'#39')'
      '    ),0) as QTDE_SELOS,'
      '    coalesce(('
      '        select min(i.numselo) from Tiordem i'
      '            where o.numordem = i.numordem'
      '    ),0) as SeloInicial,'
      '    coalesce(('
      '        select max(i.numselo) from Tiordem i'
      '            where o.numordem = i.numordem'
      '    ),0) as SeloFinal'
      ''
      ''
      'from TOrdem O'
      'where O.NumOrdem = 1'
      ''
      '')
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 24
  end
  object dspOrdem: TDataSetProvider
    DataSet = QOrdem
    Left = 80
    Top = 24
  end
  object dtOrdem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdem'
    OnCalcFields = dtOrdemCalcFields
    Left = 136
    Top = 24
    object dtOrdemDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object dtOrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object dtOrdemNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object dtOrdemBC: TIntegerField
      FieldName = 'BC'
    end
    object dtOrdemABC: TIntegerField
      FieldName = 'ABC'
    end
    object dtOrdemCO2: TIntegerField
      FieldName = 'CO2'
    end
    object dtOrdemAP: TIntegerField
      FieldName = 'AP'
    end
    object dtOrdemSELOINICIAL: TFloatField
      FieldName = 'SELOINICIAL'
    end
    object dtOrdemSELOFINAL: TFloatField
      FieldName = 'SELOFINAL'
    end
    object dtOrdemC_QtdeSelos: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_QtdeSelos'
    end
    object dtOrdemQTDE_SELOS: TIntegerField
      FieldName = 'QTDE_SELOS'
    end
  end
  object dsOrdem: TDataSource
    DataSet = dtOrdem
    Left = 192
    Top = 24
  end
  object dbOrdem: TppDBPipeline
    DataSource = dsOrdem
    UserName = 'dbOrdem'
    Left = 248
    Top = 24
  end
  object RelOrdem: TppReport
    AutoStop = False
    DataPipeline = dbOrdem
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 312
    Top = 24
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object lblData: TppLabel
        UserName = 'lblData'
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 6879
        mmWidth = 101071
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Relat'#243'rio de Ordens de Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5715
        mmLeft = 51594
        mmTop = 265
        mmWidth = 101071
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 265
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 17198
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Nro Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 17727
        mmTop = 17198
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Nro Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 37042
        mmTop = 17198
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Quantidade de Tipos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 53975
        mmTop = 12171
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'BC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 17198
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'CO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 17198
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'AP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82550
        mmTop = 17198
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'Total de Selos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 89429
        mmTop = 12171
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Selo Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 17198
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Selo Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 17198
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Total por Nro Seq.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 165365
        mmTop = 13229
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 3175
        mmTop = 20371
        mmWidth = 195792
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DATAORDEM'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NUMORDEM'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 17727
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'NUMNOTA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 37042
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'BC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 52388
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ABC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 63236
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CO2'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 72231
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'AP'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 82550
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'QTDE_SELOS'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 89429
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'SELOINICIAL'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 103717
        mmTop = 0
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'SELOFINAL'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 132821
        mmTop = 0
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'C_QtdeSelos'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 165365
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 3175
        mmTop = 0
        mmWidth = 195792
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 2117
        mmWidth = 15748
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'BC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 43921
        mmTop = 2117
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'ABC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 57415
        mmTop = 2117
        mmWidth = 10319
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CO2'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 68263
        mmTop = 2117
        mmWidth = 8467
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'AP'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 78317
        mmTop = 2117
        mmWidth = 8467
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'QTDE_SELOS'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 89429
        mmTop = 2117
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'C_QtdeSelos'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 2117
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object QOrdem1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '    o.dataordem,'
      '    o.numordem,'
      '    o.numnota,'
      '    o.codpessoa,'
      '    o.outrasnotas,'
      '    i.tipo,'
      '    i.numselo,'
      '    i.CodNivel,'
      '    p.nome'
      'from tordem o'
      '    inner join tiordem i on'
      '        o.numordem = i.numordem'
      ''
      '    left join tpessoa p on'
      '        o.codpessoa = p.codpessoa'
      '    where o.DataOrdem between :Dataini and :DataFim'
      ''
      '')
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 88
  end
  object dspOrdem1: TDataSetProvider
    DataSet = QOrdem1
    Left = 80
    Top = 88
  end
  object dtOrdem1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspOrdem1'
    Left = 136
    Top = 88
    object dtOrdem1DATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object dtOrdem1NUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object dtOrdem1NUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object dtOrdem1CODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object dtOrdem1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object dtOrdem1NUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object dtOrdem1NOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object dtOrdem1CODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
    end
    object dtOrdem1OUTRASNOTAS: TStringField
      FieldName = 'OUTRASNOTAS'
      Size = 100
    end
  end
  object dsOrdem1: TDataSource
    DataSet = dtOrdem1
    Left = 192
    Top = 88
  end
  object dbOrdem1: TppDBPipeline
    DataSource = dsOrdem1
    UserName = 'dbOrdem1'
    Left = 248
    Top = 88
  end
  object RelOrdem1: TppReport
    AutoStop = False
    DataPipeline = dbOrdem1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 312
    Top = 88
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem1'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Relat'#243'rio de Ordens de Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 71967
        mmTop = 0
        mmWidth = 63236
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 0
        mmWidth = 25950
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 0
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground1
      end
      object lblData1: TppLabel
        UserName = 'lblData1'
        AutoSize = False
        Caption = 'lblData1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 71967
        mmTop = 6615
        mmWidth = 63236
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 11906
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Selo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 11906
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 15875
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 65088
        mmTop = 11906
        mmWidth = 6392
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'TIPO'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'NUMSELO'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 0
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CODNIVEL'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3175
        mmLeft = 65088
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 5292
        mmTop = 1323
        mmWidth = 14774
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'NUMORDEM'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3387
        mmLeft = 28046
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'NUMORDEM'
      DataPipeline = dbOrdem1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbOrdem1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Nro Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 1058
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'NUMORDEM'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 16140
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 39158
          mmTop = 1058
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'DATAORDEM'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 47096
          mmTop = 1058
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'Nro Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 66940
          mmTop = 1058
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'NUMNOTA'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 79375
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 100806
          mmTop = 1058
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'NOME'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 124619
          mmTop = 1058
          mmWidth = 68527
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'CODPESSOA'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 111919
          mmTop = 1058
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'OUTRASNOTAS'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 66940
          mmTop = 5292
          mmWidth = 126207
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 5291
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6350
          mmTop = 1058
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'NUMORDEM'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3387
          mmLeft = 28046
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object RelOrdem01: TppReport
    AutoStop = False
    DataPipeline = dbOrdem
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 392
    Top = 24
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object lblData01: TppLabel
        UserName = 'lblData2'
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 6879
        mmWidth = 101071
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Relat'#243'rio de Ordens de Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5715
        mmLeft = 51594
        mmTop = 265
        mmWidth = 101071
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 265
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 17198
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Nro Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 17727
        mmTop = 17198
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Nro Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 37042
        mmTop = 17198
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Quantidade de Tipos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 53975
        mmTop = 12171
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'BC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 17198
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'CO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 72231
        mmTop = 17198
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'AP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82550
        mmTop = 17198
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel35: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Total de Selos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 89429
        mmTop = 12171
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Selo Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 17198
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Selo Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 17198
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Caption = 'Total por Nro Seq.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8731
        mmLeft = 165365
        mmTop = 13229
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 1852
        mmTop = 20371
        mmWidth = 195792
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'DATAORDEM'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 17200
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'NUMORDEM'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 18522
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'NUMNOTA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 37042
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'BC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 52388
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'ABC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 63236
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'CO2'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 72231
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'AP'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 82550
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'QTDE_SELOS'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 89429
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'SELOINICIAL'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 103717
        mmTop = 0
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText30: TppDBText
        UserName = 'DBText101'
        DataField = 'SELOFINAL'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 132821
        mmTop = 0
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'C_QtdeSelos'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3598
        mmLeft = 165365
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1852
        mmTop = 265
        mmWidth = 195792
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 2381
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'BC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 43921
        mmTop = 2381
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'ABC'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 57415
        mmTop = 2381
        mmWidth = 10319
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'CO2'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 68263
        mmTop = 2381
        mmWidth = 8467
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'AP'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 78317
        mmTop = 2381
        mmWidth = 8467
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'QTDE_SELOS'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 89429
        mmTop = 2381
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'C_QtdeSelos'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 2381
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object RelOrdem02: TppReport
    AutoStop = False
    DataPipeline = dbOrdem1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 392
    Top = 88
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem1'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Relat'#243'rio de Ordens de Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 71967
        mmTop = 0
        mmWidth = 63236
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 0
        mmWidth = 25950
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 0
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground3
      end
      object lblData02: TppLabel
        UserName = 'lblData02'
        AutoSize = False
        Caption = 'lblData1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 71967
        mmTop = 6615
        mmWidth = 63236
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel41: TppLabel
        UserName = 'Label201'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 11906
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Selo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 11906
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 65088
        mmTop = 11906
        mmWidth = 6392
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 15875
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'TIPO'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'NUMSELO'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 0
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'CODNIVEL'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3175
        mmLeft = 65088
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 5292
        mmTop = 1323
        mmWidth = 14774
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'NUMORDEM'
        DataPipeline = dbOrdem1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbOrdem1'
        mmHeight = 3387
        mmLeft = 28046
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground3
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'NUMORDEM'
      DataPipeline = dbOrdem1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbOrdem1'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Caption = 'Nro Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 1058
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText32: TppDBText
          UserName = 'DBText32'
          DataField = 'NUMORDEM'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 16140
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 39158
          mmTop = 1058
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText33: TppDBText
          UserName = 'DBText33'
          DataField = 'DATAORDEM'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 47096
          mmTop = 1058
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Nro Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 66940
          mmTop = 1058
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText34: TppDBText
          UserName = 'DBText34'
          DataField = 'NUMNOTA'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 79375
          mmTop = 1058
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 100806
          mmTop = 1058
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          DataField = 'NOME'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 124619
          mmTop = 1058
          mmWidth = 68527
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          DataField = 'CODPESSOA'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 111919
          mmTop = 1058
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText37: TppDBText
          UserName = 'DBText201'
          DataField = 'OUTRASNOTAS'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3175
          mmLeft = 66940
          mmTop = 5292
          mmWidth = 126207
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 5291
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6350
          mmTop = 1058
          mmWidth = 6615
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          DataField = 'NUMORDEM'
          DataPipeline = dbOrdem1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbOrdem1'
          mmHeight = 3387
          mmLeft = 28046
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
end

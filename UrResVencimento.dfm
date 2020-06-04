object FrResVencimento: TFrResVencimento
  Left = 192
  Top = 114
  Caption = 'FrResVencimento'
  ClientHeight = 281
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object relResumo: TppReport
    AutoStop = False
    DataPipeline = dbResumo
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
    OnPreviewFormCreate = relResumoPreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 168
    Top = 24
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbResumo'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Resumo de Vencimento de Extintores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 38100
        mmTop = 0
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 14817
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 16933
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground
      end
      object lblData: TppLabel
        UserName = 'lblData'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 5292
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 14817
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 14817
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 160867
        mmTop = 14817
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Vencto Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground
      end
      object lblVend: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Label4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 8996
        mmWidth = 153459
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'NOME'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 0
        mmWidth = 74348
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'FONE1'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 131234
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'CONTATO'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 158750
        mmTop = 0
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'VENCTCARGA'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 1588
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 194999
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        ReprintOnSubsequent = True
        SuppressRepeatedValues = True
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbResumo'
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 1588
        mmWidth = 17198
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
  object Qresumo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' C.VENCTOCARGA,'
      
        ' EXTRACT(month FROM C.VENCTOCARGA)||'#39'/'#39'||EXTRACT(year from C.VEN' +
        'CTOCARGA) AS VENCTCARGA,'
      ' P.FONE1,'
      ' P.CONTATO,'
      ' P.NOME,'
      ' C.CODPESSOA,'
      ' COUNT(C.CODPESSOA) AS QTDE'
      ' FROM TCLIEXT C'
      ''
      ' inner join TPESSOA P on C.CODPESSOA = P.CODPESSOA'
      ' left join TMARCA M on C.CODMARCA = M.CODMARCA'
      ''
      ' WHERE C.CODPESSOA = P.CODPESSOA'
      ' AND C.VENCTOCARGA BETWEEN :DATAINI AND :DATAFIN'
      ' AND C.SELO > 0')
    SQLConnection = DmBanco.BancoDados
    Left = 8
    Top = 24
  end
  object dsResumo: TDataSource
    DataSet = Resumo
    Left = 104
    Top = 24
  end
  object dspResumo: TDataSetProvider
    DataSet = Qresumo
    Left = 40
    Top = 24
  end
  object Resumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResumo'
    Left = 72
    Top = 24
  end
  object dbResumo: TppDBPipeline
    DataSource = dsResumo
    UserName = 'dbResumo'
    Left = 136
    Top = 24
  end
  object RelResumoC: TppReport
    AutoStop = False
    DataPipeline = dbResumoC
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
    OnPreviewFormCreate = relResumoPreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 168
    Top = 80
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbResumoC'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Resumo de Vencimento de Extintores p/Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 38100
        mmTop = 0
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground1
      end
      object lblDataCid: TppLabel
        UserName = 'lblData1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 5292
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 14817
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 16933
        mmWidth = 195792
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 14817
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 14817
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 160867
        mmTop = 14817
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'Vencto Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object lblVend1: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Label6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 8996
        mmWidth = 153459
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'VENCTCARGA'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumoC'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumoC'
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'NOME'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumoC'
        mmHeight = 3440
        mmLeft = 35983
        mmTop = 0
        mmWidth = 77523
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoC'
        mmHeight = 3440
        mmLeft = 114300
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'FONE1'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumoC'
        mmHeight = 3440
        mmLeft = 133350
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'CONTATO'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumoC'
        mmHeight = 3440
        mmLeft = 160867
        mmTop = 0
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 2117
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbResumoC'
        mmHeight = 3440
        mmLeft = 23283
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbResumoC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoC'
        mmHeight = 3440
        mmLeft = 114300
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CODCIDADE'
      DataPipeline = dbResumoC
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbResumoC'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'CODCIDADE'
          DataPipeline = dbResumoC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbResumoC'
          mmHeight = 3440
          mmLeft = 12700
          mmTop = 794
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'DESCCIDADE'
          DataPipeline = dbResumoC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbResumoC'
          mmHeight = 3440
          mmLeft = 23283
          mmTop = 794
          mmWidth = 95250
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 2381
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'CODPESSOA'
          DataPipeline = dbResumoC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbResumoC'
          mmHeight = 3440
          mmLeft = 23283
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'QTDE'
          DataPipeline = dbResumoC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbResumoC'
          mmHeight = 3440
          mmLeft = 114300
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 5556
          mmWidth = 195791
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
  object dbResumoC: TppDBPipeline
    DataSource = dsResumoC
    UserName = 'dbResumoC'
    Left = 136
    Top = 80
  end
  object QresumoC: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' C.VENCTOCARGA,'
      
        ' EXTRACT(month FROM C.VENCTOCARGA)||'#39'/'#39'||EXTRACT(year from C.VEN' +
        'CTOCARGA) AS VENCTCARGA,'
      ' P.FONE1,'
      ' P.CONTATO,'
      ' P.NOME,'
      ' P.CODCIDADE,'
      ' CI.DESCCIDADE,'
      ' C.CODPESSOA,'
      ' COUNT(C.CODPESSOA) AS QTDE'
      ' FROM TCLIEXT C'
      ' INNER JOIN TPESSOA P ON C.CODPESSOA = P.CODPESSOA'
      ' LEFT JOIN TCIDADE CI ON P.CODCIDADE = CI.CODCIDADE'
      ' LEFT JOIN TMARCA M on C.CODMARCA = M.CODMARCA'
      ' WHERE C.VENCTOCARGA BETWEEN :DATAINI AND :DATAFIN'
      ' AND C.SELO > 0'
      '')
    SQLConnection = DmBanco.BancoDados
    Left = 8
    Top = 80
  end
  object dspResumoC: TDataSetProvider
    DataSet = QresumoC
    Left = 40
    Top = 80
  end
  object ResumoC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResumoC'
    Left = 72
    Top = 80
  end
  object dsResumoC: TDataSource
    DataSet = ResumoC
    Left = 104
    Top = 80
  end
  object QInspecao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' C.VENCTOCARGA,'
      
        ' EXTRACT(month FROM C.VENCTOCARGA)||'#39'/'#39'||EXTRACT(year from C.VEN' +
        'CTOCARGA) AS VENCTCARGA,'
      ' P.FONE1,'
      ' P.CONTATO,'
      ' P.NOME,'
      ' C.CODPESSOA,'
      ' COUNT(C.CODPESSOA) AS QTDE'
      ' FROM tiordem C'
      ' inner join tordem O ON c.numordem = O.numordem'
      ''
      ' inner join TPESSOA P on O.CODPESSOA = P.CODPESSOA'
      ' left join TMARCA M on C.CODMARCA = M.CODMARCA'
      ''
      ' WHERE O.CODPESSOA = P.CODPESSOA'
      ' AND C.vencto_inspecao BETWEEN :DATAINI AND :DATAFIN'
      ' AND C.numselo > 0'
      '')
    SQLConnection = DmBanco.BancoDados
    Left = 8
    Top = 152
  end
  object dspInspecao: TDataSetProvider
    DataSet = QInspecao
    Left = 48
    Top = 152
  end
  object cdsInspecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInspecao'
    Left = 80
    Top = 152
  end
  object dbInspecao: TppDBPipeline
    DataSource = dsInspecao
    UserName = 'dbInspecao'
    Left = 152
    Top = 152
  end
  object dsInspecao: TDataSource
    DataSet = cdsInspecao
    Left = 112
    Top = 152
  end
  object RelInspecao: TppReport
    AutoStop = False
    DataPipeline = dbInspecao
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
    OnPreviewFormCreate = relResumoPreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 184
    Top = 152
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbInspecao'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Inspe'#231#227'o - Resumo de Vencimento de Extintores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 38100
        mmTop = 0
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel13: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 14817
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 16933
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground2
      end
      object lblInspecaoData: TppLabel
        UserName = 'lblData'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 5292
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel15: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 14817
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        UserName = 'Label13'
        HyperlinkEnabled = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 14817
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel17: TppLabel
        UserName = 'Label14'
        HyperlinkEnabled = False
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 160867
        mmTop = 14817
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Vencto Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground2
      end
      object lblInspecaoVend: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Label4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 8996
        mmWidth = 153459
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText12: TppDBText
        UserName = 'DBText3'
        HyperlinkEnabled = False
        DataField = 'NOME'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 0
        mmWidth = 74348
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkEnabled = False
        DataField = 'FONE1'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 131234
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkEnabled = False
        DataField = 'CONTATO'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 158750
        mmTop = 0
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText15: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText16: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'VENCTCARGA'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLabel21: TppLabel
        UserName = 'Label10'
        HyperlinkEnabled = False
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 1588
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine6: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 194999
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        ReprintOnSubsequent = True
        SuppressRepeatedValues = True
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 1588
        mmWidth = 17198
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
  object QInspecaoCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' C.VENCTOCARGA,'
      
        ' EXTRACT(month FROM C.VENCTOCARGA)||'#39'/'#39'||EXTRACT(year from C.VEN' +
        'CTOCARGA) AS VENCTCARGA,'
      ' P.FONE1,'
      ' P.CONTATO,'
      ' P.NOME,'
      ' P.CODCIDADE,'
      ' CI.DESCCIDADE,'
      ' C.CODPESSOA,'
      ' COUNT(C.CODPESSOA) AS QTDE'
      ' FROM TIORDEM C'
      ' INNER JOIN tordem O ON C.numordem = O.numordem'
      ' INNER JOIN TPESSOA P ON O.CODPESSOA = P.CODPESSOA'
      ' LEFT JOIN TCIDADE CI ON P.CODCIDADE = CI.CODCIDADE'
      ' LEFT JOIN TMARCA M on C.CODMARCA = M.CODMARCA'
      ' WHERE C.vencto_inspecao BETWEEN :DATAINI AND :DATAFIN'
      ' AND C.numselo > 0')
    SQLConnection = DmBanco.BancoDados
    Left = 8
    Top = 208
  end
  object dspInspecaoCidade: TDataSetProvider
    DataSet = QInspecaoCidade
    Left = 48
    Top = 208
  end
  object cdsInspecaoCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInspecaoCidade'
    Left = 88
    Top = 208
  end
  object dsInspecaoCidade: TDataSource
    DataSet = cdsInspecaoCidade
    Left = 128
    Top = 208
  end
  object dbInspecaoCidade: TppDBPipeline
    DataSource = dsInspecaoCidade
    UserName = 'dbInspecaoCidade'
    Left = 160
    Top = 208
  end
  object RelInspecaoCidade: TppReport
    AutoStop = False
    DataPipeline = dbInspecaoCidade
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
    OnPreviewFormCreate = relResumoPreviewFormCreate
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
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
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 192
    Top = 208
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbInspecaoCidade'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Inspe'#231#227'o - Resumo de Vencimento de Extintores p/Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 38100
        mmTop = 0
        mmWidth = 153194
        BandType = 0
        LayerName = BandLayer4
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 29633
        BandType = 0
        LayerName = BandLayer4
      end
      object lblInspecaoCidadeData: TppLabel
        UserName = 'lblData1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 5292
        mmWidth = 153194
        BandType = 0
        LayerName = BandLayer4
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 29898
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel22: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 114300
        mmTop = 14817
        mmWidth = 14288
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLine7: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 16933
        mmWidth = 195792
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel23: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 14817
        mmWidth = 8467
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel28: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 14817
        mmWidth = 6350
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel29: TppLabel
        UserName = 'Label3'
        HyperlinkEnabled = False
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 160867
        mmTop = 14817
        mmWidth = 9790
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel30: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'Vencto Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer4
      end
      object lblInspecaoCidadeVend: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Label6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 8996
        mmWidth = 153459
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'VENCTCARGA'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 20902
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText2'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'NOME'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3440
        mmLeft = 35983
        mmTop = 0
        mmWidth = 77523
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3440
        mmLeft = 114300
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'FONE1'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3440
        mmLeft = 133350
        mmTop = 0
        mmWidth = 25665
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText7'
        HyperlinkEnabled = False
        DataField = 'CONTATO'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3440
        mmLeft = 160867
        mmTop = 0
        mmWidth = 32808
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel32: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 2117
        mmWidth = 20902
        BandType = 7
        LayerName = BandLayer4
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3440
        mmLeft = 23283
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
        LayerName = BandLayer4
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        DataField = 'QTDE'
        DataPipeline = dbInspecaoCidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbInspecaoCidade'
        mmHeight = 3440
        mmLeft = 114300
        mmTop = 2117
        mmWidth = 17198
        BandType = 7
        LayerName = BandLayer4
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CODCIDADE'
      DataPipeline = dbInspecaoCidade
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbInspecaoCidade'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel33: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 794
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText27: TppDBText
          UserName = 'DBText8'
          HyperlinkEnabled = False
          DataField = 'CODCIDADE'
          DataPipeline = dbInspecaoCidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecaoCidade'
          mmHeight = 3440
          mmLeft = 12700
          mmTop = 794
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText28: TppDBText
          UserName = 'DBText9'
          HyperlinkEnabled = False
          DataField = 'DESCCIDADE'
          DataPipeline = dbInspecaoCidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecaoCidade'
          mmHeight = 3440
          mmLeft = 23283
          mmTop = 794
          mmWidth = 95250
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel34: TppLabel
          UserName = 'Label101'
          HyperlinkEnabled = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 2381
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          DataField = 'CODPESSOA'
          DataPipeline = dbInspecaoCidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbInspecaoCidade'
          mmHeight = 3440
          mmLeft = 23283
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'QTDE'
          DataPipeline = dbInspecaoCidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbInspecaoCidade'
          mmHeight = 3440
          mmLeft = 114300
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLine8: TppLine
          UserName = 'Line2'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 5556
          mmWidth = 195791
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer4
        end
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
end

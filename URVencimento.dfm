object FrVencimento: TFrVencimento
  Left = 192
  Top = 114
  Caption = 'FrVencimento'
  ClientHeight = 140
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dspOrdem: TDataSetProvider
    DataSet = dtOrdem
    Left = 48
    Top = 16
  end
  object dsOrdem: TDataSource
    DataSet = Ordem
    Left = 112
    Top = 16
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
    OnPreviewFormCreate = RelOrdemPreviewFormCreate
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
    Left = 176
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Relat'#243'rio de Vencimento de Extintores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 33867
        mmTop = 0
        mmWidth = 136261
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 0
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
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
      object ppLabel2: TppLabel
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
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 84667
        mmTop = 14817
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 107950
        mmTop = 14817
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Capac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 14817
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152400
        mmTop = 14817
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 16933
        mmWidth = 197380
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
        mmLeft = 33867
        mmTop = 5292
        mmWidth = 136261
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Vencto Teste'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 14817
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object lblVend: TppLabel
        UserName = 'lblVend'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'lblVend'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 8996
        mmWidth = 136261
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Ano Fab.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 14817
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 67733
        mmTop = 14817
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'SERIE'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 84667
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'CAPACIDADE'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'NUMERO'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 154517
        mmTop = 0
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'VENCTCARGA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'VENCTOTESTE'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'DESCLOCAL'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 105834
        mmTop = 0
        mmWidth = 46831
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'ANOFAB'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'DESCMARCA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 59267
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel10: TppLabel
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
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CODPESSOA'
      DataPipeline = dbOrdem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbOrdem'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 14288
        mmPrintPosition = 0
        object ppLabel3: TppLabel
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
          mmLeft = 0
          mmTop = 794
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'CODPESSOA'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 14817
          mmTop = 529
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkEnabled = False
          DataField = 'NOME'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 27517
          mmTop = 529
          mmWidth = 110861
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          Caption = 'Fone1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 9260
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'FONE1'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 14817
          mmTop = 9260
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel14: TppLabel
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
          mmLeft = 152400
          mmTop = 794
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          HyperlinkEnabled = False
          DataField = 'CONTATO'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 162984
          mmTop = 529
          mmWidth = 28575
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 5027
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          HyperlinkEnabled = False
          DataField = 'RUA'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3175
          mmLeft = 14817
          mmTop = 5027
          mmWidth = 79111
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          HyperlinkEnabled = False
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 95250
          mmTop = 5027
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          HyperlinkEnabled = False
          DataField = 'DESCBAIRRO'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 103717
          mmTop = 5027
          mmWidth = 34396
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 139700
          mmTop = 5027
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          HyperlinkEnabled = False
          DataField = 'DESCCIDADE'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 150284
          mmTop = 5027
          mmWidth = 41010
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          Caption = 'Fone2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 52917
          mmTop = 9260
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'FONE2'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 63500
          mmTop = 9260
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 2381
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'CODPESSOA'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbOrdem'
          mmHeight = 3440
          mmLeft = 16933
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 6350
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
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
  object Ordem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdem'
    Left = 80
    Top = 16
  end
  object dbOrdem: TppDBPipeline
    DataSource = dsOrdem
    UserName = 'dbOrdem'
    Left = 144
    Top = 16
  end
  object dtOrdem: TSQLQuery
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
      ' C.NUMERO,'
      ' C.CAPACIDADE,'
      ' C.VENCIMENTO,'
      ' C.VENCTOCARGA,'
      ' EXTRACT(year from C.VENCIMENTO) AS VENCTOTESTE,'
      
        ' EXTRACT(month FROM C.VENCTOCARGA)||'#39'/'#39'||EXTRACT(year from C.VEN' +
        'CTOCARGA) AS VENCTCARGA,'
      ' EXTRACT(year from C.ANOFAB) AS ANOFAB,'
      
        ' /*SUBSTRING(cast(C.VENCIMENTO AS CHAR(10)) FROM 6 FOR 4) AS VEN' +
        'CTOTESTE,*/'
      
        ' /*SUBSTRING(cast(C.VENCIMENTO AS CHAR(10)) FROM 3 FOR 7) AS VEN' +
        'CTOCARGA,*/'
      ' C.SERIE,'
      ' /*Cast(C.CODPESSOA AS CHAR(5))||"-"||P.NOME AS CODIGO_NOME,*/'
      ' L.DESCLOCAL,'
      ' P.FONE1,'
      ' P.FONE2,'
      ' P.CONTATO,'
      ' P.CODCIDADE,'
      ' P.RUA||'#39'  '#39'||P.NUMERO AS RUA,'
      ' P.CODBAIRRO,'
      ' P.NOME,'
      ' P.CODPESSOA,'
      ' C.CODMARCA,'
      ' M.DESCMARCA,'
      ' B.DESCBAIRRO,'
      ' CI.DESCCIDADE'
      ' FROM TCLIEXT C'
      ' LEFT JOIN TLOCAL L ON C.CODLOCAL = L.CODLOCAL'
      ' LEFT JOIN TPESSOA P ON C.CODPESSOA = P.CODPESSOA'
      ' LEFT JOIN TBAIRRO B ON P.CODBAIRRO = B.CODBAIRRO'
      ' LEFT JOIN TCIDADE CI ON P.CODCIDADE = CI.CODCIDADE'
      ' LEFT JOIN TMARCA M ON C.CODMARCA = M.CODMARCA'
      ' WHERE C.VENCTOCARGA BETWEEN :DATAINI AND :DATAFIN')
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 16
  end
  object dtInspecao: TSQLQuery
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
      ' c.numordem,'
      ' C.NUMERO,'
      ' C.CAPACIDADE,'
      ' C.VENCIMENTO,'
      ' C.VENCTOCARGA,'
      ' EXTRACT(year from C.VENCIMENTO) AS VENCTOTESTE,'
      
        ' EXTRACT(month FROM C.VENCTOCARGA)||'#39'/'#39'||EXTRACT(year from C.VEN' +
        'CTOCARGA) AS VENCTCARGA,'
      
        ' EXTRACT(month FROM  C.VENCTO_INSPECAO)||'#39'/'#39'||EXTRACT(year from ' +
        ' C.VENCTO_INSPECAO) AS VENCTO_INSPECAO,'
      ' EXTRACT(year from C.ANOFAB) AS ANOFAB,'
      ' C.SERIE,'
      ' L.DESCLOCAL,'
      ' P.FONE1,'
      ' P.FONE2,'
      ' P.CONTATO,'
      ' P.CODCIDADE,'
      ' P.RUA||'#39'  '#39'||P.NUMERO AS RUA,'
      ' P.CODBAIRRO,'
      ' P.NOME,'
      ' P.CODPESSOA,'
      ' C.CODMARCA,'
      ' M.DESCMARCA,'
      ' B.DESCBAIRRO,'
      ' CI.DESCCIDADE'
      ' FROM tiordem C'
      ' INNER JOIN tordem O ON c.numordem = o.numordem'
      ' LEFT JOIN TMARCA M ON C.CODMARCA = M.CODMARCA'
      ' LEFT JOIN TPESSOA P ON C.CODPESSOA = P.CODPESSOA'
      ' LEFT JOIN TBAIRRO B ON P.CODBAIRRO = B.CODBAIRRO'
      ' LEFT JOIN TCIDADE CI ON P.CODCIDADE = CI.CODCIDADE'
      
        ' LEFT JOIN tcliext CL ON C.serie = CL.serie AND C.codmarca = CL.' +
        'codmarca'
      ' LEFT JOIN tlocal L ON CL.codlocal = L.codlocal'
      ''
      ' WHERE C.VENCTO_INSPECAO BETWEEN :DATAINI AND :DATAFIN')
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 72
  end
  object dspInspecao: TDataSetProvider
    DataSet = dtInspecao
    Left = 48
    Top = 72
  end
  object cdsInspecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInspecao'
    Left = 80
    Top = 72
  end
  object dsInspecao: TDataSource
    DataSet = cdsInspecao
    Left = 120
    Top = 72
  end
  object dbInspecao: TppDBPipeline
    DataSource = dsInspecao
    UserName = 'dbInspecao'
    Left = 152
    Top = 72
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
    OnPreviewFormCreate = RelOrdemPreviewFormCreate
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
    Top = 72
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbInspecao'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLabel19: TppLabel
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'Inspe'#231#227'o - Relat'#243'rio de Vencimento de Extintores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 33867
        mmTop = 0
        mmWidth = 136261
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 0
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
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
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        UserName = 'Label2'
        HyperlinkEnabled = False
        Caption = 'Vcto Inspe'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 14817
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        UserName = 'Label4'
        HyperlinkEnabled = False
        Caption = 'S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 84667
        mmTop = 14817
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        UserName = 'Label5'
        HyperlinkEnabled = False
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 107950
        mmTop = 14817
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        UserName = 'Label6'
        HyperlinkEnabled = False
        Caption = 'Capac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 14817
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        UserName = 'Label7'
        HyperlinkEnabled = False
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 152400
        mmTop = 14817
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 16933
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
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
        mmLeft = 33867
        mmTop = 5292
        mmWidth = 136261
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        UserName = 'Label11'
        HyperlinkEnabled = False
        Caption = 'Vencto Teste'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 14817
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object lblInspecaoVend: TppLabel
        UserName = 'lblVend'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'lblVend'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 8996
        mmWidth = 136261
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        UserName = 'Label9'
        HyperlinkEnabled = False
        Caption = 'Ano Fab.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 14817
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        UserName = 'Label12'
        HyperlinkEnabled = False
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 67733
        mmTop = 14817
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText4'
        HyperlinkEnabled = False
        DataField = 'SERIE'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 84667
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        UserName = 'DBText5'
        HyperlinkEnabled = False
        DataField = 'CAPACIDADE'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        UserName = 'DBText9'
        HyperlinkEnabled = False
        DataField = 'NUMERO'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 154517
        mmTop = 0
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        UserName = 'DBText12'
        HyperlinkEnabled = False
        DataField = 'VENCTOTESTE'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        UserName = 'DBText6'
        HyperlinkEnabled = False
        DataField = 'ANOFAB'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText8'
        HyperlinkEnabled = False
        DataField = 'DESCMARCA'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3175
        mmLeft = 59267
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        UserName = 'DBText1'
        HyperlinkEnabled = False
        DataField = 'DESCLOCAL'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 106098
        mmTop = 0
        mmWidth = 46831
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        UserName = 'DBText10'
        HyperlinkEnabled = False
        DataField = 'VENCTO_INSPECAO'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbInspecao'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel30: TppLabel
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
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        DataField = 'CODPESSOA'
        DataPipeline = dbInspecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbInspecao'
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CODPESSOA'
      DataPipeline = dbInspecao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbInspecao'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 14288
        mmPrintPosition = 0
        object ppLabel31: TppLabel
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
          mmLeft = 0
          mmTop = 794
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText25: TppDBText
          UserName = 'DBText2'
          HyperlinkEnabled = False
          DataField = 'CODPESSOA'
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
          mmLeft = 14817
          mmTop = 529
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText26: TppDBText
          UserName = 'DBText3'
          HyperlinkEnabled = False
          DataField = 'NOME'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecao'
          mmHeight = 3440
          mmLeft = 27517
          mmTop = 529
          mmWidth = 110861
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel32: TppLabel
          UserName = 'Label13'
          HyperlinkEnabled = False
          Caption = 'Fone1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 9260
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText27: TppDBText
          UserName = 'DBText13'
          HyperlinkEnabled = False
          DataField = 'FONE1'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecao'
          mmHeight = 3440
          mmLeft = 14817
          mmTop = 9260
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel33: TppLabel
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
          mmLeft = 152400
          mmTop = 794
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText28: TppDBText
          UserName = 'DBText14'
          HyperlinkEnabled = False
          DataField = 'CONTATO'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecao'
          mmHeight = 3440
          mmLeft = 162984
          mmTop = 529
          mmWidth = 28575
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel34: TppLabel
          UserName = 'Label15'
          HyperlinkEnabled = False
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 5027
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText29: TppDBText
          UserName = 'DBText15'
          HyperlinkEnabled = False
          DataField = 'RUA'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecao'
          mmHeight = 3175
          mmLeft = 14817
          mmTop = 5027
          mmWidth = 79111
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel35: TppLabel
          UserName = 'Label16'
          HyperlinkEnabled = False
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 95250
          mmTop = 5027
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText30: TppDBText
          UserName = 'DBText16'
          HyperlinkEnabled = False
          DataField = 'DESCBAIRRO'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecao'
          mmHeight = 3440
          mmLeft = 103717
          mmTop = 5027
          mmWidth = 34396
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel36: TppLabel
          UserName = 'Label17'
          HyperlinkEnabled = False
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 139700
          mmTop = 5027
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText31: TppDBText
          UserName = 'DBText17'
          HyperlinkEnabled = False
          DataField = 'DESCCIDADE'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecao'
          mmHeight = 3440
          mmLeft = 150284
          mmTop = 5027
          mmWidth = 41010
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel37: TppLabel
          UserName = 'Label18'
          HyperlinkEnabled = False
          Caption = 'Fone2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 52917
          mmTop = 9260
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText32: TppDBText
          UserName = 'DBText7'
          HyperlinkEnabled = False
          DataField = 'FONE2'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbInspecao'
          mmHeight = 3440
          mmLeft = 63500
          mmTop = 9260
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel38: TppLabel
          UserName = 'Label8'
          HyperlinkEnabled = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 2381
          mmWidth = 6085
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          DataField = 'CODPESSOA'
          DataPipeline = dbInspecao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup2
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbInspecao'
          mmHeight = 3440
          mmLeft = 16933
          mmTop = 2381
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine4: TppLine
          UserName = 'Line2'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 6350
          mmWidth = 197380
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
end

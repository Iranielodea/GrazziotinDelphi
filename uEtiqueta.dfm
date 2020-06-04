object fEtiqueta: TfEtiqueta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Etiquetas'
  ClientHeight = 343
  ClientWidth = 552
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
    Top = 258
    Width = 552
    Height = 85
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnMarcarTodas: TSpeedButton
      Left = 0
      Top = 48
      Width = 130
      Height = 33
      Caption = 'F4 - Marcar Todas'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnMarcarTodasClick
    end
    object btnDesmarcarTodas: TSpeedButton
      Left = 128
      Top = 48
      Width = 130
      Height = 33
      Caption = 'F5 - DesMarcar Todas'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnDesmarcarTodasClick
    end
    object btnAvancaPeq: TSpeedButton
      Left = 264
      Top = 48
      Width = 130
      Height = 33
      Caption = 'F6 - Avan'#231'ar Pequenas'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnAvancaPeqClick
    end
    object btnAvancaGrande: TSpeedButton
      Left = 400
      Top = 48
      Width = 130
      Height = 33
      Caption = 'F7 - Avan'#231'ar Grandes'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnAvancaGrandeClick
    end
    object btnImpGrande: TBitBtn
      Left = 88
      Top = 6
      Width = 120
      Height = 25
      Caption = 'F2 - Etiq. &Grande'
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
      OnClick = btnImpGrandeClick
    end
    object butSair: TBitBtn
      Left = 340
      Top = 6
      Width = 120
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
    object btnImpPequeno: TBitBtn
      Left = 214
      Top = 6
      Width = 120
      Height = 25
      Caption = 'F3 - Etiq. &Pequena'
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
      OnClick = btnImpPequenoClick
    end
  end
  object dbgDados: TDBGrid
    Left = 0
    Top = 0
    Width = 551
    Height = 258
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    PopupMenu = pmEtiqueta
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgDadosCellClick
    OnDrawColumnCell = dbgDadosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Sel'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Serie'
        Width = 218
        Visible = True
      end>
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 184
    Top = 104
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 104
    object cdsDadosSel: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Sel'
      Size = 1
    end
    object cdsDadosMarcar: TStringField
      FieldName = 'Marcar'
      Size = 1
    end
    object cdsDadosSérie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'Serie'
      Size = 30
    end
    object cdsDadosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object cdsDadosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 60
    end
    object cdsDadosVenctoTeste: TStringField
      FieldName = 'VenctoTeste'
      Size = 10
    end
    object cdsDadosMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 150
    end
    object cdsDadosNumeroLocal: TStringField
      FieldName = 'NumeroLocal'
      Size = 5
    end
    object cdsDadosVenctoCarga: TStringField
      FieldName = 'VenctoCarga'
      Size = 50
    end
    object cdsDadosCodNivel: TStringField
      FieldName = 'CodNivel'
    end
    object cdsDadosCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object cdsDadosCli_Codigo_Nome: TStringField
      FieldName = 'Cli_Codigo_Nome'
      Size = 120
    end
  end
  object dbDados: TppDBPipeline
    DataSource = dsDados
    UserName = 'dbDados'
    Left = 280
    Top = 104
    object dbDadosppField1: TppField
      FieldAlias = 'Sel'
      FieldName = 'Sel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbDadosppField2: TppField
      FieldAlias = 'Marcar'
      FieldName = 'Marcar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbDadosppField3: TppField
      FieldAlias = 'Serie'
      FieldName = 'Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbDadosppField4: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbDadosppField5: TppField
      FieldAlias = 'Empresa'
      FieldName = 'Empresa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbDadosppField6: TppField
      FieldAlias = 'VenctoTeste'
      FieldName = 'VenctoTeste'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbDadosppField7: TppField
      FieldAlias = 'Mensagem'
      FieldName = 'Mensagem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbDadosppField8: TppField
      FieldAlias = 'NumeroLocal'
      FieldName = 'NumeroLocal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbDadosppField9: TppField
      FieldAlias = 'VenctoCarga'
      FieldName = 'VenctoCarga'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbDadosppField10: TppField
      FieldAlias = 'CodNivel'
      FieldName = 'CodNivel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object dbDadosppField11: TppField
      FieldAlias = 'CodCliente'
      FieldName = 'CodCliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object dbDadosppField12: TppField
      FieldAlias = 'Cli_Codigo_Nome'
      FieldName = 'Cli_Codigo_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object RelPequeno: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6350'
      '61350')
    DataPipeline = dbDados
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'HP Deskjet F4400 series'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 19000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\Projetos\Grazziotin\EtiquetaPequena.rtm'
    Units = utMillimeters
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
    Left = 344
    Top = 104
    Version = '15.03'
    mmColumnWidth = 55000
    DataPipelineName = 'dbDados'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 16000
      mmPrintPosition = 0
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'Cli_Codigo_Nome'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 13229
        mmLeft = 5556
        mmTop = 0
        mmWidth = 45508
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
  object DesPequeno: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = RelPequeno
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 408
    Top = 104
  end
  object pmEtiqueta: TPopupMenu
    Left = 136
    Top = 56
    object ConfigurarEtiquetaGrande1: TMenuItem
      Caption = 'Configurar Etiqueta Grande'
      OnClick = ConfigurarEtiquetaGrande1Click
    end
    object ConfigurarEtiquetaPequena1: TMenuItem
      Caption = 'Configurar Etiqueta Pequena'
      OnClick = ConfigurarEtiquetaPequena1Click
    end
  end
  object QEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  NOME,'
      '  CGC'
      'from TMEMP')
    SQLConnection = DmBanco.BancoDados
    Left = 264
    Top = 56
    object QEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QEmpresaCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
  end
  object RelGrande: TppReport
    AutoStop = False
    DataPipeline = dbDados
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'HP Deskjet F4400 series'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 45000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\Projetos\Grazziotin\EtiquetaGrande.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
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
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 344
    Top = 152
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbDados'
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 43000
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Empresa'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 4498
        mmLeft = 1852
        mmTop = 3704
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Venc. Teste hidrost'#225'tico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 26458
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Manuten'#231#227'o Nivel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 30956
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'VenctoCarga'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 4498
        mmLeft = 1852
        mmTop = 21960
        mmWidth = 47361
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'VenctoTeste'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 4498
        mmLeft = 34131
        mmTop = 26723
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CodNivel'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 4498
        mmLeft = 27252
        mmTop = 30956
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'Cli_Codigo_Nome'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 12435
        mmLeft = 1852
        mmTop = 8467
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clBlack
        DataField = 'Serie'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 9144
        mmLeft = 53711
        mmTop = 23283
        mmWidth = 14478
        BandType = 4
        LayerName = Foreground1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        CharWrap = False
        DataField = 'Mensagem'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 7938
        mmLeft = 1852
        mmTop = 35190
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Nro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 80169
        mmTop = 25400
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NumeroLocal'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbDados'
        mmHeight = 4498
        mmLeft = 86784
        mmTop = 25400
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground1
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
  object DesGrande: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = RelGrande
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 408
    Top = 152
  end
end

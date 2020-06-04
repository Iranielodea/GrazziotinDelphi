object frOrdem: TfrOrdem
  Left = 254
  Top = 187
  Caption = 'frOrdem'
  ClientHeight = 286
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Qordem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datafin'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' O.DATAORDEM,'
      ' P.NOME,'
      ' O.CODPESSOA,'
      ' I.NUMERO ,'
      ' I.NUMORDEM,'
      ' I.CODMARCA,'
      ' I.CAPACIDADE,'
      ' EXTRACT(YEAR FROM I.ANOFAB) AS ANO,'
      ' I.SERIE ,'
      ' I.PRESTRABALHO,'
      ' I.PRESENSAIO ,'
      ' I.PESOVAZIO ,'
      ' I.PESOCHEIO ,'
      ' I.VOLUME ,'
      ' I.CAPACMAXIMA,'
      ' I.DVM ,'
      ' I.DVB ,'
      ' I.CODRESULTADO,'
      ' I.CODNIVEL ,'
      ' I.CODAGENTE ,'
      ' I.ULTIMOSELO,'
      ' I.LOTE,'
      ' I.OUTROSELO,'
      ' I.NUMSELO,'
      ' I.CODRESP,'
      ' I.PESO,'
      ' I.PERCENTUAL,'
      ' I.TIPO,'
      ' I.CODCAPACIDADE,'
      ' M.DESCMARCA'
      'FROM TIORDEM I'
      ' inner join Tordem  O on I.NUMORDEM = O.NUMORDEM'
      ' inner join TPESSOA P on O.CODPESSOA = P.CODPESSOA'
      ' left join TMARCA M on I.CODMARCA = M.CODMARCA'
      ' where O.DATAORDEM between :dataini and :datafin'
      ' and I.NUMSELO > 0'
      '')
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 16
    object QordemDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object QordemNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object QordemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object QordemNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object QordemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object QordemCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object QordemCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object QordemANO: TSmallintField
      FieldName = 'ANO'
    end
    object QordemSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object QordemPRESTRABALHO: TStringField
      FieldName = 'PRESTRABALHO'
      Size = 10
    end
    object QordemPRESENSAIO: TStringField
      FieldName = 'PRESENSAIO'
      Size = 10
    end
    object QordemPESOVAZIO: TStringField
      FieldName = 'PESOVAZIO'
      Size = 10
    end
    object QordemPESOCHEIO: TStringField
      FieldName = 'PESOCHEIO'
      Size = 10
    end
    object QordemVOLUME: TStringField
      FieldName = 'VOLUME'
      Size = 10
    end
    object QordemCAPACMAXIMA: TStringField
      FieldName = 'CAPACMAXIMA'
      Size = 10
    end
    object QordemDVM: TStringField
      FieldName = 'DVM'
      Size = 10
    end
    object QordemDVB: TStringField
      FieldName = 'DVB'
      Size = 10
    end
    object QordemCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
    end
    object QordemCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
    end
    object QordemCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object QordemULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object QordemLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object QordemOUTROSELO: TFloatField
      FieldName = 'OUTROSELO'
    end
    object QordemNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object QordemCODRESP: TStringField
      FieldName = 'CODRESP'
      Size = 3
    end
    object QordemPESO: TFloatField
      FieldName = 'PESO'
    end
    object QordemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QordemDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object QordemCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
    end
    object QordemPERCENTUAL: TStringField
      FieldName = 'PERCENTUAL'
      Size = 10
    end
  end
  object dspOrdem: TDataSetProvider
    DataSet = Qordem
    Left = 80
    Top = 16
  end
  object dsOrdem: TDataSource
    DataSet = Ordem
    Left = 184
    Top = 16
  end
  object Ordem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdem'
    Left = 136
    Top = 16
    object OrdemDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object OrdemNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object OrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object OrdemNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object OrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object OrdemCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object OrdemCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object OrdemANO: TSmallintField
      FieldName = 'ANO'
    end
    object OrdemSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object OrdemPRESTRABALHO: TStringField
      FieldName = 'PRESTRABALHO'
      Size = 10
    end
    object OrdemPRESENSAIO: TStringField
      FieldName = 'PRESENSAIO'
      Size = 10
    end
    object OrdemPESOVAZIO: TStringField
      FieldName = 'PESOVAZIO'
      Size = 10
    end
    object OrdemPESOCHEIO: TStringField
      FieldName = 'PESOCHEIO'
      Size = 10
    end
    object OrdemVOLUME: TStringField
      FieldName = 'VOLUME'
      Size = 10
    end
    object OrdemCAPACMAXIMA: TStringField
      FieldName = 'CAPACMAXIMA'
      Size = 10
    end
    object OrdemDVM: TStringField
      FieldName = 'DVM'
      Size = 10
    end
    object OrdemDVB: TStringField
      FieldName = 'DVB'
      Size = 10
    end
    object OrdemCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
    end
    object OrdemCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
    end
    object OrdemCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object OrdemULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object OrdemLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object OrdemOUTROSELO: TFloatField
      FieldName = 'OUTROSELO'
    end
    object OrdemNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object OrdemCODRESP: TStringField
      FieldName = 'CODRESP'
      Size = 3
    end
    object OrdemPESO: TFloatField
      FieldName = 'PESO'
    end
    object OrdemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object OrdemDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object OrdemCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
    end
    object OrdemC_QTDETIPO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_QTDETIPO'
    end
    object OrdemPERCENTUAL: TStringField
      FieldName = 'PERCENTUAL'
      Size = 10
    end
  end
  object RelOrdem: TppReport
    AutoStop = False
    DataPipeline = dbOrdem
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
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
    PDFSettings.EmbedFontOptions = []
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
    Left = 304
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Nro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 24606
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Capac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 8731
        mmTop = 24606
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Fabr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18521
        mmTop = 24606
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54769
        mmTop = 24606
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Press'#227'o de Trabalho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 65881
        mmTop = 21431
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Press'#227'o de Ensaio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 80963
        mmTop = 21431
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Tara Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6519
        mmLeft = 97631
        mmTop = 21167
        mmWidth = 6477
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Peso Cheio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 105569
        mmTop = 21167
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 24606
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Cap. M'#225'xima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 127794
        mmTop = 20902
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Deform. Vol.Mom.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 138907
        mmTop = 21167
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Deform. Vol.Perm.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 150813
        mmTop = 21167
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Resul'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 24342
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'Nivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 24342
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Agente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 187855
        mmTop = 24342
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Resp.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197644
        mmTop = 20373
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Execu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197644
        mmTop = 24342
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 27781
        mmWidth = 284428
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Lote P'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 211667
        mmTop = 24342
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Selo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 225955
        mmTop = 24342
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 249238
        mmTop = 25135
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3969
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 259557
        mmTop = 0
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Relat'#243'rio de Ordens de Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 80169
        mmTop = 0
        mmWidth = 119592
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 246857
        mmTop = 0
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object lblData: TppLabel
        UserName = 'lblData'
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 80169
        mmTop = 4763
        mmWidth = 119856
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 24606
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 268288
        mmTop = 25135
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'Numero'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'Capacidade'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'Serie'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 53975
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'PresTrabalho'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'PresEnsaio'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 82286
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'PesoVazio'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 94986
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'PesoCheio'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 106098
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'Volume'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CapacMaxima'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 128323
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'Dvm'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 138642
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'Dvb'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 152136
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CodNivel'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 179917
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CodAgente'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 187590
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CodResultado'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'Ano'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'CodResp'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'Lote'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'NumSelo'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 228071
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'TIPO'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 251355
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DESCMARCA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'PESO'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 268288
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'PERCENTUAL'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 164042
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 1323
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CODPESSOA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 19050
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object Memo: TppMemo
        UserName = 'Memo'
        Caption = 'Memo'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 24871
        mmLeft = 48683
        mmTop = 1323
        mmWidth = 108215
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'PESO'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 260880
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DataOrdem'
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
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 2381
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'DataOrdem'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3175
          mmLeft = 7938
          mmTop = 2381
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 6350
          mmWidth = 284428
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Total Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 1323
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'DataOrdem'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbOrdem'
          mmHeight = 3175
          mmLeft = 19050
          mmTop = 2117
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'NumOrdem'
      DataPipeline = dbOrdem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbOrdem'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'N'#186'Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 2381
          mmWidth = 11377
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'NumOrdem'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3175
          mmLeft = 13494
          mmTop = 2381
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'CodPessoa'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3175
          mmLeft = 37306
          mmTop = 2381
          mmWidth = 8731
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'NOME'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 3175
          mmLeft = 46831
          mmTop = 2381
          mmWidth = 65088
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 27781
          mmTop = 2381
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'DataOrdem'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbOrdem'
          mmHeight = 3175
          mmLeft = 19050
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 7144
          mmWidth = 284428
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Total Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 1323
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
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
  object dbOrdem: TppDBPipeline
    DataSource = dsOrdem
    UserName = 'dbOrdem'
    Left = 240
    Top = 16
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
      ' I.TIPO,'
      ' I.CODAGENTE,'
      ' I.CAPACIDADE,'
      ' A.DESCAGENTE,'
      ' count(CAPACIDADE) AS QTDE,'
      ' sum(I.PESO) as PESO'
      'from TIORDEM I'
      'inner join TORDEM O on I.NUMORDEM = O.NUMORDEM'
      'left join TAGENTE A on I.CODAGENTE = A.CODAGENTE'
      'where O.DATAORDEM between :DATAINI and :DATAFIN'
      'and I.NUMSELO > 0')
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 64
  end
  object dspResumo: TDataSetProvider
    DataSet = Qresumo
    Left = 80
    Top = 64
  end
  object Resumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResumo'
    Left = 136
    Top = 64
  end
  object dsResumo: TDataSource
    DataSet = Resumo
    Left = 184
    Top = 64
  end
  object dbResumo: TppDBPipeline
    DataSource = dsResumo
    UserName = 'dbResumo'
    Left = 240
    Top = 64
  end
  object RelResumo: TppReport
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
    OnPreviewFormCreate = RelOrdemPreviewFormCreate
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
    Left = 304
    Top = 64
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbResumo'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24871
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Resumo de Extintores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 0
        mmWidth = 101865
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4233
        mmWidth = 13494
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 162984
        mmTop = 0
        mmWidth = 21696
        BandType = 0
      end
      object lblData1: TppLabel
        UserName = 'lblData1'
        AutoSize = False
        Caption = 'lblData1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 4233
        mmWidth = 101865
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Agente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 21167
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Peso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 84667
        mmTop = 21167
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 105834
        mmTop = 21167
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Selo Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 8467
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Selo Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 116417
        mmTop = 8467
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'O.S. Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 50800
        mmTop = 12700
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'S.O.Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 116417
        mmTop = 12700
        mmWidth = 14817
        BandType = 0
      end
      object lblSeloIni: TppLabel
        UserName = 'lblSeloIni'
        Caption = 'lblSeloIni'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 8467
        mmWidth = 14288
        BandType = 0
      end
      object lblSeloFin: TppLabel
        UserName = 'lblSeloFin'
        Caption = 'lblSeloFin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 133350
        mmTop = 8467
        mmWidth = 15346
        BandType = 0
      end
      object lblServIni: TppLabel
        UserName = 'lblServIni'
        Caption = 'lblServIni'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 12700
        mmWidth = 14552
        BandType = 0
      end
      object lblServFin: TppLabel
        UserName = 'lblServFin'
        Caption = 'lblServFin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 133350
        mmTop = 12700
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Qtde Selos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 6350
        mmWidth = 17463
        BandType = 0
      end
      object lblQtdeSelos: TppLabel
        UserName = 'lblQtdeSelos'
        Caption = 'lblQtdeSelos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 160867
        mmTop = 10583
        mmWidth = 19844
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CODAGENTE'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'PESO'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'QTDE'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3969
        mmLeft = 98425
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'DESCAGENTE'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 0
        mmWidth = 44979
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'QTDE'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3969
        mmLeft = 99219
        mmTop = 1852
        mmWidth = 25929
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'PESO'
        DataPipeline = dbResumo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumo'
        mmHeight = 3969
        mmLeft = 69586
        mmTop = 2117
        mmWidth = 23813
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Total Geral ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 1323
        mmWidth = 25929
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'TIPO'
      DataPipeline = dbResumo
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbResumo'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 80433
          mmTop = 794
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'TIPO'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 88900
          mmTop = 794
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2381
          mmLeft = 0
          mmTop = 2910
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 0
          mmWidth = 196321
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel38: TppLabel
          UserName = 'Label38'
          Caption = 'Total Tipo ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 265
          mmWidth = 24342
          BandType = 5
          GroupNo = 0
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          DataField = 'TIPO'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 38100
          mmTop = 265
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'PESO'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 69586
          mmTop = 529
          mmWidth = 23813
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'QTDE'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 99219
          mmTop = 265
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CAPACIDADE'
      DataPipeline = dbResumo
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbResumo'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Capacidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 18521
          BandType = 3
          GroupNo = 1
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'CAPACIDADE'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 21167
          mmTop = 0
          mmWidth = 19315
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line7'
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 3175
          mmWidth = 197380
          BandType = 5
          GroupNo = 1
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          Caption = 'Total Capacidade ==>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 0
          mmTop = 529
          mmWidth = 36513
          BandType = 5
          GroupNo = 1
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          DataField = 'CAPACIDADE'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 38100
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'PESO'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 69586
          mmTop = 529
          mmWidth = 23813
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'QTDE'
          DataPipeline = dbResumo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbResumo'
          mmHeight = 3969
          mmLeft = 99219
          mmTop = 529
          mmWidth = 25929
          BandType = 5
          GroupNo = 1
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
  object QIni: TSQLQuery
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
      ' min(I.NUMORDEM) as NUMORDEM,'
      ' min(I.NUMSELO) AS NUMSELO,'
      ' max(I.NUMORDEM) as MAX_NUMORDEM,'
      ' max(I.NUMSELO) as MAX_NUMSELO'
      'from TIORDEM I, TORDEM O'
      'where I.NUMORDEM = O.NUMORDEM'
      'and O.dataordem BETWEEN :DATAINI AND :DATAFIN'
      'and I.NUMSELO > 0')
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 112
    object QIniNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object QIniNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object QIniMAX_NUMORDEM: TFloatField
      FieldName = 'MAX_NUMORDEM'
    end
    object QIniMAX_NUMSELO: TFloatField
      FieldName = 'MAX_NUMSELO'
    end
  end
  object QtdeSelos: TSQLQuery
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
      'count(distinct I.NUMSELO) AS QTDE'
      'from TIORDEM I, TORDEM O'
      'where I.NUMORDEM = O.NUMORDEM'
      'and O.dataordem BETWEEN :DATAINI AND :DATAFIN'
      'and I.NUMSELO > 0')
    SQLConnection = DmBanco.BancoDados
    Left = 80
    Top = 112
    object QtdeSelosQTDE: TIntegerField
      FieldName = 'QTDE'
      Required = True
    end
  end
  object Rel3: TppReport
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
    Left = 304
    Top = 112
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'DATAORDEM'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'NUMORDEM'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'NUMSELO'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 0
        mmWidth = 31221
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'NUMORDEM'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbOrdem'
        mmHeight = 3969
        mmLeft = 42333
        mmTop = 1588
        mmWidth = 31485
        BandType = 7
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
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 168
    Top = 168
  end
  object RelOrdem1: TppReport
    AutoStop = False
    DataPipeline = dbOrdem
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
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
    Left = 376
    Top = 24
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbOrdem'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = 'Relat'#243'rio de Ordens de Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 80169
        mmTop = 0
        mmWidth = 119592
        BandType = 0
        LayerName = Foreground3
      end
      object lblData01: TppLabel
        UserName = 'lblData2'
        AutoSize = False
        Caption = 'lblData'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 80169
        mmTop = 4763
        mmWidth = 119856
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3969
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 259557
        mmTop = 0
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 246857
        mmTop = 0
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Nro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 24606
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Capac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 8731
        mmTop = 24606
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Fabr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18521
        mmTop = 24606
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54769
        mmTop = 24606
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Press'#227'o de Trabalho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 65881
        mmTop = 21431
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel53: TppLabel
        UserName = 'Label201'
        Caption = 'Press'#227'o de Ensaio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 80963
        mmTop = 21431
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Tara Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6519
        mmLeft = 97631
        mmTop = 21167
        mmWidth = 6477
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Peso Cheio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 105569
        mmTop = 21167
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 24606
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Cap. M'#225'xima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 127794
        mmTop = 20902
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Deform. Vol.Mom.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 138907
        mmTop = 21167
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Deform. Vol.Perm.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 150813
        mmTop = 21167
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'Resul'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 24342
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'Nivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 24342
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'Agente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 187855
        mmTop = 24342
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'Resp.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197644
        mmTop = 20373
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'Execu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 197644
        mmTop = 24342
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 27781
        mmWidth = 284428
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel65: TppLabel
        UserName = 'Label301'
        Caption = 'Lote P'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 211667
        mmTop = 24342
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = 'Selo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 225955
        mmTop = 24342
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 249238
        mmTop = 25135
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 24606
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 165100
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel70: TppLabel
        UserName = 'Label101'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 268288
        mmTop = 25135
        mmWidth = 6085
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
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'Numero'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'Capacidade'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'Ano'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'DESCMARCA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 29633
        mmTop = 0
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'Serie'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 53975
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'PresTrabalho'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'PresEnsaio'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 82286
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'PesoVazio'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 94986
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'PesoCheio'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 106098
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'Volume'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'CapacMaxima'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 128323
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText53: TppDBText
        UserName = 'DBText201'
        DataField = 'Dvm'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 138642
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'Dvb'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 152136
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        DataField = 'PERCENTUAL'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 164042
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'CodResultado'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'CodNivel'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 179917
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        DataField = 'CodAgente'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 187590
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'CodResp'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        DataField = 'Lote'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        DataField = 'NumSelo'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 228071
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        DataField = 'TIPO'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 251355
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        DataField = 'PESO'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbOrdem'
        mmHeight = 3175
        mmLeft = 268288
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 1852
        mmWidth = 15611
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'CODPESSOA'
        DataPipeline = dbOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbOrdem'
        mmHeight = 4498
        mmLeft = 18256
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground3
      end
      object Memo01: TppMemo
        UserName = 'Memo01'
        Caption = 'Memo01'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 38629
        mmLeft = 50536
        mmTop = 0
        mmWidth = 114565
        BandType = 7
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'DATAORDEM'
      DataPipeline = dbOrdem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbOrdem'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 2117
          mmTop = 2117
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          DataField = 'DATAORDEM'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 4498
          mmLeft = 10583
          mmTop = 1323
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLabel74: TppLabel
          UserName = 'Label74'
          Caption = 'Total Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 2117
          mmTop = 1852
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'CODPESSOA'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbOrdem'
          mmHeight = 4498
          mmLeft = 18256
          mmTop = 1852
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'NUMORDEM'
      DataPipeline = dbOrdem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbOrdem'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 10848
        mmPrintPosition = 0
        object ppLabel71: TppLabel
          UserName = 'Label71'
          Caption = 'N'#186' Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 529
          mmTop = 2646
          mmWidth = 12436
          BandType = 3
          GroupNo = 1
          LayerName = Foreground3
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 40217
          mmTop = 2646
          mmWidth = 8466
          BandType = 3
          GroupNo = 1
          LayerName = Foreground3
        end
        object ppDBText39: TppDBText
          UserName = 'DBText39'
          DataField = 'NUMORDEM'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 4498
          mmLeft = 15081
          mmTop = 2646
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground3
        end
        object ppDBText40: TppDBText
          UserName = 'DBText40'
          DataField = 'CODPESSOA'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 4498
          mmLeft = 50536
          mmTop = 2646
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
          LayerName = Foreground3
        end
        object ppDBText41: TppDBText
          UserName = 'DBText41'
          DataField = 'NOME'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'dbOrdem'
          mmHeight = 4498
          mmLeft = 65881
          mmTop = 2646
          mmWidth = 87313
          BandType = 3
          GroupNo = 1
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 6085
          mmWidth = 284428
          BandType = 5
          GroupNo = 1
          LayerName = Foreground3
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          Caption = 'Total Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1323
          mmWidth = 15346
          BandType = 5
          GroupNo = 1
          LayerName = Foreground3
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'CODPESSOA'
          DataPipeline = dbOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbOrdem'
          mmHeight = 4498
          mmLeft = 17198
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
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

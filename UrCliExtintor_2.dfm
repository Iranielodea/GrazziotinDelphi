object frCliExtintor_2: TfrCliExtintor_2
  Left = 149
  Top = 122
  Caption = 'frCliExtintor_2'
  ClientHeight = 222
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dspServico: TDataSetProvider
    DataSet = QServico
    Left = 48
    Top = 16
  end
  object Servico: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SITUACAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspServico'
    OnCalcFields = ServicoCalcFields
    Left = 80
    Top = 16
    object ServicoNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object ServicoCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object ServicoCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object ServicoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 7
    end
    object ServicoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object ServicoSELO: TFloatField
      FieldName = 'SELO'
    end
    object ServicoULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object ServicoCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object ServicoCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      Size = 6
    end
    object ServicoCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
    end
    object ServicoDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object ServicoCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object ServicoDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 40
    end
    object ServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object ServicoRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object ServicoDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object ServicoDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object ServicoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object ServicoFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object ServicoENDERECO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ENDERECO'
      Size = 60
    end
    object ServicoDATA_EMISSAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DATA_EMISSAO'
      Size = 10
    end
    object ServicoNUM_RELATORIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NUM_RELATORIO'
      Size = 15
    end
    object ServicoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object ServicoVENCTOCARGA: TSQLTimeStampField
      FieldName = 'VENCTOCARGA'
    end
    object ServicoVENCTOTESTE: TSmallintField
      FieldName = 'VENCTOTESTE'
    end
    object ServicoCVENCTO_CARGA: TStringField
      FieldKind = fkCalculated
      FieldName = 'CVENCTO_CARGA'
      Size = 7
      Calculated = True
    end
    object ServicoLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Size = 30
    end
    object ServicoC_DESCMARCA: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_DESCMARCA'
      Size = 60
      Calculated = True
    end
    object ServicoDATA_INSPECAO: TSQLTimeStampField
      FieldName = 'DATA_INSPECAO'
    end
    object ServicoNUM_CASA: TStringField
      FieldName = 'NUM_CASA'
      Size = 6
    end
    object ServicoCAPACID_EXTINTORA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CAPACID_EXTINTORA'
      Size = 30
    end
    object ServicoNUMINMETRO: TStringField
      FieldName = 'NUMINMETRO'
      Size = 120
    end
  end
  object dsServico: TDataSource
    DataSet = Servico
    Left = 112
    Top = 16
  end
  object RelServico: TppReport
    AutoStop = False
    DataPipeline = dbServico
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
    Template.FileName = 'C:\Projetos\Grazziotin\ClienteExtintor_Paisagem.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OnPreviewFormCreate = RelServicoPreviewFormCreate
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
    Left = 184
    Top = 16
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbServico'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 99748
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Nro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 95250
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Nro Cilindro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7408
        mmTop = 95250
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 23813
        mmTop = 95250
        mmWidth = 5419
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Vencto Teste'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 74877
        mmTop = 95250
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Vencto Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 93134
        mmTop = 95250
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 113506
        mmTop = 95250
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 95250
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Selo Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 205052
        mmTop = 95250
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 97367
        mmWidth = 219075
        BandType = 0
        LayerName = Foreground
      end
      object Linha1: TppLabel
        UserName = 'Linha1'
        Caption = 'Linha1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 14023
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object Linha2: TppLabel
        UserName = 'Linha2'
        Caption = 'Linha2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 17992
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'lblcnpj1'
        Caption = 
          'Equipamentos de combate a inc'#234'ndio, Recargas, Retestes, Laudo de' +
          ' Vistoria e Assist'#234'ncia T'#233'cnica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 39688
        mmWidth = 166423
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Ilmo(s).Sr(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 53181
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 57150
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 61119
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 138377
        mmTop = 53181
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 108744
        mmTop = 57150
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 108744
        mmTop = 61119
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 61119
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label11'
        Caption = 'Prezado(s) Sr(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 69056
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label12'
        Caption = 'Revis'#227'o dos Extintores de Inc'#234'ndio - Relat'#243'rio n'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 73819
        mmWidth = 82815
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Data de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 82550
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 
          'procedemos a revis'#227'o individual dos extintores de inc'#234'ndio de pr' +
          'opriedade de V. Sa. cujas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 82550
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Condi'#231#245'es e funcionamento seguem descritas abaixo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 86519
        mmWidth = 91811
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CODPESSOA'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 52917
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'NOME'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 52917
        mmWidth = 100542
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ENDERECO'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 57150
        mmWidth = 83608
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'DESCCIDADE'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 61383
        mmWidth = 83608
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CONTATO'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 52917
        mmWidth = 38629
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'DESCBAIRRO'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 124884
        mmTop = 57150
        mmWidth = 68263
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'UF'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 124884
        mmTop = 61383
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'FONE1'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 146050
        mmTop = 61383
        mmWidth = 46831
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'DATA_EMISSAO'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 82550
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'NUM_RELATORIO'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4233
        mmLeft = 84667
        mmTop = 73819
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'GRAZZIOTIN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 22
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 10848
        mmLeft = 0
        mmTop = 2117
        mmWidth = 71702
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'COM'#201'RCIO DE EXTINTORES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 265
        mmTop = 12700
        mmWidth = 87842
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 19315
        mmWidth = 252942
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        UserName = 'Label4'
        Caption = 'RUA DR MONTAURY 1378  CEP 95270-000  FLORES DA CUNHA RS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23813
        mmWidth = 112184
        BandType = 0
        LayerName = Foreground
      end
      object lblDadosEmpresa2: TppLabel
        UserName = 'Label13'
        Caption = 
          'CNPJ: 94.287.117/0001-41    Insc.Estadual: 048/0016194   FONE/FA' +
          'X: 54 3292-2401'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 30427
        mmWidth = 132292
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        UserName = 'Label26'
        Caption = 'Capacidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44715
        mmTop = 92075
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        UserName = 'Label27'
        Caption = 'Extintora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 46302
        mmTop = 95250
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'NUMINMETRO'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 44450
        mmWidth = 101865
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'Numero'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 213519
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'Serie'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 9260
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Capacidade'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 25135
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 24342
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'VenctoTeste'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 67204
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 82021
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CVENCTO_CARGA'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 82550
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 99484
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'C_DESCMARCA'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 0
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 133086
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'DescLocal'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 133879
        mmTop = 0
        mmWidth = 60061
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 194734
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Selo'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 196321
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 65088
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CAPACID_EXTINTORA'
        DataPipeline = dbServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbServico'
        mmHeight = 3175
        mmLeft = 41275
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object lblObs: TppLabel
        UserName = 'lblNormas1'
        AutoSize = False
        Caption = 'lblObs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 13494
        mmLeft = 0
        mmTop = 794
        mmWidth = 219075
        BandType = 8
        LayerName = Foreground
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 103717
        mmTop = 16669
        mmWidth = 78846
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'GRAZZIOTIN COM'#201'RCIO DE EXTINTORES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 110067
        mmTop = 18521
        mmWidth = 67204
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 219075
        BandType = 7
        LayerName = Foreground
      end
      object lblNormas: TppLabel
        UserName = 'lblNormas'
        AutoSize = False
        Caption = 'lblNormas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 13758
        mmLeft = 0
        mmTop = 1588
        mmWidth = 219075
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
  object Qnormas: TSQLDataSet
    CommandText = 'select DESCRICAO from TOBS where CODIGO = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 48
    object QnormasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object Qobs: TSQLDataSet
    CommandText = 'select DESCRICAO from TOBS where CODIGO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 48
    Top = 48
    object QobsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object dgCliExt: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = RelServico
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 224
    Top = 16
  end
  object QspBuscarCapacidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'capacidade'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codmarca'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  cap_extintora'
      
        'FROM sp_capacidade_buscar(:capacidade, :codmarca) as capacid_ext' +
        'intora')
    SQLConnection = DmBanco.BancoDados
    Left = 200
    Top = 64
    object QspBuscarCapacidadeCAP_EXTINTORA: TStringField
      FieldName = 'CAP_EXTINTORA'
      Size = 30
    end
  end
  object QServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SITUACAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' TCLIEXT.NUMERO,'
      ' TCLIEXT.CODPESSOA,'
      ' TCLIEXT.CODMARCA,'
      ' TCLIEXT.REFERENCIA,'
      ' TCLIEXT.SERIE,'
      ' TCLIEXT.SELO,'
      ' TCLIEXT.ULTIMOSELO,'
      ' TCLIEXT.CAPACIDADE,'
      ' TCLIEXT.LOTERESUMIDO,'
      ' extract(year from TCLIEXT.VENCIMENTO) AS VENCTOTESTE,'
      ' TCLIEXT.VENCTOCARGA,'
      ' TCLIEXT.CONSERVACAO,'
      ' TCLIEXT.CODLOCAL,'
      ' TCLIEXT.DATA_INSPECAO,'
      ' TMARCA.DESCMARCA,'
      ' TLOCAL.DESCLOCAL,'
      ' TPESSOA.NOME,'
      ' TPESSOA.RUA,'
      ' TPESSOA.NUMERO AS NUM_CASA,'
      ' TPESSOA.COMPLEMENTO,'
      ' TBAIRRO.DESCBAIRRO,'
      ' TCIDADE.DESCCIDADE,'
      ' TCIDADE.UF,'
      ' TPESSOA.CONTATO,'
      ' (SELECT FIRST 1 FRANQUEADA FROM TMEMP) AS NUMINMETRO,'
      ' TPESSOA.FONE1'
      ''
      
        '-- (SELECT cap_extintora FROM sp_capacidade_buscar(tcliext.capac' +
        'idade, tcliext.codmarca)) as capacid_extintora'
      ''
      ' FROM TCLIEXT'
      ' LEFT JOIN TLOCAL ON TCLIEXT.CODLOCAL = TLOCAL.CODLOCAL'
      ' LEFT JOIN TMARCA ON TCLIEXT.CODMARCA = TMARCA.CODMARCA'
      ' LEFT JOIN TPESSOA ON TCLIEXT.CODPESSOA = TPESSOA.CODPESSOA'
      ' LEFT JOIN TCIDADE ON TPESSOA.CODCIDADE = TCIDADE.CODCIDADE'
      ' LEFT JOIN TBAIRRO ON TPESSOA.CODBAIRRO = TBAIRRO.CODBAIRRO'
      ''
      ' WHERE TCLIEXT.CODPESSOA = :CODPESSOA'
      ' AND TCLIEXT.SITUACAO <> :SITUACAO'
      ' ORDER BY TCLIEXT.NUMERO'
      '')
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 16
  end
  object dbServico: TppDBPipeline
    DataSource = dsServico
    UserName = 'dbServico'
    Left = 152
    Top = 16
    object pfldServicoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object pfldServicoppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODPESSOA'
      FieldName = 'CODPESSOA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object pfldServicoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODMARCA'
      FieldName = 'CODMARCA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object pfldServicoppField4: TppField
      FieldAlias = 'REFERENCIA'
      FieldName = 'REFERENCIA'
      FieldLength = 7
      DisplayWidth = 7
      Position = 3
    end
    object pfldServicoppField5: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object pfldServicoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'SELO'
      FieldName = 'SELO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object pfldServicoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ULTIMOSELO'
      FieldName = 'ULTIMOSELO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pfldServicoppField8: TppField
      FieldAlias = 'CAPACIDADE'
      FieldName = 'CAPACIDADE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object pfldServicoppField9: TppField
      FieldAlias = 'CONSERVACAO'
      FieldName = 'CONSERVACAO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 8
    end
    object pfldServicoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODLOCAL'
      FieldName = 'CODLOCAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object pfldServicoppField11: TppField
      FieldAlias = 'DESCMARCA'
      FieldName = 'DESCMARCA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object pfldServicoppField12: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object pfldServicoppField13: TppField
      FieldAlias = 'DESCLOCAL'
      FieldName = 'DESCLOCAL'
      FieldLength = 40
      DisplayWidth = 40
      Position = 12
    end
    object pfldServicoppField14: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 70
      DisplayWidth = 70
      Position = 13
    end
    object pfldServicoppField15: TppField
      FieldAlias = 'RUA'
      FieldName = 'RUA'
      FieldLength = 40
      DisplayWidth = 40
      Position = 14
    end
    object pfldServicoppField16: TppField
      FieldAlias = 'DESCBAIRRO'
      FieldName = 'DESCBAIRRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object pfldServicoppField17: TppField
      FieldAlias = 'DESCCIDADE'
      FieldName = 'DESCCIDADE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object pfldServicoppField18: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object pfldServicoppField19: TppField
      FieldAlias = 'FONE1'
      FieldName = 'FONE1'
      FieldLength = 15
      DisplayWidth = 15
      Position = 18
    end
    object pfldServicoppField20: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object pfldServicoppField21: TppField
      FieldAlias = 'DATA_EMISSAO'
      FieldName = 'DATA_EMISSAO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 20
    end
    object pfldServicoppField22: TppField
      FieldAlias = 'NUM_RELATORIO'
      FieldName = 'NUM_RELATORIO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object pfldServicoppField23: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object pfldServicoppField24: TppField
      FieldAlias = 'VENCTOCARGA'
      FieldName = 'VENCTOCARGA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 23
    end
    object pfldServicoppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCTOTESTE'
      FieldName = 'VENCTOTESTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pfldServicoppField26: TppField
      FieldAlias = 'CVENCTO_CARGA'
      FieldName = 'CVENCTO_CARGA'
      FieldLength = 7
      DisplayWidth = 7
      Position = 25
    end
    object pfldServicoppField27: TppField
      FieldAlias = 'LOTERESUMIDO'
      FieldName = 'LOTERESUMIDO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 26
    end
    object pfldServicoppField28: TppField
      FieldAlias = 'C_DESCMARCA'
      FieldName = 'C_DESCMARCA'
      FieldLength = 60
      DisplayWidth = 60
      Position = 27
    end
    object pfldServicoppField29: TppField
      FieldAlias = 'DATA_INSPECAO'
      FieldName = 'DATA_INSPECAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 28
    end
    object pfldServicoppField30: TppField
      FieldAlias = 'NUM_CASA'
      FieldName = 'NUM_CASA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 29
    end
    object pfldServicoppField31: TppField
      FieldAlias = 'CAPACID_EXTINTORA'
      FieldName = 'CAPACID_EXTINTORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 30
    end
    object pfldServicoppField32: TppField
      FieldAlias = 'NUMINMETRO'
      FieldName = 'NUMINMETRO'
      FieldLength = 120
      DisplayWidth = 120
      Position = 31
    end
  end
  object dbTeste: TppDBPipeline
    DataSource = dsServico
    UserName = 'dbTeste'
    Left = 16
    Top = 144
  end
  object RelTeste: TppReport
    AutoStop = False
    DataPipeline = dbTeste
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
    Left = 48
    Top = 144
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbTeste'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 100277
      mmPrintPosition = 0
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'GRAZZIOTIN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 22
        Font.Style = []
        Transparent = True
        mmHeight = 10848
        mmLeft = 529
        mmTop = 0
        mmWidth = 53711
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'COM'#201'RCIO DE EXTINTORES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 6086
        mmLeft = 529
        mmTop = 11377
        mmWidth = 79904
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 529
        mmTop = 17198
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'RUA DR MONTAURY 1378  CEP 95270-000  FLORES DA CUNHA RS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 22754
        mmWidth = 108215
        BandType = 0
        LayerName = Foreground1
      end
      object lblDadosEmpresa1: TppLabel
        UserName = 'lblDadosEmpresa1'
        Caption = 
          'CNPJ: 94.287.117/0001-41    Insc.Estadual: 0003671/2013   FONE/F' +
          'AX: 54 3292-2401'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 29898
        mmWidth = 134144
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 
          'Equipamentos de combate a inc'#234'ndio, Recargas, Retestes, Laudo de' +
          ' Vistoria e Assist'#234'ncia T'#233'cnica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 40217
        mmWidth = 166159
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Ilmo(s).Sr(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4234
        mmLeft = 529
        mmTop = 51329
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 56356
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4234
        mmLeft = 529
        mmTop = 60854
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 138377
        mmTop = 51329
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 56356
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 61119
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 138377
        mmTop = 60854
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CONTATO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 154517
        mmTop = 51329
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'NOME'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 37306
        mmTop = 51329
        mmWidth = 99484
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'ENDERECO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 23283
        mmTop = 56356
        mmWidth = 89959
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'DESCCIDADE'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 23283
        mmTop = 60854
        mmWidth = 89959
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'DESCBAIRRO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 129117
        mmTop = 56356
        mmWidth = 65088
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'UF'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 129117
        mmTop = 61119
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'FONE1'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 149490
        mmTop = 60854
        mmWidth = 44715
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'CODPESSOA'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 23283
        mmTop = 51329
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Prezado(s) Sr(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 69056
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'Revis'#227'o dos Extintores de Inc'#234'ndio - Relat'#243'rio n'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 73819
        mmWidth = 82815
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Data de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 82550
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 
          'procedemos a revis'#227'o individual dos extintores de inc'#234'ndio de pr' +
          'opriedade de V. Sa. cujas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 82550
        mmWidth = 153194
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Condi'#231#245'es e funcionamento seguem descritas abaixo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 86519
        mmWidth = 91811
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'DATA_EMISSAO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 82550
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'NUM_RELATORIO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4233
        mmLeft = 84667
        mmTop = 73819
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Nro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 94192
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Nro Cilindro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 8731
        mmTop = 94192
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 28840
        mmTop = 94192
        mmWidth = 5291
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel54: TppLabel
        UserName = 'Label201'
        Caption = 'Vencto Teste'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37835
        mmTop = 94192
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Vencto Carga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 57415
        mmTop = 94192
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 77788
        mmTop = 94192
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 106892
        mmTop = 94192
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Selo Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169598
        mmTop = 95250
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 98161
        mmWidth = 194205
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'NUMINMETRO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 529
        mmTop = 44979
        mmWidth = 110861
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'NUMERO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 529
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'SERIE'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 8731
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CAPACIDADE'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 26194
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'VENCTOTESTE'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 39158
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'CVENCTO_CARGA'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 57415
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'C_DESCMARCA'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 77788
        mmTop = 0
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'DESCLOCAL'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 108215
        mmTop = 0
        mmWidth = 60061
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'SELO'
        DataPipeline = dbTeste
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbTeste'
        mmHeight = 4498
        mmLeft = 169598
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine18: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 106363
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 75671
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 55033
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine23: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 25664
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 8203
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 192088
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object lblObs2: TppLabel
        UserName = 'lblObs2'
        AutoSize = False
        Caption = 'lblObs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 13494
        mmLeft = 0
        mmTop = 0
        mmWidth = 185209
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'GRAZZIOTIN COM'#201'RCIO DE EXTINTORES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 110067
        mmTop = 18521
        mmWidth = 67204
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 103717
        mmTop = 16669
        mmWidth = 78846
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine28: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 194205
        BandType = 7
        LayerName = Foreground1
      end
      object lblNormas2: TppLabel
        UserName = 'lblNormas2'
        AutoSize = False
        Caption = 'lblNormas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 13758
        mmLeft = 0
        mmTop = 1588
        mmWidth = 185738
        BandType = 7
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
end

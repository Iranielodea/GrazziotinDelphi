object frCliExtintor_3: TfrCliExtintor_3
  Left = 0
  Top = 0
  Caption = 'frCliExtintor_3'
  ClientHeight = 172
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Qservico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'vNumOrdem'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vsituacao'
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
      ' TPESSOA.FONE1,'
      ' CAPACIDADE.capacid_extintora'
      ''
      ' FROM TCLIEXT'
      ' LEFT JOIN TLOCAL ON TCLIEXT.CODLOCAL = TLOCAL.CODLOCAL'
      ' LEFT JOIN TMARCA ON TCLIEXT.CODMARCA = TMARCA.CODMARCA'
      ' LEFT JOIN TPESSOA ON TCLIEXT.CODPESSOA = TPESSOA.CODPESSOA'
      ' LEFT JOIN TCIDADE ON TPESSOA.CODCIDADE = TCIDADE.CODCIDADE'
      ' LEFT JOIN TBAIRRO ON TPESSOA.CODBAIRRO = TBAIRRO.CODBAIRRO'
      
        ' LEFT JOIN CAPACIDADE ON TCLIEXT.codcapacidade = CAPACIDADE.codc' +
        'apacidade'
      ''
      ' WHERE TCLIEXT.CODPESSOA = :vNumOrdem'
      ' AND TCLIEXT.SITUACAO <> :vsituacao'
      ' ORDER BY TCLIEXT.NUMERO')
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 16
  end
  object dspServico: TDataSetProvider
    DataSet = Qservico
    Left = 80
    Top = 16
  end
  object Servico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'vNumOrdem'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vsituacao'
        ParamType = ptInput
      end>
    ProviderName = 'dspServico'
    OnCalcFields = ServicoCalcFields
    Left = 152
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
    object ServicoLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Size = 30
    end
    object ServicoVENCTOTESTE: TSmallintField
      FieldName = 'VENCTOTESTE'
    end
    object ServicoVENCTOCARGA: TSQLTimeStampField
      FieldName = 'VENCTOCARGA'
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
    object ServicoNUM_CASA: TStringField
      FieldName = 'NUM_CASA'
      Size = 6
    end
    object ServicoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
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
    object ServicoCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object ServicoFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object ServicoCAPACID_EXTINTORA: TStringField
      FieldName = 'CAPACID_EXTINTORA'
      Size = 30
    end
    object ServicoC_DESCMARCA: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_DESCMARCA'
      Size = 60
      Calculated = True
    end
    object ServicoENDERECO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ENDERECO'
      Size = 60
    end
    object ServicoNUM_RELATORIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NUM_RELATORIO'
      Size = 15
    end
    object ServicoCVENCTO_CARGA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CVENCTO_CARGA'
      Size = 10
    end
    object ServicoDATA_EMISSAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DATA_EMISSAO'
      Size = 10
    end
  end
  object dsServico: TDataSource
    DataSet = Servico
    Left = 208
    Top = 16
  end
  object dbServico: TppDBPipeline
    DataSource = dsServico
    UserName = 'dbServico'
    Left = 256
    Top = 16
  end
  object RelServico: TppReport
    AutoStop = False
    DataPipeline = dbServico
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
    AllowPrintToFile = True
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
    Left = 296
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
        mmLeft = 39423
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
        mmLeft = 57679
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
        mmLeft = 78052
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
        mmLeft = 107156
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
        mmLeft = 169598
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
        mmWidth = 192352
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
      object ppLabel4: TppLabel
        UserName = 'Label3'
        Caption = 'Credenciada no INMETRO C'#243'digo de Registro 109'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 44450
        mmWidth = 85725
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
        mmWidth = 197380
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
      object ppLabel27: TppLabel
        UserName = 'Label13'
        Caption = 
          'CGCMF 94.287.117/0001-41    CGCTE 048/0016194   FONE/FAX 54 3292' +
          '-2401'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 30427
        mmWidth = 126207
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
        mmLeft = 186796
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
        mmLeft = 40481
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
        mmLeft = 55298
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
        mmLeft = 55827
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
        mmLeft = 72761
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
        mmLeft = 73290
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
        mmLeft = 106363
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
        mmLeft = 107156
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
        mmLeft = 168011
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
        mmLeft = 169598
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 29104
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
        mmWidth = 185209
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
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 192352
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
        mmWidth = 185738
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
    Top = 72
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
    Top = 72
    object QobsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
end

object fROrdemServicoInspecao: TfROrdemServicoInspecao
  Left = 192
  Top = 114
  Caption = 'fROrdemServicoInspecao'
  ClientHeight = 246
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object dtOrdem: TSQLDataSet
    CommandText = 
      'Select'#13#10'O.Numordem,'#13#10'O.DataOrdem,'#13#10'O.CodPessoa,'#13#10'P.Nome,'#13#10'P.Rua,' +
      #13#10'P.CodBairro,'#13#10'P.CodCidade,'#13#10'P.Numero,'#13#10'P.Complemento,'#13#10'P.CGC,'#13 +
      #10'P.CPF,'#13#10'P.TIPOPESSOA,'#13#10'P.InscEstadual,'#13#10'P.Cep,'#13#10'C.DescCidade,'#13#10 +
      'C.Uf,'#13#10'B.DescBairro'#13#10' from TPESSOA P'#13#10' inner join TORDEM O on O.' +
      'CODPESSOA = P.CODPESSOA'#13#10' left join TBAIRRO B on P.CODBAIRRO = B' +
      '.CODBAIRRO'#13#10' left join TCIDADE C on P.CODCIDADE = C.CODCIDADE'#13#10' ' +
      'where O.NUMORDEM = :NUMORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 16
    object dtOrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object dtOrdemDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object dtOrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object dtOrdemNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object dtOrdemRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object dtOrdemCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object dtOrdemCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object dtOrdemNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object dtOrdemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object dtOrdemCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object dtOrdemINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
    end
    object dtOrdemCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object dtOrdemDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object dtOrdemUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object dtOrdemDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object dtOrdemCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object dtOrdemTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
  end
  object Qemp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select'
      'E.NOME,'
      'E.RUA,'
      'E.NUMERO,'
      'E.COMPLEMENTO,'
      'B.DESCBAIRRO,'
      'C.DESCCIDADE,'
      'E.CGC,'
      'E.INSCESTADUAL,'
      'E.FONEFAX'
      ' from TMEMP E'
      ' left join TBAIRRO B on E.CODBAIRRO = B.CODBAIRRO'
      ' left join TCIDADE C on E.CODCIDADE = C.CODCIDADE')
    SQLConnection = DmBanco.BancoDados
    Left = 224
    Top = 16
    object QempNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QempDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object QempDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object QempCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object QempINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
    end
    object QempFONEFAX: TStringField
      FieldName = 'FONEFAX'
      Size = 30
    end
    object QempRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object QempNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QempCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
  end
  object dspOrdem: TDataSetProvider
    DataSet = dtOrdem
    Left = 56
    Top = 16
  end
  object Ordem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    ProviderName = 'dspOrdem'
    OnCalcFields = OrdemCalcFields
    Left = 88
    Top = 16
    object OrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object OrdemDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object OrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object OrdemNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object OrdemRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object OrdemCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object OrdemCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object OrdemNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object OrdemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object OrdemCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object OrdemINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
    end
    object OrdemCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object OrdemDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object OrdemUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object OrdemDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object OrdemNOME_EMPRESA: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_EMPRESA'
      Size = 50
      Calculated = True
    end
    object OrdemEND_EMPRESA: TStringField
      FieldKind = fkCalculated
      FieldName = 'END_EMPRESA'
      Size = 60
      Calculated = True
    end
    object OrdemBAIRRO_EMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'BAIRRO_EMP'
      Size = 40
      Calculated = True
    end
    object OrdemCIDADE_EMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CIDADE_EMP'
      Size = 40
      Calculated = True
    end
    object OrdemCGC_EMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'CGC_EMP'
      Calculated = True
    end
    object OrdemIE_EMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'IE_EMP'
      Calculated = True
    end
    object OrdemFONEFAX_EMP: TStringField
      FieldKind = fkCalculated
      FieldName = 'FONEFAX_EMP'
      Size = 30
      Calculated = True
    end
    object OrdemC_ENDCLI: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_ENDCLI'
      Size = 50
      Calculated = True
    end
    object OrdemCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object OrdemTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
    object OrdemC_DOCUMENTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_DOCUMENTO'
      Calculated = True
    end
    object OrdemdtItens: TDataSetField
      FieldName = 'dtItens'
    end
  end
  object dsOrdem: TDataSource
    DataSet = Ordem
    Left = 120
    Top = 16
  end
  object DBOrdem: TppDBPipeline
    DataSource = dsOrdem
    UserName = 'DBOrdem'
    Left = 152
    Top = 16
  end
  object Relatorio: TppReport
    AutoStop = False
    DataPipeline = DBOrdem
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
    OnPreviewFormCreate = RelatorioPreviewFormCreate
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
    DataPipelineName = 'DBOrdem'
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'N'#186'Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 6085
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 10054
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 14023
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 17992
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 21960
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 25929
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NumOrdem'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 2117
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DataOrdem'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 6085
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CodPessoa'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 10054
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'C_ENDCLI'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 14023
        mmWidth = 75142
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Nome'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 26723
        mmTop = 10054
        mmWidth = 65617
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 101600
        mmTop = 12700
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Fone/Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 101600
        mmTop = 16669
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'DescBairro'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 17992
        mmWidth = 74877
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'DescCidade'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 21960
        mmWidth = 75406
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'Cep'
        DataPipeline = DBOrdem
        DisplayFormat = '#####-###;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 17198
        mmTop = 25929
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 37835
        mmTop = 25929
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'UF'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 25929
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'CNPJ/CPf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 61648
        mmTop = 25929
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'C_DOCUMENTO'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 78317
        mmTop = 25929
        mmWidth = 33602
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 149490
        mmTop = 12700
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'NOME_EMPRESA'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 101600
        mmTop = 0
        mmWidth = 87313
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'END_EMPRESA'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 101600
        mmTop = 4233
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CIDADE_EMP'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 101600
        mmTop = 8467
        mmWidth = 87842
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CGC_EMP'
        DataPipeline = DBOrdem
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 119856
        mmTop = 12700
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'IE_EMP'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 12700
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'FONEFAX_EMP'
        DataPipeline = DBOrdem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'DBOrdem'
        mmHeight = 3175
        mmLeft = 119856
        mmTop = 16933
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 219869
        mmTop = 2117
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground4
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 230188
        mmTop = 2381
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground4
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 219869
        mmTop = 6350
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground4
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 219869
        mmTop = 10319
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'DBItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 31750
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = DBItens
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
          Version = '15.03'
          mmColumnWidth = 0
          DataPipelineName = 'DBItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine1: TppLine
              UserName = 'Line1'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 11112
              mmWidth = 284428
              BandType = 1
              LayerName = Foreground
            end
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
              mmTop = 8731
              mmWidth = 4498
              BandType = 1
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
              mmTop = 8731
              mmWidth = 8996
              BandType = 1
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
              mmTop = 8731
              mmWidth = 5556
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Caption = 'Marca'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 26194
              mmTop = 8731
              mmWidth = 7408
              BandType = 1
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
              mmLeft = 51065
              mmTop = 8996
              mmWidth = 6350
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Caption = 'Data Inspe'#231#227'o T'#233'cnica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 78846
              mmTop = 5292
              mmWidth = 24342
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Caption = 'Venc. Carga'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 131234
              mmTop = 5292
              mmWidth = 11377
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              Caption = 'Legenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 179123
              mmTop = 8202
              mmWidth = 11113
              BandType = 1
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
              mmLeft = 225425
              mmTop = 7938
              mmWidth = 5292
              BandType = 1
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
              mmLeft = 168275
              mmTop = 4233
              mmWidth = 7144
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel79: TppLabel
              UserName = 'Label79'
              Caption = 'Insp.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 168275
              mmTop = 8202
              mmWidth = 6086
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              Caption = 'Vecto Teste'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 148432
              mmTop = 8202
              mmWidth = 15081
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              AutoSize = False
              Caption = 'Norma Cilindro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 64029
              mmTop = 5556
              mmWidth = 12965
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Caption = 'Vencto. Inspe'#231#227'o T'#233'cnica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 104511
              mmTop = 5292
              mmWidth = 24341
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Caption = 'Item c/Defeito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 193675
              mmTop = 7938
              mmWidth = 17198
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText17: TppDBText
              UserName = 'DBText11'
              DataField = 'Numero'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 0
              mmTop = 0
              mmWidth = 6350
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              UserName = 'DBText12'
              DataField = 'Capacidade'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 7938
              mmTop = 0
              mmWidth = 9790
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              UserName = 'DBText13'
              DataField = 'Serie'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 50536
              mmTop = 0
              mmWidth = 15610
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText20: TppDBText
              UserName = 'DBText14'
              DataField = 'DATA_INSPECAO'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 78846
              mmTop = 0
              mmWidth = 19844
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText22: TppDBText
              UserName = 'DBText16'
              DataField = 'C_VENC_CARGA'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 131234
              mmTop = 0
              mmWidth = 14552
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText32: TppDBText
              UserName = 'DBText26'
              DataField = 'NumSelo'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 225425
              mmTop = 0
              mmWidth = 28840
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText33: TppDBText
              UserName = 'DBText28'
              DataField = 'Ano'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 18521
              mmTop = 0
              mmWidth = 6879
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText34: TppDBText
              UserName = 'DBText29'
              DataField = 'DescMarca'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 26194
              mmTop = 0
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText35: TppDBText
              UserName = 'DBText30'
              DataField = 'LEGENDA'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 179123
              mmTop = 0
              mmWidth = 10848
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText36: TppDBText
              UserName = 'DBText33'
              DataField = 'CodResp'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 167482
              mmTop = 0
              mmWidth = 7144
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Pen.Style = psDot
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 0
              mmTop = 2910
              mmWidth = 284428
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText42: TppDBText
              UserName = 'DBText42'
              DataField = 'RETESTE'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 148432
              mmTop = 0
              mmWidth = 15081
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText44: TppDBText
              UserName = 'DBText44'
              DataField = 'NORMA_CILINDRO'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3260
              mmLeft = 66675
              mmTop = 0
              mmWidth = 10848
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText21: TppDBText
              UserName = 'DBText21'
              DataField = 'VENCTO_INSPECAO'
              DataPipeline = DBItens
              DisplayFormat = 'mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 104511
              mmTop = 0
              mmWidth = 24342
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              DataField = 'Peca'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 193675
              mmTop = 0
              mmWidth = 23019
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand4: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 14817
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 0
              mmTop = 10319
              mmWidth = 283898
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
        end
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Ordem de Servi'#231'o Inspe'#231#227'o T'#233'cnica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 116152
        mmTop = 24077
        mmWidth = 72496
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object SubRep_Pecas: TppSubReport
        UserName = 'SubRep_Pecas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'DBItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = DBItens
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
          Version = '15.03'
          mmColumnWidth = 0
          DataPipelineName = 'DBItens'
          object ppTitleBand4: TppTitleBand
            Background.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 56621
            mmPrintPosition = 0
            object ppLabel37: TppLabel
              UserName = 'Label37'
              Caption = 'Itens Inspecionados'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 103452
              mmTop = 265
              mmWidth = 25400
              BandType = 1
              LayerName = Foreground3
            end
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 26988
              mmLeft = 237067
              mmTop = 4498
              mmWidth = 43656
              BandType = 1
              LayerName = Foreground3
            end
            object ppLabel71: TppLabel
              UserName = 'Label71'
              Caption = 'Respons'#225'vel pela Inspe'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 238390
              mmTop = 265
              mmWidth = 35190
              BandType = 1
              LayerName = Foreground3
            end
            object ppShape1: TppShape
              UserName = 'Shape1'
              mmHeight = 50006
              mmLeft = 103452
              mmTop = 4498
              mmWidth = 132027
              BandType = 1
              LayerName = Foreground3
            end
            object MemoPeca: TppMemo
              UserName = 'MemoPeca'
              Caption = 'MemoPeca'
              CharWrap = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 8
              Font.Style = []
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              mmHeight = 10054
              mmLeft = 104775
              mmTop = 4498
              mmWidth = 129382
              BandType = 1
              LayerName = Foreground3
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object MemoResp: TppMemo
              UserName = 'MemoResp'
              Caption = 'MemoResp'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              mmHeight = 10319
              mmLeft = 239184
              mmTop = 6615
              mmWidth = 38629
              BandType = 1
              LayerName = Foreground3
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Caption = 'Confer'#234'ncia Manual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 4498
              mmWidth = 25400
              BandType = 1
              LayerName = Foreground3
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Caption = 'Respons'#225'vel T'#233'cnico:______________________________'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 20638
              mmWidth = 75936
              BandType = 1
              LayerName = Foreground3
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = 'Resp. pela Execu'#231#227'o: ______________________________'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 27781
              mmWidth = 76200
              BandType = 1
              LayerName = Foreground3
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              Caption = 'Inspe'#231#227'o T'#233'cnica = 101'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              Visible = False
              mmHeight = 3704
              mmLeft = 0
              mmTop = 11906
              mmWidth = 30427
              BandType = 1
              LayerName = Foreground3
            end
            object ppMemo1: TppMemo
              UserName = 'Memo1'
              Caption = 'Memo1'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Lines.Strings = (
                
                  'Obs: A Grazziotin n'#227'o se responsabiliza pelo funcionamento do me' +
                  'smo, pelo motivo de o extintor n'#227'o ter sido recarregado pela emp' +
                  'resa. O cilindro apenas sofreu a inspe'#231#227'o t'#233'cnica conforme solic' +
                  'ita'#231#227'o do fabricante.')
              RemoveEmptyLines = False
              Transparent = True
              mmHeight = 15346
              mmLeft = 0
              mmTop = 37042
              mmWidth = 99484
              BandType = 1
              LayerName = Foreground3
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppShape2: TppShape
              UserName = 'Shape2'
              mmHeight = 17463
              mmLeft = 237067
              mmTop = 37042
              mmWidth = 43656
              BandType = 1
              LayerName = Foreground3
            end
            object plbl1: TppLabel
              UserName = 'plbl1'
              Caption = 'Legenda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 237067
              mmTop = 33867
              mmWidth = 11113
              BandType = 1
              LayerName = Foreground3
            end
            object ppMemo2: TppMemo
              UserName = 'Memo2'
              Caption = 'Memo2'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Lines.Strings = (
                'A - Aprovado'
                'M - A Manuterir')
              RemoveEmptyLines = False
              Transparent = True
              mmHeight = 13758
              mmLeft = 239184
              mmTop = 38629
              mmWidth = 38629
              BandType = 1
              LayerName = Foreground3
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
          end
          object ppDetailBand5: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand5: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBItens: TppDBPipeline
    DataSource = dsItens
    UserName = 'DBItens'
    Left = 152
    Top = 104
  end
  object dtItens: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT'#13#10' TIOrdem.Numero,'#13#10' TIOrdem.NumOrdem,'#13#10' TIOrdem.CodPessoa' +
      ','#13#10' TIOrdem.CodProjeto,'#13#10' TIOrdem.CodMarca,'#13#10' TIOrdem.Capacidade' +
      ','#13#10' Extract(year FROM TIOrdem.AnoFab) AS Ano,'#13#10' Extract(year FRO' +
      'M TIOrdem.DataCarga) AS ReTeste,'#13#10' TIOrdem.vencimento,'#13#10' TIOrdem' +
      '.Serie,'#13#10' TIOrdem.PresTrabalho,'#13#10' TIOrdem.PresEnsaio,'#13#10' TIOrdem.' +
      'PesoVazio,'#13#10' TIOrdem.PesoCheio,'#13#10' TIOrdem.Volume,'#13#10' TIOrdem.Perc' +
      'entual,'#13#10' TIOrdem.CapacMaxima,'#13#10' TIOrdem.Dvm,'#13#10' TIOrdem.Dvb,'#13#10' T' +
      'IOrdem.CodResultado,'#13#10' TIOrdem.CodNivel,'#13#10' TIOrdem.CodAgente,'#13#10' ' +
      'TIOrdem.UltimoSelo,'#13#10' TIOrdem.Lote,'#13#10' TIOrdem.OutroSelo,'#13#10' TIOrd' +
      'em.NumSelo,'#13#10' TIOrdem.CodResp,'#13#10' TIOrdem.Legenda,'#13#10' TIOrdem.Perc' +
      '_Perda_Massa,'#13#10' TIOrdem.Norma_Cilindro,'#13#10' TIOrdem.Data_Inspecao,' +
      #13#10' TIOrdem.Vencto_Inspecao,'#13#10' TMarca.DescMarca'#13#10' FROM TIOrdem'#13#10' ' +
      'LEFT JOIN TAgente ON TIordem.CodAgente = TAgente.CodAgente'#13#10' lef' +
      't Join Tmarca On TIordem.CodMarca = TMarca.Codmarca'#13#10' WHERE TIOr' +
      'dem.NumOrdem = :NumOrdem'#13#10' ORDER BY TIOrdem.NumOrdem,TIOrdem.Num' +
      'ero'
    DataSource = dsPonte
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NumOrdem'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 104
  end
  object dspItens: TDataSetProvider
    DataSet = dtItens
    Left = 56
    Top = 104
  end
  object Itens: TClientDataSet
    Aggregates = <>
    DataSetField = OrdemdtItens
    Params = <
      item
        DataType = ftInteger
        Name = 'NumOrdem'
        ParamType = ptInput
      end>
    OnCalcFields = ItensCalcFields
    Left = 88
    Top = 104
    object ItensNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object ItensNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object ItensCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object ItensCODPROJETO: TStringField
      FieldName = 'CODPROJETO'
      Size = 15
    end
    object ItensCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object ItensCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object ItensSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object ItensPRESTRABALHO: TStringField
      FieldName = 'PRESTRABALHO'
      Size = 10
    end
    object ItensPRESENSAIO: TStringField
      FieldName = 'PRESENSAIO'
      Size = 10
    end
    object ItensPESOVAZIO: TStringField
      FieldName = 'PESOVAZIO'
      Size = 10
    end
    object ItensPESOCHEIO: TStringField
      FieldName = 'PESOCHEIO'
      Size = 10
    end
    object ItensVOLUME: TStringField
      FieldName = 'VOLUME'
      Size = 10
    end
    object ItensCAPACMAXIMA: TStringField
      FieldName = 'CAPACMAXIMA'
      Size = 10
    end
    object ItensDVM: TStringField
      FieldName = 'DVM'
      Size = 10
    end
    object ItensDVB: TStringField
      FieldName = 'DVB'
      Size = 10
    end
    object ItensCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
    end
    object ItensCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
    end
    object ItensCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object ItensULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object ItensLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object ItensOUTROSELO: TFloatField
      FieldName = 'OUTROSELO'
    end
    object ItensNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object ItensCODRESP: TStringField
      FieldName = 'CODRESP'
      Size = 3
    end
    object ItensDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object ItensPeca: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Peca'
      Size = 10
    end
    object ItensANO: TSmallintField
      FieldName = 'ANO'
    end
    object ItensPERCENTUAL: TStringField
      FieldName = 'PERCENTUAL'
      Size = 10
    end
    object ItensRETESTE: TSmallintField
      FieldName = 'RETESTE'
    end
    object ItensPERC_PERDA_MASSA: TFloatField
      FieldName = 'PERC_PERDA_MASSA'
    end
    object ItensNORMA_CILINDRO: TStringField
      FieldName = 'NORMA_CILINDRO'
      Size = 10
    end
    object ItensVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
    end
    object ItensC_VENC_CARGA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_VENC_CARGA'
      Size = 10
    end
    object ItensDATA_INSPECAO: TSQLTimeStampField
      FieldName = 'DATA_INSPECAO'
    end
    object ItensVENCTO_INSPECAO: TSQLTimeStampField
      FieldName = 'VENCTO_INSPECAO'
    end
    object ItensLEGENDA: TStringField
      FieldName = 'LEGENDA'
      FixedChar = True
      Size = 1
    end
  end
  object dsItens: TDataSource
    DataSet = Itens
    Left = 120
    Top = 104
  end
  object Qpeca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
        Size = 11
      end>
    SQL.Strings = (
      'Select'
      '    TT.codpeca'
      'from TTabPeca TT'
      '    INNER join TPECA PEC on PEC.codpeca = TT.codpeca'
      '    where TT.NumServico = :NumOrdem'
      '    And TT.Serie = :Serie')
    SQLConnection = DmBanco.BancoDados
    Left = 224
    Top = 120
    object QpecaCODPECA: TFloatField
      FieldName = 'CODPECA'
    end
  end
  object QPecas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TPECA'
      '  where ((USAR_INSPECAO = '#39'S'#39') or (SO_INSPECAO = '#39'S'#39'))'
      'order by CODPECA')
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 176
    object QPecasCODPECA: TFloatField
      FieldName = 'CODPECA'
    end
    object QPecasDESCPECA: TStringField
      FieldName = 'DESCPECA'
      Size = 40
    end
  end
  object dspPeca: TDataSetProvider
    DataSet = QPecas
    Left = 57
    Top = 176
  end
  object Peca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPeca'
    Left = 88
    Top = 176
    object PecaCODPECA: TFloatField
      FieldName = 'CODPECA'
    end
    object PecaDESCPECA: TStringField
      FieldName = 'DESCPECA'
      Size = 40
    end
  end
  object dsPeca: TDataSource
    DataSet = Peca
    Left = 120
    Top = 176
  end
  object dbPeca: TppDBPipeline
    DataSource = dsPeca
    UserName = 'dbPeca'
    Left = 152
    Top = 176
  end
  object dsPonte: TDataSource
    DataSet = dtOrdem
    Left = 24
    Top = 64
  end
  object QResp: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select NOME from TRESP where ATIVO = '#39'S'#39#13#10'and USAR_INSPECAO = '#39'S' +
      #39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 224
    Top = 72
    object QRespNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
end

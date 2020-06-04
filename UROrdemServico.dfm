object fROrdemServico1: TfROrdemServico1
  Left = 192
  Top = 114
  Caption = 'fROrdemServico1'
  ClientHeight = 213
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
    object DBOrdemppField1: TppField
      FieldAlias = 'NUMORDEM'
      FieldName = 'NUMORDEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField2: TppField
      FieldAlias = 'DATAORDEM'
      FieldName = 'DATAORDEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField3: TppField
      FieldAlias = 'CODPESSOA'
      FieldName = 'CODPESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField4: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField5: TppField
      FieldAlias = 'RUA'
      FieldName = 'RUA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField6: TppField
      FieldAlias = 'CODBAIRRO'
      FieldName = 'CODBAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField7: TppField
      FieldAlias = 'CODCIDADE'
      FieldName = 'CODCIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField8: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField9: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField10: TppField
      FieldAlias = 'CGC'
      FieldName = 'CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField11: TppField
      FieldAlias = 'INSCESTADUAL'
      FieldName = 'INSCESTADUAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField12: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField13: TppField
      FieldAlias = 'DESCCIDADE'
      FieldName = 'DESCCIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField14: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField15: TppField
      FieldAlias = 'DESCBAIRRO'
      FieldName = 'DESCBAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField16: TppField
      FieldAlias = 'NOME_EMPRESA'
      FieldName = 'NOME_EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField17: TppField
      FieldAlias = 'END_EMPRESA'
      FieldName = 'END_EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField18: TppField
      FieldAlias = 'BAIRRO_EMP'
      FieldName = 'BAIRRO_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField19: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField20: TppField
      FieldAlias = 'CGC_EMP'
      FieldName = 'CGC_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField21: TppField
      FieldAlias = 'IE_EMP'
      FieldName = 'IE_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField22: TppField
      FieldAlias = 'FONEFAX_EMP'
      FieldName = 'FONEFAX_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField23: TppField
      FieldAlias = 'C_ENDCLI'
      FieldName = 'C_ENDCLI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField24: TppField
      FieldAlias = 'CPF'
      FieldName = 'CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField25: TppField
      FieldAlias = 'TIPOPESSOA'
      FieldName = 'TIPOPESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object DBOrdemppField26: TppField
      FieldAlias = 'C_DOCUMENTO'
      FieldName = 'C_DOCUMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
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
    TextSearchSettings.DefaultString = '<FindText>'
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
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Uf'
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
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Caption = 'Press'#227'o Trabalho'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 6519
              mmLeft = 77523
              mmTop = 5556
              mmWidth = 11134
              BandType = 1
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
              mmLeft = 89429
              mmTop = 5556
              mmWidth = 14023
              BandType = 1
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
              mmLeft = 105304
              mmTop = 5556
              mmWidth = 6477
              BandType = 1
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
              mmHeight = 6615
              mmLeft = 112977
              mmTop = 5556
              mmWidth = 7144
              BandType = 1
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
              mmLeft = 123561
              mmTop = 8996
              mmWidth = 9260
              BandType = 1
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
              mmHeight = 6350
              mmLeft = 134409
              mmTop = 5556
              mmWidth = 9790
              BandType = 1
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
              mmLeft = 145521
              mmTop = 5556
              mmWidth = 11377
              BandType = 1
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
              mmLeft = 158750
              mmTop = 5556
              mmWidth = 11906
              BandType = 1
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
              mmLeft = 189442
              mmTop = 8467
              mmWidth = 7144
              BandType = 1
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
              mmLeft = 198173
              mmTop = 8467
              mmWidth = 6085
              BandType = 1
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
              mmLeft = 205846
              mmTop = 8467
              mmWidth = 8731
              BandType = 1
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
              mmLeft = 225161
              mmTop = 8467
              mmWidth = 9525
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              Caption = 'Pe'#231'as'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 238125
              mmTop = 8202
              mmWidth = 7673
              BandType = 1
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
              mmLeft = 250032
              mmTop = 8202
              mmWidth = 5292
              BandType = 1
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
              mmLeft = 215636
              mmTop = 4233
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel79: TppLabel
              UserName = 'Label79'
              Caption = 'Exec'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 215636
              mmTop = 8202
              mmWidth = 6265
              BandType = 1
            end
            object ppLabel80: TppLabel
              UserName = 'Label80'
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 171450
              mmTop = 8467
              mmWidth = 2646
              BandType = 1
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
              mmHeight = 3260
              mmLeft = 265907
              mmTop = 8467
              mmWidth = 15198
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label39'
              AutoSize = False
              Caption = 'Perda Massa%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 176477
              mmTop = 5292
              mmWidth = 12965
              BandType = 1
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
            end
            object ppDBText20: TppDBText
              UserName = 'DBText14'
              DataField = 'PresTrabalho'
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
              mmWidth = 9790
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText15'
              DataField = 'PresEnsaio'
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
              mmLeft = 90223
              mmTop = 0
              mmWidth = 11906
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText16'
              DataField = 'PesoVazio'
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
              mmLeft = 102923
              mmTop = 0
              mmWidth = 9790
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText17'
              DataField = 'PesoCheio'
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
              mmLeft = 113771
              mmTop = 0
              mmWidth = 9260
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText18'
              DataField = 'Volume'
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
              mmLeft = 123825
              mmTop = 0
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText19'
              DataField = 'CapacMaxima'
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
              mmLeft = 135202
              mmTop = 0
              mmWidth = 8202
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText20'
              DataField = 'Dvm'
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
              mmLeft = 145521
              mmTop = 0
              mmWidth = 12171
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText21'
              DataField = 'Dvb'
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
              mmLeft = 158750
              mmTop = 0
              mmWidth = 10054
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText22'
              DataField = 'CodNivel'
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
              mmLeft = 197644
              mmTop = 0
              mmWidth = 6085
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText23'
              DataField = 'CodAgente'
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
              mmLeft = 205052
              mmTop = 0
              mmWidth = 6879
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText24'
              DataField = 'Lote'
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
              mmLeft = 223044
              mmTop = 0
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText25'
              DataField = 'CodResultado'
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
              mmLeft = 189442
              mmTop = 0
              mmWidth = 7408
              BandType = 4
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
              mmLeft = 250825
              mmTop = 0
              mmWidth = 16404
              BandType = 4
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
            end
            object ppDBText35: TppDBText
              UserName = 'DBText30'
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
              mmLeft = 238125
              mmTop = 0
              mmWidth = 10848
              BandType = 4
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
              mmLeft = 214842
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText34'
              DataField = 'PERCENTUAL'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 170392
              mmTop = 0
              mmWidth = 6350
              BandType = 4
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
              mmLeft = 268553
              mmTop = 0
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText43: TppDBText
              UserName = 'DBText43'
              DataField = 'PERC_PERDA_MASSA'
              DataPipeline = DBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'DBItens'
              mmHeight = 3175
              mmLeft = 178065
              mmTop = 0
              mmWidth = 8202
              BandType = 4
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
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'DBAgente'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 529
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = DBAgente
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
          DataPipelineName = 'DBAgente'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppLabel33: TppLabel
              UserName = 'Label33'
              Caption = 'Agente Extintor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 16933
              mmTop = 2117
              mmWidth = 18785
              BandType = 1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 2117
              mmTop = 5027
              mmWidth = 57150
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              DataField = 'CODAGENTE'
              DataPipeline = DBAgente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'DBAgente'
              mmHeight = 3175
              mmLeft = 4233
              mmTop = 0
              mmWidth = 8731
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              DataField = 'DESCAGENTE'
              DataPipeline = DBAgente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'DBAgente'
              mmHeight = 3175
              mmLeft = 14817
              mmTop = 0
              mmWidth = 42069
              BandType = 4
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 59267
              mmTop = 0
              mmWidth = 5292
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 0
              mmTop = 0
              mmWidth = 2117
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 24342
            mmPrintPosition = 0
            object ppLine5: TppLine
              UserName = 'Line5'
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 2117
              mmTop = 0
              mmWidth = 57150
              BandType = 7
            end
            object ppLabel76: TppLabel
              UserName = 'Label76'
              Caption = 'Confer'#234'ncia Manual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 2381
              mmWidth = 30163
              BandType = 7
            end
            object ppLabel78: TppLabel
              UserName = 'Label78'
              Caption = 'Respons'#225'vel T'#233'cnico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 0
              mmTop = 18521
              mmWidth = 26723
              BandType = 7
            end
            object ppLine11: TppLine
              UserName = 'Line11'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 27517
              mmTop = 19315
              mmWidth = 34660
              BandType = 7
            end
            object ppLabel77: TppLabel
              UserName = 'Label77'
              Caption = 'Resp pela Execu'#231#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 63500
              mmTop = 18521
              mmWidth = 26194
              BandType = 7
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 90223
              mmTop = 17727
              mmWidth = 34660
              BandType = 7
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbResultado'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = dbResultado
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
          DataPipelineName = 'dbResultado'
          object ppTitleBand3: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppLabel36: TppLabel
              UserName = 'Label36'
              Caption = 'Resultado do Teste Hidrost'#225'tico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 74083
              mmTop = 2117
              mmWidth = 39423
              BandType = 1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2646
              mmLeft = 62177
              mmTop = 3969
              mmWidth = 80169
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText40: TppDBText
              UserName = 'DBText35'
              DataField = 'CODRESULTADO'
              DataPipeline = dbResultado
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbResultado'
              mmHeight = 3175
              mmLeft = 62971
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText36'
              DataField = 'DESCRESULTADO'
              DataPipeline = dbResultado
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbResultado'
              mmHeight = 3175
              mmLeft = 71438
              mmTop = 0
              mmWidth = 69321
              BandType = 4
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 137584
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 3175
              mmLeft = 59531
              mmTop = 0
              mmWidth = 2646
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine7: TppLine
              UserName = 'Line7'
              Weight = 0.750000000000000000
              mmHeight = 2646
              mmLeft = 62177
              mmTop = 0
              mmWidth = 80169
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
        end
      end
      object SubRep_Pecas: TppSubReport
        UserName = 'SubRep_Pecas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
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
          object ppTitleBand4: TppTitleBand
            Background.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 56621
            mmPrintPosition = 0
            object ppLabel37: TppLabel
              UserName = 'Label37'
              Caption = 'Pe'#231'as'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 143669
              mmTop = 794
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel62: TppLabel
              UserName = 'Label62'
              Caption = 'Press'#227'o de Ensaio e Trabalho'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 237861
              mmTop = 529
              mmWidth = 38100
              BandType = 1
            end
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 17992
              mmLeft = 237067
              mmTop = 4498
              mmWidth = 43656
              BandType = 1
            end
            object ppLabel63: TppLabel
              UserName = 'Label63'
              Caption = 'P.Direta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 252942
              mmTop = 7673
              mmWidth = 9790
              BandType = 1
            end
            object ppLabel64: TppLabel
              UserName = 'Label64'
              Caption = 'P.Indireta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 264848
              mmTop = 7673
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel65: TppLabel
              UserName = 'Label65'
              Caption = 'P.Ensaio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 239978
              mmTop = 13229
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label66'
              Caption = 'P.Trabalho'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 240242
              mmTop = 17198
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel67: TppLabel
              UserName = 'Label67'
              Caption = '28'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 259292
              mmTop = 13229
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel68: TppLabel
              UserName = 'Label68'
              Caption = '35'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 270405
              mmTop = 13229
              mmWidth = 3175
              BandType = 1
            end
            object ppLabel69: TppLabel
              UserName = 'Label69'
              Caption = '10.5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 257176
              mmTop = 17198
              mmWidth = 5556
              BandType = 1
            end
            object ppLabel70: TppLabel
              UserName = 'Label70'
              Caption = '13.5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 268288
              mmTop = 17198
              mmWidth = 5292
              BandType = 1
            end
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 26988
              mmLeft = 237067
              mmTop = 27517
              mmWidth = 43656
              BandType = 1
            end
            object ppLabel71: TppLabel
              UserName = 'Label71'
              Caption = 'Respons'#225'vel pela Execu'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 238390
              mmTop = 23283
              mmWidth = 42333
              BandType = 1
            end
            object ppShape1: TppShape
              UserName = 'Shape1'
              mmHeight = 50006
              mmLeft = 143669
              mmTop = 4498
              mmWidth = 91811
              BandType = 1
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
              mmLeft = 144198
              mmTop = 4498
              mmWidth = 89959
              BandType = 1
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
              mmTop = 29633
              mmWidth = 38629
              BandType = 1
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
    Top = 48
    object DBItensppField1: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object DBItensppField2: TppField
      FieldAlias = 'NUMORDEM'
      FieldName = 'NUMORDEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object DBItensppField3: TppField
      FieldAlias = 'CODPESSOA'
      FieldName = 'CODPESSOA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object DBItensppField4: TppField
      FieldAlias = 'CODPROJETO'
      FieldName = 'CODPROJETO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object DBItensppField5: TppField
      FieldAlias = 'CODMARCA'
      FieldName = 'CODMARCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object DBItensppField6: TppField
      FieldAlias = 'CAPACIDADE'
      FieldName = 'CAPACIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object DBItensppField7: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object DBItensppField8: TppField
      FieldAlias = 'PRESTRABALHO'
      FieldName = 'PRESTRABALHO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object DBItensppField9: TppField
      FieldAlias = 'PRESENSAIO'
      FieldName = 'PRESENSAIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object DBItensppField10: TppField
      FieldAlias = 'PESOVAZIO'
      FieldName = 'PESOVAZIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object DBItensppField11: TppField
      FieldAlias = 'PESOCHEIO'
      FieldName = 'PESOCHEIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object DBItensppField12: TppField
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object DBItensppField13: TppField
      FieldAlias = 'CAPACMAXIMA'
      FieldName = 'CAPACMAXIMA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object DBItensppField14: TppField
      FieldAlias = 'DVM'
      FieldName = 'DVM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object DBItensppField15: TppField
      FieldAlias = 'DVB'
      FieldName = 'DVB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object DBItensppField16: TppField
      FieldAlias = 'CODRESULTADO'
      FieldName = 'CODRESULTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object DBItensppField17: TppField
      FieldAlias = 'CODNIVEL'
      FieldName = 'CODNIVEL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object DBItensppField18: TppField
      FieldAlias = 'CODAGENTE'
      FieldName = 'CODAGENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object DBItensppField19: TppField
      FieldAlias = 'ULTIMOSELO'
      FieldName = 'ULTIMOSELO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object DBItensppField20: TppField
      FieldAlias = 'LOTE'
      FieldName = 'LOTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object DBItensppField21: TppField
      FieldAlias = 'OUTROSELO'
      FieldName = 'OUTROSELO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object DBItensppField22: TppField
      FieldAlias = 'NUMSELO'
      FieldName = 'NUMSELO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object DBItensppField23: TppField
      FieldAlias = 'CODRESP'
      FieldName = 'CODRESP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object DBItensppField24: TppField
      FieldAlias = 'DESCMARCA'
      FieldName = 'DESCMARCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object DBItensppField25: TppField
      FieldAlias = 'Peca'
      FieldName = 'Peca'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object DBItensppField26: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object DBItensppField27: TppField
      FieldAlias = 'PERCENTUAL'
      FieldName = 'PERCENTUAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object DBItensppField28: TppField
      FieldAlias = 'RETESTE'
      FieldName = 'RETESTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object DBItensppField29: TppField
      FieldAlias = 'PERC_PERDA_MASSA'
      FieldName = 'PERC_PERDA_MASSA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object DBItensppField30: TppField
      FieldAlias = 'NORMA_CILINDRO'
      FieldName = 'NORMA_CILINDRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
  end
  object dtItens: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT'#13#10' TIOrdem.Numero,'#13#10' TIOrdem.NumOrdem,'#13#10' TIOrdem.CodPessoa' +
      ','#13#10' TIOrdem.CodProjeto,'#13#10' TIOrdem.CodMarca,'#13#10' TIOrdem.Capacidade' +
      ','#13#10' Extract(year FROM TIOrdem.AnoFab) AS Ano,'#13#10'Extract(year FROM' +
      ' TIOrdem.DataCarga) AS ReTeste,'#13#10' TIOrdem.Serie,'#13#10' TIOrdem.PresT' +
      'rabalho,'#13#10' TIOrdem.PresEnsaio,'#13#10' TIOrdem.PesoVazio,'#13#10' TIOrdem.Pe' +
      'soCheio,'#13#10' TIOrdem.Volume,'#13#10' TIOrdem.Percentual,'#13#10' TIOrdem.Capac' +
      'Maxima,'#13#10' TIOrdem.Dvm,'#13#10' TIOrdem.Dvb,'#13#10' TIOrdem.CodResultado,'#13#10' ' +
      'TIOrdem.CodNivel,'#13#10' TIOrdem.CodAgente,'#13#10' TIOrdem.UltimoSelo,'#13#10' T' +
      'IOrdem.Lote,'#13#10' TIOrdem.OutroSelo,'#13#10' TIOrdem.NumSelo,'#13#10' TIOrdem.C' +
      'odResp,'#13#10' TIOrdem.Perc_Perda_Massa,'#13#10' TIOrdem.Norma_Cilindro,'#13#10' ' +
      'TMarca.DescMarca'#13#10' FROM TIOrdem'#13#10' LEFT JOIN TAgente ON TIordem.C' +
      'odAgente = TAgente.CodAgente'#13#10' left Join Tmarca On TIordem.CodMa' +
      'rca = TMarca.Codmarca'#13#10' WHERE TIOrdem.NumOrdem = :NumOrdem'#13#10' ORD' +
      'ER BY TIOrdem.NumOrdem,TIOrdem.Numero'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NumOrdem'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 48
  end
  object dspItens: TDataSetProvider
    DataSet = dtItens
    Left = 56
    Top = 48
  end
  object Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    OnCalcFields = ItensCalcFields
    Left = 88
    Top = 48
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
  end
  object dsItens: TDataSource
    DataSet = Itens
    Left = 120
    Top = 48
  end
  object dspAgente: TDataSetProvider
    DataSet = dtAgente
    Left = 56
    Top = 80
  end
  object dsAgente: TDataSource
    DataSet = Agente
    Left = 120
    Top = 80
  end
  object Agente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgente'
    Left = 88
    Top = 80
    object AgenteCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object AgenteDESCAGENTE: TStringField
      FieldName = 'DESCAGENTE'
      Size = 40
    end
  end
  object dtAgente: TSQLDataSet
    CommandText = 'select CODAGENTE, DESCAGENTE from TAGENTE'#13#10' order by CODAGENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 80
    object dtAgenteCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object dtAgenteDESCAGENTE: TStringField
      FieldName = 'DESCAGENTE'
      Size = 40
    end
  end
  object DBAgente: TppDBPipeline
    DataSource = dsAgente
    UserName = 'DBAgente'
    Left = 152
    Top = 80
  end
  object dtResultado: TSQLDataSet
    CommandText = 
      'select CODRESULTADO, DESCRESULTADO from TRESULT'#13#10' order by CODRE' +
      'SULTADO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 112
    object dtResultadoCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
    end
    object dtResultadoDESCRESULTADO: TStringField
      FieldName = 'DESCRESULTADO'
      Size = 40
    end
  end
  object Resultado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResultado'
    Left = 88
    Top = 112
    object ResultadoCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
    end
    object ResultadoDESCRESULTADO: TStringField
      FieldName = 'DESCRESULTADO'
      Size = 40
    end
  end
  object dspResultado: TDataSetProvider
    DataSet = dtResultado
    Left = 56
    Top = 112
  end
  object dsResultado: TDataSource
    DataSet = Resultado
    Left = 120
    Top = 112
  end
  object dbResultado: TppDBPipeline
    DataSource = dsResultado
    UserName = 'dbResultado'
    Left = 152
    Top = 112
    object dbResultadoppField1: TppField
      FieldAlias = 'CODRESULTADO'
      FieldName = 'CODRESULTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbResultadoppField2: TppField
      FieldAlias = 'DESCRESULTADO'
      FieldName = 'DESCRESULTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
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
      'CodPeca'
      'from TTabPeca'
      'where NumServico = :NumOrdem'
      'And Serie = :Serie')
    SQLConnection = DmBanco.BancoDados
    Left = 224
    Top = 48
    object QpecaCODPECA: TFloatField
      FieldName = 'CODPECA'
    end
  end
  object QPecas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TPECA order by CODPECA')
    SQLConnection = DmBanco.BancoDados
    Left = 24
    Top = 160
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
    Top = 160
  end
  object Peca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPeca'
    Left = 88
    Top = 160
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
    Top = 160
  end
  object dbPeca: TppDBPipeline
    DataSource = dsPeca
    UserName = 'dbPeca'
    Left = 152
    Top = 160
  end
  object QResp: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select NOME from TRESP where ATIVO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 224
    Top = 96
    object QRespNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
end

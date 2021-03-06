object FrProposta: TFrProposta
  Left = 192
  Top = 114
  Width = 384
  Height = 299
  Caption = 'FrProposta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Qproposta: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <
      item
        DataType = ftInteger
        Name = 'NumProposta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' TPessoa.CodPessoa,'
      ' TPessoa.CodBairro,'
      ' TPessoa.Contato,'
      ' TPessoa.Fone1,'
      ' TPessoa.Nome,'
      ' TPessoa.CodCidade,'
      ' TPessoa.Rua,'
      ' TPessoa.Numero,'
      ' TPessoa.Complemento,'
      ' TBairro.DescBairro,'
      ' TCidade.DescCidade,'
      ' TCidade.Uf,'
      ' TVendedo.DescVendedor,'
      ' TVendedo.Fone,'
      ' TVendedo.Fone2,'
      ' TPropost.NumProposta ,'
      ' TPropost.CondPagto ,'
      ' TPropost.Entrega,'
      ' TPropost.Emissao,'
      ' TPropost.Validade,'
      ' TPropost.TotalBruto,'
      ' TPropost.ValorProposta'
      'FROM TPropost'
      'INNER JOIN TPessoa ON TPropost.CodPessoa=TPessoa.CodPessoa'
      'LEFT JOIN TVendedo ON TPropost.CodVendedor=TVendedo.CodVendedor'
      'LEFT JOIN TCidade ON TPessoa.CodCidade = TCidade.CodCidade'
      'LEFT JOIN TBairro ON TPessoa.CodBairro = TBairro.CodBairro'
      'WHERE NumProposta = :NumProposta')
    Left = 32
    Top = 48
  end
  object dspProposta: TDataSetProvider
    DataSet = Qproposta
    Constraints = True
    Left = 64
    Top = 48
  end
  object Proposta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProposta'
    OnCalcFields = PropostaCalcFields
    Left = 96
    Top = 48
    object PropostaCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object PropostaCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object PropostaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 32
    end
    object PropostaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 27
    end
    object PropostaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object PropostaCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object PropostaRUA: TStringField
      FieldName = 'RUA'
      Size = 52
    end
    object PropostaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 18
    end
    object PropostaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 32
    end
    object PropostaDESCVENDEDOR: TStringField
      FieldName = 'DESCVENDEDOR'
      Size = 42
    end
    object PropostaFONE: TStringField
      FieldName = 'FONE'
      Size = 27
    end
    object PropostaFONE2: TStringField
      FieldName = 'FONE2'
      Size = 27
    end
    object PropostaNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PropostaCONDPAGTO: TStringField
      FieldName = 'CONDPAGTO'
      Size = 27
    end
    object PropostaENTREGA: TStringField
      FieldName = 'ENTREGA'
      Size = 27
    end
    object PropostaVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Size = 27
    end
    object PropostaTOTALBRUTO: TFloatField
      FieldName = 'TOTALBRUTO'
    end
    object PropostaVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
    end
    object PropostaC_VALORTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VALORTOTAL'
    end
    object PropostaC_ENDERECO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ENDERECO'
      Size = 60
    end
    object PropostaC_CNPJ: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CNPJ'
    end
    object PropostaC_INSCESTADUAL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_INSCESTADUAL'
    end
    object PropostaC_FONE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_FONE'
      Size = 40
    end
    object PropostaC_DATAEXTENSO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DATAEXTENSO'
      Size = 50
    end
    object PropostaEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
    end
    object PropostaDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object PropostaDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object PropostaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object PropostaC_CAPACIDADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_CAPACIDADE'
      Size = 15
      Calculated = True
    end
  end
  object dsProposta: TDataSource
    DataSet = Proposta
    Left = 128
    Top = 48
  end
  object dbProposta: TppDBPipeline
    DataSource = dsProposta
    UserName = 'dbProposta'
    Left = 160
    Top = 48
  end
  object RelProposta: TppReport
    AutoStop = False
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
    OnPreviewFormCreate = RelPropostaPreviewFormCreate
    Left = 192
    Top = 48
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbProposta'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 94456
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14817
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 14817
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Fone/Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'CREDENCIADA NO INMETRO DO C'#211'DIGO DE REGISTRO 109'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 0
        mmTop = 21167
        mmWidth = 158486
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'C_DATAEXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 30692
        mmWidth = 89165
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35983
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 44450
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 48683
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 52917
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 48683
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Fone1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 52917
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 35983
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 40217
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 
          '     Venho por meio deste, apresentar nossa proposta para aquisi' +
          #231#227'o, manuten'#231#227'o(n'#237'vel 2) ou manuten'#231#227'o n'#237'vel(3) de extintores pa' +
          'ra combate de inc'#234'ndio de vossa propriedade conforme rela'#231#227'o aba' +
          'ixo, oferecendo-lhes assim seguran'#231'a e prote'#231#227'o aos seus bens.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 13229
        mmLeft = 0
        mmTop = 74083
        mmWidth = 187590
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 
          '    Nos colocamos a vossa inteira disposi'#231#227'o no que tange ao tre' +
          'inamento para manuseio adequado dos mesmos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 86784
        mmWidth = 177800
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'OR'#199'AMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 78317
        mmTop = 63500
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'GRAZZIOTIN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'COM. DE EXTINTORES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 2381
        mmWidth = 49742
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 0
        mmTop = 6615
        mmWidth = 197380
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 35983
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'RUA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 40217
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'DESCVENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 44450
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DESCCIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 48683
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 48683
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 52917
        mmWidth = 30692
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'DESCVENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 52917
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'FONE1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 35983
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 40217
        mmWidth = 51858
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'C_ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9525
        mmWidth = 172244
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'C_CNPJ'
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 14817
        mmWidth = 34925
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'C_INSCESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 3969
        mmLeft = 71967
        mmTop = 14817
        mmWidth = 37042
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'C_FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 14817
        mmWidth = 43392
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'FONE2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 3969
        mmLeft = 127000
        mmTop = 52917
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Fone2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 52917
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'N'#186' Prop.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 57150
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        DataField = 'NUMPROPOSTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 57150
        mmWidth = 21960
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object SubRel: TppSubReport
        UserName = 'SubRel'
        ExpandAll = False
        NewPrintJob = False
        TraverseAllData = False
        DataPipelineName = 'dbItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 2910
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
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
          Version = '6.0'
          mmColumnWidth = 0
          DataPipelineName = 'dbItens'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLabel94: TppLabel
              UserName = 'Label94'
              Caption = 'Qtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 6350
              mmTop = 794
              mmWidth = 7673
              BandType = 1
            end
            object ppLabel95: TppLabel
              UserName = 'Label95'
              Caption = 'Equipamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 19050
              mmTop = 794
              mmWidth = 20638
              BandType = 1
            end
            object ppLabel96: TppLabel
              UserName = 'Label96'
              Caption = 'N'#237'vel'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 44450
              mmTop = 794
              mmWidth = 7938
              BandType = 1
            end
            object ppLabel97: TppLabel
              UserName = 'Label97'
              Caption = 'Valor Unit'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 59267
              mmTop = 794
              mmWidth = 21167
              BandType = 1
            end
            object ppLabel98: TppLabel
              UserName = 'Label201'
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              mmHeight = 3969
              mmLeft = 99484
              mmTop = 794
              mmWidth = 7938
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Position = lpBottom
              Weight = 0.75
              mmHeight = 2117
              mmLeft = 0
              mmTop = 3967
              mmWidth = 196850
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText69: TppDBText
              UserName = 'DBText69'
              DataField = 'QTDE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbItens'
              mmHeight = 3969
              mmLeft = 265
              mmTop = 0
              mmWidth = 13758
              BandType = 4
            end
            object ppDBText70: TppDBText
              UserName = 'DBText70'
              DataField = 'C_CAPACIDADE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbItens'
              mmHeight = 3969
              mmLeft = 19050
              mmTop = 0
              mmWidth = 22754
              BandType = 4
            end
            object ppDBText71: TppDBText
              UserName = 'DBText71'
              DataField = 'CODNIVEL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbItens'
              mmHeight = 3969
              mmLeft = 44450
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText72: TppDBText
              UserName = 'DBText72'
              DataField = 'VALORUNIT'
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbItens'
              mmHeight = 3969
              mmLeft = 63500
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText73: TppDBText
              UserName = 'DBText73'
              DataField = 'C_VALORTOTAL'
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbItens'
              mmHeight = 3969
              mmLeft = 82550
              mmTop = 0
              mmWidth = 25400
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 19315
            mmPrintPosition = 0
            object Calc_ValorTotal: TppDBCalc
              UserName = 'Calc_ValorTotal'
              DataField = 'C_VALORTOTAL'
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbItens'
              mmHeight = 4233
              mmLeft = 82550
              mmTop = 1058
              mmWidth = 25135
              BandType = 7
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Caption = 'Total Servi'#231'os:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 1058
              mmWidth = 25400
              BandType = 7
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.75
              mmHeight = 1852
              mmLeft = 0
              mmTop = 0
              mmWidth = 197115
              BandType = 7
            end
            object Var_ValorExtenso: TppVariable
              UserName = 'Var_ValorExtenso1'
              AutoSize = False
              CalcOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              OnCalc = Var_ValorExtensoCalc
              Transparent = True
              WordWrap = True
              mmHeight = 8467
              mmLeft = 0
              mmTop = 10054
              mmWidth = 187855
              BandType = 7
            end
          end
        end
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 55298
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'Condi'#231#245'es de Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1588
        mmWidth = 33867
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Validade da Proposta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 5821
        mmWidth = 35719
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 10054
        mmWidth = 12965
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 
          'Obs: Na aquisi'#231#227'o de extintores novos fica inclu'#237'do a instala'#231#227'o' +
          ', sinaliza'#231#227'o, suporte e carga inicial.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 20638
        mmWidth = 155575
        BandType = 7
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 
          'Sem mais para o momento e ainda reafirmando nosso compromisso de' +
          ' atend'#234'-lo da melhor forma poss'#237'vel, agradecemos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 24871
        mmWidth = 192352
        BandType = 7
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Atenciosamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 33338
        mmWidth = 25135
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 110067
        mmTop = 46038
        mmWidth = 67204
        BandType = 7
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'GRAZZIOTIN COM. DE EXTINTORES LTDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 48154
        mmWidth = 70908
        BandType = 7
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CONDPAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 1588
        mmWidth = 50536
        BandType = 7
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'VALIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 5821
        mmWidth = 50800
        BandType = 7
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbProposta'
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 10054
        mmWidth = 51065
        BandType = 7
      end
    end
  end
  object QEmp: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 
      'select '#13#10'E.CEP,'#13#10'E.CGC,'#13#10'B.DESCBAIRRO,'#13#10'C.DESCCIDADE,'#13#10'E.COMPLEM' +
      'ENTO,'#13#10'E.FONEFAX,'#13#10'E.INSCESTADUAL,'#13#10'E.NUMERO,'#13#10'E.RUA'#13#10' from TMEM' +
      'P E, TCIDADE C, TBAIRRO B'#13#10' where E.CODBAIRRO = B.CODBAIRRO'#13#10' an' +
      'd E.CODCIDADE = C.CODCIDADE'
    Params = <>
    Left = 32
    Top = 16
    object QEmpCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object QEmpCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object QEmpDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object QEmpDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object QEmpCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object QEmpFONEFAX: TStringField
      FieldName = 'FONEFAX'
      Size = 30
    end
    object QEmpINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
    end
    object QEmpNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QEmpRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
  end
  object Qexec: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 
      'SELECT'#13#10' TPessoa.Nome,'#13#10' TPessoa.Rua,'#13#10' TPessoa.Numero,'#13#10' TPesso' +
      'a.Complemento,'#13#10' TPessoa.CodCidade,'#13#10' TPessoa.CodBairro,'#13#10' TPess' +
      'oa.Contato,'#13#10' TPessoa.Fone1,'#13#10' TBairro.DescBairro,'#13#10' TCidade.Des' +
      'cCidade,'#13#10' TCidade.Uf,'#13#10' TLocal.DescLocal,'#13#10' TVendedo.DescVended' +
      'or,'#13#10' TVendedo.Fone,'#13#10' TVendedo.Fone2,'#13#10' TPropost.NumProposta ,'#13 +
      #10' TPropost.Emissao,'#13#10' TPropost.CodPessoa,'#13#10' TPropost.ValorPropos' +
      'ta,'#13#10' TPropost.TotalBruto,'#13#10' TIPropos.Capacidade,'#13#10' TIPropos.Cod' +
      'Manutencao,'#13#10' TIPropos.NumExtintor,'#13#10' TIPropos.ValorUnit,'#13#10' TIPr' +
      'opos.CodNivel,'#13#10' TIPropos.ValorTotal,'#13#10' TIPropos.CodLocal'#13#10'FROM ' +
      'TPropost'#13#10' INNER JOIN TIPropos ON  TPropost.NumProposta=TIPropos' +
      '.NumProposta'#13#10' INNER JOIN TPessoa ON TPropost.CodPessoa=TPessoa.' +
      'CodPessoa'#13#10' LEFT JOIN TVendedo ON TPropost.CodVendedor=TVendedo.' +
      'CodVendedor'#13#10' LEFT JOIN TCidade ON TPessoa.CodCidade = TCidade.C' +
      'odCidade'#13#10' LEFT JOIN TBairro ON TPessoa.CodBairro = TBairro.CodB' +
      'airro'#13#10' LEFT JOIN TLocal ON TIPropos.CodLocal = TLocal.CodLocal'#13 +
      #10' WHERE NumProposta = :NumProposta'#13#10' ORDER BY TIPropos.NumExtint' +
      'or'#13#10
    Params = <
      item
        DataType = ftInteger
        Name = 'NumProposta'
        ParamType = ptInput
      end>
    Left = 32
    Top = 128
  end
  object dspExec: TDataSetProvider
    DataSet = Qexec
    Constraints = True
    Left = 64
    Top = 128
  end
  object Exec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExec'
    OnCalcFields = ExecCalcFields
    Left = 96
    Top = 128
    object ExecNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object ExecRUA: TStringField
      FieldName = 'RUA'
      Size = 42
    end
    object ExecNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object ExecCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 22
    end
    object ExecCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object ExecCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object ExecCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 22
    end
    object ExecFONE1: TStringField
      FieldName = 'FONE1'
      Size = 17
    end
    object ExecDESCVENDEDOR: TStringField
      FieldName = 'DESCVENDEDOR'
      Size = 32
    end
    object ExecFONE: TStringField
      FieldName = 'FONE'
      Size = 17
    end
    object ExecFONE2: TStringField
      FieldName = 'FONE2'
      Size = 17
    end
    object ExecNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ExecCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object ExecVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
    end
    object ExecTOTALBRUTO: TFloatField
      FieldName = 'TOTALBRUTO'
    end
    object ExecCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 12
    end
    object ExecCODMANUTENCAO: TFloatField
      FieldName = 'CODMANUTENCAO'
    end
    object ExecNUMEXTINTOR: TFloatField
      FieldName = 'NUMEXTINTOR'
    end
    object ExecVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
    end
    object ExecVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object ExecCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
    end
    object ExecDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object ExecDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object ExecUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object ExecDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 42
    end
    object ExecC_ENDERECO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ENDERECO'
      Size = 100
    end
    object ExecC_CNPJ: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CNPJ'
    end
    object ExecC_INSCESTADUAL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_INSCESTADUAL'
    end
    object ExecC_FONE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_FONE'
      Size = 40
    end
    object ExecC_DATAEXTENSO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DATAEXTENSO'
      Size = 50
    end
    object ExecEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
    end
    object ExecCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
    end
  end
  object dsExec: TDataSource
    DataSet = Exec
    Left = 128
    Top = 128
  end
  object DBExec: TppDBPipeline
    DataSource = dsExec
    UserName = 'DBExec'
    Left = 160
    Top = 128
  end
  object RelExec: TppReport
    AutoStop = False
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
    OnPreviewFormCreate = RelPropostaPreviewFormCreate
    Left = 192
    Top = 128
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'DBExec'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 82286
      mmPrintPosition = 0
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14817
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 14817
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Fone/Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Caption = 'CREDENCIADA NO INMETRO DO C'#211'DIGO DE REGISTRO 109'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 0
        mmTop = 21167
        mmWidth = 158486
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'C_DATAEXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 30692
        mmWidth = 89165
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 46567
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 50800
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 55033
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 59267
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 63500
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label101'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 59267
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'Fone1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 63500
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 46567
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 50800
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'ORDEM DE EXECU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 74083
        mmTop = 38100
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label301'
        Caption = 'GRAZZIOTIN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'COM. DE EXTINTORES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 2381
        mmWidth = 49742
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 0
        mmTop = 6615
        mmWidth = 197380
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 46567
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'RUA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 50800
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'DESCVENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 55033
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText101'
        DataField = 'DESCCIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 59267
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 59267
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 63500
        mmWidth = 30692
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'DESCVENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 63500
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'FONE1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 46567
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 50800
        mmWidth = 51858
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'C_ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9525
        mmWidth = 183621
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText201'
        DataField = 'C_CNPJ'
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 14817
        mmWidth = 34925
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'C_INSCESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 71967
        mmTop = 14817
        mmWidth = 37042
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'C_FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 14817
        mmWidth = 43392
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'FONE2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 127000
        mmTop = 63500
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Fone2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 63500
        mmWidth = 10319
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 0
        mmTop = 80433
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Rec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 76200
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Exec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 76200
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'N'#186'Extintor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 76200
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Tipo/Capacidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 44450
        mmTop = 76200
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 74083
        mmTop = 76200
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 76200
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 179917
        mmTop = 76200
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        Caption = 'N'#186' Prop.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 67733
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        DataField = 'NUMPROPOSTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 67733
        mmWidth = 24342
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = '(  )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 264
        mmWidth = 4233
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = '(  )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 264
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'NUMEXTINTOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'CAPACIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 44450
        mmTop = 264
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'CODNIVEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 74083
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'DESCLOCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 0
        mmWidth = 64029
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'VALORTOTAL'
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 265
        mmWidth = 24077
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'VALORTOTAL'
        DisplayFormat = ',#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 794
        mmWidth = 23813
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.75
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 7
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 1588
        mmWidth = 7673
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CODPESSOA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DBExec'
        mmHeight = 3969
        mmLeft = 10583
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
    end
  end
  object RelAnalitica: TppReport
    AutoStop = False
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
    OnPreviewFormCreate = RelPropostaPreviewFormCreate
    Left = 192
    Top = 160
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbAnalise'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 106363
      mmPrintPosition = 0
      object ppLabel60: TppLabel
        UserName = 'Label1'
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14817
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label2'
        Caption = 'Insc.Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46567
        mmTop = 14817
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label3'
        Caption = 'Fone/Fax'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'CREDENCIADA NO INMETRO DO C'#211'DIGO DE REGISTRO 109'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 0
        mmTop = 21167
        mmWidth = 158486
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText1'
        DataField = 'C_DATAEXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 95250
        mmTop = 30692
        mmWidth = 89165
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label5'
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35983
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label6'
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 40217
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label7'
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 44450
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label8'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 48683
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label9'
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 52917
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label10'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 48683
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label11'
        Caption = 'Fone1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 52917
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label12'
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 35983
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label13'
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 40217
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 
          '     Venho por meio deste, apresentar nossa proposta para aquisi' +
          #231#227'o, manuten'#231#227'o(n'#237'vel 2) ou manuten'#231#227'o n'#237'vel(3) de extintores pa' +
          'ra combate de inc'#234'ndio de vossa propriedade conforme rela'#231#227'o aba' +
          'ixo, oferecendo-lhes assim seguran'#231'a e prote'#231#227'o aos seus bens.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 13229
        mmLeft = 0
        mmTop = 74083
        mmWidth = 187590
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label15'
        Caption = 
          '    Nos colocamos a vossa inteira disposi'#231#227'o no que tange ao tre' +
          'inamento para manuseio adequado dos mesmos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 86784
        mmWidth = 177800
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label17'
        Caption = 'Equipamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 99484
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label18'
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 116417
        mmTop = 99484
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label19'
        Caption = 'Localiza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 27517
        mmTop = 99484
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label20'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147638
        mmTop = 98954
        mmWidth = 7938
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 0
        mmTop = 103717
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label29'
        Caption = 'OR'#199'AMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 78317
        mmTop = 63500
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label30'
        Caption = 'GRAZZIOTIN '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label31'
        Caption = 'COM. DE EXTINTORES LTDA.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 2381
        mmWidth = 49742
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line4'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 0
        mmTop = 6615
        mmWidth = 197380
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText7'
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 35983
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText8'
        DataField = 'RUA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 40217
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText9'
        DataField = 'DESCVENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 44450
        mmWidth = 100277
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText10'
        DataField = 'DESCCIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 48683
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText11'
        DataField = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 48683
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText12'
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 52917
        mmWidth = 30692
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText13'
        DataField = 'DESCVENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 52917
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText14'
        DataField = 'FONE1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 35983
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText15'
        DataField = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 40217
        mmWidth = 51858
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText19'
        DataField = 'C_ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9525
        mmWidth = 183621
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText20'
        DataField = 'C_CNPJ'
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 14817
        mmWidth = 34925
        BandType = 0
      end
      object ppDBText56: TppDBText
        UserName = 'DBText21'
        DataField = 'C_INSCESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 71967
        mmTop = 14817
        mmWidth = 37042
        BandType = 0
      end
      object ppDBText57: TppDBText
        UserName = 'DBText22'
        DataField = 'C_FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 14817
        mmWidth = 43392
        BandType = 0
      end
      object ppDBText58: TppDBText
        UserName = 'DBText23'
        DataField = 'FONE2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 127000
        mmTop = 52917
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label32'
        Caption = 'Fone2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 52917
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'N'#186' Prop.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 57150
        mmWidth = 13758
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText67'
        DataField = 'NUMPROPOSTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 57150
        mmWidth = 28840
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText60: TppDBText
        UserName = 'DBText3'
        DataField = 'C_CAPACIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText4'
        DataField = 'CODNIVEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 116417
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText5'
        DataField = 'DESCLOCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 27517
        mmTop = 0
        mmWidth = 74877
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText6'
        DataField = 'VALORTOTAL'
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 135467
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 75936
      mmPrintPosition = 0
      object ppLine10: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
        BandType = 7
      end
      object ppLabel84: TppLabel
        UserName = 'Label21'
        Caption = 'Total dos Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1588
        mmWidth = 31221
        BandType = 7
      end
      object CalcValor4: TppDBCalc
        UserName = 'Calc_ValorTotal'
        DataField = 'VALORTOTAL'
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 4233
        mmLeft = 135467
        mmTop = 1058
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel85: TppLabel
        UserName = 'Label22'
        Caption = 'Condi'#231#245'es de Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 16404
        mmWidth = 33867
        BandType = 7
      end
      object ppLabel86: TppLabel
        UserName = 'Label23'
        Caption = 'Validade da Proposta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 20638
        mmWidth = 35719
        BandType = 7
      end
      object ppLabel87: TppLabel
        UserName = 'Label24'
        Caption = 'Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 24871
        mmWidth = 12965
        BandType = 7
      end
      object ppLabel88: TppLabel
        UserName = 'Label25'
        Caption = 
          'Obs: Na aquisi'#231#227'o de extintores novos fica inclu'#237'do a instala'#231#227'o' +
          ', sinaliza'#231#227'o, suporte e carga inicial.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 35454
        mmWidth = 155575
        BandType = 7
      end
      object ppLabel89: TppLabel
        UserName = 'Label26'
        Caption = 
          'Sem mais para o momento e ainda reafirmando nosso compromisso de' +
          ' atend'#234'-lo da melhor forma poss'#237'vel, agradecemos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 39688
        mmWidth = 192352
        BandType = 7
      end
      object ppLabel90: TppLabel
        UserName = 'Label27'
        Caption = 'Atenciosamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 48154
        mmWidth = 25135
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line3'
        Weight = 0.75
        mmHeight = 2646
        mmLeft = 110067
        mmTop = 60854
        mmWidth = 67204
        BandType = 7
      end
      object ppLabel91: TppLabel
        UserName = 'Label28'
        Caption = 'GRAZZIOTIN COM. DE EXTINTORES LTDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 62971
        mmWidth = 70908
        BandType = 7
      end
      object ppDBText64: TppDBText
        UserName = 'DBText16'
        DataField = 'CONDPAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 16404
        mmWidth = 50536
        BandType = 7
      end
      object ppDBText65: TppDBText
        UserName = 'DBText17'
        DataField = 'VALIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 20638
        mmWidth = 50800
        BandType = 7
      end
      object ppDBText66: TppDBText
        UserName = 'DBText18'
        DataField = 'ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbAnalise'
        mmHeight = 3969
        mmLeft = 38100
        mmTop = 24871
        mmWidth = 51065
        BandType = 7
      end
      object ppVariable1: TppVariable
        UserName = 'Var_ValorExtenso'
        AutoSize = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        OnCalc = ppVariable1Calc
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 0
        mmTop = 6615
        mmWidth = 187855
        BandType = 7
      end
    end
  end
  object Qanalise: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <
      item
        DataType = ftInteger
        Name = 'NumProposta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' TPessoa.CodPessoa,'
      ' TPessoa.CodBairro,'
      ' TPessoa.Contato,'
      ' TPessoa.Fone1,'
      ' TPessoa.Nome,'
      ' TPessoa.CodCidade,'
      ' TPessoa.Rua,'
      ' TPessoa.Numero,'
      ' TPessoa.Complemento,'
      ' TBairro.DescBairro,'
      ' TCidade.DescCidade,'
      ' TCidade.Uf,'
      ' TVendedo.DescVendedor,'
      ' TVendedo.Fone,'
      ' TVendedo.Fone2,'
      ' TPropost.NumProposta ,'
      ' TPropost.CondPagto ,'
      ' TPropost.Entrega,'
      ' TPropost.Emissao,'
      ' TPropost.Validade,'
      ' TPropost.TotalBruto,'
      ' TPropost.ValorProposta,'
      ' TLocal.DescLocal,'
      ' TIPropos.Capacidade,'
      ' TIPropos.CodManutencao,'
      ' TIPropos.ValorTotal,'
      ' TIPropos.CodNivel,'
      ' TIPropos.ValorUnit'
      'FROM TPropost'
      'INNER JOIN TIPropos ON TPropost.NumProposta=TIPropos.NumProposta'
      'INNER JOIN TPessoa ON TPropost.CodPessoa=TPessoa.CodPessoa'
      'LEFT JOIN TVendedo ON TPropost.CodVendedor=TVendedo.CodVendedor'
      'LEFT JOIN TCidade ON TPessoa.CodCidade = TCidade.CodCidade'
      'LEFT JOIN TBairro ON TPessoa.CodBairro = TBairro.CodBairro'
      'LEFT JOIN TLocal ON TIPropos.CodLocal = TLocal.CodLocal'
      'WHERE NumProposta = :NumProposta')
    Left = 32
    Top = 160
  end
  object dspAnalise: TDataSetProvider
    DataSet = Qanalise
    Constraints = True
    Left = 64
    Top = 160
  end
  object Analise: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAnalise'
    OnCalcFields = AnaliseCalcFields
    Left = 96
    Top = 160
    object FloatField1: TFloatField
      FieldName = 'CODPESSOA'
    end
    object FloatField2: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object StringField1: TStringField
      FieldName = 'CONTATO'
      Size = 32
    end
    object StringField2: TStringField
      FieldName = 'FONE1'
      Size = 27
    end
    object StringField3: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object FloatField3: TFloatField
      FieldName = 'CODCIDADE'
    end
    object StringField4: TStringField
      FieldName = 'RUA'
      Size = 52
    end
    object StringField5: TStringField
      FieldName = 'NUMERO'
      Size = 18
    end
    object StringField6: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 32
    end
    object StringField7: TStringField
      FieldName = 'DESCVENDEDOR'
      Size = 42
    end
    object StringField8: TStringField
      FieldName = 'FONE'
      Size = 27
    end
    object StringField9: TStringField
      FieldName = 'FONE2'
      Size = 27
    end
    object FloatField4: TFloatField
      FieldName = 'NUMPROPOSTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField10: TStringField
      FieldName = 'CONDPAGTO'
      Size = 27
    end
    object StringField11: TStringField
      FieldName = 'ENTREGA'
      Size = 27
    end
    object StringField12: TStringField
      FieldName = 'VALIDADE'
      Size = 27
    end
    object FloatField5: TFloatField
      FieldName = 'TOTALBRUTO'
    end
    object FloatField6: TFloatField
      FieldName = 'VALORPROPOSTA'
    end
    object FloatField7: TFloatField
      FieldName = 'CODMANUTENCAO'
    end
    object FloatField9: TFloatField
      FieldName = 'VALORUNIT'
    end
    object StringField19: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
    object StringField20: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object StringField21: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object StringField22: TStringField
      FieldName = 'DESCLOCAL'
      Size = 42
    end
    object FloatField11: TFloatField
      FieldName = 'CODNIVEL'
    end
    object AnaliseC_VALORTOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VALORTOTAL'
    end
    object AnaliseVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object AnaliseC_DATAEXTENSO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DATAEXTENSO'
      Size = 50
    end
    object AnaliseEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
    end
    object AnaliseC_ENDERECO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_ENDERECO'
      Size = 60
    end
    object AnaliseC_CNPJ: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CNPJ'
    end
    object AnaliseC_INSCESTADUAL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_INSCESTADUAL'
    end
    object AnaliseC_FONE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_FONE'
      Size = 40
    end
    object AnaliseC_CAPACIDADE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_CAPACIDADE'
      Size = 15
    end
    object AnaliseCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 12
    end
  end
  object dsAnalise: TDataSource
    DataSet = Analise
    Left = 128
    Top = 160
  end
  object dbAnalise: TppDBPipeline
    DataSource = dsAnalise
    UserName = 'dbAnalise'
    Left = 160
    Top = 160
  end
  object QItens: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    DataSource = dsProposta
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMPROPOSTA'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      ' TIPropos.NumProposta,'
      ' TIPropos.Capacidade,'
      ' TIPropos.ValorTotal,'
      ' TIPropos.CodNivel,'
      ' TIPropos.ValorUnit,'
      ' count(TIPropos.Capacidade) AS Qtde'
      'from TIPropos'
      ' where TIPropos.NumProposta = :NumProposta'
      'group by '
      ' TIPropos.NumProposta,'
      ' TIPropos.Capacidade,'
      ' TIPropos.ValorTotal,'
      ' TIPropos.CodNivel,'
      ' TIPropos.ValorUnit')
    Left = 32
    Top = 80
  end
  object dspItens: TDataSetProvider
    DataSet = QItens
    Constraints = True
    Left = 64
    Top = 80
  end
  object dbItens: TppDBPipeline
    DataSource = dsItens
    UserName = 'dbItens'
    Left = 160
    Top = 80
  end
  object Itens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUMPROPOSTA'
    MasterFields = 'NUMPROPOSTA'
    MasterSource = dsProposta
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspItens'
    OnCalcFields = ItensCalcFields
    Left = 96
    Top = 80
    object ItensNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
    end
    object ItensCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 12
    end
    object ItensVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object ItensCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
    end
    object ItensVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
    end
    object ItensQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object ItensC_VALORTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_VALORTOTAL'
      Calculated = True
    end
    object ItensC_CAPACIDADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_CAPACIDADE'
      Size = 30
      Calculated = True
    end
  end
  object dsItens: TDataSource
    DataSet = Itens
    Left = 128
    Top = 80
  end
end

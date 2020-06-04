object fExtratoEstoque: TfExtratoEstoque
  Left = 147
  Top = 99
  BorderStyle = bsSingle
  Caption = 'Extrato do Estoque'
  ClientHeight = 370
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 21
    Height = 13
    Caption = 'Lote'
  end
  object Label2: TLabel
    Left = 40
    Top = 272
    Width = 42
    Height = 13
    Caption = 'Entradas'
  end
  object Label3: TLabel
    Left = 200
    Top = 272
    Width = 34
    Height = 13
    Caption = 'Sa'#237'das'
  end
  object Label4: TLabel
    Left = 368
    Top = 272
    Width = 27
    Height = 13
    Caption = 'Saldo'
  end
  object CboLote: TComboBox
    Left = 32
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
  end
  object Grade: TDBGrid
    Left = 32
    Top = 56
    Width = 457
    Height = 209
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object butOk: TButton
    Left = 184
    Top = 29
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = butOkClick
  end
  object EditEnt: TEdit
    Left = 40
    Top = 288
    Width = 121
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 3
  end
  object EditSai: TEdit
    Left = 200
    Top = 288
    Width = 121
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 4
  end
  object EditSaldo: TEdit
    Left = 368
    Top = 288
    Width = 121
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 329
    Width = 504
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 6
    object butSair: TBitBtn
      Left = 376
      Top = 8
      Width = 121
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = butSairClick
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
    end
    object BitBtn1: TBitBtn
      Left = 248
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Ajustar Estoque'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object butImprimir: TBitBtn
      Left = 120
      Top = 8
      Width = 121
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = butImprimirClick
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
    end
  end
  object Estoque: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'DOC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPOMOV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SINAL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 168
    Top = 112
    Data = {
      820000009619E0BD010000001800000005000000000003000000820004444154
      41040006000000000003444F4301004900000001000557494454480200020014
      00075449504F4D4F560100490000000100055749445448020002000100055349
      4E414C0100490000000100055749445448020002000100045154444508000400
      000000000000}
    object EstoqueDATA: TDateField
      FieldName = 'DATA'
    end
    object EstoqueDOC: TStringField
      FieldName = 'DOC'
    end
    object EstoqueTIPOMOV: TStringField
      FieldName = 'TIPOMOV'
      Size = 1
    end
    object EstoqueSINAL: TStringField
      FieldName = 'SINAL'
      Size = 1
    end
    object EstoqueQTDE: TFloatField
      FieldName = 'QTDE'
    end
  end
  object DataSource1: TDataSource
    DataSet = Estoque
    Left = 208
    Top = 112
  end
  object dtCompra: TSQLDataSet
    SQLConnection = dmBanco.BancoDados
    CommandText = 
      'select'#13#10' C.NF,'#13#10' C.DATA,'#13#10' I.QTDE'#13#10' from TCOMPRA C, TICOMPRA I'#13#10 +
      ' where C.NUMORDEM = I.NUMORDEM'#13#10' and I.LOTERESUMIDO = :LOTE'#13#10' an' +
      'd I.QTDE > 0'#13#10' order by C.DATA'
    Params = <
      item
        DataType = ftString
        Name = 'LOTE'
        ParamType = ptInput
      end>
    Left = 168
    Top = 152
    object dtCompraNF: TStringField
      FieldName = 'NF'
      Size = 8
    end
    object dtCompraDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object dtCompraQTDE: TFloatField
      FieldName = 'QTDE'
    end
  end
  object dtLote: TSQLDataSet
    SQLConnection = dmBanco.BancoDados
    CommandText = 'select LOTERESUMIDO from TESTLOTE'
    Params = <>
    Left = 328
    Top = 24
    object dtLoteLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Size = 30
    end
  end
  object dtVenda: TSQLDataSet
    SQLConnection = dmBanco.BancoDados
    CommandText = 
      'select'#13#10' O.NUMORDEM,'#13#10' O.DATAORDEM,'#13#10' I.QTDE'#13#10' from TORDEM O, TI' +
      'ORDEM I'#13#10' where O.NUMORDEM = I.NUMORDEM'#13#10' and I.LOTERESUMIDO = :' +
      'LOTE'#13#10' and I.QTDE > 0'#13#10' order by O.DATAORDEM'
    Params = <
      item
        DataType = ftString
        Name = 'LOTE'
        ParamType = ptInput
      end>
    Left = 200
    Top = 152
    object dtVendaNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object dtVendaDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object dtVendaQTDE: TFloatField
      FieldName = 'QTDE'
    end
  end
  object dbEstoque: TppDBPipeline
    DataSource = DataSource1
    UserName = 'dbEstoque'
    Left = 248
    Top = 112
    object dbEstoqueppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 0
    end
    object dbEstoqueppField2: TppField
      FieldAlias = 'DOC'
      FieldName = 'DOC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object dbEstoqueppField3: TppField
      FieldAlias = 'TIPOMOV'
      FieldName = 'TIPOMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object dbEstoqueppField4: TppField
      FieldAlias = 'SINAL'
      FieldName = 'SINAL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object dbEstoqueppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object RelEstoque: TppReport
    AutoStop = False
    PassSetting = psTwoPass
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
    OnPreviewFormCreate = RelEstoquePreviewFormCreate
    Left = 288
    Top = 112
    Version = '6.0'
    mmColumnWidth = 0
    DataPipelineName = 'dbEstoque'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Relat'#243'rio do Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 50800
        mmTop = 0
        mmWidth = 101865
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 0
        mmWidth = 17463
        BandType = 0
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 14023
        BandType = 0
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
        mmLeft = 0
        mmTop = 4233
        mmWidth = 11113
        BandType = 0
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
        mmTop = 14552
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26458
        mmTop = 14817
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Tipo Mov'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 50800
        mmTop = 14552
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Sinal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 65617
        mmTop = 14552
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 14552
        mmWidth = 6879
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.75
        mmHeight = 1323
        mmLeft = 0
        mmTop = 19050
        mmWidth = 197115
        BandType = 0
      end
      object lblLote: TppLabel
        UserName = 'lblLote'
        AutoSize = False
        Caption = 'lblLote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 50800
        mmTop = 6350
        mmWidth = 101600
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbEstoque'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbEstoque'
        mmHeight = 3440
        mmLeft = 25400
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TIPOMOV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbEstoque'
        mmHeight = 3440
        mmLeft = 50800
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'SINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbEstoque'
        mmHeight = 3440
        mmLeft = 65617
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'QTDE'
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbEstoque'
        mmHeight = 3440
        mmLeft = 82550
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Entradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 1588
        mmWidth = 15346
        BandType = 7
      end
      object VarEnt: TppVariable
        UserName = 'VarEnt'
        CalcOrder = 0
        DataType = dtDouble
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        OnCalc = VarEntCalc
        Transparent = True
        mmHeight = 3440
        mmLeft = 21167
        mmTop = 1588
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Sa'#237'das'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46567
        mmTop = 1588
        mmWidth = 11377
        BandType = 7
      end
      object VarSai: TppVariable
        UserName = 'VarSai'
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        OnCalc = VarSaiCalc
        Transparent = True
        mmHeight = 3440
        mmLeft = 61383
        mmTop = 1588
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 80433
        mmTop = 1588
        mmWidth = 9525
        BandType = 7
      end
      object varSaldo: TppVariable
        UserName = 'varSaldo'
        CalcOrder = 2
        DataType = dtDouble
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        OnCalc = varSaldoCalc
        Transparent = True
        mmHeight = 3440
        mmLeft = 95250
        mmTop = 1588
        mmWidth = 15346
        BandType = 7
      end
    end
  end
end

object fTabControle: TfTabControle
  Left = 247
  Top = 127
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tabela de Controle'
  ClientHeight = 342
  ClientWidth = 376
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
  object Panel1: TPanel
    Left = 0
    Top = 301
    Width = 376
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object butSalvar: TBitBtn
      Left = 7
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 0
      OnClick = butSalvarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object butSair: TBitBtn
      Left = 247
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
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
    object butCancelar: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = butCancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object butExc: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 1
      OnClick = butExcClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 376
    Height = 301
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Ficha'
      object Grade: TDBGrid
        Left = 0
        Top = 0
        Width = 368
        Height = 273
        Align = alClient
        DataSource = dsCad
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODTABELA'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'Pr'#243'ximo C'#243'digo'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Utilit'#225'rios'
      ImageIndex = 1
      object Label1: TLabel
        Left = 208
        Top = 8
        Width = 141
        Height = 13
        Caption = 'Atualiza Lotes no Cad.Extintor'
      end
      object lblQtde: TLabel
        Left = 288
        Top = 112
        Width = 6
        Height = 13
        Alignment = taRightJustify
        Caption = '0'
      end
      object lblTotal: TLabel
        Left = 328
        Top = 112
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label2: TLabel
        Left = 280
        Top = 56
        Width = 69
        Height = 13
        Caption = 'Atualiza S'#233'ries'
      end
      object Label3: TLabel
        Left = 304
        Top = 112
        Width = 12
        Height = 13
        Caption = 'de'
      end
      object Button1: TButton
        Left = 280
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Lotes'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 280
        Top = 72
        Width = 75
        Height = 25
        Caption = 'S'#233'ries'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
  object dsCad: TDataSource
    DataSet = TabControle
    OnStateChange = dsCadStateChange
    Left = 168
    Top = 176
  end
  object dtTabControle: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 'select CODIGO, CODTABELA from TCONTROL'
    Params = <>
    Left = 56
    Top = 176
    object dtTabControleCODTABELA: TStringField
      FieldName = 'CODTABELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object dtTabControleCODIGO: TFloatField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspTabControle: TDataSetProvider
    DataSet = dtTabControle
    Constraints = True
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 176
  end
  object TabControle: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabControle'
    Left = 128
    Top = 176
    object TabControleCODTABELA: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'CODTABELA'
      Size = 10
    end
    object TabControleCODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
  end
  object Qlote: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <>
    SQL.Strings = (
      'select LOTERESUMIDO,CODPESSOA,SERIE from TIORDEM'
      ' where LOTE is not null'
      ' and CODPESSOA is not null')
    Left = 208
    Top = 48
    object QloteLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Size = 30
    end
    object QloteCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object QloteSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
  end
  object dtExt: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 
      'select SERIE,CONTROLE from TCLIEXT'#13#10' where CODPESSOA is not null' +
      #13#10' and SERIE is null'
    Params = <>
    Left = 56
    Top = 104
    object dtExtCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dtExtSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dspExt: TDataSetProvider
    DataSet = dtExt
    Constraints = True
    Left = 88
    Top = 104
  end
  object CliExt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExt'
    Left = 120
    Top = 104
    object CliExtCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object CliExtSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
  end
end

object fCompra: TfCompra
  Left = 86
  Top = 82
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Compra'
  ClientHeight = 422
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 43
    Height = 13
    Caption = 'N'#186'Ordem'
  end
  object Label2: TLabel
    Left = 88
    Top = 16
    Width = 39
    Height = 13
    Caption = 'Emiss'#227'o'
  end
  object Label3: TLabel
    Left = 192
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Data Nota'
  end
  object Label4: TLabel
    Left = 296
    Top = 16
    Width = 35
    Height = 13
    Caption = 'N'#186'Nota'
  end
  object Label5: TLabel
    Left = 16
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Fornecedor'
  end
  object butPessoa: TSpeedButton
    Left = 387
    Top = 71
    Width = 23
    Height = 22
    Hint = 'Pesquisa Cadastro'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
      3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
      33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
      333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = butPessoaClick
  end
  object Label6: TLabel
    Left = 472
    Top = 360
    Width = 37
    Height = 16
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Data: TDBEdit
    Left = 88
    Top = 32
    Width = 89
    Height = 21
    DataField = 'DATA'
    DataSource = dsCad
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 32
    Width = 89
    Height = 21
    DataField = 'DATANOTA'
    DataSource = dsCad
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 296
    Top = 32
    Width = 89
    Height = 21
    DataField = 'NF'
    DataSource = dsCad
    TabOrder = 3
  end
  object CodPessoa: TDBEdit
    Left = 16
    Top = 72
    Width = 57
    Height = 21
    DataField = 'CODPESSOA'
    DataSource = dsCad
    TabOrder = 4
    OnEnter = CodPessoaEnter
    OnExit = CodPessoaExit
  end
  object NumOrdem: TMaskEdit
    Left = 16
    Top = 32
    Width = 57
    Height = 21
    EditMask = '#######;0;_'
    MaxLength = 7
    TabOrder = 0
    Text = ''
    OnEnter = NumOrdemEnter
    OnExit = NumOrdemExit
  end
  object Nome: TEdit
    Left = 80
    Top = 72
    Width = 305
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 5
    OnEnter = NomeEnter
    OnExit = NomeExit
  end
  object grade: TDBGrid
    Left = 19
    Top = 97
    Width = 609
    Height = 249
    DataSource = dsItens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = gradeDblClick
    OnEnter = gradeEnter
    OnExit = gradeExit
    OnKeyDown = gradeKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'LOTERESUMIDO'
        Title.Caption = 'Lote'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Qtde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Title.Caption = 'Valor Total'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 381
    Width = 636
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 7
    object butExc: TBitBtn
      Left = 304
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      Enabled = False
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
      TabOrder = 1
      OnClick = butExcClick
    end
    object butSalvar: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Enabled = False
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
      TabOrder = 0
      OnClick = butSalvarClick
    end
    object butSair: TBitBtn
      Left = 544
      Top = 8
      Width = 75
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
      TabOrder = 4
      OnClick = butSairClick
    end
    object butPesq: TBitBtn
      Left = 464
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = butPesqClick
    end
    object butExcTudo: TBitBtn
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exc. &Tudo'
      Enabled = False
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
      TabOrder = 2
      OnClick = butExcTudoClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 520
    Top = 352
    Width = 105
    Height = 24
    DataField = 'TOTALCOMPRA'
    DataSource = dsItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object NumItem: TDBEdit
    Left = 464
    Top = 24
    Width = 49
    Height = 21
    DataField = 'QTDEITENS'
    DataSource = dsItens
    TabOrder = 9
    Visible = False
  end
  object dsCad: TDataSource
    DataSet = DM.Compra
    OnStateChange = dsCadStateChange
    Left = 176
    Top = 152
  end
  object Pesq: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CODPESSOA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' NOME '
      'from TPESSOA'
      'where CODPESSOA = :CODPESSOA')
    SQLConnection = DmBanco.BancoDados
    Left = 216
    Top = 152
    object PesqNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsItens: TDataSource
    DataSet = DM.ItensCompra
    Left = 360
    Top = 232
  end
end

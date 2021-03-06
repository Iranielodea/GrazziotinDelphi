object fCliExtintor: TfCliExtintor
  Left = 298
  Top = 126
  Width = 697
  Height = 458
  Caption = 'Cliente e Extintores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 81
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
    end
    object Label3: TLabel
      Left = 24
      Top = 64
      Width = 21
      Height = 13
      Caption = 'Selo'
    end
    object butPessoa: TSpeedButton
      Left = 379
      Top = 7
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
    object CodPessoa: TMaskEdit
      Left = 64
      Top = 8
      Width = 57
      Height = 21
      EditMask = '#######;0;_'
      MaxLength = 7
      TabOrder = 0
      OnEnter = CodPessoaEnter
      OnExit = CodPessoaExit
    end
    object Nome: TEdit
      Left = 128
      Top = 8
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      TabOrder = 1
      OnExit = NomeExit
    end
    object Serie: TEdit
      Left = 64
      Top = 32
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object NumSelo: TMaskEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 192
      Top = 28
      Width = 185
      Height = 49
      Caption = 'Extintores:'
      TabOrder = 4
      object RAtivo: TRadioButton
        Left = 8
        Top = 20
        Width = 57
        Height = 17
        Caption = 'Ativos'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RInativo: TRadioButton
        Left = 64
        Top = 20
        Width = 65
        Height = 17
        Caption = 'Inativos'
        TabOrder = 1
      end
      object RTodos: TRadioButton
        Left = 128
        Top = 20
        Width = 49
        Height = 17
        Caption = 'Todos'
        TabOrder = 2
      end
    end
    object butOk: TBitBtn
      Left = 385
      Top = 52
      Width = 64
      Height = 25
      Caption = '&Mostrar'
      TabOrder = 5
      OnClick = butOkClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object butUltSelo: TBitBtn
      Left = 560
      Top = 48
      Width = 113
      Height = 25
      Caption = 'Aj'#250'stes '#218'ltimos Selos'
      Enabled = False
      TabOrder = 6
      OnClick = butUltSeloClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 383
    Width = 689
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object butExc: TBitBtn
      Left = 517
      Top = 8
      Width = 75
      Height = 25
      Caption = 'F4-&Excluir'
      TabOrder = 0
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
    object butFechar: TBitBtn
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = butFecharClick
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
  end
  object Grade: TDBGrid
    Left = 0
    Top = 81
    Width = 689
    Height = 302
    Align = alClient
    DataSource = dsExtintor
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GradeDblClick
    OnEnter = GradeEnter
    OnExit = GradeExit
    OnKeyDown = GradeKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#186
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAPACIDADE'
        Title.Caption = 'Capacidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCMARCA'
        Title.Caption = 'Marca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANOFAB'
        Title.Caption = 'Ano Fab.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCTO'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCTOCARGA'
        Title.Caption = 'Vencto. Carga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACARGA'
        Title.Caption = 'Data Carga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Ativo/Inat.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCLOCAL'
        Title.Caption = 'Localiza'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SELO'
        Title.Caption = 'N'#186' Selo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONSERVACAO'
        Title.Caption = 'Conserva'#231#227'o'
        Visible = True
      end>
  end
  object dtAux: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 
      'select'#13#10'extract(YEAR from C.ANOFAB) AS ANOFAB,'#13#10'extract(YEAR fro' +
      'm C.VENCIMENTO) AS VENCTO,'#13#10'extract(MONTH from C.VENCTOCARGA)||"' +
      '/"||extract(YEAR from C.VENCTOCARGA) AS VENCTOCARGA,'#13#10'C.CAPACIDA' +
      'DE,'#13#10'C.CODLOCAL,'#13#10'C.CODMARCA,'#13#10'C.CODPESSOA,'#13#10'C.CONSERVACAO,'#13#10'C.C' +
      'ONTROLE,'#13#10'C.DATACARGA,'#13#10'C.NUMERO,'#13#10'C.SELO,'#13#10'C.SERIE,'#13#10'C.SITUACAO' +
      ','#13#10'C.ULTIMOSELO,'#13#10'M.DESCMARCA,'#13#10'L.DESCLOCAL'#13#10'FROM TCLIEXT C'#13#10' le' +
      'ft join TMARCA M on C.CODMARCA = M.CODMARCA'#13#10' left join TLOCAL L' +
      ' on C.CODLOCAL = L.CODLOCAL'#13#10
    Params = <>
    Left = 72
    Top = 160
    object dtAuxANOFAB: TSmallintField
      FieldName = 'ANOFAB'
    end
    object dtAuxVENCTO: TSmallintField
      FieldName = 'VENCTO'
    end
    object dtAuxVENCTOCARGA: TStringField
      FieldName = 'VENCTOCARGA'
      Size = 13
    end
    object dtAuxCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object dtAuxCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
    end
    object dtAuxCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object dtAuxCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object dtAuxCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      Size = 6
    end
    object dtAuxCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object dtAuxDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
    end
    object dtAuxNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object dtAuxSELO: TFloatField
      FieldName = 'SELO'
    end
    object dtAuxSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object dtAuxSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object dtAuxULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object dtAuxDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object dtAuxDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 40
    end
  end
  object QExtintor: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 
      'select'#13#10'extract(YEAR from C.ANOFAB) AS ANOFAB,'#13#10'extract(YEAR fro' +
      'm C.VENCIMENTO) AS VENCTO,'#13#10'extract(MONTH from C.VENCTOCARGA)||"' +
      '/"||extract(YEAR from C.VENCTOCARGA) AS VENCTOCARGA,'#13#10'C.CAPACIDA' +
      'DE,'#13#10'C.CODLOCAL,'#13#10'C.CODMARCA,'#13#10'C.CODPESSOA,'#13#10'C.CONSERVACAO,'#13#10'C.C' +
      'ONTROLE,'#13#10'C.DATACARGA,'#13#10'C.NUMERO,'#13#10'C.SELO,'#13#10'C.SERIE,'#13#10'C.SITUACAO' +
      ','#13#10'C.ULTIMOSELO,'#13#10'M.DESCMARCA,'#13#10'L.DESCLOCAL'#13#10'FROM TCLIEXT C'#13#10' le' +
      'ft join TMARCA M on C.CODMARCA = M.CODMARCA'#13#10' left join TLOCAL L' +
      ' on C.CODLOCAL = L.CODLOCAL'#13#10
    Params = <>
    Left = 112
    Top = 160
    object QExtintorCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object QExtintorANOFAB: TSmallintField
      FieldName = 'ANOFAB'
    end
    object QExtintorVENCTO: TSmallintField
      FieldName = 'VENCTO'
    end
    object QExtintorVENCTOCARGA: TStringField
      FieldName = 'VENCTOCARGA'
      Size = 13
    end
    object QExtintorCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object QExtintorCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
    end
    object QExtintorCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object QExtintorCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object QExtintorCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      Size = 6
    end
    object QExtintorDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
    end
    object QExtintorNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object QExtintorSELO: TFloatField
      FieldName = 'SELO'
    end
    object QExtintorSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object QExtintorSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object QExtintorULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object QExtintorDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object QExtintorDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 40
    end
  end
  object dspExtintor: TDataSetProvider
    DataSet = QExtintor
    Constraints = True
    Options = [poAllowCommandText]
    Left = 144
    Top = 160
  end
  object Extintor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExtintor'
    Left = 176
    Top = 160
    object ExtintorANOFAB: TSmallintField
      FieldName = 'ANOFAB'
    end
    object ExtintorVENCTO: TSmallintField
      FieldName = 'VENCTO'
    end
    object ExtintorVENCTOCARGA: TStringField
      FieldName = 'VENCTOCARGA'
      Size = 13
    end
    object ExtintorCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object ExtintorCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
    end
    object ExtintorCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object ExtintorCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object ExtintorCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      Size = 6
    end
    object ExtintorCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object ExtintorDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
    end
    object ExtintorNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object ExtintorSELO: TFloatField
      FieldName = 'SELO'
    end
    object ExtintorSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object ExtintorSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object ExtintorULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object ExtintorDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object ExtintorDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 40
    end
  end
  object dsExtintor: TDataSource
    DataSet = Extintor
    OnStateChange = dsExtintorStateChange
    Left = 208
    Top = 160
  end
  object QUltSelo: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   first 5'
      '   ITE.NUMSELO,'
      '   SER.DATAORDEM,'
      '   SER.NUMORDEM'
      'from TIORDEM ITE'
      '   inner join TORDEM SER on ITE.NUMORDEM = SER.NUMORDEM'
      '   where SER.CODPESSOA = :CODPESSOA'
      '   and ITE.SERIE = :SERIE'
      '   order by SER.DATAORDEM desc, SER.NUMORDEM desc')
    Left = 392
    Top = 232
    object QUltSeloNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object QUltSeloDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object QUltSeloNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
  end
end

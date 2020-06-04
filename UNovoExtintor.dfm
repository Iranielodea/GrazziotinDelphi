object fNovoExtintor: TfNovoExtintor
  Left = 204
  Top = 188
  BorderStyle = bsDialog
  Caption = 'Extintor'
  ClientHeight = 217
  ClientWidth = 637
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 24
    Height = 13
    Caption = 'S'#233'rie'
  end
  object Label4: TLabel
    Left = 104
    Top = 8
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object butMarca: TSpeedButton
    Left = 315
    Top = 24
    Width = 20
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
    OnClick = butMarcaClick
  end
  object Label3: TLabel
    Left = 368
    Top = 8
    Width = 57
    Height = 13
    Caption = 'Capacidade'
  end
  object Label5: TLabel
    Left = 472
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Ano Fab'
  end
  object Label6: TLabel
    Left = 552
    Top = 8
    Width = 64
    Height = 13
    Caption = 'Vencto Teste'
  end
  object Label8: TLabel
    Left = 16
    Top = 48
    Width = 57
    Height = 13
    Caption = 'Localiza'#231#227'o'
  end
  object lblSerie: TLabel
    Left = 96
    Top = 48
    Width = 142
    Height = 13
    Caption = 'F2-Para S'#233'rie em Branco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object butLocal: TSpeedButton
    Left = 315
    Top = 64
    Width = 22
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
    OnClick = butLocalClick
  end
  object Label9: TLabel
    Left = 368
    Top = 48
    Width = 63
    Height = 13
    Caption = 'Conserva'#231#227'o'
  end
  object Label10: TLabel
    Left = 472
    Top = 48
    Width = 62
    Height = 13
    Caption = 'N'#186' no Cliente'
  end
  object Label14: TLabel
    Left = 552
    Top = 48
    Width = 69
    Height = 13
    Caption = 'Data da Carga'
  end
  object Label15: TLabel
    Left = 16
    Top = 88
    Width = 65
    Height = 13
    Caption = 'Vencto Carga'
  end
  object Label12: TLabel
    Left = 112
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Selo Atual'
  end
  object Label7: TLabel
    Left = 216
    Top = 88
    Width = 52
    Height = 13
    Caption = 'Refer'#234'ncia'
  end
  object Label13: TLabel
    Left = 368
    Top = 88
    Width = 60
    Height = 13
    Caption = 'Selo Anterior'
  end
  object Label11: TLabel
    Left = 472
    Top = 88
    Width = 58
    Height = 13
    Caption = 'Lote/Compl.'
  end
  object Descricao: TDBEdit
    Left = 16
    Top = 24
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SERIE'
    DataSource = dsCad
    TabOrder = 0
    OnEnter = DescricaoEnter
    OnExit = DescricaoExit
    OnKeyDown = DescricaoKeyDown
  end
  object CodMarca: TDBEdit
    Left = 104
    Top = 24
    Width = 43
    Height = 21
    DataField = 'CODMARCA'
    DataSource = dsCad
    TabOrder = 1
    OnEnter = CodMarcaEnter
    OnExit = CodMarcaExit
  end
  object DescMarca: TEdit
    Left = 152
    Top = 24
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 2
    OnEnter = DescMarcaEnter
    OnExit = DescMarcaExit
  end
  object Capacidade: TDBEdit
    Left = 368
    Top = 24
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CAPACIDADE'
    DataSource = dsCad
    TabOrder = 3
    OnExit = CapacidadeExit
  end
  object AnoFab: TMaskEdit
    Left = 472
    Top = 24
    Width = 57
    Height = 21
    EditMask = '####'
    MaxLength = 4
    TabOrder = 4
    Text = '    '
    OnExit = AnoFabExit
  end
  object VenctoTeste: TMaskEdit
    Left = 552
    Top = 24
    Width = 65
    Height = 21
    EditMask = '####'
    MaxLength = 4
    TabOrder = 5
    Text = '    '
    OnExit = VenctoTesteExit
  end
  object CodLocal: TDBEdit
    Left = 16
    Top = 64
    Width = 45
    Height = 21
    DataField = 'CODLOCAL'
    DataSource = dsCad
    TabOrder = 6
    OnEnter = CodLocalEnter
    OnExit = CodLocalExit
  end
  object DBEdit7: TDBEdit
    Left = 368
    Top = 64
    Width = 96
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONSERVACAO'
    DataSource = dsCad
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 472
    Top = 64
    Width = 56
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsCad
    TabOrder = 9
  end
  object DataCarga: TDBEdit
    Left = 552
    Top = 64
    Width = 65
    Height = 21
    DataField = 'DATACARGA'
    DataSource = dsCad
    TabOrder = 10
    OnKeyDown = DataCargaKeyDown
  end
  object VenctoCarga: TMaskEdit
    Left = 16
    Top = 104
    Width = 79
    Height = 21
    EditMask = '##/####'
    MaxLength = 7
    TabOrder = 11
    Text = '  /    '
    OnExit = VenctoCargaExit
  end
  object Selo: TDBEdit
    Left = 112
    Top = 104
    Width = 89
    Height = 21
    DataField = 'SELO'
    DataSource = dsCad
    TabOrder = 12
  end
  object DBEdit1: TDBEdit
    Left = 216
    Top = 104
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    DataField = 'REFERENCIA'
    DataSource = dsCad
    TabOrder = 13
  end
  object DBEdit12: TDBEdit
    Left = 368
    Top = 104
    Width = 97
    Height = 21
    DataField = 'ULTIMOSELO'
    DataSource = dsCad
    TabOrder = 14
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 16
    Top = 128
    Width = 129
    Height = 41
    Caption = 'Extintor:'
    Columns = 2
    DataField = 'SITUACAO'
    DataSource = dsCad
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 16
    Values.Strings = (
      'A'
      'I')
  end
  object DBEdit2: TDBEdit
    Left = 472
    Top = 104
    Width = 97
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    DataField = 'LOTERESUMIDO'
    DataSource = dsCad
    TabOrder = 15
  end
  object Panel4: TPanel
    Left = 0
    Top = 176
    Width = 637
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 17
    object butCancelar: TBitBtn
      Left = 545
      Top = 5
      Width = 72
      Height = 33
      Caption = '&Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = butCancelarClick
    end
    object butOk: TBitBtn
      Left = 385
      Top = 5
      Width = 72
      Height = 33
      Caption = '&OK'
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
      TabOrder = 0
      OnClick = butOkClick
    end
    object butInc: TBitBtn
      Left = 465
      Top = 5
      Width = 72
      Height = 33
      Caption = '&Novo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = butIncClick
    end
  end
  object DescLocal: TEdit
    Left = 72
    Top = 64
    Width = 241
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 7
    OnEnter = DescLocalEnter
    OnExit = DescLocalExit
  end
  object CodPessoa: TEdit
    Left = 192
    Top = 0
    Width = 49
    Height = 21
    TabOrder = 18
    Visible = False
  end
  object dsCad: TDataSource
    DataSet = DM.Extintor
    OnStateChange = dsCadStateChange
    Left = 192
    Top = 136
  end
  object Pesq: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTROLE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' extract(year from C.ANOFAB) as ANOFAB,'
      ' extract(year from C.VENCIMENTO) as VENCTO_TESTE,'
      
        ' extract(month from C.VENCTOCARGA)||"/"||extract(year from C.VEN' +
        'CTOCARGA) as VENCTO_CARGA,'
      ' M.DESCMARCA,'
      ' L.DESCLOCAL'
      'from TCLIEXT C'
      'left join TMARCA M on C.CODMARCA = M.CODMARCA'
      'left join TLOCAL L on C.CODLOCAL = L.CODLOCAL'
      'where C.CONTROLE = :CONTROLE'
      '')
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 136
    object PesqANOFAB: TSmallintField
      FieldName = 'ANOFAB'
    end
    object PesqVENCTO_CARGA: TStringField
      FieldName = 'VENCTO_CARGA'
      Size = 13
    end
    object PesqDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
    object PesqDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 40
    end
    object PesqVENCTO_TESTE: TSmallintField
      FieldName = 'VENCTO_TESTE'
    end
  end
end

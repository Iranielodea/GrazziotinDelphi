object fJCompra: TfJCompra
  Left = 46
  Top = 96
  BorderStyle = bsDialog
  Caption = 'Pesquisa Compra'
  ClientHeight = 341
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 57
    Height = 13
    Caption = 'Emiss'#227'o de:'
  end
  object Label2: TLabel
    Left = 176
    Top = 24
    Width = 19
    Height = 13
    Caption = 'At'#233':'
  end
  object Label3: TLabel
    Left = 24
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Fornecedor'
  end
  object butPessoa: TSpeedButton
    Left = 459
    Top = 40
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
  object DataIni: TMaskEdit
    Left = 88
    Top = 16
    Width = 73
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object Datafin: TMaskEdit
    Left = 200
    Top = 16
    Width = 73
    Height = 21
    EditMask = '##/##/####'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object CodPessoa: TMaskEdit
    Left = 88
    Top = 40
    Width = 48
    Height = 21
    EditMask = '#####;0;_'
    MaxLength = 5
    TabOrder = 2
    OnExit = CodPessoaExit
  end
  object Nome: TEdit
    Left = 144
    Top = 40
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    Color = clSilver
    TabOrder = 3
    OnExit = NomeExit
  end
  object Grade: TDBGrid
    Left = 8
    Top = 72
    Width = 633
    Height = 217
    DataSource = dsPesquisa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GradeDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMORDEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 341
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALCOMPRA'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 649
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 6
    object butConf: TBitBtn
      Left = 480
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      Enabled = False
      ModalResult = 1
      TabOrder = 0
      OnClick = butConfClick
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
    object butCancel: TBitBtn
      Left = 560
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
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
    end
  end
  object butMostra: TBitBtn
    Left = 560
    Top = 40
    Width = 81
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 4
    OnClick = butMostraClick
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
  object QPesq: TSQLDataSet
    SQLConnection = DmBanco.BancoDados
    CommandText = 
      'select'#13#10' C.DATA,'#13#10' C.NUMORDEM,'#13#10' C.NF,'#13#10' P.NOME,'#13#10' C.TOTALCOMPRA' +
      #13#10'from TCOMPRA C, TPESSOA P'#13#10'where C.CODPESSOA = P.CODPESSOA'#13#10' '
    Params = <>
    Left = 88
    Top = 112
    object QPesqDATA: TSQLTimeStampField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DATA'
    end
    object QPesqNUMORDEM: TFloatField
      DisplayLabel = 'N'#186'Ordem'
      FieldName = 'NUMORDEM'
    end
    object QPesqNF: TStringField
      FieldName = 'NF'
      Size = 8
    end
    object QPesqNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 70
    end
    object QPesqTOTALCOMPRA: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTALCOMPRA'
    end
  end
  object dsPesquisa: TDataSource
    DataSet = Pesq
    OnStateChange = dsPesquisaStateChange
    Left = 184
    Top = 112
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = QPesq
    Constraints = True
    Options = [poAllowCommandText]
    Left = 120
    Top = 112
  end
  object Pesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 152
    Top = 112
    object PesqDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object PesqNUMORDEM: TFloatField
      DisplayLabel = 'N'#186'Ordem'
      FieldName = 'NUMORDEM'
    end
    object PesqNF: TStringField
      FieldName = 'NF'
      Size = 8
    end
    object PesqNOME: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Size = 70
    end
    object PesqTOTALCOMPRA: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTALCOMPRA'
      DisplayFormat = ',##0.00'
    end
  end
end

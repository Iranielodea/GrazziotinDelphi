object frmOSCliente: TfrmOSCliente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisa de Clientes'
  ClientHeight = 342
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TDBGrid
    Left = 0
    Top = 0
    Width = 575
    Height = 301
    Align = alClient
    DataSource = dsCad
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = GridKeyDown
    OnTitleClick = GridTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPESSOA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nome'
        Width = 460
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 301
    Width = 575
    Height = 41
    Align = alBottom
    Caption = '[ENTER] - Selecionar   [ESC] - Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 288
    ExplicitTop = 293
    ExplicitWidth = 185
  end
  object dsCad: TDataSource
    DataSet = dmOrdemServico.cdsBuscarCliente
    Left = 328
    Top = 112
  end
end

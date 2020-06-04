object fIntervaloSelo: TfIntervaloSelo
  Left = 354
  Top = 211
  BorderStyle = bsDialog
  Caption = 'Intervalo de Selos'
  ClientHeight = 204
  ClientWidth = 481
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
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 51
    Height = 13
    Caption = 'Selo Inicial'
  end
  object Label2: TLabel
    Left = 56
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Selo Final'
  end
  object edtSeloInicial: TDBEdit
    Left = 128
    Top = 32
    Width = 153
    Height = 21
    DataField = 'SELOINICIAL'
    DataSource = dsCad
    TabOrder = 0
  end
  object edtSeloFinal: TDBEdit
    Left = 128
    Top = 64
    Width = 153
    Height = 21
    DataField = 'SELOFINAL'
    DataSource = dsCad
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 163
    Width = 481
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object btnSalvar: TBitBtn
      Left = 136
      Top = 8
      Width = 100
      Height = 25
      Caption = '&Salvar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnSair: TBitBtn
      Left = 240
      Top = 8
      Width = 100
      Height = 25
      Caption = 'Sai&r'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnSairClick
    end
  end
  object dsCad: TDataSource
    DataSet = DM.dtTabControle
    Left = 328
    Top = 32
  end
end

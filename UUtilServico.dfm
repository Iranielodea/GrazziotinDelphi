object fUtilServico: TfUtilServico
  Left = 192
  Top = 140
  Width = 340
  Height = 206
  Caption = 'fUtilServico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object QExtintor: TSQLQuery
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
      'Select'
      '   CONTROLE'
      'from TCLIEXT'
      '   where CODPESSOA = :CODPESSOA'
      '   and SERIE = :SERIE')
    Left = 56
    Top = 32
    object QExtintorCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
  end
  object QUltimo: TSQLQuery
    SQLConnection = DmBanco.BancoDados
    Params = <
      item
        DataType = ftInteger
        Name = 'CODPESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMORDEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   first 1'
      '   I.VENCIMENTO,'
      '   I.DATACARGA,'
      '   I.ANOFAB,'
      '   I.CODMARCA,'
      '   I.CAPACIDADE,'
      '   I.DATACARREGAMENTO,'
      '   I.CONSERVACAO,'
      '   I.NUMSELO,'
      '   I.NUMERO,'
      '   I.CODPROJETO,'
      '   I.CODCAPACIDADE,'
      '   I.PESO,'
      '   I.TIPO,'
      '   I.LOTERESUMIDO,'
      '   S.DATAORDEM,'
      '   S.NUMORDEM,'
      '   S.CODPESSOA'
      'from TORDEM S'
      ''
      '   inner join TIORDEM I on S.NUMORDEM = I.NUMORDEM'
      ''
      '   where S.CODPESSOA = :CODPESSOA'
      '   and S.NUMORDEM < :NUMORDEM'
      '   and I.SERIE = :SERIE'
      '   order by S.DATAORDEM desc, S.NUMORDEM desc')
    Left = 128
    Top = 32
    object QUltimoVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
    end
    object QUltimoDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
    end
    object QUltimoANOFAB: TSQLTimeStampField
      FieldName = 'ANOFAB'
    end
    object QUltimoCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object QUltimoCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object QUltimoDATACARREGAMENTO: TSQLTimeStampField
      FieldName = 'DATACARREGAMENTO'
    end
    object QUltimoCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      Size = 10
    end
    object QUltimoNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object QUltimoNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object QUltimoCODPROJETO: TStringField
      FieldName = 'CODPROJETO'
      Size = 15
    end
    object QUltimoCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
    end
    object QUltimoPESO: TFloatField
      FieldName = 'PESO'
    end
    object QUltimoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QUltimoLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Size = 30
    end
    object QUltimoDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
    end
    object QUltimoNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object QUltimoCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
  end
end

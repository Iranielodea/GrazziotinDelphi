object DMR: TDMR
  OldCreateOrder = False
  Height = 168
  Width = 424
  object QSeloAnt: TSQLQuery
    MaxBlobSize = -1
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
      '   ITE.NUMSELO,'
      '   ITE.NUMORDEM,'
      '   MAX(ORD.dataordem) as data'
      'from TORDEM ORD'
      '   inner join TIORDEM ITE on ORD.numordem = ITE.numordem'
      ''
      '   where ord.codpessoa = :CODPESSOA'
      '   and ite.serie = :SERIE'
      ''
      '   group by'
      '   ite.numselo,'
      '   ITE.NUMORDEM'
      '   order by ITE.NUMORDEM DESC, 3 desc')
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 16
    object QSeloAntNUMSELO: TFloatField
      FieldName = 'NUMSELO'
    end
    object QSeloAntNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object QSeloAntDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
  end
  object spUltimoSelo: TSQLStoredProc
    MaxBlobSize = -1
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
      end
      item
        DataType = ftInteger
        Name = 'NUMSELO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SELOANTERIOR'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end
      item
        DataType = ftTimeStamp
        Name = 'DATA'
        ParamType = ptOutput
        Size = 16
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'NUMORDEM'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = DmBanco.BancoDados
    StoredProcName = 'SP_ULTIMOSELO'
    Left = 88
    Top = 16
  end
  object QManutencao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select RETESTE from TMANUT'
      ' where CODMANUTENCAO = :CODIGO')
    SQLConnection = DmBanco.BancoDados
    Left = 168
    Top = 24
    object QManutencaoRETESTE: TStringField
      FieldName = 'RETESTE'
      FixedChar = True
      Size = 1
    end
  end
end

object dmOrdemServico: TdmOrdemServico
  OldCreateOrder = False
  Height = 219
  Width = 342
  object QBuscarSerie: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  distinct'
      '  o.codpessoa,'
      '  p.nome'
      'FROM tordem o'
      '  INNER JOIN tiordem i On o.numordem = i.numordem'
      '  INNER JOIN tpessoa p On o.codpessoa = p.codpessoa'
      'WHERE i.serie = :Serie'
      'ORDER BY o.dataordem desc')
    SQLConnection = DmBanco.BancoDados
    Left = 32
    Top = 16
  end
  object QOrdem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Data'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodPessoa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  FIRST 1'
      '  t.numordem'
      'FROM tordem t'
      '  WHERE t.dataordem = :Data'
      '  AND t.codpessoa = :CodPessoa')
    SQLConnection = DmBanco.BancoDados
    Left = 32
    Top = 72
    object QOrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
  end
  object cdsBuscarCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
      end>
    ProviderName = 'dspBuscarSerie'
    Left = 128
    Top = 16
    object cdsBuscarClienteCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object cdsBuscarClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspBuscarSerie: TDataSetProvider
    DataSet = QBuscarSerie
    Left = 80
    Top = 16
  end
  object QSeloOrdem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'selo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  distinct'
      '  e.codpessoa,'
      '  e.serie,'
      '  p.nome'
      'FROM tcliext e'
      '  INNER JOIN tpessoa p On e.codpessoa = p.codpessoa'
      '  WHERE e.selo = :selo')
    SQLConnection = DmBanco.BancoDados
    Left = 32
    Top = 128
  end
  object dspSeloOrdem: TDataSetProvider
    DataSet = QSeloOrdem
    Left = 72
    Top = 128
  end
  object cdsSeloOrdem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'selo'
        ParamType = ptInput
      end>
    ProviderName = 'dspSeloOrdem'
    Left = 112
    Top = 128
    object cdsSeloOrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object cdsSeloOrdemSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object cdsSeloOrdemNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
end

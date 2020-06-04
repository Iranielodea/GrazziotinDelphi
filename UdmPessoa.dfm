object dmPessoa: TdmPessoa
  OldCreateOrder = False
  Height = 150
  Width = 215
  object sqlPessoa: TSQLDataSet
    CommandText = 
      'select CEP, CGC, CODBAIRRO, CODCIDADE, CODPESSOA, CODVENDEDOR, C' +
      'OMPLEMENTO, CONTATO, CPF, EMAIL, FAX, FONE1, FONE2, INSCESTADUAL' +
      ', NOME, NUMERO, OBS, OBSERVACAO, RG, RUA, SITE, TIPO, TIPOPESSOA' +
      ' from TPESSOA'#13#10'where CODPESSOA = :CODPESSOA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFloat
        Name = 'CODPESSOA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 32
    Top = 24
    object sqlPessoaCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlPessoaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object sqlPessoaCGC: TStringField
      FieldName = 'CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object sqlPessoaCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPessoaCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPessoaCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPessoaCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPessoaCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object sqlPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlPessoaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sqlPessoaFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sqlPessoaFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sqlPessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPessoaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 70
    end
    object sqlPessoaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object sqlPessoaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object sqlPessoaRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
    end
    object sqlPessoaRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sqlPessoaSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlPessoaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sqlPessoa
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 24
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'CODPESSOA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPessoa'
    BeforePost = cdsPessoaBeforePost
    Left = 56
    Top = 80
    object cdsPessoaCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsPessoaCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object cdsPessoaCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object cdsPessoaCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object cdsPessoaCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
    end
    object cdsPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsPessoaCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object cdsPessoaCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsPessoaFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object cdsPessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsPessoaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object cdsPessoaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
    end
    object cdsPessoaRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object cdsPessoaSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object cdsPessoaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
  end
end

object dmParametro: TdmParametro
  OldCreateOrder = False
  Height = 150
  Width = 215
  object sqlCadastro: TSQLDataSet
    CommandText = 
      'select PARAM_DATA, PARAM_INTEIRO, PARAM_STRING, PARAM_VALOR from' +
      ' TPARAMETRO'#13#10' where SIGLA = :SIGLA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 40
    Top = 40
    object sqlCadastroPARAM_DATA: TSQLTimeStampField
      FieldName = 'PARAM_DATA'
    end
    object sqlCadastroPARAM_INTEIRO: TIntegerField
      FieldName = 'PARAM_INTEIRO'
    end
    object sqlCadastroPARAM_STRING: TStringField
      FieldName = 'PARAM_STRING'
      Size = 100
    end
    object sqlCadastroPARAM_VALOR: TFMTBCDField
      FieldName = 'PARAM_VALOR'
      Precision = 15
      Size = 6
    end
  end
end

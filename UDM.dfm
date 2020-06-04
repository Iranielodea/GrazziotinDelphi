object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 466
  Width = 704
  object dtEmpresa: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select '#13#10'CEP, '#13#10'CGC, '#13#10'CODBAIRRO, '#13#10'CODCIDADE, '#13#10'CODEMPRESA, '#13#10'C' +
      'OMPLEMENTO, '#13#10'FONEFAX, '#13#10'FRANQUEADA, '#13#10'INSCESTADUAL, '#13#10'NOME, '#13#10'N' +
      'ROIMETRO, '#13#10'NUMERO, '#13#10'RUA,'#13#10'VERSAO '#13#10' from TMEMP'#13#10' where NOME li' +
      'ke :NOME'#13#10' order by NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 8
    object dtEmpresaCODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEmpresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEmpresaCGC: TStringField
      FieldName = 'CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dtEmpresaCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object dtEmpresaCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dtEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtEmpresaFONEFAX: TStringField
      FieldName = 'FONEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dtEmpresaFRANQUEADA: TStringField
      FieldName = 'FRANQUEADA'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object dtEmpresaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object dtEmpresaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object dtEmpresaNROIMETRO: TStringField
      FieldName = 'NROIMETRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEmpresaRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dtEmpresaVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = dtEmpresa
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 8
  end
  object Empresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresa'
    BeforePost = EmpresaBeforePost
    OnNewRecord = EmpresaNewRecord
    Left = 112
    Top = 8
    object EmpresaCODEMPRESA: TFloatField
      FieldName = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object EmpresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object EmpresaCGC: TStringField
      FieldName = 'CGC'
      ProviderFlags = [pfInUpdate]
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object EmpresaCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object EmpresaCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object EmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object EmpresaFONEFAX: TStringField
      FieldName = 'FONEFAX'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object EmpresaFRANQUEADA: TStringField
      FieldName = 'FRANQUEADA'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object EmpresaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object EmpresaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object EmpresaNROIMETRO: TStringField
      FieldName = 'NROIMETRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object EmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object EmpresaRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object EmpresaVERSAO: TStringField
      FieldName = 'VERSAO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
  object Qsql: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 608
    Top = 16
  end
  object dtBairro: TSQLDataSet
    CommandText = 
      'select CODBAIRRO, DESCBAIRRO from TBAIRRO'#13#10' where DESCBAIRRO lik' +
      'e :DESCBAIRRO'#13#10' order by DESCBAIRRO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCBAIRRO'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 56
    object dtBairroCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtBairroDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
  end
  object dspBairro: TDataSetProvider
    DataSet = dtBairro
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 56
  end
  object Bairro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCBAIRRO'
        ParamType = ptInput
      end>
    ProviderName = 'dspBairro'
    BeforePost = BairroBeforePost
    OnNewRecord = BairroNewRecord
    Left = 112
    Top = 56
    object BairroCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object BairroDESCBAIRRO: TStringField
      FieldName = 'DESCBAIRRO'
      Size = 30
    end
  end
  object dtCidade: TSQLDataSet
    CommandText = 
      'select CEP, CODCIDADE, DESCCIDADE, UF from TCIDADE'#13#10' where DESCC' +
      'IDADE like :DESCCIDADE'#13#10' order by DESCCIDADE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCCIDADE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 104
    object dtCidadeCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtCidadeCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtCidadeDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object dtCidadeUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = dtCidade
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 104
  end
  object Cidade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCCIDADE'
        ParamType = ptInput
      end>
    ProviderName = 'dspCidade'
    BeforePost = CidadeBeforePost
    OnNewRecord = CidadeNewRecord
    Left = 112
    Top = 104
    object CidadeCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object CidadeCEP: TStringField
      FieldName = 'CEP'
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object CidadeDESCCIDADE: TStringField
      FieldName = 'DESCCIDADE'
      Size = 40
    end
    object CidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dtLocal: TSQLDataSet
    CommandText = 
      'select CODLOCAL, DESCLOCAL from TLOCAL'#13#10' where DESCLOCAL like :D' +
      'ESCLOCAL'#13#10' order by DESCLOCAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCLOCAL'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 152
    object dtLocalCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtLocalDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
  end
  object dspLocal: TDataSetProvider
    DataSet = dtLocal
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 152
  end
  object Local: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCLOCAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspLocal'
    BeforePost = LocalBeforePost
    OnNewRecord = LocalNewRecord
    Left = 112
    Top = 152
    object LocalCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
    end
    object LocalDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 40
    end
  end
  object dtAgente: TSQLDataSet
    CommandText = 
      'select CODAGENTE, CONTESTOQUE, DESCAGENTE, PESQLOTE from TAGENTE' +
      #13#10' where DESCAGENTE like :DESCAGENTE'#13#10' order by DESCAGENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCAGENTE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 200
    object dtAgenteCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtAgenteDESCAGENTE: TStringField
      FieldName = 'DESCAGENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object dtAgenteCONTESTOQUE: TStringField
      FieldName = 'CONTESTOQUE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dtAgentePESQLOTE: TStringField
      FieldName = 'PESQLOTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspAgente: TDataSetProvider
    DataSet = dtAgente
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 200
  end
  object Agente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCAGENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspAgente'
    BeforePost = AgenteBeforePost
    OnNewRecord = AgenteNewRecord
    Left = 112
    Top = 200
    object AgenteCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object AgenteDESCAGENTE: TStringField
      FieldName = 'DESCAGENTE'
      Size = 40
    end
    object AgenteCONTESTOQUE: TStringField
      FieldName = 'CONTESTOQUE'
      Size = 1
    end
    object AgentePESQLOTE: TStringField
      FieldName = 'PESQLOTE'
      Size = 1
    end
  end
  object dtResultado: TSQLDataSet
    CommandText = 
      'select CODRESULTADO, DESCRESULTADO from TRESULT'#13#10' where DESCRESU' +
      'LTADO like :DESCRESULTADO'#13#10' order by DESCRESULTADO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCRESULTADO'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 248
    object dtResultadoCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtResultadoDESCRESULTADO: TStringField
      FieldName = 'DESCRESULTADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
  end
  object dspResultado: TDataSetProvider
    DataSet = dtResultado
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 248
  end
  object Resultado: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCRESULTADO'
        ParamType = ptInput
      end>
    ProviderName = 'dspResultado'
    BeforePost = ResultadoBeforePost
    OnNewRecord = ResultadoNewRecord
    Left = 112
    Top = 248
    object ResultadoCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
    end
    object ResultadoDESCRESULTADO: TStringField
      FieldName = 'DESCRESULTADO'
      Size = 40
    end
  end
  object Manutencao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCMANUTENCAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspManutencao'
    BeforePost = ManutencaoBeforePost
    OnNewRecord = ManutencaoNewRecord
    Left = 112
    Top = 296
    object ManutencaoCODMANUTENCAO: TFloatField
      FieldName = 'CODMANUTENCAO'
    end
    object ManutencaoDESCMANUTENCAO: TStringField
      FieldName = 'DESCMANUTENCAO'
      Size = 40
    end
    object ManutencaoRETESTE: TStringField
      FieldName = 'RETESTE'
      FixedChar = True
      Size = 1
    end
  end
  object dspManutencao: TDataSetProvider
    DataSet = dtManutencao
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 296
  end
  object dtManutencao: TSQLDataSet
    CommandText = 
      'select CODMANUTENCAO, DESCMANUTENCAO, RETESTE from TMANUT'#13#10' wher' +
      'e DESCMANUTENCAO like :DESCMANUTENCAO'#13#10' order by DESCMANUTENCAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCMANUTENCAO'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 296
    object dtManutencaoCODMANUTENCAO: TFloatField
      FieldName = 'CODMANUTENCAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtManutencaoDESCMANUTENCAO: TStringField
      FieldName = 'DESCMANUTENCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object dtManutencaoRETESTE: TStringField
      FieldName = 'RETESTE'
      FixedChar = True
      Size = 1
    end
  end
  object dtMarca: TSQLDataSet
    CommandText = 
      'select CODMARCA, DESCMARCA from TMARCA'#13#10' where DESCMARCA like :D' +
      'ESCMARCA'#13#10' order by  DESCMARCA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCMARCA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 16
    Top = 344
    object dtMarcaCODMARCA: TFloatField
      FieldName = 'CODMARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtMarcaDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
  end
  object dspMarca: TDataSetProvider
    DataSet = dtMarca
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 344
  end
  object Marca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCMARCA'
        ParamType = ptInput
      end>
    ProviderName = 'dspMarca'
    BeforePost = MarcaBeforePost
    OnNewRecord = MarcaNewRecord
    Left = 112
    Top = 344
    object MarcaCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object MarcaDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      Size = 30
    end
  end
  object dtPeca: TSQLDataSet
    CommandText = 
      'select CODPECA, DESCPECA, USAR_INSPECAO, SO_INSPECAO, ATIVO from' +
      ' TPECA'#13#10' where DESCPECA like :DESCPECA'#13#10' order by DESCPECA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCPECA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 8
    object dtPecaCODPECA: TFloatField
      FieldName = 'CODPECA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtPecaDESCPECA: TStringField
      FieldName = 'DESCPECA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object dtPecaUSAR_INSPECAO: TStringField
      FieldName = 'USAR_INSPECAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dtPecaSO_INSPECAO: TStringField
      FieldName = 'SO_INSPECAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dtPecaATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspPeca: TDataSetProvider
    DataSet = dtPeca
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 8
  end
  object Peca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCPECA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPeca'
    BeforePost = PecaBeforePost
    OnNewRecord = PecaNewRecord
    Left = 240
    Top = 8
    object PecaCODPECA: TFloatField
      FieldName = 'CODPECA'
      Required = True
    end
    object PecaDESCPECA: TStringField
      FieldName = 'DESCPECA'
      Required = True
      Size = 40
    end
    object PecaUSAR_INSPECAO: TStringField
      FieldName = 'USAR_INSPECAO'
      FixedChar = True
      Size = 1
    end
    object PecaSO_INSPECAO: TStringField
      FieldName = 'SO_INSPECAO'
      FixedChar = True
      Size = 1
    end
    object PecaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dtObs: TSQLDataSet
    CommandText = 
      'select CODIGO, CONTROLE, DESCRICAO from TOBS'#13#10'where CODIGO = :CO' +
      'DIGO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 56
    object dtObsCODIGO: TFloatField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dtObsCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dtObsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dspObs: TDataSetProvider
    DataSet = dtObs
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 56
  end
  object Obs: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspObs'
    Left = 240
    Top = 56
    object ObsCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object ObsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object ObsCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
  end
  object Vendedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCVENDEDOR'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendedor'
    BeforePost = VendedorBeforePost
    OnNewRecord = VendedorNewRecord
    Left = 240
    Top = 104
    object VendedorCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
      Required = True
    end
    object VendedorDESCVENDEDOR: TStringField
      FieldName = 'DESCVENDEDOR'
      Required = True
      Size = 30
    end
    object VendedorFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object VendedorFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = dtVendedor
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 104
  end
  object dtVendedor: TSQLDataSet
    CommandText = 
      'select CODVENDEDOR, DESCVENDEDOR, FONE, FONE2 from TVENDEDO'#13#10' wh' +
      'ere DESCVENDEDOR like :DESCVENDEDOR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCVENDEDOR'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 104
    object dtVendedorCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtVendedorDESCVENDEDOR: TStringField
      FieldName = 'DESCVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object dtVendedorFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtVendedorFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dtResp: TSQLDataSet
    CommandText = 
      'select CODRESP, NOME, ATIVO, USAR_INSPECAO from TRESP'#13#10' where NO' +
      'ME like :NOME'#13#10' order by NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 152
    object dtRespCODRESP: TStringField
      FieldName = 'CODRESP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object dtRespNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object dtRespATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dtRespUSAR_INSPECAO: TStringField
      FieldName = 'USAR_INSPECAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspResp: TDataSetProvider
    DataSet = dtResp
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 152
  end
  object Resp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspResp'
    OnNewRecord = RespNewRecord
    Left = 240
    Top = 152
    object RespCODRESP: TStringField
      FieldName = 'CODRESP'
      Required = True
      Size = 3
    end
    object RespNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object RespATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object RespUSAR_INSPECAO: TStringField
      FieldName = 'USAR_INSPECAO'
      FixedChar = True
      Size = 1
    end
  end
  object dtContol: TSQLDataSet
    CommandText = 
      'select CODIGO, CODTABELA from TCONTROL'#13#10' where CODTABELA = :CODT' +
      'ABELA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODTABELA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 200
    object dtContolCODTABELA: TStringField
      FieldName = 'CODTABELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object dtContolCODIGO: TFloatField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dspControl: TDataSetProvider
    DataSet = dtContol
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 200
  end
  object Control: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODTABELA'
        ParamType = ptInput
      end>
    ProviderName = 'dspControl'
    Left = 240
    Top = 200
    object ControlCODTABELA: TStringField
      FieldName = 'CODTABELA'
      Required = True
      Size = 10
    end
    object ControlCODIGO: TFloatField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object Lote: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LOTERESUMIDO'
        ParamType = ptInput
      end>
    ProviderName = 'dspLote'
    Left = 240
    Top = 248
    object LoteLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Required = True
      Size = 30
    end
    object LoteCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
    object LoteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 3
    end
    object LoteLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object LoteNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
    end
    object LoteQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
    end
  end
  object dspLote: TDataSetProvider
    DataSet = dtLote
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 248
  end
  object dtLote: TSQLDataSet
    CommandText = 
      'select CODPRODUTO, COMPLEMENTO, LOTE, LOTERESUMIDO, NUMORDEM, QT' +
      'DEESTOQUE from TESTLOTE'#13#10' where LOTERESUMIDO like :LOTERESUMIDO'#13 +
      #10' order by LOTERESUMIDO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'LOTERESUMIDO'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 248
    object dtLoteLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object dtLoteCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtLoteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dtLoteLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtLoteNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      ProviderFlags = [pfInUpdate]
    end
    object dtLoteQTDEESTOQUE: TFloatField
      FieldName = 'QTDEESTOQUE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dtPessoa: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select CEP, CGC, CODBAIRRO, CODCIDADE, CODPESSOA, CODVENDEDOR, C' +
      'OMPLEMENTO, CONTATO, CPF, EMAIL, FAX, FONE1, FONE2, INSCESTADUAL' +
      ', NOME, NUMERO, OBS, RG, RUA, SITE, TIPO, TIPOPESSOA, OBSERVACAO' +
      ' from TPESSOA'#13#10' where NOME like :NOME'#13#10' order by NOME'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 296
    object dtPessoaCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtPessoaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtPessoaCGC: TStringField
      FieldName = 'CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dtPessoaCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object dtPessoaCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dtPessoaCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object dtPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtPessoaCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object dtPessoaCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dtPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dtPessoaFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtPessoaFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtPessoaFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtPessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object dtPessoaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 70
    end
    object dtPessoaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dtPessoaOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object dtPessoaRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
    end
    object dtPessoaRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dtPessoaSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dtPessoaTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dtPessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dtPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = dtPessoa
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 296
  end
  object Pessoa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspPessoa'
    BeforePost = PessoaBeforePost
    OnNewRecord = PessoaNewRecord
    Left = 240
    Top = 296
    object PessoaCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object PessoaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object PessoaCGC: TStringField
      FieldName = 'CGC'
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object PessoaCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object PessoaCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object PessoaCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
    end
    object PessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object PessoaCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object PessoaCPF: TStringField
      FieldName = 'CPF'
      EditMask = '###.###.###-##;0;_'
      Size = 11
    end
    object PessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object PessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object PessoaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object PessoaFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object PessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
    end
    object PessoaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 70
    end
    object PessoaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object PessoaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object PessoaRG: TStringField
      FieldName = 'RG'
    end
    object PessoaRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object PessoaSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object PessoaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object PessoaTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
    object PessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dtExtintor: TSQLDataSet
    CommandText = 'select *'#13#10' from TCLIEXT'#13#10' where CONTROLE = :CONTROLE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTROLE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 160
    Top = 344
    object dtExtintorCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dtExtintorANOFAB: TSQLTimeStampField
      FieldName = 'ANOFAB'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtExtintorCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorCODMARCA: TFloatField
      FieldName = 'CODMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dtExtintorCODPROJETO: TStringField
      FieldName = 'CODPROJETO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtExtintorCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dtExtintorDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dtExtintorNUMERO: TFloatField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorSELO: TFloatField
      FieldName = 'SELO'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object dtExtintorSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dtExtintorULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorVENCTOCARGA: TSQLTimeStampField
      FieldName = 'VENCTOCARGA'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorPESO: TFloatField
      FieldName = 'PESO'
      ProviderFlags = [pfInUpdate]
    end
    object dtExtintorTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtExtintorDATA_INSPECAO: TSQLTimeStampField
      FieldName = 'DATA_INSPECAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspExtintor: TDataSetProvider
    DataSet = dtExtintor
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 344
  end
  object Extintor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTROLE'
        ParamType = ptInput
      end>
    ProviderName = 'dspExtintor'
    Left = 240
    Top = 344
    object ExtintorCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object ExtintorANOFAB: TSQLTimeStampField
      FieldName = 'ANOFAB'
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
    object ExtintorCODPROJETO: TStringField
      FieldName = 'CODPROJETO'
      Size = 15
    end
    object ExtintorCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      Size = 6
    end
    object ExtintorDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
      EditMask = '##/##/####'
    end
    object ExtintorLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Size = 30
    end
    object ExtintorNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object ExtintorREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object ExtintorSELO: TFloatField
      FieldName = 'SELO'
    end
    object ExtintorSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 10
    end
    object ExtintorSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object ExtintorULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
    end
    object ExtintorVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
    end
    object ExtintorVENCTOCARGA: TSQLTimeStampField
      FieldName = 'VENCTOCARGA'
    end
    object ExtintorCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
    end
    object ExtintorPESO: TFloatField
      FieldName = 'PESO'
    end
    object ExtintorTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ExtintorDATA_INSPECAO: TSQLTimeStampField
      FieldName = 'DATA_INSPECAO'
      OnSetText = ExtintorDATA_INSPECAOSetText
      EditMask = '##/##/####'
    end
  end
  object dtOrdem: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select '#13#10'CODPESSOA, '#13#10'DATAORDEM, '#13#10'NUMNOTA,'#13#10'NUMORDEM,'#13#10'OUTRASNO' +
      'TAS '#13#10'from TORDEM'#13#10' where NUMORDEM = :NUMORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 8
    object dtOrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtOrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dtOrdemDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dtOrdemNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
      ProviderFlags = [pfInUpdate]
    end
    object dtOrdemOUTRASNOTAS: TStringField
      FieldName = 'OUTRASNOTAS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  object dspOrdem: TDataSetProvider
    DataSet = dtOrdem
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 8
  end
  object Ordem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    ProviderName = 'dspOrdem'
    BeforePost = OrdemBeforePost
    OnReconcileError = OrdemReconcileError
    Left = 368
    Top = 8
    object OrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      Required = True
    end
    object OrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object OrdemDATAORDEM: TSQLTimeStampField
      FieldName = 'DATAORDEM'
      Required = True
      OnSetText = OrdemDATAORDEMSetText
      EditMask = '##/##/####'
    end
    object OrdemNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object OrdemOUTRASNOTAS: TStringField
      FieldName = 'OUTRASNOTAS'
      Size = 100
    end
  end
  object ItensOrdem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensOrdem'
    BeforePost = ItensOrdemBeforePost
    BeforeDelete = ItensOrdemBeforeDelete
    OnCalcFields = ItensOrdemCalcFields
    OnNewRecord = ItensOrdemNewRecord
    OnReconcileError = ItensOrdemReconcileError
    Left = 368
    Top = 56
    object ItensOrdemCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ItensOrdemANOFAB: TSQLTimeStampField
      FieldName = 'ANOFAB'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemCAPACMAXIMA: TStringField
      FieldName = 'CAPACMAXIMA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemCODMARCA: TFloatField
      FieldName = 'CODMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemCODPROJETO: TStringField
      FieldName = 'CODPROJETO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ItensOrdemCODRESP: TStringField
      FieldName = 'CODRESP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ItensOrdemCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object ItensOrdemCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemDATACARREGAMENTO: TSQLTimeStampField
      FieldName = 'DATACARREGAMENTO'
      ProviderFlags = [pfInUpdate]
      OnSetText = ItensOrdemDATACARREGAMENTOSetText
      EditMask = '##/##/####'
    end
    object ItensOrdemDVB: TStringField
      FieldName = 'DVB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemDVM: TStringField
      FieldName = 'DVM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object ItensOrdemLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object ItensOrdemNUMERO: TFloatField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemNUMSELO: TFloatField
      FieldName = 'NUMSELO'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemOUTROSELO: TFloatField
      FieldName = 'OUTROSELO'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemPESOCHEIO: TStringField
      FieldName = 'PESOCHEIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemPESOVAZIO: TStringField
      FieldName = 'PESOVAZIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemPRESENSAIO: TStringField
      FieldName = 'PRESENSAIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemPRESTRABALHO: TStringField
      FieldName = 'PRESTRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object ItensOrdemULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemVENCTOCARGA: TSQLTimeStampField
      FieldName = 'VENCTOCARGA'
      ProviderFlags = [pfInUpdate]
    end
    object ItensOrdemVOLUME: TStringField
      FieldName = 'VOLUME'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object ItensOrdemCVENCTOCARGA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CVENCTOCARGA'
      Size = 10
    end
    object ItensOrdemCVENCTOTESTE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CVENCTOTESTE'
      Size = 10
    end
    object ItensOrdemCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
    end
    object ItensOrdemPESO: TFloatField
      FieldName = 'PESO'
    end
    object ItensOrdemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object ItensOrdemPERCENTUAL: TStringField
      FieldName = 'PERCENTUAL'
      Size = 10
    end
    object ItensOrdemPERC_PERDA_MASSA: TFloatField
      FieldName = 'PERC_PERDA_MASSA'
      DisplayFormat = ',##0.00'
    end
    object ItensOrdemNORMA_CILINDRO: TStringField
      FieldName = 'NORMA_CILINDRO'
      Size = 10
    end
    object ItensOrdemDATA_INSPECAO: TSQLTimeStampField
      FieldName = 'DATA_INSPECAO'
      OnSetText = ItensOrdemDATA_INSPECAOSetText
      EditMask = '##/##/####'
    end
    object ItensOrdemVENCTO_INSPECAO: TSQLTimeStampField
      FieldName = 'VENCTO_INSPECAO'
      OnGetText = ItensOrdemVENCTO_INSPECAOGetText
      OnSetText = ItensOrdemVENCTO_INSPECAOSetText
      DisplayFormat = 'mm/yyyy'
      EditMask = '##/####'
    end
    object ItensOrdemLEGENDA: TStringField
      FieldName = 'LEGENDA'
      FixedChar = True
      Size = 1
    end
  end
  object dspItensOrdem: TDataSetProvider
    DataSet = dtItensOrdem
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 56
  end
  object dtItensOrdem: TSQLDataSet
    CommandText = 'select *'#13#10'from TIORDEM'#13#10' where NUMORDEM = :NUMORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 56
    object dtItensOrdemCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtItensOrdemANOFAB: TSQLTimeStampField
      FieldName = 'ANOFAB'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemCAPACMAXIMA: TStringField
      FieldName = 'CAPACMAXIMA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemCODMARCA: TFloatField
      FieldName = 'CODMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemCODPROJETO: TStringField
      FieldName = 'CODPROJETO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtItensOrdemCODRESP: TStringField
      FieldName = 'CODRESP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dtItensOrdemCODRESULTADO: TFloatField
      FieldName = 'CODRESULTADO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dtItensOrdemCONSERVACAO: TStringField
      FieldName = 'CONSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemDATACARGA: TSQLTimeStampField
      FieldName = 'DATACARGA'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemDATACARREGAMENTO: TSQLTimeStampField
      FieldName = 'DATACARREGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemDVB: TStringField
      FieldName = 'DVB'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemDVM: TStringField
      FieldName = 'DVM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtItensOrdemLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dtItensOrdemNUMERO: TFloatField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemNUMSELO: TFloatField
      FieldName = 'NUMSELO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemOUTROSELO: TFloatField
      FieldName = 'OUTROSELO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemPESOCHEIO: TStringField
      FieldName = 'PESOCHEIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemPESOVAZIO: TStringField
      FieldName = 'PESOVAZIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemPRESENSAIO: TStringField
      FieldName = 'PRESENSAIO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemPRESTRABALHO: TStringField
      FieldName = 'PRESTRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object dtItensOrdemULTIMOSELO: TFloatField
      FieldName = 'ULTIMOSELO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemVENCIMENTO: TSQLTimeStampField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemVENCTOCARGA: TSQLTimeStampField
      FieldName = 'VENCTOCARGA'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemVOLUME: TStringField
      FieldName = 'VOLUME'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
    end
    object dtItensOrdemPESO: TFloatField
      FieldName = 'PESO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemPERCENTUAL: TStringField
      FieldName = 'PERCENTUAL'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemPERC_PERDA_MASSA: TFloatField
      FieldName = 'PERC_PERDA_MASSA'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemNORMA_CILINDRO: TStringField
      FieldName = 'NORMA_CILINDRO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensOrdemDATA_INSPECAO: TSQLTimeStampField
      FieldName = 'DATA_INSPECAO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemVENCTO_INSPECAO: TSQLTimeStampField
      FieldName = 'VENCTO_INSPECAO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensOrdemLEGENDA: TStringField
      FieldName = 'LEGENDA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dtAuxOrdem: TSQLDataSet
    CommandText = 
      'select '#13#10'O.CODPESSOA, '#13#10'P.NOME,'#13#10'O.DATAORDEM, '#13#10'O.NUMORDEM '#13#10'fro' +
      'm TORDEM O, TPESSOA P'#13#10' where O.CODPESSOA = P.CODPESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 408
    Top = 8
  end
  object dtTabPecas: TSQLDataSet
    CommandText = 
      'select CODPECA, NUMSERVICO, QTDE, SERIE from TTABPECA'#13#10' where NU' +
      'MSERVICO = :NUMSERVICO'#13#10' and SERIE = :SERIE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'NUMSERVICO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 104
    object dtTabPecasNUMSERVICO: TFloatField
      FieldName = 'NUMSERVICO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtTabPecasSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object dtTabPecasCODPECA: TFloatField
      FieldName = 'CODPECA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtTabPecasQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspTabPecas: TDataSetProvider
    DataSet = dtTabPecas
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 104
  end
  object TabPecas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMSERVICO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    ProviderName = 'dspTabPecas'
    AfterPost = TabPecasAfterPost
    OnCalcFields = TabPecasCalcFields
    OnNewRecord = TabPecasNewRecord
    Left = 368
    Top = 104
    object TabPecasNUMSERVICO: TFloatField
      FieldName = 'NUMSERVICO'
    end
    object TabPecasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object TabPecasCODPECA: TFloatField
      FieldName = 'CODPECA'
    end
    object TabPecasQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object TabPecasC_DESCPECA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_DESCPECA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dtCompra: TSQLDataSet
    CommandText = 
      'select CODPESSOA, DATA, DATANOTA, NF, NUMORDEM, TOTALCOMPRA from' +
      ' TCOMPRA'#13#10' where NUMORDEM = :NUMORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 152
    object dtCompraNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtCompraCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object dtCompraDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dtCompraDATANOTA: TSQLTimeStampField
      FieldName = 'DATANOTA'
      ProviderFlags = [pfInUpdate]
    end
    object dtCompraNF: TStringField
      FieldName = 'NF'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtCompraTOTALCOMPRA: TFloatField
      FieldName = 'TOTALCOMPRA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCompra: TDataSetProvider
    DataSet = dtCompra
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 152
  end
  object Compra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    ProviderName = 'dspCompra'
    BeforePost = CompraBeforePost
    Left = 368
    Top = 152
    object CompraNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      Required = True
    end
    object CompraCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object CompraDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
      OnSetText = CompraDATASetText
      EditMask = '##/##/####'
    end
    object CompraDATANOTA: TSQLTimeStampField
      FieldName = 'DATANOTA'
      OnSetText = CompraDATANOTASetText
      EditMask = '##/##/####'
    end
    object CompraNF: TStringField
      FieldName = 'NF'
      Size = 8
    end
    object CompraTOTALCOMPRA: TFloatField
      FieldName = 'TOTALCOMPRA'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object ItensCompra: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensCompra'
    BeforePost = ItensCompraBeforePost
    BeforeDelete = ItensCompraBeforeDelete
    OnReconcileError = ItensCompraReconcileError
    Left = 368
    Top = 208
    object ItensCompraNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      Required = True
    end
    object ItensCompraNUMITEM: TFloatField
      FieldName = 'NUMITEM'
      Required = True
    end
    object ItensCompraCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
    end
    object ItensCompraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 3
    end
    object ItensCompraLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object ItensCompraLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Required = True
      Size = 30
    end
    object ItensCompraQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object ItensCompraVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object ItensCompraVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object ItensCompraTOTALCOMPRA: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTALCOMPRA'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum(VALORTOTAL)'
    end
    object ItensCompraQTDEITENS: TAggregateField
      FieldName = 'QTDEITENS'
      Active = True
      DisplayName = ''
      Expression = 'max(NUMITEM)'
    end
  end
  object dspItensCompra: TDataSetProvider
    DataSet = dtItensCompra
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 208
  end
  object dtItensCompra: TSQLDataSet
    CommandText = 
      'select CODPRODUTO, COMPLEMENTO, LOTE, LOTERESUMIDO, NUMITEM, NUM' +
      'ORDEM, QTDE, VALOR, VALORTOTAL from TICOMPRA'#13#10' where NUMORDEM = ' +
      ':NUMORDEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMORDEM'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 208
    object dtItensCompraNUMORDEM: TFloatField
      FieldName = 'NUMORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtItensCompraLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object dtItensCompraNUMITEM: TFloatField
      FieldName = 'NUMITEM'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensCompraCODPRODUTO: TFloatField
      FieldName = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensCompraCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dtItensCompraLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtItensCompraQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensCompraVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensCompraVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object rel: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ALTURA'
        DataType = ftFloat
      end
      item
        Name = 'LARGURA'
        DataType = ftFloat
      end
      item
        Name = 'M_SUPERIOR'
        DataType = ftFloat
      end
      item
        Name = 'M_INFERIOR'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 640
    Top = 32
    Data = {
      5F0000009619E0BD0100000018000000040000000000030000005F0006414C54
      5552410800040000000000074C41524755524108000400000000000A4D5F5355
      504552494F5208000400000000000A4D5F494E464552494F5208000400000000
      000000}
    object relALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object relLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object relM_SUPERIOR: TFloatField
      FieldName = 'M_SUPERIOR'
    end
    object relM_INFERIOR: TFloatField
      FieldName = 'M_INFERIOR'
    end
  end
  object dtCliente: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select CEP, CGC, CODBAIRRO, CODCIDADE, CODPESSOA, CODVENDEDOR, C' +
      'OMPLEMENTO, CONTATO, CPF, EMAIL, FAX, FONE1, FONE2, INSCESTADUAL' +
      ', NOME, NUMERO, OBS, RG, RUA, SITE, TIPO, TIPOPESSOA, OBSERVACAO' +
      ' from TPESSOA'#13#10' where CODPESSOA = :CODPESSOA'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftFloat
        Name = 'CODPESSOA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 256
    object dtClienteCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtClienteCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtClienteCGC: TStringField
      FieldName = 'CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dtClienteCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object dtClienteCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object dtClienteCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object dtClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
    end
    object dtClienteCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dtClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dtClienteFAX: TStringField
      FieldName = 'FAX'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtClienteFONE1: TStringField
      FieldName = 'FONE1'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtClienteFONE2: TStringField
      FieldName = 'FONE2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
    end
    object dtClienteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object dtClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dtClienteOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object dtClienteRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
    end
    object dtClienteRUA: TStringField
      FieldName = 'RUA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dtClienteSITE: TStringField
      FieldName = 'SITE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dtClienteTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dtClienteTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object dtClienteOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = dtCliente
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 256
  end
  object Cliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'CODPESSOA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    OnNewRecord = ClienteNewRecord
    OnReconcileError = ClienteReconcileError
    Left = 368
    Top = 256
    object ClienteCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object ClienteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '#####-###;0;_'
      Size = 8
    end
    object ClienteCGC: TStringField
      FieldName = 'CGC'
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object ClienteCODBAIRRO: TFloatField
      FieldName = 'CODBAIRRO'
    end
    object ClienteCODCIDADE: TFloatField
      FieldName = 'CODCIDADE'
    end
    object ClienteCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
    end
    object ClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object ClienteCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object ClienteCPF: TStringField
      FieldName = 'CPF'
      EditMask = '###.###.###-##;0;_'
      Size = 11
    end
    object ClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object ClienteFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object ClienteFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object ClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
    end
    object ClienteNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object ClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object ClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object ClienteRG: TStringField
      FieldName = 'RG'
    end
    object ClienteRUA: TStringField
      FieldName = 'RUA'
      Size = 40
    end
    object ClienteSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object ClienteTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object ClienteTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
    object ClienteOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dtMovimento: TSQLDataSet
    CommandText = 
      'select CODAGENTE, COMPLEMENTO, DATA, LOTE, LOTERESUMIDO, QTDE, S' +
      'ERIE, TEXTO, TIPO from TMOVEST'#13#10' where DATA between :DATAINI and' +
      ' :DATAFIN'#13#10' order by DATA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 304
    object dtMovimentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtMovimentoLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object dtMovimentoCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
      ProviderFlags = [pfInUpdate]
    end
    object dtMovimentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object dtMovimentoLOTE: TStringField
      FieldName = 'LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtMovimentoQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dtMovimentoSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtMovimentoTEXTO: TStringField
      FieldName = 'TEXTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dtMovimentoTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1
    end
  end
  object dsMovimento: TDataSetProvider
    DataSet = dtMovimento
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 304
  end
  object Movimento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
    ProviderName = 'dsMovimento'
    BeforePost = MovimentoBeforePost
    BeforeDelete = MovimentoBeforeDelete
    OnReconcileError = MovimentoReconcileError
    Left = 368
    Top = 304
    object MovimentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Required = True
      EditMask = '##/##/####'
    end
    object MovimentoLOTERESUMIDO: TStringField
      FieldName = 'LOTERESUMIDO'
      Required = True
      Size = 30
    end
    object MovimentoCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object MovimentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 3
    end
    object MovimentoLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object MovimentoQTDE: TFloatField
      FieldName = 'QTDE'
      Required = True
      DisplayFormat = '###,###,##0.000'
    end
    object MovimentoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object MovimentoTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 30
    end
    object MovimentoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
  end
  object dtProposta: TSQLDataSet
    CommandText = 
      'select '#13#10'CODPESSOA, '#13#10'CODVENDEDOR, '#13#10'CONDPAGTO, '#13#10'DESCONTO, '#13#10'EM' +
      'ISSAO, '#13#10'ENTREGA, '#13#10'NUMPROPOSTA, '#13#10'TOTALBRUTO, '#13#10'VALIDADE, '#13#10'VAL' +
      'ORPROPOSTA '#13#10'from TPROPOST'#13#10' where NUMPROPOSTA = :NUMPROPOSTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMPROPOSTA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 288
    Top = 352
    object dtPropostaNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dtPropostaCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dtPropostaCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object dtPropostaCONDPAGTO: TStringField
      FieldName = 'CONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtPropostaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtPropostaEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object dtPropostaENTREGA: TStringField
      FieldName = 'ENTREGA'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtPropostaTOTALBRUTO: TFloatField
      FieldName = 'TOTALBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object dtPropostaVALIDADE: TStringField
      FieldName = 'VALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object dtPropostaVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspProposta: TDataSetProvider
    DataSet = dtProposta
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 352
  end
  object Proposta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMPROPOSTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspProposta'
    Left = 368
    Top = 352
    object PropostaNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
    end
    object PropostaCODPESSOA: TFloatField
      FieldName = 'CODPESSOA'
      Required = True
    end
    object PropostaCODVENDEDOR: TFloatField
      FieldName = 'CODVENDEDOR'
    end
    object PropostaCONDPAGTO: TStringField
      FieldName = 'CONDPAGTO'
      Size = 15
    end
    object PropostaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = ',#0.00'
    end
    object PropostaEMISSAO: TSQLTimeStampField
      FieldName = 'EMISSAO'
      EditMask = '##/##/####'
    end
    object PropostaENTREGA: TStringField
      FieldName = 'ENTREGA'
      Size = 15
    end
    object PropostaTOTALBRUTO: TFloatField
      FieldName = 'TOTALBRUTO'
      DisplayFormat = ',#0.00'
    end
    object PropostaVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Size = 15
    end
    object PropostaVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
      DisplayFormat = ',#0.00'
    end
  end
  object dtItensProposta: TSQLDataSet
    CommandText = 
      'select '#13#10'I.CAPACIDADE, '#13#10'I.CODLOCAL, '#13#10'I.CODMANUTENCAO, '#13#10'I.CODN' +
      'IVEL, '#13#10'I.NUMEXTINTOR, '#13#10'I.NUMPROPOSTA, '#13#10'I.SEQUENCIA, '#13#10'I.SERIE' +
      ', '#13#10'I.VALORTOTAL, '#13#10'I.VALORUNIT, '#13#10'I.VENCTOTESTE,'#13#10'L.DESCLOCAL'#13#10 +
      'from TIPROPOS I'#13#10' left join TLOCAL L on I.CODLOCAL = L.CODLOCAL'#13 +
      #10' where I.NUMPROPOSTA = :NUMPROPOSTA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMPROPOSTA'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 472
    Top = 8
    object dtItensPropostaNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dtItensPropostaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dtItensPropostaCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtItensPropostaCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaCODMANUTENCAO: TFloatField
      FieldName = 'CODMANUTENCAO'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaNUMEXTINTOR: TFloatField
      FieldName = 'NUMEXTINTOR'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaSERIE: TFloatField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaVENCTOTESTE: TSQLTimeStampField
      FieldName = 'VENCTOTESTE'
      ProviderFlags = [pfInUpdate]
    end
    object dtItensPropostaDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      ProviderFlags = []
      Size = 40
    end
  end
  object dspItensProposta: TDataSetProvider
    DataSet = dtItensProposta
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 8
  end
  object ItensProposta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftFloat
        Name = 'NUMPROPOSTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensProposta'
    OnCalcFields = ItensPropostaCalcFields
    Left = 560
    Top = 8
    object ItensPropostaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object ItensPropostaCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      Size = 10
    end
    object ItensPropostaCODLOCAL: TFloatField
      FieldName = 'CODLOCAL'
    end
    object ItensPropostaCODMANUTENCAO: TFloatField
      FieldName = 'CODMANUTENCAO'
    end
    object ItensPropostaCODNIVEL: TFloatField
      FieldName = 'CODNIVEL'
    end
    object ItensPropostaNUMEXTINTOR: TFloatField
      FieldName = 'NUMEXTINTOR'
    end
    object ItensPropostaNUMPROPOSTA: TFloatField
      FieldName = 'NUMPROPOSTA'
    end
    object ItensPropostaSERIE: TFloatField
      FieldName = 'SERIE'
    end
    object ItensPropostaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      DisplayFormat = ',#0.00'
    end
    object ItensPropostaVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
      DisplayFormat = ',#0.00'
    end
    object ItensPropostaVENCTOTESTE: TSQLTimeStampField
      FieldName = 'VENCTOTESTE'
    end
    object ItensPropostaC_VENCTOTESTE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_VENCTOTESTE'
    end
    object ItensPropostaDESCLOCAL: TStringField
      FieldName = 'DESCLOCAL'
      Size = 40
    end
    object ItensPropostaTotalItems: TAggregateField
      FieldName = 'TotalItems'
      Active = True
      DisplayName = ''
      Expression = 'max(SEQUENCIA)'
    end
  end
  object dtTabPreco: TSQLDataSet
    CommandText = 'select CAPACIDADE, NIVEL, VALORUNIT from TABPRECO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmBanco.BancoDados
    Left = 472
    Top = 56
    object dtTabPrecoCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object dtTabPrecoNIVEL: TStringField
      FieldName = 'NIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object dtTabPrecoVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspTabPreco: TDataSetProvider
    DataSet = dtTabPreco
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 56
  end
  object TabPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabPreco'
    Left = 552
    Top = 56
    object TabPrecoCAPACIDADE: TStringField
      FieldName = 'CAPACIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 10
    end
    object TabPrecoNIVEL: TStringField
      FieldName = 'NIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object TabPrecoVALORUNIT: TFloatField
      FieldName = 'VALORUNIT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = ',#0.00'
    end
  end
  object dtCapacidade: TSQLDataSet
    CommandText = 
      'select '#13#10' CODCAPACIDADE, '#13#10' DESCCAPACIDADE, '#13#10' PESO, '#13#10' TIPO ,'#13#10 +
      ' QTDE_PO, '#13#10' CODAGENTE,'#13#10' CAPACID_EXTINTORA,'#13#10' CAPACIDADE.CODMAR' +
      'CA,'#13#10' TMARCA.DESCMARCA'#13#10'from CAPACIDADE'#13#10'Left join TMARCA ON CAP' +
      'ACIDADE.CODMARCA = TMARCA.CODMARCA '#13#10' where DESCCAPACIDADE like ' +
      ':DESCCAPACIDADE'#13#10' order by DESCCAPACIDADE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCCAPACIDADE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 472
    Top = 104
    object dtCapacidadeCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtCapacidadeDESCCAPACIDADE: TStringField
      FieldName = 'DESCCAPACIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object dtCapacidadePESO: TFloatField
      FieldName = 'PESO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dtCapacidadeTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dtCapacidadeQTDE_PO: TFloatField
      FieldName = 'QTDE_PO'
      ProviderFlags = [pfInUpdate]
    end
    object dtCapacidadeCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
      ProviderFlags = [pfInUpdate]
    end
    object dtCapacidadeCAPACID_EXTINTORA: TStringField
      FieldName = 'CAPACID_EXTINTORA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dtCapacidadeCODMARCA: TFloatField
      FieldName = 'CODMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object dtCapacidadeDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspCapacidade: TDataSetProvider
    DataSet = dtCapacidade
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 104
  end
  object Capacidade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DESCCAPACIDADE'
        ParamType = ptInput
      end>
    ProviderName = 'dspCapacidade'
    BeforePost = CapacidadeBeforePost
    OnNewRecord = CapacidadeNewRecord
    Left = 552
    Top = 104
    object CapacidadeCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
      Required = True
    end
    object CapacidadeDESCCAPACIDADE: TStringField
      FieldName = 'DESCCAPACIDADE'
      Required = True
      Size = 10
    end
    object CapacidadePESO: TFloatField
      FieldName = 'PESO'
      Required = True
    end
    object CapacidadeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object CapacidadeQTDE_PO: TFloatField
      FieldName = 'QTDE_PO'
    end
    object CapacidadeCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
    object CapacidadeCAPACID_EXTINTORA: TStringField
      FieldName = 'CAPACID_EXTINTORA'
      Size = 30
    end
    object CapacidadeCODMARCA: TFloatField
      FieldName = 'CODMARCA'
    end
    object CapacidadeDESCMARCA: TStringField
      FieldName = 'DESCMARCA'
      ProviderFlags = []
      Size = 30
    end
  end
  object QCadUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   NOME,'
      '   GERENTE,'
      '   ALTERAR_SELO,'
      '   ALTERAR_CADASTRO,'
      '   SENHA,'
      '   VALIDA_INTERVALO_SELO'
      'from CADUSUARIO'
      '   where NOME = :NOME')
    SQLConnection = DmBanco.BancoDados
    Left = 472
    Top = 160
    object QCadUsuarioNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCadUsuarioGERENTE: TStringField
      FieldName = 'GERENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCadUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QCadUsuarioALTERAR_SELO: TStringField
      FieldName = 'ALTERAR_SELO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QCadUsuarioALTERAR_CADASTRO: TStringField
      FieldName = 'ALTERAR_CADASTRO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object QCadUsuarioVALIDA_INTERVALO_SELO: TStringField
      FieldName = 'VALIDA_INTERVALO_SELO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspCadUsuario: TDataSetProvider
    DataSet = QCadUsuario
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 160
  end
  object CadUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspCadUsuario'
    OnNewRecord = CadUsuarioNewRecord
    Left = 552
    Top = 160
    object CadUsuarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
    end
    object CadUsuarioGERENTE: TStringField
      FieldName = 'GERENTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CadUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
    end
    object CadUsuarioALTERAR_SELO: TStringField
      FieldName = 'ALTERAR_SELO'
      FixedChar = True
      Size = 1
    end
    object CadUsuarioALTERAR_CADASTRO: TStringField
      FieldName = 'ALTERAR_CADASTRO'
      FixedChar = True
      Size = 1
    end
    object CadUsuarioVALIDA_INTERVALO_SELO: TStringField
      FieldName = 'VALIDA_INTERVALO_SELO'
      FixedChar = True
      Size = 1
    end
  end
  object QCapacidade: TSQLDataSet
    CommandText = 
      'select '#13#10' CODCAPACIDADE, '#13#10' DESCCAPACIDADE, '#13#10' PESO, '#13#10' TIPO ,'#13#10 +
      ' QTDE_PO, '#13#10' CODAGENTE'#13#10#13#10' from CAPACIDADE'#13#10' where DESCCAPACIDAD' +
      'E = :DESCCAPACIDADE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DESCCAPACIDADE'
        ParamType = ptInput
      end>
    SQLConnection = DmBanco.BancoDados
    Left = 632
    Top = 160
    object QCapacidadeCODCAPACIDADE: TIntegerField
      FieldName = 'CODCAPACIDADE'
      Required = True
    end
    object QCapacidadeDESCCAPACIDADE: TStringField
      FieldName = 'DESCCAPACIDADE'
      Required = True
      Size = 10
    end
    object QCapacidadePESO: TFloatField
      FieldName = 'PESO'
      Required = True
    end
    object QCapacidadeTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object QCapacidadeQTDE_PO: TFloatField
      FieldName = 'QTDE_PO'
    end
    object QCapacidadeCODAGENTE: TFloatField
      FieldName = 'CODAGENTE'
    end
  end
  object QTabControle: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from TABCONTROLE')
    SQLConnection = DmBanco.BancoDados
    Left = 472
    Top = 216
    object QTabControleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTabControleSELOINICIAL: TFloatField
      FieldName = 'SELOINICIAL'
      ProviderFlags = [pfInUpdate]
    end
    object QTabControleSELOFINAL: TFloatField
      FieldName = 'SELOFINAL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspTabControle: TDataSetProvider
    DataSet = QTabControle
    UpdateMode = upWhereKeyOnly
    Left = 520
    Top = 216
  end
  object dtTabControle: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabControle'
    Left = 568
    Top = 216
    object dtTabControleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object dtTabControleSELOINICIAL: TFloatField
      FieldName = 'SELOINICIAL'
    end
    object dtTabControleSELOFINAL: TFloatField
      FieldName = 'SELOFINAL'
    end
  end
  object QParametro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      'from TPARAMETRO'
      '  where SIGLA LIKE :SIGLA'
      'ORDER BY sigla')
    SQLConnection = DmBanco.BancoDados
    Left = 472
    Top = 264
    object QParametroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QParametroSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object QParametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object QParametroPARAM_STRING: TStringField
      FieldName = 'PARAM_STRING'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object QParametroPARAM_INTEIRO: TIntegerField
      FieldName = 'PARAM_INTEIRO'
      ProviderFlags = [pfInUpdate]
    end
    object QParametroPARAM_VALOR: TFMTBCDField
      FieldName = 'PARAM_VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 6
    end
    object QParametroPARAM_DATA: TSQLTimeStampField
      FieldName = 'PARAM_DATA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspParametro: TDataSetProvider
    DataSet = QParametro
    Left = 520
    Top = 264
  end
  object Parametro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end>
    ProviderName = 'dspParametro'
    Left = 568
    Top = 264
    object ParametroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ParametroSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
    end
    object ParametroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object ParametroPARAM_STRING: TStringField
      FieldName = 'PARAM_STRING'
      Size = 100
    end
    object ParametroPARAM_INTEIRO: TIntegerField
      FieldName = 'PARAM_INTEIRO'
    end
    object ParametroPARAM_VALOR: TFMTBCDField
      FieldName = 'PARAM_VALOR'
      DisplayFormat = ',##0.000000'
      Precision = 15
      Size = 6
    end
    object ParametroPARAM_DATA: TSQLTimeStampField
      FieldName = 'PARAM_DATA'
      EditMask = '##/##/####'
    end
  end
  object QEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      'NOME,'
      'VERSAO'
      ' from TMEMP')
    SQLConnection = DmBanco.BancoDados
    Left = 640
    Top = 88
    object QEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QEmpresaVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 5
    end
  end
end

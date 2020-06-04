unit uPessoaServico;

interface

uses uClasPessoa, uDM, SqlExpr, uDmBanco, SysUtils, uClasBairro,
   uClasBairroServico, uClasCidade, uClasCidadeServico, Dialogs;

type
   TPessoaServico = class
   private
      procedure Importar(pessoa: TPessoa);
      function LocalizarPorCNPJ(pessoa: TPessoa): boolean;
      function LocalizarPorCPF(pessoa: TPessoa): boolean;
      function RetornaString(texto: string; inicio, fim: integer): string;
      procedure Salvar(pessoa: TPessoa);
   public
      procedure LerArquivoTexto(arquivo: string);
   end;

implementation

uses UdmPessoa;

{ TPessoaServico }

procedure TPessoaServico.Importar(pessoa: TPessoa);
var
  iValor: Double;
begin
  try
    iValor := StrToFloat(pessoa.CNPJ);
  except
    iValor := 0;
  end;

   if (pessoa.CNPJ <> '') and (iValor > 0) then
      LocalizarPorCNPJ(pessoa);

  try
    iValor := StrToFloat(pessoa.CPF);
  except
    iValor := 0;
  end;

   if (pessoa.CPF <> '') and (iValor > 0) then
      LocalizarPorCPF(pessoa);

   Salvar(pessoa);
end;

procedure TPessoaServico.LerArquivoTexto(arquivo: string);
var
   arq: TextFile;
   registro: string;
   pessoa: TPessoa;
   bairro: TBairro;
   bairroServico: TBairroServico;
   cidade: TCidade;
   cidadeServico: TCidadeServico;
begin
   if not FileExists(arquivo) then
      raise Exception.Create('Arquivo não Encontrado.');

   cidade := TCidade.Create;
   cidadeServico := TCidadeServico.Create;
   bairro := TBairro.Create;
   bairroServico := TBairroServico.Create;
   pessoa := TPessoa.Create;
   try
      AssignFile(arq, arquivo);
      reset(Arq);
      while not eof(Arq) do
      begin
         Readln(Arq, registro);

         pessoa.CEP         := RetornaString(registro, 627,635);
         bairro.Nome        := RetornaString(registro, 444,503);
         cidade.Nome        := RetornaString(registro, 332,381);

         if bairroServico.LocalizarPorNome(bairro) then
            pessoa.CodBairro := bairro.Codigo;

         if cidadeServico.LocalizarPorNome(cidade) then
            pessoa.CodCidade := cidade.Codigo;

         bairroServico.Salvar(bairro);
         cidadeServico.Salvar(cidade);

         pessoa.CNPJ        := RetornaString(registro, 133,147);
         pessoa.Complemento := RetornaString(registro, 505,564);
         pessoa.Contato     := RetornaString(registro, 881,940);
         pessoa.CPF         := RetornaString(registro, 148,159);
         pessoa.Email       := RetornaString(registro, 759,818);
         pessoa.DDD1        := RetornaString(registro, 723,727);
         pessoa.Fone1       := RetornaString(registro, 729,740);
         pessoa.DDD2        := RetornaString(registro, 741,745);
         pessoa.Fone2       := RetornaString(registro, 747,758);
         pessoa.HomePage    := RetornaString(registro, 662,721);
         pessoa.IE          := RetornaString(registro, 160,173);
         pessoa.Nome        := RetornaString(registro, 11,70);
         pessoa.Numero      := RetornaString(registro, 566,625);
         pessoa.Observacao  := RetornaString(registro, 1100,1399);
         pessoa.RG          := RetornaString(registro, 191,200);
         pessoa.Rua         := RetornaString(registro, 383,442);
         pessoa.Tipo        := 'C';
         Self.Importar(pessoa);
      end;
   finally
      FreeAndNil(pessoa);
      FreeAndNil(bairro);
      FreeAndNil(bairroServico);
      FreeAndNil(cidade);
      FreeAndNil(cidadeServico);
      CloseFile(Arq);
   end;

end;

function TPessoaServico.LocalizarPorCNPJ(pessoa: TPessoa): boolean;
var
   sql: TSQLQuery;
begin
   sql := TSQLQuery.Create(nil);
   try
      sql.SQLConnection := DmBanco.BancoDados;
      sql.SQL.Add(' select CODPESSOA from Tpessoa');
      sql.SQL.Add(' where CGC = :CNPJ');
      sql.SQL.Add(' and INSCESTADUAL = :IE');

      sql.Prepared := True;
      sql.ParamByName('CNPJ').AsString := pessoa.CNPJ;
      sql.ParamByName('IE').AsString := pessoa.IE;
      sql.Open();

      pessoa.Codigo := sql.FieldByName('CODPESSOA').AsInteger;

      result := (sql.FieldByName('CODPESSOA').AsInteger > 0);
      sql.Close;

   finally
      FreeAndNil(sql);
   end;
end;

function TPessoaServico.LocalizarPorCPF(pessoa: TPessoa): boolean;
var
   sql: TSQLQuery;
begin
   sql := TSQLQuery.Create(nil);
   try
      sql.SQLConnection := DmBanco.BancoDados;
      sql.SQL.Add(' select CODPESSOA from Tpessoa');
      sql.SQL.Add(' where CPF = :CPF');
      sql.SQL.Add(' and INSCESTADUAL = :IE');

      sql.Prepared := True;
      sql.ParamByName('CPF').AsString := pessoa.CPF;
      sql.ParamByName('IE').AsString := pessoa.IE;
      sql.Open();

      pessoa.Codigo := sql.FieldByName('CODPESSOA').AsInteger;

      result := (sql.FieldByName('CODPESSOA').AsInteger > 0);
      sql.Close;

   finally
      FreeAndNil(sql);
   end;
end;

function TPessoaServico.RetornaString(texto: string; inicio, fim: integer):
    string;
var
    qtde: integer;
begin
   qtde := fim - inicio + 0;
   result := copy(texto, inicio, qtde);
end;

procedure TPessoaServico.Salvar(pessoa: TPessoa);
var
  sql: TdmPessoa;
begin
   if pessoa.Nome = '' then
      raise Exception.Create('Informe o Nome da Pessoa.');

   sql := TdmPessoa.Create(nil);
   try
      sql.LocalizarPessoa(pessoa.Codigo);
      if pessoa.Codigo = 0 then
        sql.cdsPessoa.Append
      else
        sql.cdsPessoa.Edit;

      sql.cdsPessoaCEP.AsString := pessoa.CEP;
      sql.cdsPessoaCGC.AsString := pessoa.CNPJ;
      if pessoa.CodBairro > 0 then
        sql.cdsPessoaCODBAIRRO.AsInteger := pessoa.CodBairro
      else
        sql.cdsPessoaCODBAIRRO.Clear;

      if pessoa.CodCidade > 0 then
        sql.cdsPessoaCODCIDADE.AsInteger := pessoa.CodCidade
      else
        sql.cdsPessoaCODCIDADE.Clear;

      sql.cdsPessoaCOMPLEMENTO.AsString := pessoa.Complemento;
      sql.cdsPessoaCONTATO.AsString := pessoa.Contato;
      sql.cdsPessoaCPF.AsString := pessoa.CPF;
      sql.cdsPessoaEMAIL.AsString := pessoa.Email;
      sql.cdsPessoaFONE1.AsString := pessoa.Fone1;
      sql.cdsPessoaFONE2.AsString := pessoa.Fone2;
      sql.cdsPessoaINSCESTADUAL.AsString := pessoa.IE;
      sql.cdsPessoaNOME.AsString := pessoa.Nome;
      sql.cdsPessoaNUMERO.AsString := pessoa.Numero;
      sql.cdsPessoaOBSERVACAO.AsString := pessoa.Observacao;
      sql.cdsPessoaRG.AsString := pessoa.RG;
      sql.cdsPessoaRUA.AsString := pessoa.Rua;
      sql.cdsPessoaSITE.AsString := pessoa.HomePage;
      sql.cdsPessoaTIPO.AsString := pessoa.Tipo;
      sql.cdsPessoaTIPOPESSOA.AsString := pessoa.FJ;
      sql.Salvar;
   finally
      FreeAndNil(sql);
   end;
end;

end.

unit uClasCidadeServico;

interface

uses uClasCidade, uDM, SqlExpr, uDmBanco, SysUtils;

type
   TCidadeServico = class
   public
      procedure Salvar(cidade: TCidade);
      function LocalizarPorNome(cidade: TCidade): boolean;
      procedure Importar(cidade: TCidade);
   end;


implementation

{ TCidadeServico }

procedure TCidadeServico.Importar(cidade: TCidade);
begin
   if LocalizarPorNome(cidade) = False then
      Salvar(cidade);
end;

function TCidadeServico.LocalizarPorNome(cidade: TCidade): boolean;
var
   sql: TSQLQuery;
begin
   sql := TSQLQuery.Create(nil);
   try
      sql.SQLConnection := DmBanco.BancoDados;
      sql.SQL.Add(' select CODCIDADE from TCidade');
      sql.SQL.Add(' where DESCCIDADE = :DESCCIDADE');

      sql.Prepared := True;
      sql.ParamByName('DESCCIDADE').AsString := cidade.Nome;
      sql.Open();

      cidade.Codigo := sql.FieldByName('CODCIDADE').AsInteger;

      result := (sql.FieldByName('CODCIDADE').AsInteger > 0);
      sql.Close;

   finally
      FreeAndNil(sql);
   end;
end;

procedure TCidadeServico.Salvar(cidade: TCidade);
var
   sql: TSQLQuery;
begin
   if cidade.Nome = '' then
      raise Exception.Create('Informe o Nome da Cidade.');

   if cidade.Codigo = 0 then
   begin
      cidade.Codigo := dm.Incrementa('TCIDADE','CODCIDADE');
      sql := TSQLQuery.Create(nil);
      try
         sql.SQLConnection := DmBanco.BancoDados;
         sql.SQL.Add(' insert into TCidade(');
         sql.SQL.Add(' CODCIDADE, DESCCIDADE, CEP, UF)');
         sql.SQL.Add(' values (');
         sql.SQL.Add(' :CODCIDADE, :DESCCIDADE, :CEP, :UF)');

         sql.Prepared := True;
         sql.ParamByName('CODCIDADE').AsInteger := cidade.Codigo;
         sql.ParamByName('DESCCIDADE').AsString := cidade.Nome;
         sql.ParamByName('CEP').AsString := cidade.CEP;
         sql.ParamByName('UF').AsString := cidade.UF;
         sql.ExecSQL();
      finally
         FreeAndNil(sql);
      end;
   end
   else begin
      sql := TSQLQuery.Create(nil);
      try
         sql.SQLConnection := DmBanco.BancoDados;
         sql.SQL.Add(' update TCidade set');
         sql.SQL.Add(' CODCIDADE = :CODCIDADE,');
         sql.SQL.Add(' CEP = :CEP,');
         sql.SQL.Add(' UF = :UF');
         sql.SQL.Add(' where DESCCIDADE = :DESCCIDADE');

         sql.Prepared := True;
         sql.ParamByName('CODCIDADE').AsInteger := cidade.Codigo;
         sql.ParamByName('DESCCIDADE').AsString := cidade.Nome;
         sql.ParamByName('CEP').AsString := cidade.CEP;
         sql.ParamByName('UF').AsString := cidade.UF;
         sql.ExecSQL();
      finally
         FreeAndNil(sql);
      end;
   end;
end;

end.

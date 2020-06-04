unit uClasBairroServico;

interface

uses uClasBairro, uDM, SqlExpr, uDmBanco, SysUtils;

type
   TBairroServico = class
   public
      procedure Salvar(bairro: TBairro);
      function LocalizarPorNome(bairro: TBairro): boolean;
      procedure Importar(bairro: TBairro);
   end;

implementation

{ TBairroServico }

procedure TBairroServico.Importar(bairro: TBairro);
begin
   if LocalizarPorNome(bairro) = False then
      Salvar(bairro);
end;

function TBairroServico.LocalizarPorNome(bairro: TBairro): boolean;
var
   sql: TSQLQuery;
begin
   sql := TSQLQuery.Create(nil);
   try
      sql.SQLConnection := DmBanco.BancoDados;
      sql.SQL.Add(' select CODBAIRRO from TBairro');
      sql.SQL.Add(' where DESCBAIRRO = :DESCBAIRRO');

      sql.Prepared := True;
      sql.ParamByName('DESCBAIRRO').AsString := bairro.Nome;
      sql.Open();

      bairro.Codigo := sql.FieldByName('CODBAIRRO').AsInteger;

      result := (sql.FieldByName('CODBAIRRO').AsInteger > 0);
      sql.Close;

   finally
      FreeAndNil(sql);
   end;

end;

procedure TBairroServico.Salvar(bairro: TBairro);
var
   sql: TSQLQuery;
begin
   if bairro.Nome = '' then
      raise Exception.Create('Informe o Nome do Bairro');

   if bairro.Codigo = 0 then
   begin
      bairro.Codigo := dm.Incrementa('TBAIRRO','CODBAIRRO');
      sql := TSQLQuery.Create(nil);
      try
         sql.SQLConnection := DmBanco.BancoDados;
         sql.SQL.Add(' insert into TBairro(');
         sql.SQL.Add(' CODBAIRRO, DESCBAIRRO)');
         sql.SQL.Add(' values (');
         sql.SQL.Add(' :CODBAIRRO, :DESCBAIRRO)');

         sql.Prepared := True;
         sql.ParamByName('CODBAIRRO').AsInteger := bairro.Codigo;
         sql.ParamByName('DESCBAIRRO').AsString := bairro.Nome;
         sql.ExecSQL();
      finally
         FreeAndNil(sql);
      end;
   end;
end;

end.

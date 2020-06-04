unit UClasServicoNegocio;

interface

uses sysUtils,  SqlExpr, uDMBanco, UClasConexao;

type
   TNegocioServico = class(TObject)
   private

   public
      function Incrementar(): integer;
      function ProximoId(): integer;
   end;

implementation

{ TNegocio }

function TNegocioServico.Incrementar: integer;
var
   QrySql: TSQLQuery;
begin
   Result := ProximoId;

   QrySql := TSQLQuery.Create(nil);
   try
      QrySql.SQLConnection := TConexao.Conectar();
      QrySql.SQL.Add('update TCONTROL set');
      QrySql.SQL.Add(' CODIGO = CODIGO + 1');
      QrySql.SQL.Add(' where CODTABELA = ' + QuotedStr('Ordem'));
      QrySql.ExecSQL();
   finally
      QrySql.Free;
   end;

end;

function TNegocioServico.ProximoId: integer;
var
   QrySql: TSQLQuery;
begin
   QrySql := TSQLQuery.Create(nil);
   try
      QrySql.SQLConnection := TConexao.Conectar();
      QrySql.SQL.Add('select CODIGO from TCONTROL where CODTABELA = ' + QuotedStr('Ordem'));
      QrySql.Open;
      Result := QrySql.Fields[0].AsInteger;
      QrySql.Close;
   finally
      QrySql.Free;
   end;
end;

end.

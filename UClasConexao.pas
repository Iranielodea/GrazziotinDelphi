unit UClasConexao;

interface

uses sysUtils,  SqlExpr, uDMBanco;

type
   TConexao = class(TObject)
   public
      class function Conectar(): TSQLConnection;
   end;

implementation

{ TConexao }

class function TConexao.Conectar: TSQLConnection;
begin
   Result := DmBanco.BancoDados;
end;

end.

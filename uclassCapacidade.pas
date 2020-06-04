unit uclassCapacidade;

interface

uses System.SysUtils, SqlExpr, UDMBanco;

type
  TCapacidade = class
  private
    FCodigo: Integer;
    FNome: string;
    FPeso: string;
    FTipo: string;
    FCodAgente: string;
    function LocalizarComMarca(IdMarca: Integer; NomeCapacidade: string): Integer;
    function LocalizarPorNome(NomeCapacidade: string): Integer;
  public
    procedure LocalizarId(Id: Integer);
    procedure LocalizarPorMarca(IdMarca: Integer; NomeCapacidade: string);

    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Peso: string read FPeso write FPeso;
    property Tipo: string read FTipo write FTipo;
    property CodAgente: string read FCodAgente write FCodAgente;
  end;

implementation

{ TCapacidade }

function TCapacidade.LocalizarComMarca(IdMarca: Integer;
  NomeCapacidade: string): Integer;
var
  Sql: TSQLQuery;
begin
  Sql := TSQLQuery.Create(nil);
  try
    Sql.SQLConnection := DmBanco.BancoDados;
    Sql.SQL.Add(' SELECT');
    Sql.SQL.Add('   CODCAPACIDADE');
    Sql.SQL.Add(' FROM CAPACIDADE');
    Sql.SQL.Add(' WHERE DESCCAPACIDADE = ' + QuotedStr(NomeCapacidade));
    Sql.SQL.Add(' AND CODMARCA = ' + IntToStr(IdMarca));
    Sql.Open;

    Result := Sql.Fields[0].AsInteger;
  finally
    FreeAndNil(Sql);
  end;
end;

procedure TCapacidade.LocalizarId(Id: Integer);
var
  Sql: TSQLQuery;
begin
  Sql := TSQLQuery.Create(nil);
  try
    Sql.SQLConnection := DmBanco.BancoDados;
    Sql.SQL.Add(' SELECT');
    Sql.SQL.Add('   CODCAPACIDADE');
    Sql.SQL.Add('  ,TIPO');
    Sql.SQL.Add('  ,PESO');
    Sql.SQL.Add('  ,DESCCAPACIDADE');
    Sql.SQL.Add('  ,CODAGENTE');
    Sql.SQL.Add(' FROM CAPACIDADE');
    Sql.SQL.Add(' WHERE CODCAPACIDADE = ' + IntToStr(Id));
    Sql.Open;

    FCodigo := Sql.FieldByName('CODCAPACIDADE').AsInteger;
    FNome := Sql.FieldByName('DESCCAPACIDADE').AsString;
    FPeso := Sql.FieldByName('PESO').AsString;
    FTipo := Sql.FieldByName('TIPO').AsString;
    FCodAgente := Sql.FieldByName('CODAGENTE').AsString;
  finally
    FreeAndNil(Sql);
  end;
end;

procedure TCapacidade.LocalizarPorMarca(IdMarca: Integer;
  NomeCapacidade: string);
var
  id: Integer;
begin
  id := LocalizarComMarca(IdMarca, NomeCapacidade);
  if id = 0 then
    id := LocalizarPorNome(NomeCapacidade);
  LocalizarId(id);
end;

function TCapacidade.LocalizarPorNome(NomeCapacidade: string): Integer;
var
  Sql: TSQLQuery;
begin
  Sql := TSQLQuery.Create(nil);
  try
    Sql.SQLConnection := DmBanco.BancoDados;
    Sql.SQL.Add(' SELECT');
    Sql.SQL.Add('   CODCAPACIDADE');
    Sql.SQL.Add(' FROM CAPACIDADE');
    Sql.SQL.Add(' WHERE DESCCAPACIDADE = ' + QuotedStr(NomeCapacidade));
//    Sql.SQL.Add(' AND CODMARCA IS NULL');
    Sql.Open;

    Result := Sql.Fields[0].AsInteger;
  finally
    FreeAndNil(Sql);
  end;
end;

end.

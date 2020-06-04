unit uManutencaoController;

interface

uses
  UDMBanco, Data.DB, System.SysUtils, Data.SqlExpr;

type
  TManutencaoController = class
  private
    FCodigo: Integer;
    FNome: string;
    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: string);
  public
    procedure LocalizarCodigo(ACodigo: Integer);
    property Codigo: Integer read FCodigo write SetCodigo;
    property Nome: string read FNome write SetNome;
  end;

implementation

{ TManutencaoController }

procedure TManutencaoController.LocalizarCodigo(ACodigo: Integer);
var
  obj: TSQLQuery;
begin
  obj := TSQLQuery.Create(nil);
  try
    obj.SQLConnection := DmBanco.BancoDados;
    obj.SQL.Text := 'SELECT CODMANUTENCAO, DESCMANUTENCAO FROM TMANUT WHERE CODMANUTENCAO = ' + ACodigo.ToString();
    obj.Open;

    FCodigo := ACodigo;
    FNome := obj.FieldByName('DESCMANUTENCAO').AsString;
  finally
    FreeAndNil(obj);
  end;
end;

procedure TManutencaoController.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TManutencaoController.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.

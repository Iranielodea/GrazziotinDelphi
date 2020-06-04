unit uClasCidade;

interface

uses SysUtils;

type
   TCidade = class
   private
      FCEP: string;
      FCodigo: Integer;
      FNome: string;
      FUF: string;
      procedure SetCEP(const Value: string);
    procedure SetNome(const Value: string);
      procedure SetUF(const Value: string);
   public
      property CEP: string read FCEP write SetCEP;
      property Codigo: Integer read FCodigo write FCodigo;
      property Nome: string read FNome write SetNome;
      property UF: string read FUF write SetUF;

   end;

implementation

procedure TCidade.SetCEP(const Value: string);
begin
  FCEP := trim(Value);
end;

{ TCidade }

procedure TCidade.SetNome(const Value: string);
begin
  FNome := trim(copy(Value,1,40));
end;

procedure TCidade.SetUF(const Value: string);
begin
  FUF := Trim(Value);
end;

end.

unit uClasBairro;

interface

uses SysUtils;

type
   TBairro = class
   private
      FCodigo: Integer;
      FNome: string;
    procedure SetNome(const Value: string);
   public
      property Codigo: Integer read FCodigo write FCodigo;
      property Nome: string read FNome write SetNome;
   end;

implementation

{ TBairro }

procedure TBairro.SetNome(const Value: string);
begin
  FNome := trim(copy(Value,1,30));
end;

end.

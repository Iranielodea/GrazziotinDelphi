unit uClasPessoa;

interface

uses SysUtils;

type
   TPessoa = class
   private
      FCEP: string;
      FCNPJ: string;
      FCodBairro: Integer;
      FCodCidade: Integer;
      FCodigo: Integer;
      FComplemento: string;
      FContato: string;
      FCPF: string;
      FDDD1: string;
      FDDD2: string;
      FEmail: string;
      FFJ: string;
      FFone1: string;
      FFone2: string;
      FHomePage: string;
      FIE: string;
      FNome: string;
      FNumero: string;
      FObservacao: string;
      FRG: string;
      FRua: string;
      FTipo: string;
      procedure SetCEP(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetContato(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetFone1(const Value: string);
    procedure SetFone2(const Value: string);
    procedure SetHomePage(const Value: string);
    procedure SetRua(const Value: string);
    procedure SetCNPJ(const Value: string);
    procedure SetCPF(const Value: string);
      procedure SetDDD1(const Value: string);
      procedure SetDDD2(const Value: string);
      procedure SetFJ(const Value: string);
      procedure SetIE(const Value: string);
      procedure SetNumero(const Value: string);
      procedure SetObservacao(const Value: string);
      procedure SetRG(const Value: string);
   public
      property CEP: string read FCEP write SetCEP;
      property CNPJ: string read FCNPJ write SetCNPJ;
      property CodBairro: Integer read FCodBairro write FCodBairro;
      property CodCidade: Integer read FCodCidade write FCodCidade;
      property Codigo: Integer read FCodigo write FCodigo;
      property Complemento: string read FComplemento write SetComplemento;
      property Contato: string read FContato write SetContato;
      property CPF: string read FCPF write SetCPF;
      property DDD1: string read FDDD1 write SetDDD1;
      property DDD2: string read FDDD2 write SetDDD2;
      property Email: string read FEmail write SetEmail;
      property FJ: string read FFJ write SetFJ;
      property Fone1: string read FFone1 write SetFone1;
      property Fone2: string read FFone2 write SetFone2;
      property HomePage: string read FHomePage write SetHomePage;
      property IE: string read FIE write SetIE;
      property Nome: string read FNome write SetNome;
      property Numero: string read FNumero write SetNumero;
      property Observacao: string read FObservacao write SetObservacao;
      property RG: string read FRG write SetRG;
      property Rua: string read FRua write SetRua;
      property Tipo: string read FTipo write FTipo;

   end;
implementation

procedure TPessoa.SetCEP(const Value: string);
begin
  FCEP := Trim(Value);
end;

{ TPessoa }

procedure TPessoa.SetCNPJ(const Value: string);
var
  iValor: double;
begin
  FCNPJ := trim(Value);
  try
    iValor := StrToFloat(trim(Value));
  except
    iValor := 0;
  end;

  if (FCNPJ <> '') and (iValor > 0) then
    FFJ := 'J';
end;

procedure TPessoa.SetComplemento(const Value: string);
begin
  FComplemento := trim(copy(Value,1,20));
end;

procedure TPessoa.SetContato(const Value: string);
begin
  FContato := trim(copy(Value,1,20));
end;

procedure TPessoa.SetCPF(const Value: string);
var
  iValor: double;
begin
  FCPF := trim(Value);
  try
    iValor := StrToFloat(trim(Value));
  except
    iValor := 0;
  end;

  if (FCPF <> '') and (iValor > 0) then
    FFJ := 'F';
end;

procedure TPessoa.SetDDD1(const Value: string);
begin
  FDDD1 := Trim(Value);
end;

procedure TPessoa.SetDDD2(const Value: string);
begin
  FDDD2 := Trim(Value);
end;

procedure TPessoa.SetEmail(const Value: string);
begin
  FEmail := Trim(copy(Value,1,50));
end;

procedure TPessoa.SetFJ(const Value: string);
begin
  FFJ := Value;
end;

procedure TPessoa.SetFone1(const Value: string);
begin
  FFone1 := FDDD1 + Trim(copy(Value,1,15));
end;

procedure TPessoa.SetFone2(const Value: string);
begin
  FFone2 := FDDD2 + Trim(copy(Value,1,15));
end;

procedure TPessoa.SetHomePage(const Value: string);
begin
  FHomePage := Trim(copy(Value,1,50));
end;

procedure TPessoa.SetIE(const Value: string);
begin
  FIE := trim(Value);
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := UpperCase(trim(copy(Value,1,70)));
end;

procedure TPessoa.SetNumero(const Value: string);
begin
  FNumero := Trim(Value);
end;

procedure TPessoa.SetObservacao(const Value: string);
begin
  FObservacao := Trim(Value);
end;

procedure TPessoa.SetRG(const Value: string);
begin
  FRG := Trim(Value);
end;

procedure TPessoa.SetRua(const Value: string);
begin
  FRua := trim(copy(Value,1,40));
end;

end.

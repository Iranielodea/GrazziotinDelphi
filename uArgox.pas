unit uArgox;

interface

uses
  SysUtils, Classes;

type
  TArgox = class
  private
    FArq: Text;
    FNovaEtiqueta: Boolean;
  public
    procedure Imprimir(Orientacao, Fonte, MultHoriz, MultVert, SubTipoFonte,
      CoordY, CoordX, Texto: string);
    procedure CodigoBarras(Orientacao, TipoBarra, LarguraDaBarraLarga,
      LarguraDaBarraFina, AlturaCodigo, CoordY, CoordX, Texto: string);
    procedure FimEtiqueta();

    constructor create(Porta: string; DefinirTamanho: string='m';
      TamanhoDefinido: string='M150'; Temperatura: string='H12'; Resolucao: string='D11');
    destructor destroy; override;
  end;

implementation

{ TArgox }

procedure TArgox.CodigoBarras(Orientacao, TipoBarra, LarguraDaBarraLarga,
  LarguraDaBarraFina, AlturaCodigo, CoordY, CoordX, Texto: string);
var
  sComando: string;
begin
  sComando := Orientacao + TipoBarra + LarguraDaBarraLarga + LarguraDaBarraFina + AlturaCodigo + CoordY + CoordX;
  Writeln(FArq, sComando + Texto + #13);
  FNovaEtiqueta := False;
end;

constructor TArgox.create(Porta, DefinirTamanho, TamanhoDefinido,
  Temperatura, Resolucao: string);
begin
  AssignFile(FArq, Porta);
  Rewrite(FArq);

  Writeln(FArq, #02 + 'e' + #13); //define q quem comanda eh o sensor
  Writeln(FArq, #02 + DefinirTamanho + #13); // definir o tam em milimetros
  Writeln(FArq, #02 + TamanhoDefinido + #13); //tamanho definido em milimetros
  Writeln(FArq, #02 + 'L' + #13); //inicia o processo de impressao
  Writeln(FArq, Temperatura); // Temperatura
  Writeln(FArq, Resolucao + #13); //resolucao
  FNovaEtiqueta := False;
end;

destructor TArgox.destroy;
begin
  if FNovaEtiqueta = False then
    Writeln(FArq, 'E' + #13);

  CloseFile(FArq);
  inherited;
end;

procedure TArgox.FimEtiqueta;
begin
  Writeln(FArq, 'E' + #13);
  FNovaEtiqueta := True;
end;

procedure TArgox.Imprimir(Orientacao, Fonte, MultHoriz, MultVert, SubTipoFonte, CoordY, CoordX, Texto: string);
var
  sComando: string;
begin
  sComando := Orientacao + Fonte + MultHoriz + MultVert + SubTipoFonte + CoordY + CoordX;
  Writeln(FArq, sComando + Texto + #13);
  FNovaEtiqueta := False;
end;

end.

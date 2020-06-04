unit UClasItensServico;

interface

uses SysUtils;

type
   TItensServico = class
      public
         function DentroIntervaloSelo(pSelo: string): Boolean;
   end;

implementation

uses UDM;

{ TItensServico }

function TItensServico.DentroIntervaloSelo(pSelo: string): Boolean;
var
   vSelo: Integer;
begin
   dm.dtTabControle.Close;
   dm.dtTabControle.Open;

   vSelo := StrToIntDef(pSelo, 0);

   if (vSelo >= dm.dtTabControleSELOINICIAL.AsInteger) and
      (vSelo <= dm.dtTabControleSELOFINAL.AsInteger) then
   begin
      Result := True
   end
   else
      Result := False;
   dm.dtTabControle.Close;
end;

end.

unit UDMR;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr;

type
  TDMR = class(TDataModule)
    QSeloAnt: TSQLQuery;
    QSeloAntNUMSELO: TFloatField;
    QSeloAntNUMORDEM: TFloatField;
    QSeloAntDATA: TSQLTimeStampField;
    spUltimoSelo: TSQLStoredProc;
    QManutencao: TSQLQuery;
    QManutencaoRETESTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function Get_SeloAnterior(inCliente, inSerie: String): String;
    function Busca_UltimoSelo(inCodPessoa,inSerie,inSeloAtual: string): String;
    procedure ManutencaoObterPorCodigo(ACodigo: Double);
  end;

var
  DMR: TDMR;

implementation

uses UDMBanco;

{$R *.dfm}

function TDMR.Busca_UltimoSelo(inCodPessoa, inSerie,
  inSeloAtual: string): String;
var
   vlSelo: String;
begin
{
   stored procedure
   busca o ultimo selo do extintor
}
   if trim(inSeloAtual) = '' then
   begin
      result := '0';
      exit;
   end;

   spUltimoSelo.Close;
   spUltimoSelo.ParamByName('CODPESSOA').AsInteger := StrToIntDef(inCodPessoa, 0);
   spUltimoSelo.paramByName('SERIE').Text          := inSerie;
   spUltimoSelo.ParamByName('NUMSELO').AsInteger   := StrToIntDef(inSeloAtual, 0);
   spUltimoSelo.ExecProc;

   vlSelo := spUltimoSelo.paramByName('SELOANTERIOR').Text;

   if vlSelo = '' then
      vlSelo := 'NULL';

   result := vlSelo;
end;

function TDMR.Get_SeloAnterior(inCliente, inSerie: String): String;
var vlRetorno: String;
var vlAtual: String;
begin
//codpessoa = 2
//"9850"

   vlRetorno:='null';
   QseloAnt.Close;
   QSeloAnt.ParamByName('CODPESSOA').Text:=inCliente;
   QSeloAnt.ParamByName('SERIE').Text:=inSerie;
   QSeloAnt.Open;
   vlAtual:=QSeloAntNUMSELO.Text;
   while not QseloAnt.Eof do
   begin
      if QSeloAntNUMSELO.Text <> vlAtual then
      begin
         vlRetorno:=QSeloAntNUMSELO.Text;
         break;
      end;
      QseloAnt.Next;
   end;
   QSeloAnt.Close;
   
   Result:=vlRetorno;
end;

procedure TDMR.ManutencaoObterPorCodigo(ACodigo: Double);
begin
  QManutencao.Close;
  QManutencao.Params[0].AsFloat := ACodigo;
  QManutencao.Open;
end;

end.

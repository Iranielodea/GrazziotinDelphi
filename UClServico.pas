unit UClServico;

interface

uses sysUtils,  SqlExpr;

Type
   TServico = Class
   private
      fVenctoCarga:  String;
      fVencimento:   String;
      fAnoFab:       String;
      fSituacao:     String;
      fCodMarca:     String;
      fCapacidade:   String;
      fDataCarga:    String;
      fConservacao:  String;
      fSelo:         String;
      fNumero:       String;
      fCodProjeto:   String;
      fCodCapacidade:String;
      fPeso:         String;
      fTipo:         String;
      fLoteResumido: String;
      fChave:        String;
   public
      procedure GravaExtintor;
      property VenctoCarga: String  read fVenctoCarga write fVenctoCarga;
      property Vencimento: String  read fVencimento write fVencimento;
      property AnoFab: String  read fAnoFab write fVencimento;
      property Situacao: String  read fSituacao write fSituacao;
      property CodMarca: String  read fCodMarca write fCodMarca;
      property Capacidade: String  read fCapacidade write fCapacidade;
      property DataCarga: String  read fDataCarga write fDataCarga;
      property Conservacao: String  read fConservacao write fConservacao;
      property Selo: String  read fSelo write fSelo;
      property Numero: String  read fNumero write fNumero;
      property CodProjeto: String  read fCodProjeto write fCodProjeto;
      property CodCapacidade: String  read fCodCapacidade write fCodCapacidade;
      property Peso: String  read fPeso write fPeso;
      property Tipo: String  read fTipo write fTipo;
      property LoteResumido: String  read fLoteResumido write fLoteResumido;
      property Chave: String  read fChave write fChave;
   end;
implementation

uses UDMBanco, UUtil;

{ TServico }

procedure TServico.GravaExtintor;
begin
   dmBanco.BancoDados.ExecuteDirect(
      ' update TCLIEXT set'
      +' VENCTOCARGA = '+DataIngles(fVenctoCarga)
      +',VENCIMENTO = '+DataIngles(fVencimento)
      +',ANOFAB = '+DataIngles(fAnoFab)
      +',SITUACAO = '''+fSituacao + ''''
      +',CODMARCA = '+fCodMarca
      +',CAPACIDADE = '''+fCapacidade+''''
      +',DATACARGA = '+DataIngles(fDataCarga)
      +',CONSERVACAO = '''+fConservacao+''''
      +',SELO = '+fSelo
      +',NUMERO = '+fSelo
      +',CODPROJETO = '''+fCodProjeto+''''
      +',CODCAPACIDADE = '+fCodCapacidade
      +',PESO = '+fPeso
      +',TIPO = '''+fTipo+''''
      +',LOTERESUMIDO = '''+fLoteResumido+''''
      +' where CONTROLE = '+fChave
   )
end;

end.

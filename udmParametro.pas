unit udmParametro;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TdmParametro = class(TDataModule)
    sqlCadastro: TSQLDataSet;
    sqlCadastroPARAM_DATA: TSQLTimeStampField;
    sqlCadastroPARAM_INTEIRO: TIntegerField;
    sqlCadastroPARAM_STRING: TStringField;
    sqlCadastroPARAM_VALOR: TFMTBCDField;
  private
    { Private declarations }
    procedure LocalizarSigla(Sigla: string);
  public
    { Public declarations }
    function LocalizarEtiqueta: Boolean;
    function ImpressoraEtiquetaGrande: string;
    function ImpressoraEtiquetaPequena: string;
  end;

var
  dmParametro: TdmParametro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMBanco;

{$R *.dfm}

{ TdmParametro }

function TdmParametro.ImpressoraEtiquetaGrande: string;
begin
  LocalizarSigla('ETIQ_GRANDE');
  result := sqlCadastroPARAM_STRING.AsString;
end;

function TdmParametro.ImpressoraEtiquetaPequena: string;
begin
  LocalizarSigla('ETIQ_PEQUENA');
  result := sqlCadastroPARAM_STRING.AsString;
end;

function
 TdmParametro.LocalizarEtiqueta: Boolean;
begin
  LocalizarSigla('IMP_ETIQUETA');
  Result := sqlCadastroPARAM_STRING.AsString = 'S';
  sqlCadastro.Close;
end;

procedure TdmParametro.LocalizarSigla(Sigla: string);
begin
  sqlCadastro.Close;
  sqlCadastro.ParamByName('SIGLA').AsString := Sigla;
  sqlCadastro.Open;
end;

end.

unit UdmOrdemServico;

interface

uses
  System.SysUtils, System.Classes, UDMBanco, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient;

type
  TdmOrdemServico = class(TDataModule)
    QBuscarSerie: TSQLQuery;
    QOrdem: TSQLQuery;
    QOrdemNUMORDEM: TFloatField;
    cdsBuscarCliente: TClientDataSet;
    dspBuscarSerie: TDataSetProvider;
    cdsBuscarClienteCODPESSOA: TFloatField;
    cdsBuscarClienteNOME: TStringField;
    QSeloOrdem: TSQLQuery;
    dspSeloOrdem: TDataSetProvider;
    cdsSeloOrdem: TClientDataSet;
    cdsSeloOrdemCODPESSOA: TFloatField;
    cdsSeloOrdemSERIE: TStringField;
    cdsSeloOrdemNOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscarPessoa(ASerie: string);
    procedure BuscarOrdem(AData: TDate; ACodPessoa: Integer);
    procedure BuscarSelo(ASelo: Integer);
  end;

var
  dmOrdemServico: TdmOrdemServico;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmOrdemServico }

procedure TdmOrdemServico.BuscarOrdem(AData: TDate; ACodPessoa: Integer);
begin
  QOrdem.Close;
  QOrdem.ParamByName('Data').AsDate := AData;
  QOrdem.ParamByName('CodPessoa').AsInteger := ACodPessoa;
  QOrdem.Open;
end;

procedure TdmOrdemServico.BuscarPessoa(ASerie: string);
begin
  cdsBuscarCliente.Close;
  cdsBuscarCliente.Params[0].AsString := ASerie;
  cdsBuscarCliente.Open;
end;

procedure TdmOrdemServico.BuscarSelo(ASelo: Integer);
begin
  cdsSeloOrdem.Close;
  cdsSeloOrdem.Params[0].AsInteger := ASelo;
  cdsSeloOrdem.Open;
end;

end.

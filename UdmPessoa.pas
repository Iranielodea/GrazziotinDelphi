unit UdmPessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TdmPessoa = class(TDataModule)
    sqlPessoa: TSQLDataSet;
    sqlPessoaCEP: TStringField;
    sqlPessoaCGC: TStringField;
    sqlPessoaCODBAIRRO: TFloatField;
    sqlPessoaCODCIDADE: TFloatField;
    sqlPessoaCODPESSOA: TFloatField;
    sqlPessoaCODVENDEDOR: TFloatField;
    sqlPessoaCOMPLEMENTO: TStringField;
    sqlPessoaCONTATO: TStringField;
    sqlPessoaCPF: TStringField;
    sqlPessoaEMAIL: TStringField;
    sqlPessoaFAX: TStringField;
    sqlPessoaFONE1: TStringField;
    sqlPessoaFONE2: TStringField;
    sqlPessoaINSCESTADUAL: TStringField;
    sqlPessoaNOME: TStringField;
    sqlPessoaNUMERO: TStringField;
    sqlPessoaOBS: TStringField;
    sqlPessoaOBSERVACAO: TMemoField;
    sqlPessoaRG: TStringField;
    sqlPessoaRUA: TStringField;
    sqlPessoaSITE: TStringField;
    sqlPessoaTIPO: TStringField;
    sqlPessoaTIPOPESSOA: TStringField;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODPESSOA: TFloatField;
    cdsPessoaCEP: TStringField;
    cdsPessoaCGC: TStringField;
    cdsPessoaCODBAIRRO: TFloatField;
    cdsPessoaCODCIDADE: TFloatField;
    cdsPessoaCODVENDEDOR: TFloatField;
    cdsPessoaCOMPLEMENTO: TStringField;
    cdsPessoaCONTATO: TStringField;
    cdsPessoaCPF: TStringField;
    cdsPessoaEMAIL: TStringField;
    cdsPessoaFAX: TStringField;
    cdsPessoaFONE1: TStringField;
    cdsPessoaFONE2: TStringField;
    cdsPessoaINSCESTADUAL: TStringField;
    cdsPessoaNOME: TStringField;
    cdsPessoaNUMERO: TStringField;
    cdsPessoaOBS: TStringField;
    cdsPessoaOBSERVACAO: TMemoField;
    cdsPessoaRG: TStringField;
    cdsPessoaRUA: TStringField;
    cdsPessoaSITE: TStringField;
    cdsPessoaTIPO: TStringField;
    cdsPessoaTIPOPESSOA: TStringField;
    procedure cdsPessoaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LocalizarPessoa(codigo: Integer);
    procedure Salvar;
  end;

var
  dmPessoa: TdmPessoa;

implementation

uses UDMBanco, UDM, UUtil;

{$R *.dfm}

procedure TdmPessoa.cdsPessoaBeforePost(DataSet: TDataSet);
begin
  if cdsPessoa.State = dsInsert then
    cdsPessoaCODPESSOA.AsInteger := dm.Incrementa('TPESSOA','CODPESSOA');
end;

{ TdmPessoa }

procedure TdmPessoa.LocalizarPessoa(codigo: Integer);
begin
  cdsPessoa.Close;
  cdsPessoa.Params[0].AsInteger := codigo;
  cdsPessoa.Open;
end;

procedure TdmPessoa.Salvar;
begin
  if cdsPessoa.State in [dsEdit, dsInsert] then
    cdsPessoa.Post;
  UUtil.GravaTab(cdsPessoa);
end;

end.

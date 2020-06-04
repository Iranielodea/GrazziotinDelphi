unit uImpressaoOrdemServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UDMBanco,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmImpressaoOrdemServico = class(TForm)
    Panel1: TPanel;
    dbGrade: TDBGrid;
    QOrdem: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    cdsOrdem: TClientDataSet;
    DataSource1: TDataSource;
    cdsOrdemNUMORDEM: TFloatField;
    cdsOrdemCODPESSOA: TFloatField;
    cdsOrdemNOME: TStringField;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DataSource1StateChange(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Carregar;
  public
    { Public declarations }
  end;

var
  frmImpressaoOrdemServico: TfrmImpressaoOrdemServico;

implementation

{$R *.dfm}

uses UROrdemServico2;

{ TfrmImpressaoOrdemServico }

procedure TfrmImpressaoOrdemServico.butImprimirClick(Sender: TObject);
begin
   fROrdemServico2 := TfROrdemServico2.Create(Self);
   fROrdemServico2.Impressao(cdsOrdemNUMORDEM.AsInteger);
   frOrdemServico2.free;
end;

procedure TfrmImpressaoOrdemServico.butSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImpressaoOrdemServico.Carregar;
begin
  cdsOrdem.Close;
  cdsOrdem.Params[0].AsDate := Date;
  cdsOrdem.Open;
end;

procedure TfrmImpressaoOrdemServico.DataSource1StateChange(Sender: TObject);
begin
  butImprimir.Enabled := not (cdsOrdem.IsEmpty);
end;

procedure TfrmImpressaoOrdemServico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmImpressaoOrdemServico.FormShow(Sender: TObject);
begin
  Carregar();
  dbGrade.SetFocus;
end;

end.

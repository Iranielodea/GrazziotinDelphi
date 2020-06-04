unit UAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TfrmAbout = class(TForm)
    lblEmpresa: TLabel;
    Label2: TLabel;
    lblVersao: TLabel;
    Panel1: TPanel;
    butFechar: TBitBtn;
    sqlEmpresa: TSQLDataSet;
    sqlEmpresaVERSAO: TStringField;
    sqlEmpresaNOME: TStringField;
    procedure butFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure DadosEmpresa;
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

uses UDM, UDMBanco;

procedure TfrmAbout.butFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbout.DadosEmpresa;
begin
  sqlEmpresa.Close;
  sqlEmpresa.Open;
  lblEmpresa.Caption := sqlEmpresaNOME.AsString;
  lblVersao.Caption := sqlEmpresaVERSAO.AsString;
  sqlEmpresa.Close;
end;

procedure TfrmAbout.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmAbout.FormShow(Sender: TObject);
begin
  DadosEmpresa();
end;

end.

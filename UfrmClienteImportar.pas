unit UfrmClienteImportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TfrmClienteImportar = class(TForm)
    Label1: TLabel;
    edtArquivo: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    butOk: TBitBtn;
    butFechar: TBitBtn;
    procedure butFecharClick(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteImportar: TfrmClienteImportar;

implementation

uses uPessoaServico, UDM;

{$R *.dfm}

procedure TfrmClienteImportar.butFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmClienteImportar.butOkClick(Sender: TObject);
var
   PessoaServico: TPessoaServico;
begin
   PessoaServico := TPessoaServico.Create;
   try
      try
         dm.IniTrans;
         PessoaServico.LerArquivoTexto(edtArquivo.Text);
         dm.GravaTrans;
         ShowMessage('Fim da Importação');
      except
         on E: Exception do
         begin
            dm.CancelaTrans;
            ShowMessage(E.Message);
         end;
      end;
   finally
      FreeAndNil(PessoaServico);
   end;
end;

procedure TfrmClienteImportar.FormShow(Sender: TObject);
begin
  dm.GetParametros('CAM_IMP_PESSOA');
  edtArquivo.Text := DM.ParametroPARAM_STRING.AsString;
  dm.Parametro.Close;
end;

procedure TfrmClienteImportar.SpeedButton1Click(Sender: TObject);
begin
   if OpenDialog1.Execute() then
      edtArquivo.Text := OpenDialog1.FileName;
end;

end.

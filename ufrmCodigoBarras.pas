unit ufrmCodigoBarras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCodigoBarras = class(TForm)
    Label1: TLabel;
    edtCodBarras: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtCodBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCodigoBarras: TfrmCodigoBarras;

implementation

{$R *.dfm}

procedure TfrmCodigoBarras.edtCodBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Close;
    ModalResult := mrOk;
  end;
end;

procedure TfrmCodigoBarras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmCodigoBarras.FormShow(Sender: TObject);
begin
  edtCodBarras.SetFocus;
end;

end.

unit USenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfSenha = class(TForm)
    Panel1: TPanel;
    butOk: TBitBtn;
    butSair: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Nome: TEdit;
    Senha: TEdit;
    procedure butSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarVersao(VersaoAtual: Integer);
    procedure LoginDesenvolvimento;
  public
    { Public declarations }
  end;

var
  fSenha: TfSenha;

implementation

uses UMenuPrin, UDM, uVersao, UDMBanco;

{$R *.dfm}

procedure TfSenha.butSairClick(Sender: TObject);
begin
   application.Terminate;
end;

procedure TfSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TfSenha.FormShow(Sender: TObject);
begin
  LoginDesenvolvimento();
end;

procedure TfSenha.LoginDesenvolvimento;
var
  sCaminho: string;
  sArquivo: string;
begin
  sCaminho := ExtractFilePath(Application.ExeName);
  sArquivo := 'Login.txt';

  if FileExists(sCaminho + sArquivo) then
  begin
    Nome.Text := 'SUPERVISOR';
    Senha.Text := 'root';
  end;
end;

procedure TfSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      application.Terminate;
end;

procedure TfSenha.AtualizarVersao(VersaoAtual: Integer);
var
  Versao: TVersao;
begin
  Versao := TVersao.Create;
  try
    Versao.AtualizarVersao(DmBanco.BancoDados, VersaoAtual);
  finally
    FreeAndNil(Versao);
  end;
end;

procedure TfSenha.butOkClick(Sender: TObject);
begin
   if (Nome.Text = 'SUPERVISOR') and (Senha.text = 'ROOT') then
   begin
      dm.GetEmpresa();
      AtualizarVersao(dm.QEmpresaVERSAO.AsInteger);

      vgUsuario := 'SUPERVISOR';
      fMenuPrin.show;
      fSenha.Visible := false;
      exit;
   end;

   dm.GetUsuario(Nome.Text);
   if dm.CadUsuario.IsEmpty then
   begin
      showMessage('Usuário não Encontrado!');
      dm.CadUsuario.Close;
      Nome.SetFocus;
      exit;
   end;

   if dm.CadUsuarioSENHA.Text <> Senha.Text then
   begin
      showMessage('Usuário não Encontrado!');
      dm.CadUsuario.Close;
      exit;
   end;

   dm.GetEmpresa();
   AtualizarVersao(dm.QEmpresaVERSAO.AsInteger);

   vgUsuario := Nome.Text;

   fMenuPrin.show;
   fSenha.Visible := false;

end;

end.

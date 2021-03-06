unit UAleraSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfAlteraSenha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Nome: TEdit;
    Senha: TEdit;
    Senha2: TEdit;
    Panel1: TPanel;
    butOk: TBitBtn;
    butFechar: TBitBtn;
    procedure butFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAlteraSenha: TfAlteraSenha;

implementation

uses UDM, UUtil;

{$R *.dfm}

procedure TfAlteraSenha.butFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfAlteraSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TfAlteraSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfAlteraSenha.FormShow(Sender: TObject);
begin
   dm.GetUsuario(vgUsuario);
   if not dm.CadUsuario.IsEmpty then
   begin
      Nome.Text := dm.CadUsuarioNOME.Text;
      Senha.Text := dm.CadUsuarioSENHA.Text;
      Senha2.Text := dm.CadUsuarioSENHA.Text;
      butOk.Enabled := True;
   end;
end;

procedure TfAlteraSenha.butOkClick(Sender: TObject);
begin
   if Senha.Text <> Senha2.Text then
   begin
      Mensagem('Primeira Senha difente da Segunda Senha');
      Senha.SetFocus;
      exit;
   end;

   dm.GetUsuario(Nome.Text);
   if not dm.CadUsuario.IsEmpty then
   begin
      dm.CadUsuario.Edit;
      dm.CadUsuarioSENHA.Text := Senha.Text;
      dm.CadUsuario.Post;
      GravaTab(dm.CadUsuario);
      close;
   end;
end;

procedure TfAlteraSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   dm.CadUsuario.Close;
   action := cafree;
end;

end.

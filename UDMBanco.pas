unit UDMBanco;

interface

uses
  SysUtils, Classes, DBXFirebird, DB, SqlExpr, Dialogs, WideStrings;

type
  TDmBanco = class(TDataModule)
    BancoDados: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmBanco: TDmBanco;

implementation

{$R *.dfm}

procedure TDmBanco.DataModuleCreate(Sender: TObject);
begin
   if not fileExists('dbxconnections.ini') then
   begin
      showmessage('dbxconnections.ini n�o encontrado');
      exit;
   end;
   if BancoDados.Connected = true then
      BancoDados.Connected:=false;
   BancoDados.LoadParamsFromIniFile('dbxconnections.ini');
   if BancoDados.Connected = false then
      BancoDados.Connected:=true;
end;

procedure TDmBanco.DataModuleDestroy(Sender: TObject);
begin
   if BancoDados.Connected = true then
      BancoDados.Connected:=false;
end;

end.


unit UIntervaloSelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, ExtCtrls;

type
  TfIntervaloSelo = class(TForm)
    dsCad: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    edtSeloInicial: TDBEdit;
    edtSeloFinal: TDBEdit;
    Panel1: TPanel;
    btnSalvar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIntervaloSelo: TfIntervaloSelo;

implementation

uses UDM, UUtil;

{$R *.dfm}

procedure TfIntervaloSelo.btnSairClick(Sender: TObject);
begin
   close;
end;

procedure TfIntervaloSelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
      close;
end;

procedure TfIntervaloSelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dsCad.DataSet.State in [dsedit,dsinsert] then
      dsCad.DataSet.Cancel;
   dsCad.DataSet.Close;
end;

procedure TfIntervaloSelo.FormCreate(Sender: TObject);
begin
   dm.GetTabControle;
   if dm.dtTabControle.IsEmpty then
   begin
      dm.dtTabControle.Append;
      dm.dtTabControleID.AsInteger := 1;
   end;
end;

procedure TfIntervaloSelo.btnSalvarClick(Sender: TObject);
begin
   if dm.dtTabControleSELOINICIAL.AsInteger > dm.dtTabControleSELOFINAL.AsInteger then
   begin
      Mensagem('Selo Inicial maior que Selo Final!');
      Exit;
   end;

   if dm.dtTabControle.State in [dsEdit, dsInsert] then
   begin
      DM.dtTabControle.Post;
      GravaTab(dm.dtTabControle);
   end;
end;

procedure TfIntervaloSelo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

end.

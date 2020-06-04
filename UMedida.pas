unit UMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfMedida = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    butSalvar: TBitBtn;
    butSair: TBitBtn;
    rel: TClientDataSet;
    relALTURA: TFloatField;
    relLARGURA: TFloatField;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    relM_SUPERIOR: TFloatField;
    relM_INFERIOR: TFloatField;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMedida: TfMedida;

implementation

{$R *.dfm}

procedure TfMedida.FormCreate(Sender: TObject);
begin
   if fileexists('Medida.cds') then
      rel.LoadFromFile('Medida.cds');
   if rel.IsEmpty then
      rel.Append
   else
      rel.Edit;
end;

procedure TfMedida.butSalvarClick(Sender: TObject);
begin
   if rel.State in [dsedit,dsinsert] then
      rel.Post;
   rel.SaveToFile('Medida.cds',dfBinary);
end;

procedure TfMedida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if rel.State in [dsedit,dsinsert] then
      rel.Cancel;
   action:=cafree;
end;

procedure TfMedida.butSairClick(Sender: TObject);
begin
   close;
end;

end.

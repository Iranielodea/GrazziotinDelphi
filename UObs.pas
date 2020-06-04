unit UObs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, DBClient;

type
  TfObs = class(TForm)
    Label1: TLabel;
    Codigo: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    butExc: TBitBtn;
    butSalvar: TBitBtn;
    butSair: TBitBtn;
    dsCad: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    procedure CodigoExit(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure butSairClick(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fObs: TfObs;

implementation

uses UDM, UUtil;

{$R *.dfm}

procedure TfObs.CodigoExit(Sender: TObject);
begin
   if Codigo.text = '' then exit;
   procura((dsCad.dataSet as TclientDataSet),Codigo.Text);
   //dm.ProcuraPadrao(dsCad,Codigo.text);
   Memo1.Clear;
   if not dsCad.DataSet.IsEmpty then
   begin
      while not dm.Obs.Eof do
      begin
         Memo1.Lines.Add(dm.ObsDESCRICAO.Text);
         dm.Obs.Next;
      end;
   end;
end;

procedure TfObs.butSalvarClick(Sender: TObject);
var i: integer;
begin
   with dm do
   begin
      obs.First;
      while not obs.Eof do
         obs.Delete;
      for i:=0 to Memo1.Lines.Count -1 do
      begin
         Obs.Append;
         ObsCODIGO.Text:=Codigo.Text;
         obsCONTROLE.AsInteger:=i;
         obsDESCRICAO.Text:=memo1.Lines[i];
         Obs.Post;
      end;
      GravaTab(Obs);
   end;
end;

procedure TfObs.butExcClick(Sender: TObject);
begin
   with dm do
   begin
      Qsql.close;
      Qsql.sql.Text:='Delete from TOBS where CODIGO = '+Codigo.Text;
      Qsql.ExecSQL;
      GravaTab(Obs);
   end;
end;

procedure TfObs.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          key:=#0;
          perform(Wm_NextDlgCtl,0,0);
     end;
end;

procedure TfObs.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfObs.Memo1Enter(Sender: TObject);
begin
   fObs.KeyPreview:=false;
end;

procedure TfObs.Memo1Exit(Sender: TObject);
begin
   fObs.KeyPreview:=true;
end;

procedure TfObs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

end.

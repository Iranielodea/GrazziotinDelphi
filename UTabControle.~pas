unit UTabControle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB, DBClient,
  FMTBcd, Provider, SqlExpr, ComCtrls;

type
  TfTabControle = class(TForm)
    Panel1: TPanel;
    dsCad: TDataSource;
    butSalvar: TBitBtn;
    butSair: TBitBtn;
    butCancelar: TBitBtn;
    butExc: TBitBtn;
    dtTabControle: TSQLDataSet;
    dtTabControleCODTABELA: TStringField;
    dtTabControleCODIGO: TFloatField;
    dspTabControle: TDataSetProvider;
    TabControle: TClientDataSet;
    TabControleCODTABELA: TStringField;
    TabControleCODIGO: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grade: TDBGrid;
    Label1: TLabel;
    Qlote: TSQLQuery;
    QloteLOTERESUMIDO: TStringField;
    QloteCODPESSOA: TFloatField;
    QloteSERIE: TStringField;
    lblQtde: TLabel;
    lblTotal: TLabel;
    Button1: TButton;
    dtExt: TSQLDataSet;
    dtExtSERIE: TStringField;
    dtExtCONTROLE: TIntegerField;
    dspExt: TDataSetProvider;
    CliExt: TClientDataSet;
    CliExtCONTROLE: TIntegerField;
    CliExtSERIE: TStringField;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    procedure butSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butSairClick(Sender: TObject);
    procedure dsCadStateChange(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure butCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTabControle: TfTabControle;

implementation

uses UDM, UUtil, UDMbanco;

{$R *.dfm}

procedure TfTabControle.butSalvarClick(Sender: TObject);
begin
   dsCad.DataSet.Post;
end;

procedure TfTabControle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dsCad.State in [dsedit,dsinsert] then
   begin
      if Confirma('Deseja Salvar?','N') = idNo then
         butCancelarClick(Self)
      else
         butSalvarClick(Self);
   end
   else
      GravaTab((dsCad.DataSet as TClientDataSet));
   dsCad.DataSet.Close;
   action:=cafree;
end;

procedure TfTabControle.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfTabControle.dsCadStateChange(Sender: TObject);
begin
   butExc.Enabled:=(dsCad.State = dsBrowse) and (not dsCad.DataSet.IsEmpty);
   butSalvar.Enabled:=dsCad.State in [dsedit,dsinsert];
   butCancelar.Enabled:=dsCad.State in [dsedit,dsinsert];
end;

procedure TfTabControle.butExcClick(Sender: TObject);
begin
   if Confirma('Deseja Excluir','N') = idNo then
      exit;
   dsCad.DataSet.Delete;
   GravaTab((dsCad.DataSet as TClientDataSet));
end;

procedure TfTabControle.butCancelarClick(Sender: TObject);
begin
   dsCad.DataSet.Cancel;
end;

procedure TfTabControle.FormCreate(Sender: TObject);
begin
   dsCad.DataSet.Close;
   dsCad.DataSet.Open;
end;

procedure TfTabControle.Button1Click(Sender: TObject);
var i: integer;
   vsql: string;
begin
   Qlote.close;
   Qlote.Open;
   lblTotal.Caption:=inttostr(Qlote.RecordCount);
   i:=1;
   while not Qlote.Eof do
   begin
      vsql:='update TCLIEXT set LOTERESUMIDO = "'+QloteLOTERESUMIDO.text+'"'
         +' where CODPESSOA = '+QloteCODPESSOA.Text
         +' and SERIE = "'+QloteSERIE.Text+'"';
      dmBanco.BancoDados.ExecuteDirect(vsql);
      Qlote.Next;
      application.ProcessMessages;
      lblQtde.Caption:=inttostr(i);
      inc(i);
   end;
   Qlote.Close;
   showmessage('fim');
end;

procedure TfTabControle.Button2Click(Sender: TObject);
var i: integer;
begin
   CliExt.Close;
   CliExt.Open;
   lblTotal.Caption:=inttostr(CliExt.RecordCount);
   i:=1;
   while not CliExt.Eof do
   begin
      if CliExtSERIE.Text = '' then
      begin
         CliExt.Edit;
         CliExtSERIE.Text:='B-'+inttostr(i);
         CliExt.Post;
         application.ProcessMessages;
         lblQtde.Caption:=inttostr(i);
         inc(i);
      end;
      CliExt.Next;
   end;
   CliExt.ApplyUpdates(0);
   CliExt.Close;
   showmessage('fim do processo');
end;

end.

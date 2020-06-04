unit UTabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls,
  DBCtrls, Mask;

type
  TfTabPreco = class(TForm)
    dsCad: TDataSource;
    PageControl1: TPageControl;
    sheetLista: TTabSheet;
    sheetCad: TTabSheet;
    Grade: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Capacidade: TEdit;
    Nivel: TMaskEdit;
    Valor: TDBEdit;
    Panel1: TPanel;
    butNovo: TBitBtn;
    butSair: TBitBtn;
    Panel2: TPanel;
    butSalvar: TBitBtn;
    butCancelar: TBitBtn;
    butExcluir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butCancelarClick(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure butNovoClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure butExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTabPreco: TfTabPreco;

implementation

uses UDM, UUtil;

{$R *.dfm}

procedure TfTabPreco.FormCreate(Sender: TObject);
begin
   dm.tabpreco.close;
   dm.tabpreco.open;
   sheetCad.TabVisible:=false;
end;

procedure TfTabPreco.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfTabPreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.DataSet.Close;
   dsCad.DataSet.Close;
   action:=cafree;
end;

procedure TfTabPreco.butCancelarClick(Sender: TObject);
begin
   sheetLista.TabVisible:=true;
   sheetCad.TabVisible:=false;
   dsCad.DataSet.Cancel;
end;

procedure TfTabPreco.butSalvarClick(Sender: TObject);
var tm: string[1];
begin
   if (trim(Capacidade.Text) = '') or (trim(Nivel.Text)= '') then
   begin
      showmessage('Informe a Capacidade e o Nível');
      exit;
   end;
   tm:='E';
   if dsCad.State = dsinsert then
   begin
      tm:='I';
      dm.Qsql.Close;
      dm.Qsql.SQL.Clear;
      dm.Qsql.SQL.Add('select CAPACIDADE from TABPRECO where CAPACIDADE = '''+Capacidade.Text+''' and NIVEL = '''+Nivel.Text+'''');
      dm.Qsql.Open;
      if not dm.Qsql.IsEmpty then
      begin
         showmessage('Já Cadastrado');
         dm.Qsql.Close;
         exit;
      end;
      dm.TabPrecoCAPACIDADE.Text:=Capacidade.Text;
      dm.TabPrecoNIVEL.Text:=Nivel.Text;
      dm.Qsql.Close;
   end;
   dm.TabPreco.Post;
   GravaTab(dm.TabPreco);
   dm.GravaTrans;
   if tm = 'I' then
   begin
      Capacidade.clear;
      Nivel.clear;
      dm.TabPreco.Append;
      Capacidade.SetFocus;
   end
   else
     butCancelarClick(Sender);
end;

procedure TfTabPreco.butNovoClick(Sender: TObject);
begin
   Capacidade.Enabled:=true;
   Nivel.Enabled:=true;
   dm.TabPreco.Append;
   Nivel.Clear;
   Capacidade.Clear;
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   Capacidade.SetFocus;
end;

procedure TfTabPreco.GradeDblClick(Sender: TObject);
begin
   if dm.TabPreco.RecordCount = 0 then
      exit;
   Capacidade.Text:=dm.TabPrecoCAPACIDADE.Text;
   Nivel.Text:=dm.TabPrecoNIVEL.Text;
   Capacidade.Enabled:=false;
   Nivel.Enabled:=false;
   dm.TabPreco.edit;
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   Valor.SetFocus;
end;

procedure TfTabPreco.butExcluirClick(Sender: TObject);
begin
   if confirma('Confirma exclusão?','N') = idno then
      exit;
   dm.TabPreco.Delete;
   gravaTab(dm.TabPreco);
   dm.GravaTrans;
end;

procedure TfTabPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

end.

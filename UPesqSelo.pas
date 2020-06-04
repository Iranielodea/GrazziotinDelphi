unit UPesqSelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Grids,
  DBGrids, ppCtrls, ppBands, ppVar, ppDB, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppViewr;

type
  TfPesqSelo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SeloIni: TEdit;
    SeloFin: TEdit;
    Grade: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    dtSeloD: TSQLDataSet;
    dspSeloD: TDataSetProvider;
    SeloD: TClientDataSet;
    dsSelo: TDataSource;
    Qordem: TSQLQuery;
    QordemNUMSELO: TFloatField;
    lblQtde: TLabel;
    SeloDQTDE: TIntegerField;
    SeloNao: TClientDataSet;
    SeloNaoNUMSELO: TStringField;
    Button3: TButton;
    Button4: TButton;
    DBSelo: TppDBPipeline;
    RelSelo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    DBNao: TppDBPipeline;
    RelNao: TppReport;
    dsNao: TDataSource;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel7: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine4: TppLine;
    SeloDNUMSELO: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RelSeloPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPesqSelo: TfPesqSelo;

implementation

uses UDMbanco;

{$R *.dfm}

procedure TfPesqSelo.Button1Click(Sender: TObject);
begin
   if (seloini.Text = '') or (selofin.Text = '') then
   begin
      showMessage('Preecha os selos');
      seloini.SetFocus;
      exit;
   end;
   Grade.DataSource:=dsSelo;
   SeloD.close;
   SeloD.Params[0].Text:=seloini.Text;
   SeloD.Params[1].Text:=selofin.Text;
   SeloD.Open;
   if SeloD.IsEmpty then
      showmessage('Selos não encontrados');
end;

procedure TfPesqSelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   SeloD.Close;
   action:=cafree;
end;

procedure TfPesqSelo.Button2Click(Sender: TObject);
var vcont,vcont1: integer;
begin
   SeloNao.First;
   while not SeloNao.Eof do
      SeloNao.Delete;

   Grade.DataSource:=dsNao;
   if (seloini.Text = '') or (selofin.Text = '') then
   begin
      showMessage('Preecha os selos');
      seloini.SetFocus;
      exit;
   end;
   if strtoint(Seloini.Text) > strtoint(selofin.text) then
   begin
      showMessage('Selo inicial maior que final');
      seloini.SetFocus;
      exit;
   end;
   vcont:=strtoint(seloini.Text);
   vcont1:=0;

   while vcont < strtoint(selofin.Text) do
   begin
      Qordem.Close;
      Qordem.Params[0].AsInteger:=vcont;
      Qordem.Open;
      if QordemNUMSELO.IsNull then
      begin
         Selonao.Append;
         SelonaoNUMSELO.Text:=inttostr(vcont);
         Selonao.Post;
         inc(vcont1);
      end;
      application.ProcessMessages;
      lblqtde.Caption:=inttostr(vcont1);
      inc(vcont);
   end;
   Qordem.Close;

end;

procedure TfPesqSelo.Button3Click(Sender: TObject);
begin
   relSelo.Print;
   
end;

procedure TfPesqSelo.Button4Click(Sender: TObject);
begin
   relNao.Print;
end;

procedure TfPesqSelo.RelSeloPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;

end;

end.

unit UExtratoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, DBClient, Grids, DBGrids,
  Buttons, ExtCtrls, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppDB,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppViewr;

type
  TfExtratoEstoque = class(TForm)
    Label1: TLabel;
    CboLote: TComboBox;
    Grade: TDBGrid;
    butOk: TButton;
    Estoque: TClientDataSet;
    EstoqueDATA: TDateField;
    EstoqueDOC: TStringField;
    EstoqueTIPOMOV: TStringField;
    EstoqueSINAL: TStringField;
    EstoqueQTDE: TFloatField;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditEnt: TEdit;
    EditSai: TEdit;
    EditSaldo: TEdit;
    dtCompra: TSQLDataSet;
    dtCompraNF: TStringField;
    dtCompraDATA: TSQLTimeStampField;
    dtCompraQTDE: TFloatField;
    dtLote: TSQLDataSet;
    dtLoteLOTERESUMIDO: TStringField;
    Panel1: TPanel;
    butSair: TBitBtn;
    BitBtn1: TBitBtn;
    dtVenda: TSQLDataSet;
    dtVendaNUMORDEM: TFloatField;
    dtVendaDATAORDEM: TSQLTimeStampField;
    dtVendaQTDE: TFloatField;
    butImprimir: TBitBtn;
    dbEstoque: TppDBPipeline;
    RelEstoque: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lblLote: TppLabel;
    ppLabel7: TppLabel;
    VarEnt: TppVariable;
    ppLabel8: TppLabel;
    VarSai: TppVariable;
    ppLabel9: TppLabel;
    varSaldo: TppVariable;
    procedure butOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure VarEntCalc(Sender: TObject; var Value: Variant);
    procedure VarSaiCalc(Sender: TObject; var Value: Variant);
    procedure varSaldoCalc(Sender: TObject; var Value: Variant);
    procedure RelEstoquePreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExtratoEstoque: TfExtratoEstoque;

implementation

uses UDMbanco, UUtil;

{$R *.dfm}

procedure TfExtratoEstoque.butOkClick(Sender: TObject);
var vent,vsai: double;
begin
   if CboLote.Text = '' then
   begin
      Mensagem('Informe o Lote');
      CboLote.SetFocus;
      exit;
   end;
   Estoque.first;
   while not Estoque.eof do
      Estoque.Delete;
   dtCompra.Close;
   dtCompra.Params[0].Text:=CboLote.Text;
   dtCompra.Open;
   vent:=0;
   vsai:=0;
   while not dtCompra.Eof do
   begin
      Estoque.Append;
      EstoqueDATA.Text:=dtCompraDATA.Text;
      EstoqueDOC.Text:=dtCompraNF.Text;
      EstoqueTIPOMOV.Text:='C';
      EstoqueSINAL.Text:='+';
      EstoqueQTDE.AsFloat:=dtCompraQTDE.AsFloat;
      Estoque.Post;
      vent:=vent + dtCompraQTDE.AsFloat;
      dtCompra.Next;
   end;
   dtCompra.Close;

   dtVenda.Close;
   dtVenda.Params[0].Text:=CboLote.Text;
   dtVenda.Open;
   while not dtVenda.Eof do
   begin
      Estoque.Append;
      EstoqueDATA.Text:=dtVendaDATAORDEM.Text;
      EstoqueDOC.Text:=dtVendaNUMORDEM.Text;
      EstoqueTIPOMOV.Text:='V';
      EstoqueSINAL.Text:='-';
      EstoqueQTDE.AsFloat:=dtVendaQTDE.AsFloat;
      Estoque.Post;
      vsai:=vsai + dtVendaQTDE.AsFloat;
      dtVenda.Next;
   end;
   dtVenda.Close;
   editEnt.Text:=formatfloat('###,##,##0.00',vent);
   editSai.Text:=formatfloat('###,##,##0.00',vsai);
   editSaldo.text:=formatfloat('###,##,##0.00',vent - vsai);
   Estoque.First;
end;

procedure TfExtratoEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfExtratoEstoque.FormCreate(Sender: TObject);
begin
   dtLote.Close;
   dtLote.Open;
   while not dtLote.Eof do
   begin
      CboLote.Items.Add(dtLoteLOTERESUMIDO.Text);
      dtLote.Next;
   end;
   dtLote.Close;
end;

procedure TfExtratoEstoque.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfExtratoEstoque.BitBtn1Click(Sender: TObject);
begin
   dmBanco.BancoDados.ExecuteDirect('update TESTLOTE set QTDEESTOQUE = '+cval(editSaldo.Text)+' where LOTERESUMIDO = "'+CboLote.Text+'"');
   mensagem('Ajuste concluído');
end;

procedure TfExtratoEstoque.butImprimirClick(Sender: TObject);
begin
   lblLote.Caption:='Lote: '+CboLote.Text;
   RelEstoque.Print;
end;

procedure TfExtratoEstoque.VarEntCalc(Sender: TObject; var Value: Variant);
begin
   if EstoqueSinal.Text = '+' then
      value:=value + EstoqueQTDE.AsFloat;
end;

procedure TfExtratoEstoque.VarSaiCalc(Sender: TObject; var Value: Variant);
begin
   if EstoqueSinal.Text = '-' then
      value:=value + EstoqueQTDE.AsFloat;
end;

procedure TfExtratoEstoque.varSaldoCalc(Sender: TObject;
  var Value: Variant);
begin
   value:=varEnt.Value - varSai.Value;
end;

procedure TfExtratoEstoque.RelEstoquePreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;
end;

end.

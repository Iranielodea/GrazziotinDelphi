unit UrCliExtintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, jpeg, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DB, DBClient,
  Provider, SqlExpr, ppViewr, ppStrtch, ppMemo, ppEndUsr, ppParameter,
  ppDesignLayer;

type
  TfrCliExtintor = class(TForm)
    Qservico: TSQLDataSet;
    dspServico: TDataSetProvider;
    Servico: TClientDataSet;
    dsServico: TDataSource;
    ServicoNUMERO: TFloatField;
    ServicoCODPESSOA: TFloatField;
    ServicoCODMARCA: TFloatField;
    ServicoREFERENCIA: TStringField;
    ServicoSERIE: TStringField;
    ServicoSELO: TFloatField;
    ServicoULTIMOSELO: TFloatField;
    ServicoCAPACIDADE: TStringField;
    ServicoCONSERVACAO: TStringField;
    ServicoCODLOCAL: TFloatField;
    ServicoDESCMARCA: TStringField;
    ServicoCONTATO: TStringField;
    ServicoDESCLOCAL: TStringField;
    dbServico: TppDBPipeline;
    RelServico: TppReport;
    Qnormas: TSQLDataSet;
    QnormasDESCRICAO: TStringField;
    Qobs: TSQLDataSet;
    QobsDESCRICAO: TStringField;
    ServicoNOME: TStringField;
    ServicoRUA: TStringField;
    ServicoNUM_CASA: TStringField;
    ServicoDESCBAIRRO: TStringField;
    ServicoDESCCIDADE: TStringField;
    ServicoUF: TStringField;
    ServicoFONE1: TStringField;
    ServicoENDERECO: TStringField;
    ServicoDATA_EMISSAO: TStringField;
    ServicoNUM_RELATORIO: TStringField;
    dgCliExt: TppDesigner;
    ServicoCOMPLEMENTO: TStringField;
    ServicoVENCTOCARGA: TSQLTimeStampField;
    ServicoVENCTOTESTE: TSmallintField;
    ServicoCVENCTO_CARGA: TStringField;
    ServicoLOTERESUMIDO: TStringField;
    ServicoC_DESCMARCA: TStringField;
    ServicoCAPACID_EXTINTORA: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine2: TppLine;
    Linha1: TppLabel;
    Linha2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine12: TppLine;
    ppLabel26: TppLabel;
    lblDadosEmpresa2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppLine4: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppDBText4: TppDBText;
    ppLine8: TppLine;
    ppDBText5: TppDBText;
    ppLine9: TppLine;
    ppDBText6: TppDBText;
    ppLine10: TppLine;
    ppDBText7: TppDBText;
    ppLine11: TppLine;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    lblObs: TppLabel;
    ppLine13: TppLine;
    ppLabel25: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    lblNormas: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    procedure RelServicoPreviewFormCreate(Sender: TObject);
    procedure ServicoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCliExtintor: TfrCliExtintor;

implementation

uses UDMBanco, UICliExtintor;

{$R *.dfm}

procedure TfrCliExtintor.RelServicoPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;
end;

procedure TfrCliExtintor.ServicoCalcFields(DataSet: TDataSet);
begin
   ServicoENDERECO.Text:=ServicoRUA.Text+' '+ServicoNUM_CASA.Text+' '+ServicoCOMPLEMENTO.text;
   ServicoDATA_EMISSAO.Text:=fICliExtintor.Data.text;
   ServicoNUM_RELATORIO.Text:=fICliExtintor.NumRel.Text;
   ServicoCVENCTO_CARGA.Text:=copy(ServicoVENCTOCARGA.Text,4,7);
   ServicoC_DESCMARCA.Text:=trim(ServicoDESCMARCA.Text);
   if (fICliExtintor.ChLote.Checked) and (trim(ServicoLOTERESUMIDO.Text) <> '') then
      ServicoC_DESCMARCA.Text:=trim(ServicoDESCMARCA.Text)+' - '+trim(ServicoLOTERESUMIDO.Text)
end;

end.

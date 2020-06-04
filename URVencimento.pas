unit URVencimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ppBands, ppClass, ppDB, ppDBPipe, DBClient, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, DB,
  Provider, SqlExpr, ppViewr, ppDesignLayer, ppParameter;

type
  TFrVencimento = class(TForm)
    dspOrdem: TDataSetProvider;
    dsOrdem: TDataSource;
    RelOrdem: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText3: TppDBText;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    lblData: TppLabel;
    ppDBText10: TppDBText;
    Ordem: TClientDataSet;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    dbOrdem: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppLabel17: TppLabel;
    ppDBText17: TppDBText;
    ppDBText1: TppDBText;
    ppLabel8: TppLabel;
    ppDBCalc2: TppDBCalc;
    dtOrdem: TSQLQuery;
    lblVend: TppLabel;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel12: TppLabel;
    ppDBText8: TppDBText;
    ppLabel18: TppLabel;
    ppDBText7: TppDBText;
    dtInspecao: TSQLQuery;
    dspInspecao: TDataSetProvider;
    cdsInspecao: TClientDataSet;
    dsInspecao: TDataSource;
    dbInspecao: TppDBPipeline;
    RelInspecao: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel19: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    lblInspecaoData: TppLabel;
    ppLabel26: TppLabel;
    lblInspecaoVend: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel30: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel31: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel32: TppLabel;
    ppDBText27: TppDBText;
    ppLabel33: TppLabel;
    ppDBText28: TppDBText;
    ppLabel34: TppLabel;
    ppDBText29: TppDBText;
    ppLabel35: TppLabel;
    ppDBText30: TppDBText;
    ppLabel36: TppLabel;
    ppDBText31: TppDBText;
    ppLabel37: TppLabel;
    ppDBText32: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel38: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine4: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    procedure RelOrdemPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrVencimento: TFrVencimento;

implementation

uses UDMBanco;

{$R *.dfm}

procedure TFrVencimento.RelOrdemPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;
end;

end.

unit UrResVencimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ppDB, ppDBPipe, DB, DBClient, Provider, SqlExpr,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppViewr, ppDesignLayer, ppParameter;

type
  TFrResVencimento = class(TForm)
    relResumo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel9: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    lblData: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel24: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine4: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBText11: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    Qresumo: TSQLQuery;
    dsResumo: TDataSource;
    dspResumo: TDataSetProvider;
    Resumo: TClientDataSet;
    dbResumo: TppDBPipeline;
    ppDBText1: TppDBText;
    RelResumoC: TppReport;
    dbResumoC: TppDBPipeline;
    QresumoC: TSQLQuery;
    dspResumoC: TDataSetProvider;
    ResumoC: TClientDataSet;
    dsResumoC: TDataSource;
    ppSystemVariable1: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    lblDataCid: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    lblVend: TppLabel;
    lblVend1: TppLabel;
    QInspecao: TSQLQuery;
    dspInspecao: TDataSetProvider;
    cdsInspecao: TClientDataSet;
    dbInspecao: TppDBPipeline;
    dsInspecao: TDataSource;
    RelInspecao: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel2: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLine5: TppLine;
    lblInspecaoData: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    lblInspecaoVend: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel21: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine6: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    QInspecaoCidade: TSQLQuery;
    dspInspecaoCidade: TDataSetProvider;
    cdsInspecaoCidade: TClientDataSet;
    dsInspecaoCidade: TDataSource;
    dbInspecaoCidade: TppDBPipeline;
    RelInspecaoCidade: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel14: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    lblInspecaoCidadeData: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    lblInspecaoCidadeVend: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel32: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel33: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel34: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine8: TppLine;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    procedure relResumoPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrResVencimento: TFrResVencimento;

implementation

uses UDMBanco;

{$R *.dfm}

procedure TFrResVencimento.relResumoPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;
end;

end.

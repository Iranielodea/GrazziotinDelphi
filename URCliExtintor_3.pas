unit URCliExtintor_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDMBanco, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppDesignLayer,
  ppParameter, ppProd, ppReport;

type
  TfrCliExtintor_3 = class(TForm)
    Qservico: TSQLQuery;
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
    ServicoLOTERESUMIDO: TStringField;
    ServicoVENCTOTESTE: TSmallintField;
    ServicoVENCTOCARGA: TSQLTimeStampField;
    ServicoCONSERVACAO: TStringField;
    ServicoCODLOCAL: TFloatField;
    ServicoDESCMARCA: TStringField;
    ServicoDESCLOCAL: TStringField;
    ServicoNOME: TStringField;
    ServicoRUA: TStringField;
    ServicoNUM_CASA: TStringField;
    ServicoCOMPLEMENTO: TStringField;
    ServicoDESCBAIRRO: TStringField;
    ServicoDESCCIDADE: TStringField;
    ServicoUF: TStringField;
    ServicoCONTATO: TStringField;
    ServicoFONE1: TStringField;
    ServicoCAPACID_EXTINTORA: TStringField;
    ServicoC_DESCMARCA: TStringField;
    ServicoENDERECO: TStringField;
    ServicoNUM_RELATORIO: TStringField;
    dbServico: TppDBPipeline;
    RelServico: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    ppLabel27: TppLabel;
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
    lblObs: TppLabel;
    ppLine13: TppLine;
    ppLabel25: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    lblNormas: TppLabel;
    Qnormas: TSQLDataSet;
    QnormasDESCRICAO: TStringField;
    Qobs: TSQLDataSet;
    QobsDESCRICAO: TStringField;
    ServicoCVENCTO_CARGA: TStringField;
    ServicoDATA_EMISSAO: TStringField;
    procedure ServicoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCliExtintor_3: TfrCliExtintor_3;

implementation

{$R *.dfm}

uses UICliExtintor;


procedure TfrCliExtintor_3.ServicoCalcFields(DataSet: TDataSet);
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

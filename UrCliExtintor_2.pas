unit UrCliExtintor_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, jpeg, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DB, DBClient,
  Provider, SqlExpr, ppViewr, ppStrtch, ppMemo, ppEndUsr, ppParameter,
  ppDesignLayer, ppSubRpt;

type
  TfrCliExtintor_2 = class(TForm)
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
    RelServico: TppReport;
    Qnormas: TSQLDataSet;
    QnormasDESCRICAO: TStringField;
    Qobs: TSQLDataSet;
    QobsDESCRICAO: TStringField;
    ServicoNOME: TStringField;
    ServicoRUA: TStringField;
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
    ServicoDATA_INSPECAO: TSQLTimeStampField;
    QspBuscarCapacidade: TSQLQuery;
    QServico: TSQLQuery;
    dbServico: TppDBPipeline;
    ServicoNUM_CASA: TStringField;
    ServicoCAPACID_EXTINTORA: TStringField;
    QspBuscarCapacidadeCAP_EXTINTORA: TStringField;
    dbTeste: TppDBPipeline;
    RelTeste: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine16: TppLine;
    ppLabel35: TppLabel;
    lblDadosEmpresa1: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine17: TppLine;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppSummaryBand2: TppSummaryBand;
    lblObs2: TppLabel;
    ppLabel60: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    lblNormas2: TppLabel;
    ServicoNUMINMETRO: TStringField;
    ppDBText39: TppDBText;
    ppLabel4: TppLabel;
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
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppDBText40: TppDBText;
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
    ppLine14: TppLine;
    ppDBText10: TppDBText;
    ppDBText20: TppDBText;
    ppLine15: TppLine;
    ppFooterBand1: TppFooterBand;
    lblObs: TppLabel;
    ppLine13: TppLine;
    ppLabel25: TppLabel;
    ppLabel31: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    lblNormas: TppLabel;
    ppLabel30: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLabel36: TppLabel;
    procedure RelServicoPreviewFormCreate(Sender: TObject);
    procedure ServicoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCliExtintor_2: TfrCliExtintor_2;

implementation

uses UDMBanco, UICliExtintor;

{$R *.dfm}

procedure TfrCliExtintor_2.RelServicoPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;
end;

procedure TfrCliExtintor_2.ServicoCalcFields(DataSet: TDataSet);
begin
   ServicoENDERECO.Text:=ServicoRUA.Text+' '+ServicoNUM_CASA.Text+' '+ServicoCOMPLEMENTO.text;
   ServicoDATA_EMISSAO.Text:=fICliExtintor.Data.text;
   ServicoNUM_RELATORIO.Text:=fICliExtintor.NumRel.Text;
   ServicoCVENCTO_CARGA.Text:=copy(ServicoVENCTOCARGA.Text,4,7);
   ServicoC_DESCMARCA.Text:=trim(ServicoDESCMARCA.Text);
   if (fICliExtintor.ChLote.Checked) and (trim(ServicoLOTERESUMIDO.Text) <> '') then
      ServicoC_DESCMARCA.Text:=trim(ServicoDESCMARCA.Text)+' - '+trim(ServicoLOTERESUMIDO.Text);

   QspBuscarCapacidade.Close;
   QspBuscarCapacidade.ParamByName('capacidade').AsString := ServicoCAPACIDADE.AsString;
   QspBuscarCapacidade.ParamByName('codmarca').AsInteger := ServicoCODMARCA.AsInteger;
   QspBuscarCapacidade.Open;

   ServicoCAPACID_EXTINTORA.AsString := QspBuscarCapacidadeCAP_EXTINTORA.AsString;
   QspBuscarCapacidade.Close;

end;

end.

unit URProposta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ppCtrls, ppBands, ppPrnabl, ppClass, ppDB,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DBClient, Provider, ppViewr,
  ppVar, ppStrtch, ppSubRpt;

type
  TFrProposta = class(TForm)
    Qproposta: TSQLQuery;
    dspProposta: TDataSetProvider;
    Proposta: TClientDataSet;
    dsProposta: TDataSource;
    dbProposta: TppDBPipeline;
    RelProposta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
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
    ppSummaryBand1: TppSummaryBand;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine3: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine4: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    PropostaCODPESSOA: TFloatField;
    PropostaCODBAIRRO: TFloatField;
    PropostaCONTATO: TStringField;
    PropostaFONE1: TStringField;
    PropostaNOME: TStringField;
    PropostaCODCIDADE: TFloatField;
    PropostaRUA: TStringField;
    PropostaNUMERO: TStringField;
    PropostaCOMPLEMENTO: TStringField;
    PropostaDESCVENDEDOR: TStringField;
    PropostaFONE: TStringField;
    PropostaFONE2: TStringField;
    PropostaNUMPROPOSTA: TFloatField;
    PropostaCONDPAGTO: TStringField;
    PropostaENTREGA: TStringField;
    PropostaVALIDADE: TStringField;
    PropostaTOTALBRUTO: TFloatField;
    PropostaVALORPROPOSTA: TFloatField;
    PropostaC_VALORTOTAL: TFloatField;
    PropostaC_ENDERECO: TStringField;
    PropostaC_CNPJ: TStringField;
    PropostaC_INSCESTADUAL: TStringField;
    PropostaC_FONE: TStringField;
    PropostaC_DATAEXTENSO: TStringField;
    PropostaEMISSAO: TSQLTimeStampField;
    QEmp: TSQLDataSet;
    QEmpCEP: TStringField;
    QEmpCGC: TStringField;
    QEmpDESCBAIRRO: TStringField;
    QEmpDESCCIDADE: TStringField;
    QEmpCOMPLEMENTO: TStringField;
    QEmpFONEFAX: TStringField;
    QEmpINSCESTADUAL: TStringField;
    QEmpNUMERO: TStringField;
    QEmpRUA: TStringField;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    PropostaDESCBAIRRO: TStringField;
    PropostaDESCCIDADE: TStringField;
    PropostaUF: TStringField;
    ppDBText23: TppDBText;
    ppLabel32: TppLabel;
    Qexec: TSQLDataSet;
    dspExec: TDataSetProvider;
    Exec: TClientDataSet;
    ExecNOME: TStringField;
    ExecRUA: TStringField;
    ExecNUMERO: TStringField;
    ExecCOMPLEMENTO: TStringField;
    ExecCODCIDADE: TFloatField;
    ExecCODBAIRRO: TFloatField;
    ExecCONTATO: TStringField;
    ExecFONE1: TStringField;
    ExecDESCVENDEDOR: TStringField;
    ExecFONE: TStringField;
    ExecFONE2: TStringField;
    ExecNUMPROPOSTA: TFloatField;
    ExecCODPESSOA: TFloatField;
    ExecVALORPROPOSTA: TFloatField;
    ExecTOTALBRUTO: TFloatField;
    ExecCAPACIDADE: TStringField;
    ExecCODMANUTENCAO: TFloatField;
    ExecNUMEXTINTOR: TFloatField;
    ExecVALORUNIT: TFloatField;
    ExecVALORTOTAL: TFloatField;
    ExecCODLOCAL: TFloatField;
    dsExec: TDataSource;
    DBExec: TppDBPipeline;
    RelExec: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText24: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine5: TppLine;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel49: TppLabel;
    ExecDESCBAIRRO: TStringField;
    ExecDESCCIDADE: TStringField;
    ExecUF: TStringField;
    ppLine6: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ExecDESCLOCAL: TStringField;
    ExecC_ENDERECO: TStringField;
    ExecC_CNPJ: TStringField;
    ExecC_INSCESTADUAL: TStringField;
    ExecC_FONE: TStringField;
    ExecC_DATAEXTENSO: TStringField;
    ExecEMISSAO: TSQLTimeStampField;
    ppDBCalc1: TppDBCalc;
    ppLine7: TppLine;
    ppLabel59: TppLabel;
    ppDBCalc2: TppDBCalc;
    RelAnalitica: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText44: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine8: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine9: TppLine;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel83: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel84: TppLabel;
    CalcValor4: TppDBCalc;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLine11: TppLine;
    ppLabel91: TppLabel;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppVariable1: TppVariable;
    PropostaC_CAPACIDADE: TStringField;
    ExecCODNIVEL: TFloatField;
    ppLabel75: TppLabel;
    ppDBText59: TppDBText;
    ppLabel92: TppLabel;
    ppDBText67: TppDBText;
    ppLabel93: TppLabel;
    ppDBText68: TppDBText;
    Qanalise: TSQLQuery;
    dspAnalise: TDataSetProvider;
    Analise: TClientDataSet;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField4: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField9: TFloatField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField11: TFloatField;
    dsAnalise: TDataSource;
    dbAnalise: TppDBPipeline;
    AnaliseC_VALORTOTAL: TFloatField;
    AnaliseVALORTOTAL: TFloatField;
    AnaliseC_DATAEXTENSO: TStringField;
    AnaliseEMISSAO: TSQLTimeStampField;
    AnaliseC_ENDERECO: TStringField;
    AnaliseC_CNPJ: TStringField;
    AnaliseC_INSCESTADUAL: TStringField;
    AnaliseC_FONE: TStringField;
    AnaliseC_CAPACIDADE: TStringField;
    AnaliseCAPACIDADE: TStringField;
    QItens: TSQLQuery;
    dspItens: TDataSetProvider;
    dbItens: TppDBPipeline;
    Itens: TClientDataSet;
    dsItens: TDataSource;
    ItensNUMPROPOSTA: TFloatField;
    ItensCAPACIDADE: TStringField;
    ItensVALORTOTAL: TFloatField;
    ItensCODNIVEL: TFloatField;
    ItensVALORUNIT: TFloatField;
    ItensQTDE: TIntegerField;
    SubRel: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    Calc_ValorTotal: TppDBCalc;
    ppLabel16: TppLabel;
    ItensC_VALORTOTAL: TFloatField;
    ItensC_CAPACIDADE: TStringField;
    ppLine1: TppLine;
    ppLine12: TppLine;
    Var_ValorExtenso: TppVariable;
    procedure RelPropostaPreviewFormCreate(Sender: TObject);
    procedure PropostaCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Var_ValorExtensoCalc(Sender: TObject; var Value: Variant);
    procedure ExecCalcFields(DataSet: TDataSet);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure AnaliseCalcFields(DataSet: TDataSet);
    procedure ItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrProposta: TFrProposta;

implementation

uses UDMBanco, UUtil;

{$R *.dfm}

procedure TFrProposta.RelPropostaPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=90;
end;

procedure TFrProposta.PropostaCalcFields(DataSet: TDataSet);
begin
   PropostaC_DATAEXTENSO.Text:='Flores da Cunha, '+formatdateTime('dd "de" mmmm "de" yyyy',PropostaEmissao.asDateTime);

   PropostaC_ENDERECO.Text:=QempRUA.Text+' '+QempNUMERO.Text+' '+QempCOMPLEMENTO.Text+' '+QempDESCBAIRRO.Text+' '+QempDESCCIDADE.Text;
   PropostaC_CNPJ.Text:=QempCGC.Text;
   PropostaC_INSCESTADUAL.Text:=QempINSCESTADUAL.Text;
   PropostaC_FONE.Text:=QempFONEFAX.Text;

end;

procedure TFrProposta.FormCreate(Sender: TObject);
begin
   QEmp.Close;
   QEmp.Open;
end;

procedure TFrProposta.Var_ValorExtensoCalc(Sender: TObject;
  var Value: Variant);
begin
   value:=MoedaExtenso(Calc_ValorTotal.Value,'REAL','REAIS');
end;

procedure TFrProposta.ExecCalcFields(DataSet: TDataSet);
begin
   ExecC_DATAEXTENSO.Text:='Flores da Cunha, '+formatdateTime('dd "de" mmmm "de" yyyy',ExecEmissao.asDateTime);
   
   ExecC_ENDERECO.Text:=QempRUA.Text+' '+QempNUMERO.Text+' '+QempCOMPLEMENTO.Text+' '+QempDESCBAIRRO.Text+' '+QempDESCCIDADE.Text;
   ExecC_CNPJ.Text:=QempCGC.Text;
   ExecC_INSCESTADUAL.Text:=QempINSCESTADUAL.Text;
   ExecC_FONE.Text:=QempFONEFAX.Text;
end;

procedure TFrProposta.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
   value:=MoedaExtenso(CalcValor4.value,'REAL','REAIS');
end;

procedure TFrProposta.AnaliseCalcFields(DataSet: TDataSet);
begin

   AnaliseC_VALORTOTAL.AsFloat:=AnaliseVALORTOTAL.AsFloat;
   AnaliseC_DATAEXTENSO.Text:='Flores da Cunha, '+formatdateTime('dd "de" mmmm "de" yyyy',AnaliseEmissao.asDateTime);

   AnaliseC_ENDERECO.Text:=QempRUA.Text+' '+QempNUMERO.Text+' '+QempCOMPLEMENTO.Text+' '+QempDESCBAIRRO.Text+' '+QempDESCCIDADE.Text;
   AnaliseC_CNPJ.Text:=QempCGC.Text;
   AnaliseC_INSCESTADUAL.Text:=QempINSCESTADUAL.Text;
   AnaliseC_FONE.Text:=QempFONEFAX.Text;

   AnaliseC_CAPACIDADE.Text:=trim(AnaliseCAPACIDADE.Text) + ' KG';

end;

procedure TFrProposta.ItensCalcFields(DataSet: TDataSet);
begin
   ItensC_VALORTOTAL.AsFloat:=ItensQTDE.AsFloat * ItensVALORTOTAL.AsFloat;
   ItensC_CAPACIDADE.Text:=ItensCAPACIDADE.Text + ' KG';
end;

end.

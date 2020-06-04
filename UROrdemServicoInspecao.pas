unit UROrdemServicoInspecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, DBClient, Provider, ppVar, ppCtrls, ppPrnabl,
  ppCache, ppBands, ppStrtch, ppSubRpt, ppRegion, ppViewr, MaskUtils,
  ppMemo, ppParameter, ppDesignLayer;

type
  TfROrdemServicoInspecao = class(TForm)
    dtOrdem: TSQLDataSet;
    Qemp: TSQLQuery;
    QempNOME: TStringField;
    QempDESCBAIRRO: TStringField;
    QempDESCCIDADE: TStringField;
    QempCGC: TStringField;
    QempINSCESTADUAL: TStringField;
    QempFONEFAX: TStringField;
    dspOrdem: TDataSetProvider;
    Ordem: TClientDataSet;
    dsOrdem: TDataSource;
    DBOrdem: TppDBPipeline;
    Relatorio: TppReport;
    OrdemNUMORDEM: TFloatField;
    OrdemDATAORDEM: TSQLTimeStampField;
    OrdemCODPESSOA: TFloatField;
    OrdemNOME: TStringField;
    OrdemRUA: TStringField;
    OrdemCODBAIRRO: TFloatField;
    OrdemCODCIDADE: TFloatField;
    OrdemNUMERO: TStringField;
    OrdemCOMPLEMENTO: TStringField;
    OrdemCGC: TStringField;
    OrdemINSCESTADUAL: TStringField;
    OrdemCEP: TStringField;
    OrdemDESCCIDADE: TStringField;
    OrdemUF: TStringField;
    OrdemDESCBAIRRO: TStringField;
    OrdemNOME_EMPRESA: TStringField;
    OrdemEND_EMPRESA: TStringField;
    OrdemBAIRRO_EMP: TStringField;
    OrdemCIDADE_EMP: TStringField;
    OrdemCGC_EMP: TStringField;
    OrdemIE_EMP: TStringField;
    OrdemFONEFAX_EMP: TStringField;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    dtOrdemNUMORDEM: TFloatField;
    dtOrdemDATAORDEM: TSQLTimeStampField;
    dtOrdemCODPESSOA: TFloatField;
    dtOrdemNOME: TStringField;
    dtOrdemRUA: TStringField;
    dtOrdemCODBAIRRO: TFloatField;
    dtOrdemCODCIDADE: TFloatField;
    dtOrdemNUMERO: TStringField;
    dtOrdemCOMPLEMENTO: TStringField;
    dtOrdemCGC: TStringField;
    dtOrdemINSCESTADUAL: TStringField;
    dtOrdemCEP: TStringField;
    dtOrdemDESCCIDADE: TStringField;
    dtOrdemUF: TStringField;
    dtOrdemDESCBAIRRO: TStringField;
    DBItens: TppDBPipeline;
    dtItens: TSQLDataSet;
    dspItens: TDataSetProvider;
    Itens: TClientDataSet;
    dsItens: TDataSource;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppLabel79: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    SubRep_Pecas: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel37: TppLabel;
    ppShape4: TppShape;
    ppLabel71: TppLabel;
    Qpeca: TSQLQuery;
    QpecaCODPECA: TFloatField;
    ItensNUMERO: TFloatField;
    ItensNUMORDEM: TFloatField;
    ItensCODPESSOA: TFloatField;
    ItensCODPROJETO: TStringField;
    ItensCODMARCA: TFloatField;
    ItensCAPACIDADE: TStringField;
    ItensSERIE: TStringField;
    ItensPRESTRABALHO: TStringField;
    ItensPRESENSAIO: TStringField;
    ItensPESOVAZIO: TStringField;
    ItensPESOCHEIO: TStringField;
    ItensVOLUME: TStringField;
    ItensCAPACMAXIMA: TStringField;
    ItensDVM: TStringField;
    ItensDVB: TStringField;
    ItensCODRESULTADO: TFloatField;
    ItensCODNIVEL: TFloatField;
    ItensCODAGENTE: TFloatField;
    ItensULTIMOSELO: TFloatField;
    ItensLOTE: TStringField;
    ItensOUTROSELO: TFloatField;
    ItensNUMSELO: TFloatField;
    ItensCODRESP: TStringField;
    ItensDESCMARCA: TStringField;
    ItensPeca: TStringField;
    ItensANO: TSmallintField;
    OrdemC_ENDCLI: TStringField;
    dtOrdemCPF: TStringField;
    dtOrdemTIPOPESSOA: TStringField;
    OrdemCPF: TStringField;
    OrdemTIPOPESSOA: TStringField;
    OrdemC_DOCUMENTO: TStringField;
    ItensPERCENTUAL: TStringField;
    QPecas: TSQLQuery;
    QPecasCODPECA: TFloatField;
    QPecasDESCPECA: TStringField;
    dspPeca: TDataSetProvider;
    Peca: TClientDataSet;
    dsPeca: TDataSource;
    dbPeca: TppDBPipeline;
    PecaCODPECA: TFloatField;
    PecaDESCPECA: TStringField;
    MemoPeca: TppMemo;
    ppShape1: TppShape;
    MemoResp: TppMemo;
    ppLine13: TppLine;
    QempRUA: TStringField;
    QempNUMERO: TStringField;
    QempCOMPLEMENTO: TStringField;
    ItensRETESTE: TSmallintField;
    ppLabel34: TppLabel;
    ppDBText42: TppDBText;
    ItensPERC_PERDA_MASSA: TFloatField;
    ItensNORMA_CILINDRO: TStringField;
    ppLabel38: TppLabel;
    ppDBText44: TppDBText;
    ppLabel40: TppLabel;
    ItensVENCIMENTO: TSQLTimeStampField;
    ItensC_VENC_CARGA: TStringField;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    dsPonte: TDataSource;
    OrdemdtItens: TDataSetField;
    QResp: TSQLDataSet;
    QRespNOME: TStringField;
    ItensDATA_INSPECAO: TSQLTimeStampField;
    ItensVENCTO_INSPECAO: TSQLTimeStampField;
    ppLabel23: TppLabel;
    ppDBText21: TppDBText;
    ppMemo1: TppMemo;
    ppShape2: TppShape;
    plbl1: TppLabel;
    ppMemo2: TppMemo;
    ItensLEGENDA: TStringField;
    ppDBText23: TppDBText;
    ppLabel26: TppLabel;
    procedure OrdemCalcFields(DataSet: TDataSet);
    procedure RelatorioPreviewFormCreate(Sender: TObject);
    procedure ItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ImprimePecas;
  public
    { Public declarations }
    procedure Impressao(pNumOrdem: integer);
  end;

var
  fROrdemServicoInspecao: TfROrdemServicoInspecao;

implementation

uses UDMBanco;

{$R *.dfm}

procedure TfROrdemServicoInspecao.OrdemCalcFields(DataSet: TDataSet);
begin
   Qemp.Open;
   OrdemNOME_EMPRESA.Text:=QempNOME.Text;
   OrdemEND_EMPRESA.Text:=QempRUA.Text +' - '+ QempNUMERO.Text +' '+ QempCOMPLEMENTO.Text;
   OrdemBAIRRO_EMP.Text:=QempDESCBAIRRO.Text;
   OrdemCIDADE_EMP.Text:=QempDESCCIDADE.Text;
   OrdemCGC_EMP.Text:=QempCGC.Text;
   OrdemIE_EMP.Text:=QempINSCESTADUAL.Text;
   OrdemFONEFAX_EMP.Text:=QempFONEFAX.Text;
   Qemp.Close;
   OrdemC_ENDCLI.Text:=OrdemRUA.Text+' '+OrdemNUMERO.Text+' '+OrdemCOMPLEMENTO.Text;
   if OrdemTIPOPESSOA.Text = 'F' then
      OrdemC_DOCUMENTO.Text:=formatmaskText('###.###.###-##;0;_',OrdemCPF.Text)
   else
      OrdemC_DOCUMENTO.Text:=formatmaskText('##.###.###/####-##;0;_',OrdemCGC.Text);
end;

procedure TfROrdemServicoInspecao.RelatorioPreviewFormCreate(Sender: TObject);
begin
   TPPReport(Sender).PreviewForm.WindowState:=wsMaximized;
   TPPViewer(TPPReport(Sender).PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfROrdemServicoInspecao.ItensCalcFields(DataSet: TDataSet);
var vpeca: string[10];
   aux: integer;
begin
   vpeca:='';
   Qpeca.Close;
   Qpeca.Params.ParamByName('NUMORDEM').Text := ItensNUMORDEM.Text;
   Qpeca.Params.ParamByName('SERIE').Text := ItensSERIE.Text;
   Qpeca.Open;
   aux:=0;
   while not Qpeca.Eof do
   begin
      if aux = 0 then
         vpeca:=vpeca + QpecaCodPeca.Text
      else
         vpeca:=vpeca + ','+QpecaCodPeca.Text;
      inc(aux);
      Qpeca.Next;
   end;
   itensPeca.Text:=vpeca;
   Qpeca.Close;

   if Itens.State = dsInternalCalc then
   begin
     if ItensVENCIMENTO.AsString <> '' then
        ItensC_VENC_CARGA.AsString := FormatDateTime('mm/yyyy', ItensVENCIMENTO.AsDateTime);

   end;


end;

procedure TfROrdemServicoInspecao.Impressao(pNumOrdem: integer);
begin
   Ordem.close;
   Ordem.params[0].AsInteger := pNumOrdem;
   Ordem.open;

   Itens.Close;
   dtItens.Params[0].AsInteger := pNumOrdem;
   Itens.Open;
   ImprimePecas;

   Relatorio.Print;
   Ordem.Close;
   Itens.Close;

end;

procedure TfROrdemServicoInspecao.ImprimePecas;
var
   vlReg1,vlReg2: String;
begin
   Peca.Close;
   Peca.Open;
   Peca.First;
   MemoPeca.Clear;
   MemoResp.Clear;
   while not Peca.Eof do
   begin
      vlReg1:=PecaCODPECA.Text + ' ' + PecaDESCPECA.Text;
//      Peca.next;
//      vlReg2:=PecaCODPECA.Text + ' ' + PecaDESCPECA.Text;
//      if Peca.Eof then
//         vlReg2:=' ';
//      MemoPeca.Lines.Add(copy(vlReg1 + StringOfChar(' ',26),1,26) + vlReg2);
      MemoPeca.Lines.Add(vlReg1);
      Peca.next;
   end;
   Peca.Close;

   QREsp.Close;
   QResp.Open;
   while not QResp.Eof do
   begin
      MemoResp.Lines.Add(QRespNOME.Text);
      Qresp.Next;
   end;
   QREsp.Close;
end;

end.

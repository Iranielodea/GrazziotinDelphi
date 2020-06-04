unit UrOrdemServicoI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBClient, Provider, SqlExpr, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache,
  ppParameter, ppDesignLayer;

type
  TfrOrdemServicoI = class(TForm)
    QOrdem: TSQLQuery;
    dspOrdem: TDataSetProvider;
    dtOrdem: TClientDataSet;
    dsOrdem: TDataSource;
    dbOrdem: TppDBPipeline;
    RelOrdem: TppReport;
    dtOrdemDATAORDEM: TSQLTimeStampField;
    dtOrdemNUMORDEM: TFloatField;
    dtOrdemNUMNOTA: TIntegerField;
    dtOrdemBC: TIntegerField;
    dtOrdemABC: TIntegerField;
    dtOrdemCO2: TIntegerField;
    dtOrdemAP: TIntegerField;
    dtOrdemSELOINICIAL: TFloatField;
    dtOrdemSELOFINAL: TFloatField;
    dtOrdemC_QtdeSelos: TFloatField;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    lblData: TppLabel;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
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
    ppLabel14: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    dtOrdemQTDE_SELOS: TIntegerField;
    QOrdem1: TSQLQuery;
    dspOrdem1: TDataSetProvider;
    dtOrdem1: TClientDataSet;
    dsOrdem1: TDataSource;
    dbOrdem1: TppDBPipeline;
    RelOrdem1: TppReport;
    dtOrdem1DATAORDEM: TSQLTimeStampField;
    dtOrdem1NUMORDEM: TFloatField;
    dtOrdem1NUMNOTA: TIntegerField;
    dtOrdem1CODPESSOA: TFloatField;
    dtOrdem1TIPO: TStringField;
    dtOrdem1NUMSELO: TFloatField;
    dtOrdem1NOME: TStringField;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel13: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    lblData1: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine3: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText18: TppDBText;
    ppLine4: TppLine;
    dtOrdem1CODNIVEL: TFloatField;
    ppLabel22: TppLabel;
    ppDBText19: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel23: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel24: TppLabel;
    ppDBCalc8: TppDBCalc;
    dtOrdem1OUTRASNOTAS: TStringField;
    ppDBText20: TppDBText;
    RelOrdem01: TppReport;
    ppParameterList3: TppParameterList;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    lblData01: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine5: TppLine;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    RelOrdem02: TppReport;
    ppParameterList4: TppParameterList;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppLabel39: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    lblData02: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine7: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel40: TppLabel;
    ppDBText32: TppDBText;
    ppLabel44: TppLabel;
    ppDBText33: TppDBText;
    ppLabel45: TppLabel;
    ppDBText34: TppDBText;
    ppLabel46: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppLabel48: TppLabel;
    ppDBCalc16: TppDBCalc;
    procedure dtOrdemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function FiltraNivel(Nivel1, Nivel2: string): string;
    function FiltraSelo: string;
    function FiltroPessoa: string;
  public
    { Public declarations }
    vuSeloInicial,
    vuSeloFinal: string;
    vuCodPessoa: string;

    function SqlRelatorio(inDataIni, inDataFim, inNivelIni, inNivelFim: string):
        string;
  end;

var
  frOrdemServicoI: TfrOrdemServicoI;

implementation

uses UDMBanco;

{$R *.dfm}

procedure TfrOrdemServicoI.dtOrdemCalcFields(DataSet: TDataSet);
var
   vlQtde: Double;
begin
   if dtOrdem.State = dsInternalCalc then
   begin
      vlQtde := (dtOrdemSELOFINAL.AsFloat - dtOrdemSELOINICIAL.AsFloat);
      if (dtOrdemSELOINICIAL.AsFloat = 0) and (dtOrdemSELOFINAL.AsFloat = 0) then
         dtOrdemC_QtdeSelos.AsFloat := 0
      else
         dtOrdemC_QtdeSelos.AsFloat := vlQtde + 1;
   end;
end;

function TfrOrdemServicoI.FiltraNivel(Nivel1, Nivel2: string): string;
begin
   if (Nivel1 <> '') and (Nivel2 <> '') then
      result := ' and i.CodNivel between ' + Nivel1 + ' and ' + Nivel2
   else
      result := '';
end;

function TfrOrdemServicoI.FiltraSelo: string;
begin
   if (vuSeloInicial <> '') and (vuSeloFinal <> '') then
      result := ' and i.NumSelo between ' + vuSeloInicial + ' and ' + vuSeloFinal
   else
      result := '';
end;

function TfrOrdemServicoI.FiltroPessoa: string;
begin
   if (vuCodPessoa <> '') then
      result := ' and O.CodPessoa = ' + vuCodPessoa
   else
      result := '';
end;

function TfrOrdemServicoI.SqlRelatorio(inDataIni, inDataFim, inNivelIni,
    inNivelFim: string): string;
var
   sql: TStringBuilder;
   vlDataInicial: string;
   vlDataFinal: string;
begin
   vlDataInicial := ''''+ formatDateTime('mm/dd/yyyy', strToDate(inDataIni)) + '''';
   vlDataFinal := '''' + formatDateTime('mm/dd/yyyy', strToDate(inDataFim)) + '''';

   sql := TStringBuilder.Create;
   sql.Append(' select');
   sql.Append('     o.dataordem,');
   sql.Append('     o.numordem,');
   sql.Append('     o.numnota,');
   sql.Append('     (');
   sql.Append('         select count(i.numordem) from tiordem i');
   sql.Append('             where o.numordem = i.numordem');
   sql.Append(FiltraNivel(inNivelIni, inNivelFim));
   sql.Append(FiltraSelo);
   sql.Append(FiltroPessoa);
   sql.Append('             and i.tipo = ''BC''');
   sql.Append('     ) as BC,');
   sql.Append('     (');
   sql.Append('         select count(i.numordem) from tiordem i');
   sql.Append('             where o.numordem = i.numordem');
   sql.Append(FiltraNivel(inNivelIni, inNivelFim));
   sql.Append(FiltraSelo);
   sql.Append(FiltroPessoa);
   sql.Append('             and i.tipo = ''ABC''');
   sql.Append('     ) as ABC,');
   sql.Append('     (');
   sql.Append('         select count(i.numordem) from tiordem i');
   sql.Append('             where o.numordem = i.numordem');
   sql.Append(FiltraNivel(inNivelIni, inNivelFim));
   sql.Append(FiltraSelo);
   sql.Append(FiltroPessoa);
   sql.Append('             and i.tipo = ''CO2''');
   sql.Append('     ) as CO2,');
   sql.Append('     (');
   sql.Append('         select count(i.numordem) from tiordem i');
   sql.Append('             where o.numordem = i.numordem');
   sql.Append(FiltraNivel(inNivelIni, inNivelFim));
   sql.Append(FiltraSelo);
   sql.Append(FiltroPessoa);
   sql.Append('             and i.tipo = ''AP''');
   sql.Append('     ) as AP,');
   sql.Append('     coalesce((');
   sql.Append('         select count(i.numordem) from tiordem i');
   sql.Append('             where o.numordem = i.numordem');
   sql.Append(FiltraNivel(inNivelIni, inNivelFim));
   sql.Append(FiltraSelo);
   sql.Append(FiltroPessoa);
   sql.Append('             and i.tipo in (''BC'', ''ABC'', ''CO2'', ''AP'')');
   sql.Append('     ),0) as QTDE_SELOS,');
   sql.Append('    (');
   sql.Append('         select min(i.numselo) from Tiordem i');
   sql.Append('             where o.numordem = i.numordem');
   sql.Append(FiltraNivel(inNivelIni, inNivelFim));
   sql.Append(FiltraSelo);
   sql.Append(FiltroPessoa);
   sql.Append('     ) as SeloInicial,');
   sql.Append('     (');
   sql.Append('         select max(i.numselo) from Tiordem i');
   sql.Append('             where o.numordem = i.numordem');
   sql.Append(FiltraNivel(inNivelIni, inNivelFim));
   sql.Append(FiltraSelo);
   sql.Append(FiltroPessoa);
   sql.Append('     ) as SeloFinal');


   sql.Append(' from TOrdem O');
   sql.Append('     where o.DataOrdem between '+ vlDataInicial + ' and ' + vlDataFinal);

   result := Sql.ToString;
   FreeAndNil(sql);

end;

end.

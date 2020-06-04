unit uClassReportBuilder;

interface

uses
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBarCod, ppPrnabl, ppClass, ppCtrls,
  ppBands, ppCache, ppDesignLayer, ppParameter, ppProd, ppReport, ppEndUsr;

type
  TReportBuilderImpressao = class
  private

  public
    procedure ConfigImpressao(var pRelatorio: TppReport; pDiretoImpressora: Boolean;
      pMostrarPrintSetup: Boolean; pNomeImpressora, pNomeRTM: string);
  end;

implementation

{ TReportBuilder }

procedure TReportBuilderImpressao.ConfigImpressao(var pRelatorio: TppReport; pDiretoImpressora: Boolean;
  pMostrarPrintSetup: Boolean; pNomeImpressora, pNomeRTM: string);
begin

  if pNomeRTM <> '' then
  begin
    pRelatorio.Template.FileName := pNomeRTM;
    pRelatorio.Template.LoadFromFile;
  end;

  pRelatorio.PreviewFormSettings.ZoomPercentage := 100;

  pRelatorio.OutlineSettings.CreateNode := False;
  pRelatorio.OutlineSettings.CreatePageNodes := False;
  pRelatorio.OutlineSettings.Enabled := False;

  if pDiretoImpressora then
    pRelatorio.DeviceType := 'Printer'
  else
    pRelatorio.DeviceType := 'Screen';

  pRelatorio.ShowPrintDialog := pMostrarPrintSetup;

  if pNomeImpressora <> '' then
    pRelatorio.PrinterSetup.PrinterName := pNomeImpressora;

end;

end.

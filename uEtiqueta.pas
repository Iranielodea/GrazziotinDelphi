unit uEtiqueta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, uTrataGrid, System.IniFiles,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBarCod, ppPrnabl, ppClass, ppCtrls,
  ppBands, ppCache, ppDesignLayer, ppParameter, ppProd, ppReport, ppEndUsr,
  Vcl.Menus, Data.FMTBcd, Data.SqlExpr, System.MaskUtils, ppStrtch, ppMemo;

type
  TfEtiqueta = class(TForm)
    Panel1: TPanel;
    btnImpGrande: TBitBtn;
    butSair: TBitBtn;
    dbgDados: TDBGrid;
    dsDados: TDataSource;
    cdsDados: TClientDataSet;
    cdsDadosSel: TStringField;
    cdsDadosMarcar: TStringField;
    cdsDadosSérie: TStringField;
    btnImpPequeno: TBitBtn;
    dbDados: TppDBPipeline;
    cdsDadosNome: TStringField;
    RelPequeno: TppReport;
    ppParameterList1: TppParameterList;
    DesPequeno: TppDesigner;
    pmEtiqueta: TPopupMenu;
    ConfigurarEtiquetaGrande1: TMenuItem;
    ConfigurarEtiquetaPequena1: TMenuItem;
    cdsDadosEmpresa: TStringField;
    cdsDadosVenctoTeste: TStringField;
    cdsDadosMensagem: TStringField;
    QEmpresa: TSQLQuery;
    QEmpresaNOME: TStringField;
    QEmpresaCGC: TStringField;
    RelGrande: TppReport;
    ppParameterList2: TppParameterList;
    DesGrande: TppDesigner;
    btnMarcarTodas: TSpeedButton;
    btnDesmarcarTodas: TSpeedButton;
    btnAvancaPeq: TSpeedButton;
    btnAvancaGrande: TSpeedButton;
    cdsDadosNumeroLocal: TStringField;
    cdsDadosVenctoCarga: TStringField;
    cdsDadosCodNivel: TStringField;
    cdsDadosCodCliente: TIntegerField;
    cdsDadosCli_Codigo_Nome: TStringField;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBBarCode1: TppDBBarCode;
    ppDBMemo3: TppDBMemo;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBMemo1: TppDBMemo;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    procedure butSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgDadosCellClick(Column: TColumn);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImpGrandeClick(Sender: TObject);
    procedure btnImpPequenoClick(Sender: TObject);
    procedure ConfigurarEtiquetaPequena1Click(Sender: TObject);
    procedure ConfigurarEtiquetaGrande1Click(Sender: TObject);
    procedure btnMarcarTodasClick(Sender: TObject);
    procedure btnDesmarcarTodasClick(Sender: TObject);
    procedure btnAvancaPeqClick(Sender: TObject);
    procedure btnAvancaGrandeClick(Sender: TObject);
  private
    { Private declarations }
    FVisualizarEtiqueta: Boolean;
    FNumOrdem: Integer;
    FGrid: TDBGrade;
    function TipoImpressora(pTipo: string): string;
    procedure MarcarDesmarcarTodas(pMarcar: Boolean);
    procedure AvancarEtiquetas(Quantidade: Integer);
    procedure SetarParametro(var DiretoImp: Boolean; var MostrarSetup: Boolean);
    procedure ArgoxEtiquetaPequena;
    procedure ArgoxEtiquetaGrande;
  public
    { Public declarations }
    procedure PreencherDados;
    constructor Create(NumOrdem: Integer); reintroduce;
  end;

var
  fEtiqueta: TfEtiqueta;

implementation

{$R *.dfm}

uses UDMBanco, UDM, uClassReportBuilder, udmParametro, uArgox;

procedure TfEtiqueta.btnImpPequenoClick(Sender: TObject);
var
  sImpressora: string;
  Impressao: TReportBuilderImpressao;
  sNomeRTM: string;
  bDiretoImpressora: Boolean;
  bMostraSetup: Boolean;
  parametro: TdmParametro;
begin
  cdsDados.Filtered := True;
  cdsDados.Filter := 'Marcar = ''S''';

  sImpressora := TipoImpressora('P');
  sNomeRTM := 'EtiquetaPequena.rtm';

  SetarParametro(bDiretoImpressora, bMostraSetup);

  Impressao := TReportBuilderImpressao.Create;
  try
    Impressao.ConfigImpressao(RelPequeno, bDiretoImpressora, bMostraSetup, sImpressora, sNomeRTM);
  finally
    FreeAndNil(Impressao);
  end;

  parametro := TdmParametro.Create(Self);
  try
    RelPequeno.PrinterSetup.PrinterName := parametro.ImpressoraEtiquetaGrande();
  finally
    FreeAndNil(parametro);
  end;

  RelPequeno.Print;

  cdsDados.Filtered := False;
end;

procedure TfEtiqueta.btnMarcarTodasClick(Sender: TObject);
begin
  MarcarDesmarcarTodas(True);
end;

procedure TfEtiqueta.ArgoxEtiquetaGrande;
var
  Argox: TArgox;
begin
  Argox := TArgox.create('LPT1');
  try
    while not cdsDados.Eof do
    begin
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', cdsDadosEmpresa.AsString);
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', cdsDadosCli_Codigo_Nome.AsString);
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', cdsDadosVenctoCarga.AsString);
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', 'Venc. Teste Hidrostático ' + cdsDadosVenctoTeste.AsString);
      Argox.CodigoBarras('1', '2', '1', '1', '000', '0100', '0050', cdsDadosSérie.AsString);
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', 'Nro ' + cdsDadosNumeroLocal.AsString);
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', 'Manutenção Nível ' + cdsDadosCodNivel.AsString);
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', cdsDadosMensagem.AsString);
      cdsDados.Next;
    end;

  finally
    FreeAndNil(Argox);
  end;
end;

procedure TfEtiqueta.ArgoxEtiquetaPequena;
var
  Argox: TArgox;
begin
  Argox := TArgox.create('LPT1');
  try
    while not cdsDados.Eof do
    begin
      Argox.Imprimir('1', '2', '1', '1', '000', '0100', '0050', 'Descricao do Produto');
      cdsDados.Next;
    end;

  finally
    FreeAndNil(Argox);
  end;
end;

procedure TfEtiqueta.AvancarEtiquetas(Quantidade: Integer);
var
  i: Integer;
begin
  cdsDados.DisableControls;
  cdsDados.First;
  while not cdsDados.Eof do
    cdsDados.Delete;

  for I := 1 to 1 do
  begin
    cdsDados.Append;
    cdsDadosMarcar.AsString := 'S';
    cdsDadosSérie.AsString := '';
    cdsDadosNome.AsString := '';
    cdsDados.Post;
  end;
  cdsDados.DisableControls;
  cdsDados.First;

  if Quantidade = 1 then
    btnImpGrandeClick(Self);

  if Quantidade = 2 then
    btnImpPequenoClick(Self);

  PreencherDados();

end;

procedure TfEtiqueta.btnAvancaGrandeClick(Sender: TObject);
begin
  ppDetailBand2.Visible := False;
  AvancarEtiquetas(1);
  ppDetailBand2.Visible := True;
end;

procedure TfEtiqueta.btnAvancaPeqClick(Sender: TObject);
begin
  AvancarEtiquetas(2);
end;

procedure TfEtiqueta.btnDesmarcarTodasClick(Sender: TObject);
begin
  MarcarDesmarcarTodas(False);
end;

procedure TfEtiqueta.btnImpGrandeClick(Sender: TObject);
var
  sImpressora: string;
  Impressao: TReportBuilderImpressao;
  sNomeRTM: string;
  bDiretoImpressora: Boolean;
  bMostraSetup: Boolean;
  parametro: TdmParametro;
begin
  cdsDados.Filtered := True;
  cdsDados.Filter := 'Marcar = ''S''';

  sImpressora := TipoImpressora('G');
  sNomeRTM := 'EtiquetaGrande.rtm';
//  sNomeRTM := '';

  SetarParametro(bDiretoImpressora, bMostraSetup);

  Impressao := TReportBuilderImpressao.Create;
  try
    Impressao.ConfigImpressao(RelGrande, bDiretoImpressora, bMostraSetup, sImpressora, sNomeRTM);
  finally
    FreeAndNil(Impressao);
  end;

  parametro := TdmParametro.Create(Self);
  try
    RelGrande.PrinterSetup.PrinterName := parametro.ImpressoraEtiquetaGrande();
  finally
    FreeAndNil(parametro);
  end;

  RelGrande.Print;

  cdsDados.Filtered := False;
end;

procedure TfEtiqueta.butSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfEtiqueta.ConfigurarEtiquetaGrande1Click(Sender: TObject);
begin
  DesGrande.Show;
end;

procedure TfEtiqueta.ConfigurarEtiquetaPequena1Click(Sender: TObject);
begin
  DesPequeno.Show;
end;

constructor TfEtiqueta.Create(NumOrdem: Integer);
var
  Param: TdmParametro;
begin
  inherited create(nil);

  FNumOrdem := NumOrdem;

  Param := TdmParametro.Create(Self);
  try
    FVisualizarEtiqueta := Param.LocalizarEtiqueta;
  finally
    FreeAndNil(Param);
  end;

end;

procedure TfEtiqueta.dbgDadosCellClick(Column: TColumn);
begin
  FGrid.MarcarCampo(cdsDados, Column, 'Sel', 'Marcar');
end;

procedure TfEtiqueta.dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FGrid.CriarCheckBox(dbgDados, Column, Rect, 'Sel', cdsDados.FieldByName('MARCAR').AsString);
end;

procedure TfEtiqueta.MarcarDesmarcarTodas(pMarcar: Boolean);
begin
  cdsDados.DisableControls;
  cdsDados.First;
  while not cdsDados.Eof do
  begin
    cdsDados.Edit;
    if pMarcar = False then
      cdsDadosMarcar.AsString := 'N'
    else
      cdsDadosMarcar.AsString := 'S';
    cdsDados.Post;
    cdsDados.Next;
  end;
  cdsDados.First;
  cdsDados.EnableControls;
end;

procedure TfEtiqueta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    btnImpGrandeClick(Self);

  if Key = VK_F3 then
    btnImpPequenoClick(Self);

  if Key = VK_F4 then
    MarcarDesmarcarTodas(True);

  if Key = VK_F5 then
    MarcarDesmarcarTodas(False);

  if Key = VK_F6 then
    AvancarEtiquetas(2);

  if Key = VK_F7 then
    AvancarEtiquetas(1);

  if Key = VK_ESCAPE then
    Close;
end;

procedure TfEtiqueta.FormShow(Sender: TObject);
begin
  FGrid := TDBGrade.Create;
  cdsDados.CreateDataSet;

  PreencherDados;
end;


procedure TfEtiqueta.PreencherDados;
var
  sCnpj: string;
  sNome: string;
begin
  dm.Qsql.Close;
  dm.Qsql.SQL.Clear;
  dm.Qsql.SQL.Add(' select');
  dm.Qsql.SQL.Add(' I.SERIE,');
  dm.Qsql.SQL.Add(' I.CONTROLE,');
  dm.Qsql.SQL.Add(' I.CODNIVEL,');
  dm.Qsql.SQL.Add(' I.NUMERO,');
  dm.Qsql.SQL.Add(' I.DATA_INSPECAO,');
  dm.Qsql.SQL.Add(' P.CODPESSOA,');
  dm.Qsql.SQL.Add(' P.NOME,');
  dm.Qsql.SQL.Add(' I.VENCIMENTO AS VENCTO_CARGA,');
  dm.Qsql.SQL.Add(' I.DATACARGA AS VENCTO_TESTE');
  dm.Qsql.SQL.Add(' from TIORDEM I');

  dm.Qsql.SQL.Add(' inner join TORDEM T on I.NUMORDEM = T.NUMORDEM');
  dm.Qsql.SQL.Add(' inner join TPESSOA P on T.CODPESSOA = P.CODPESSOA');
  dm.Qsql.SQL.Add(' where I.NUMORDEM = ' + IntToStr(FNumOrdem));
  dm.Qsql.SQL.Add(' order by I.CONTROLE desc');
  dm.Qsql.Open;

  while not cdsDados.Eof do
    cdsDados.Delete;

  QEmpresa.Close;
  QEmpresa.Open;

  sCnpj := FormatMaskText('##.###.###/####-##;0;_', QEmpresaCGC.AsString);

  sNome := QEmpresaNOME.AsString + ' - ' + sCnpj;

  while not dm.Qsql.Eof do
  begin
    cdsDados.Append;
    cdsDadosMarcar.AsString := 'S';
    cdsDadosSérie.AsString := dm.Qsql.FieldByName('SERIE').AsString;
    cdsDadosCodCliente.AsString := dm.Qsql.FieldByName('CODPESSOA').AsString;
    cdsDadosNome.AsString := dm.Qsql.FieldByName('NOME').AsString;
    cdsDadosCli_Codigo_Nome.AsString := dm.Qsql.FieldByName('NOME').AsString + ' ' + dm.Qsql.FieldByName('CODPESSOA').AsString;
    cdsDadosEmpresa.AsString := sNome;
    cdsDadosNumeroLocal.AsString := dm.Qsql.FieldByName('NUMERO').AsString;

    if dm.Qsql.FieldByName('DATA_INSPECAO').AsString <> '' then
    begin
      cdsDadosVenctoCarga.AsString := 'Venc.Inspeção: ' + dm.Qsql.FieldByName('DATA_INSPECAO').AsString;
      cdsDadosCodNivel.AsString := 'Inspeção';
    end
    else begin
      cdsDadosVenctoCarga.AsString := 'Venc. Carga: ' + FormatDateTime('mm/yyyy', dm.Qsql.FieldByName('VENCTO_CARGA').AsDateTime);
      cdsDadosCodNivel.AsString := dm.Qsql.FieldByName('CODNIVEL').AsString;
    end;

    cdsDadosVenctoTeste.AsString := FormatDateTime('yyyy', dm.Qsql.FieldByName('VENCTO_TESTE').AsDateTime);
    cdsDadosMensagem.AsString := 'A garantia deste extintor é de 12 meses, se for inspecionado mensalmente, conforme NR 23.';
    cdsDados.Post;
    dm.Qsql.Next;
  end;
  dm.Qsql.Close;

  cdsDados.First;
end;

procedure TfEtiqueta.SetarParametro(var DiretoImp, MostrarSetup: Boolean);
begin
  DiretoImp := not FVisualizarEtiqueta;
  MostrarSetup := FVisualizarEtiqueta;
end;

function TfEtiqueta.TipoImpressora(pTipo: string): string;
var
  Arquivo: TIniFile;
  sImpressora: string;
  sArquivoIni: string;
  sCaminho: string;
begin
  sCaminho := ExtractFilePath(Application.ExeName);
  sArquivoIni := sCaminho + 'Sistema.ini';

  if not FileExists(sArquivoIni) then
    raise Exception.Create('Arquivo ' + sArquivoIni + ' não encontrado.');

  Arquivo := TIniFile.Create(sArquivoIni);
  try
    if pTipo = 'G' then
      sImpressora := Arquivo.ReadString('Config', 'ImpressoraEtiqGrande', '')
    else
      sImpressora := Arquivo.ReadString('Config', 'ImpressoraEtiqPequena', '');
  finally
    FreeAndNil(Arquivo);
  end;

  Result := sImpressora;
end;

end.

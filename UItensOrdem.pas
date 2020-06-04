unit UItensOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, Mask, DBCtrls, DateUtils, UClasServicoNegocio, UdmOrdemServico,
  uImpressaoOrdemServico;

type
  TTipoPesquisa = (tpSelo, tpBarras);

  TfItensOrdem = class(TForm)
    Panel1: TPanel;
    butSalvar: TBitBtn;
    butNovo: TBitBtn;
    butSair: TBitBtn;
    dsCad: TDataSource;
    dsTabPeca: TDataSource;
    QOrdem: TSQLQuery;
    QOrdemDESCMARCA: TStringField;
    QOrdemDESCRESULTADO: TStringField;
    QOrdemDESCAGENTE: TStringField;
    QOrdemDESCMANUTENCAO: TStringField;
    QOrdemNOME: TStringField;
    QOrdemANOFAB: TSmallintField;
    QOrdemVENCTO_TESTE: TSmallintField;
    QOrdemVENCTO_CARGA: TStringField;
    QOrdemQTDEESTOQUE: TFloatField;
    Qativo: TSQLQuery;
    QativoSITUACAO: TStringField;
    dtCliExt: TSQLDataSet;
    dtCliExtCODMARCA: TFloatField;
    dtCliExtDESCMARCA: TStringField;
    dtCliExtCAPACIDADE: TStringField;
    dtCliExtNUMERO: TFloatField;
    dtCliExtANOFAB: TSmallintField;
    dtCliExtVENCTO_TESTE: TSmallintField;
    dtCliExtVENCTO_CARGA: TStringField;
    dtCliExtSELO: TFloatField;
    dtCliExtCONSERVACAO: TStringField;
    dtCliExtSITUACAO: TStringField;
    dtCliExtDATACARGA: TSQLTimeStampField;
    dtCliExtLOTERESUMIDO: TStringField;
    dtCliExtPESO: TFloatField;
    dtCliExtTIPO: TStringField;
    QConsultaSelo: TSQLQuery;
    QConsultaSeloCODPESSOA: TFloatField;
    QConsultaSeloSERIE: TStringField;
    dtCliExtSERIE: TStringField;
    QAge: TSQLDataSet;
    QAgeDESCAGENTE: TStringField;
    QInativo: TSQLQuery;
    QInativoSITUACAO: TStringField;
    btnEtiqueta: TBitBtn;
    dtCliExtCODCAPACIDADE: TIntegerField;
    pnlCodBarras: TPanel;
    Label37: TLabel;
    edtCodBarras: TEdit;
    lblCliente: TLabel;
    edtNomePessoa: TEdit;
    Label38: TLabel;
    edtNumOrdem: TEdit;
    BalloonHint1: TBalloonHint;
    dsOrdem: TDataSource;
    pnlCorpo: TPanel;
    Label3: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    butMarca: TSpeedButton;
    Label21: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label28: TLabel;
    Label10: TLabel;
    Label26: TLabel;
    butResultado: TSpeedButton;
    butManutencao: TSpeedButton;
    butAgente: TSpeedButton;
    butResponsavel: TSpeedButton;
    Label11: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    SpeedButton1: TSpeedButton;
    Label33: TLabel;
    butBuscarSelo: TSpeedButton;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Serie: TDBEdit;
    CodMarca: TDBEdit;
    DescCapacidade: TDBEdit;
    AnoFab: TMaskEdit;
    Selo: TDBEdit;
    DBEdit7: TDBEdit;
    DescMarca: TEdit;
    CodResultado: TDBEdit;
    GrpSelo: TGroupBox;
    RSim: TRadioButton;
    RNao: TRadioButton;
    CodManutencao: TDBEdit;
    CodAgente: TDBEdit;
    Qtde: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    CodResp: TDBEdit;
    Grade: TDBGrid;
    VenctoCarga: TMaskEdit;
    DBEdit27: TDBEdit;
    CodProjeto: TDBEdit;
    VenctoTeste: TMaskEdit;
    DBEdit29: TDBEdit;
    butExc: TBitBtn;
    CboLote: TComboBox;
    QtdeEstoque: TEdit;
    butNovaPeca: TBitBtn;
    GroupBox2: TGroupBox;
    RExtSim: TRadioButton;
    RExtNao: TRadioButton;
    DescResultado: TEdit;
    DescManutencao: TEdit;
    DescAgente: TEdit;
    DescResp: TEdit;
    Painel: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label32: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit3: TDBEdit;
    edtPeso: TDBEdit;
    edtTipo: TDBEdit;
    EditSelo: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edtDataInspecao: TDBEdit;
    DBEdit4: TDBEdit;
    Label39: TLabel;
    edtNumSelo: TEdit;
    butImprimir: TBitBtn;
    Label40: TLabel;
    DBEdit5: TDBEdit;
    dbrgrpLEGENDA: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure SerieExit(Sender: TObject);
    procedure butNovoClick(Sender: TObject);
    procedure GrpSeloExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodMarcaEnter(Sender: TObject);
    procedure DescMarcaEnter(Sender: TObject);
    procedure CodMarcaExit(Sender: TObject);
    procedure DescMarcaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CodResultadoEnter(Sender: TObject);
    procedure CodAgenteEnter(Sender: TObject);
    procedure CodManutencaoEnter(Sender: TObject);
    procedure CodRespEnter(Sender: TObject);
    procedure CodResultadoExit(Sender: TObject);
    procedure DescResultadoExit(Sender: TObject);
    procedure DescResultadoEnter(Sender: TObject);
    procedure CodAgenteExit(Sender: TObject);
    procedure DescAgenteExit(Sender: TObject);
    procedure DescAgenteEnter(Sender: TObject);
    procedure CodManutencaoExit(Sender: TObject);
    procedure DescManutencaoExit(Sender: TObject);
    procedure CodRespExit(Sender: TObject);
    procedure DescRespExit(Sender: TObject);
    procedure DescRespEnter(Sender: TObject);
    procedure DescManutencaoEnter(Sender: TObject);
    procedure CboLoteChange(Sender: TObject);
    procedure CboLoteExit(Sender: TObject);
    procedure butMarcaClick(Sender: TObject);
    procedure butResultadoClick(Sender: TObject);
    procedure butAgenteClick(Sender: TObject);
    procedure butManutencaoClick(Sender: TObject);
    procedure butResponsavelClick(Sender: TObject);
    procedure butNovaPecaClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure dsCadStateChange(Sender: TObject);
    procedure DescCapacidadeExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditSeloExit(Sender: TObject);
    procedure EditSeloEnter(Sender: TObject);
    procedure SerieEnter(Sender: TObject);
    procedure butBuscarSeloClick(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure edtCodBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNumSeloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FTelaCodigoBarras: Boolean;
    FTipoPesquisa: TTipoPesquisa;

    procedure pesquisaMarca(Tipo: string);
    procedure pesquisaResultado(Tipo: string);
    procedure pesquisaAgente(Tipo: string);
    procedure pesquisaManutencao(Tipo: string);
    procedure pesquisaResp(Tipo: string);
    procedure pesquisaCapacidade(Tipo: string);
    procedure TestaPainel;
    procedure HabilitaBotao;
    procedure PressTrabalho;
    procedure PesquisaSerie(inSerie: String);
    function ValidarSelo: Boolean;
    function SeloExiste: Boolean;
    procedure IncrementaSelo;
    procedure ProcuraCapacidade(inCodAgente: String);
    procedure VencimentoReteste(inCodNivel: String);
    procedure MostraResponsavel;
    function Critica: Boolean;
    function ConfirmarInativo: Boolean;
    function SeloDentroIntervalo: Boolean;
    procedure BuscarLotes;
    procedure IniciarLancamento;
    procedure BuscarNivel;
    procedure LimparControles;
    procedure AbrirPecas(ASerie: string);
    procedure LocalizarOrdem(ACodPessoa: Integer; obj: TdmOrdemServico);
    procedure BuscarCodigoBarras(ATipo: TTipoPesquisa);
    procedure ConsisteResultado;
    procedure LimparTelaCodBarras;
    procedure IncrementaDataInspecao;
  public
    { Public declarations }
    constructor create(AOwner: TComponent; ACodigoBarras: Boolean);
  end;

var
  fItensOrdem: TfItensOrdem;

implementation

uses UDM, UDMBanco, UUtil, UCliExtintor, UMarca, UResultado, UAgente,
  UManutencao, UResp, UTabPeca, UItemExtintor, UNovoExtintor, UCapacidade,
  UDMR, UClasItensServico, uEtiqueta, ufrmCodigoBarras, uclassCapacidade,
  uManutencaoController, UOSCliente;

var vseloAnt,vqtdeant: string[20];
   vloteant: string[50];
   vuSeloEmBranco: String;
   vuValidaIntervaloSelo: string;

{$R *.dfm}

procedure TfItensOrdem.pesquisaCapacidade(Tipo: string);
var
  obj: TCapacidade;
begin
  if (DescCapacidade.Modified) then
  begin
    obj := TCapacidade.Create;
    try
      obj.LocalizarPorMarca(StrToIntDef(CodMarca.Text, 0), DescCapacidade.Text);
      if obj.Codigo = 0 then
        dm.ItensOrdemCODCAPACIDADE.Clear
      else
        dm.ItensOrdemCODCAPACIDADE.AsInteger := obj.Codigo;

      dm.ItensOrdemCAPACIDADE.AsString := obj.Nome;
      dm.ItensOrdemPESO.AsString := obj.Peso;
      dm.ItensOrdemTIPO.AsString := obj.Tipo;
      ProcuraCapacidade(obj.CodAgente);
      PressTrabalho;
      BuscarLotes();

    finally
      FreeAndNil(obj);
    end;
    DescCapacidade.Modified := False;
  end;


//   if (DescCapacidade.Modified) then
//   begin
//      ComandoQuery(dm.Qsql, 'SELECT CODCAPACIDADE, DESCCAPACIDADE, PESO, TIPO, CODAGENTE FROM CAPACIDADE WHERE DESCCAPACIDADE LIKE ''' + DescCapacidade.Text + '%'' AND CODMARCA = ' + IntToStr(StrToIntDef(CodMarca.Text,0)));
//      if dm.Qsql.IsEmpty then
//      begin
//         dm.ItensOrdemCAPACIDADE.Clear;
//         dm.ItensOrdemCODCAPACIDADE.Clear;
//         dm.ItensOrdemPESO.Clear;
//         dm.ItensOrdemTIPO.Clear;
//      end;
//
//      if dm.Qsql.RecordCount = 1 then
//      begin
//         dm.ItensOrdemCODCapacidade.Text := dm.Qsql.FieldByName('CODCAPACIDADE').AsString;
//         DM.ItensOrdemCAPACIDADE.Text := dm.Qsql.FieldByName('DESCCAPACIDADE').AsString;
//         dm.ItensOrdemPESO.Text:=dm.Qsql.FieldByName('PESO').AsString;
//         dm.ItensOrdemTIPO.Text:=dm.Qsql.FieldByName('TIPO').AsString;
//         ProcuraCapacidade(dm.Qsql.FieldByName('CODAGENTE').AsString);
//      end;
//
//      if dm.Qsql.RecordCount > 1 then
//      begin
//         vgcodigo:='';
//         fCapacidade:=TfCapacidade.create(Self);
//         fCapacidade.butConf.Visible:=true;
//         fCapacidade.showModal;
//         if vgcodigo <> '' then
//         begin
//            ComandoQuery(dm.Qsql,'select CODCAPACIDADE,DESCCAPACIDADE,PESO,TIPO,CODAGENTE,QTDE_PO from CAPACIDADE where CODCAPACIDADE = '+vgcodigo);
//            dm.ItensOrdemCODCapacidade.Text:=dm.Qsql.fieldbyname('CODCapacidade').Text;
//            DM.ItensOrdemCAPACIDADE.Text:=dm.Qsql.fieldbyname('DESCCAPACIDADE').Text;
//            dm.ItensOrdemPESO.Text:=dm.Qsql.fieldbyname('PESO').Text;
//            dm.ItensOrdemTIPO.Text:=dm.Qsql.fieldbyname('TIPO').Text;
//            //dm.ItensOrdemQTDE.AsFloat := dm.Qsql.fieldbyname('QTDE_PO').AsFloat;
//            ProcuraCapacidade(dm.Qsql.fieldbyname('CODAGENTE').Text);
//         end
//         else begin
//            dm.ItensOrdemCAPACIDADE.Clear;
//            dm.ItensOrdemCODCAPACIDADE.Clear;
//            dm.ItensOrdemPESO.Clear;
//            dm.ItensOrdemTIPO.Clear;
//         end;
//      end;
//
//      dm.Qsql.Close;
//      dm.Capacidade.Close;
//
//      BuscarLotes();



//      procura(dm.Capacidade,DescCapacidade.Text+'%');
//      if dm.Capacidade.RecordCount = 0 then
//      begin
//         dm.ItensOrdemCAPACIDADE.Clear;
//         dm.ItensOrdemCODCAPACIDADE.Clear;
//         dm.ItensOrdemPESO.Clear;
//         dm.ItensOrdemTIPO.Clear;
//      end;
//      if dm.Capacidade.RecordCount = 1 then
//      begin
//         dm.ItensOrdemCODCapacidade.Text:=dm.CapacidadeCODCAPACIDADE.Text;
//         DM.ItensOrdemCAPACIDADE.Text:=dm.CapacidadeDESCCAPACIDADE.Text;
//         dm.ItensOrdemPESO.Text:=dm.CapacidadePESO.Text;
//         dm.ItensOrdemTIPO.Text:=dm.CapacidadeTIPO.Text;
//         //dm.ItensOrdemQTDE.AsFloat := dm.CapacidadeQTDE_PO.AsFloat;
//         ProcuraCapacidade(dm.CapacidadeCODAGENTE.text);
//      end;
//      if dm.Capacidade.RecordCount > 1 then
//      begin
//         //procura(dm.Marca,DescMarca.Text+'%');
//         vgcodigo:='';
//         fCapacidade:=TfCapacidade.create(Self);
//         fCapacidade.butConf.Visible:=true;
//         fCapacidade.showModal;
//         if vgcodigo <> '' then
//         begin
//            ComandoQuery(dm.Qsql,'select CODCAPACIDADE,DESCCAPACIDADE,PESO,TIPO,CODAGENTE,QTDE_PO from CAPACIDADE where CODCAPACIDADE = '+vgcodigo);
//            dm.ItensOrdemCODCapacidade.Text:=dm.Qsql.fieldbyname('CODCapacidade').Text;
//            DM.ItensOrdemCAPACIDADE.Text:=dm.Qsql.fieldbyname('DESCCAPACIDADE').Text;
//            dm.ItensOrdemPESO.Text:=dm.Qsql.fieldbyname('PESO').Text;
//            dm.ItensOrdemTIPO.Text:=dm.Qsql.fieldbyname('TIPO').Text;
//            //dm.ItensOrdemQTDE.AsFloat := dm.Qsql.fieldbyname('QTDE_PO').AsFloat;
//            ProcuraCapacidade(dm.Qsql.fieldbyname('CODAGENTE').Text);
//         end
//         else begin
//            dm.ItensOrdemCAPACIDADE.Clear;
//            dm.ItensOrdemCODCAPACIDADE.Clear;
//            dm.ItensOrdemPESO.Clear;
//            dm.ItensOrdemTIPO.Clear;
//         end;
//      end;
//      dm.Qsql.Close;
//      dm.Capacidade.Close;
//
//      BuscarLotes();
//   end;
end;


procedure TfItensOrdem.HabilitaBotao;
begin
   butNovaPeca.Enabled:=dsCad.State in [dsedit,dsBrowse];
   butExc.Enabled:=(dsCad.State in [dsedit,dsBrowse]) and (not dsTabPeca.DataSet.IsEmpty);
end;

procedure TfItensOrdem.TestaPainel;
begin
   DMR.ManutencaoObterPorCodigo(dm.ItensOrdemCODNIVEL.AsFloat);
   if DMR.QManutencaoRETESTE.AsString = 'S' then
      Painel.Enabled:=true
   else
      Painel.Enabled:=false;

//   if pos('RETESTE',DescManutencao.Text) > 0 then
//      Painel.Enabled:=true
//   else
//      Painel.Enabled:=false;
end;

procedure TfItensOrdem.pesquisaResp(Tipo: string);
begin
   if (CodResp.Modified) or (DescResp.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODRESP,NOME from TRESP where CODRESP = "'+CodResp.Text+'"')
      else
         ComandoQuery(dm.Qsql,'select CODRESP,NOME from TRESP where NOME like "'+DescResp.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ItensOrdemCODRESP.Clear;
         DescResp.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ItensOrdemCODRESP.Text:=dm.Qsql.fieldbyname('CODRESP').Text;
         DESCRESP.Text:=dm.Qsql.fieldbyname('NOME').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Resp,DescResp.Text+'%');
         vgcodigo:='';
         fResp:=TfResp.create(Self);
         fResp.butConf.Visible:=true;
         fResp.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select NOME from TRESP where CODRESP = "'+vgcodigo+'"');
            dm.ItensOrdemCODRESP.Text:=vgcodigo;
            DESCRESP.Text:=dm.Qsql.fieldbyname('NOME').Text;
            DescResp.SetFocus;
         end
         else begin
            dm.ItensOrdemCODRESP.Clear;
            DescResp.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfItensOrdem.pesquisaManutencao(Tipo: string);
begin
   if (CodManutencao.Modified) or (DescManutencao.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODMANUTENCAO,DESCMANUTENCAO from TMANUT where CODMANUTENCAO = '+CodManutencao.Text)
      else
         ComandoQuery(dm.Qsql,'select CODMANUTENCAO,DESCMANUTENCAO from TMANUT where DESCMANUTENCAO like "'+DescManutencao.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ItensOrdemCODNIVEL.Clear;
         DescManutencao.Clear;
         TestaPainel;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ItensOrdemCODNIVEL.Text:=dm.Qsql.fieldbyname('CODMANUTENCAO').Text;
         DESCMANUTENCAO.Text:=dm.Qsql.fieldbyname('DESCMANUTENCAO').Text;
         VencimentoReteste(CodManutencao.Text);
         TestaPainel;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Manutencao,DescManutencao.Text+'%');
         vgcodigo:='';
         fManutencao:=TfManutencao.create(Self);
         fManutencao.butConf.Visible:=true;
         fManutencao.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCMANUTENCAO from TMANUT where CODMANUTENCAO = '+vgcodigo);
            dm.ItensOrdemCODNIVEL.Text:=vgcodigo;
            DESCMANUTENCAO.Text:=dm.Qsql.fieldbyname('DESCMANUTENCAO').Text;
            VencimentoReteste(vgCodigo);
            TestaPainel;
            DescManutencao.SetFocus;
         end
         else begin
            dm.ItensOrdemCODNIVEL.Clear;
            DescManutencao.clear;
            TestaPainel;
         end;
      end;
      dm.Qsql.Close;
      PressTrabalho;
   end;
end;

procedure TfItensOrdem.pesquisaAgente(Tipo: string);
begin
   if (CodAgente.Modified) or (DescAgente.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODAGENTE,DESCAGENTE from TAGENTE where CODAGENTE = '+CodAgente.Text)
      else
         ComandoQuery(dm.Qsql,'select CODAGENTE,DESCAGENTE from TAGENTE where DESCAGENTE like "'+DescAgente.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ItensOrdemCODAGENTE.Clear;
         DescAgente.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ItensOrdemCODAGENTE.Text:=dm.Qsql.fieldbyname('CODAGENTE').Text;
         DESCAGENTE.Text:=dm.Qsql.fieldbyname('DESCAGENTE').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Agente,DescAgente.Text+'%');
         vgcodigo:='';
         fAgente:=TfAgente.create(Self);
         fAgente.butConf.Visible:=true;
         fAgente.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCAGENTE from TAGENTE where CODAGENTE = '+vgcodigo);
            dm.ItensOrdemCODAGENTE.Text:=vgcodigo;
            DESCAGENTE.Text:=dm.Qsql.fieldbyname('DESCAGENTE').Text;
            DescAgente.SetFocus;
         end
         else begin
            dm.ItensOrdemCODAGENTE.Clear;
            DescAgente.clear;
         end;
      end;
      dm.Qsql.Close;

      BuscarLotes();

   end;
end;

procedure TfItensOrdem.pesquisaResultado(Tipo: string);
begin
   if (CodResultado.Modified) or (DescResultado.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODRESULTADO,DESCRESULTADO from TRESULT where CODRESULTADO = '+CodResultado.Text)
      else
         ComandoQuery(dm.Qsql,'select CODRESULTADO,DESCRESULTADO from TRESULT where DESCRESULTADO like "'+DescResultado.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ItensOrdemCODRESULTADO.Clear;
         DescResultado.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ItensOrdemCODRESULTADO.Text:=dm.Qsql.fieldbyname('CODRESULTADO').Text;
         DESCRESULTADO.Text:=dm.Qsql.fieldbyname('DESCRESULTADO').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Resultado,DescResultado.Text+'%');
         vgcodigo:='';
         fResultado:=TfResultado.create(Self);
         fResultado.butConf.Visible:=true;
         fResultado.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCRESULTADO from TRESULT where CODRESULTADO = '+vgcodigo);
            dm.ItensOrdemCODRESULTADO.Text:=vgcodigo;
            DESCRESULTADO.Text:=dm.Qsql.fieldbyname('DESCRESULTADO').Text;
            DescResultado.SetFocus;
         end
         else begin
            dm.ItensOrdemCODRESULTADO.Clear;
            DescResultado.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfItensOrdem.pesquisaMarca(Tipo: string);
begin
   if (CodMarca.Modified) or (DescMarca.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODMARCA,DESCMARCA from TMARCA where CODMARCA = '+CodMarca.Text)
      else
         ComandoQuery(dm.Qsql,'select CODMARCA,DESCMARCA from TMARCA where DESCMARCA like "'+DescMarca.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.ItensOrdemCODMARCA.Clear;
         DescMarca.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.ItensOrdemCODMARCA.Text:=dm.Qsql.fieldbyname('CODMARCA').Text;
         DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Marca,DescMarca.Text+'%');
         vgcodigo:='';
         fMarca:=TfMarca.create(Self);
         fMarca.butConf.Visible:=true;
         fMarca.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCMARCA from TMARCA where CODMARCA = '+vgcodigo);
            dm.ItensOrdemCODMARCA.Text:=vgcodigo;
            DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;
            DescMarca.SetFocus;
         end
         else begin
            dm.ItensOrdemCODMARCA.Clear;
            DescMarca.clear;
         end;
      end;
      dm.ItensOrdemCAPACIDADE.Clear;
      dm.ItensOrdemCODCAPACIDADE.Clear;
      dm.ItensOrdemPESO.Clear;
      dm.ItensOrdemTIPO.Clear;
      dm.Qsql.Close;
   end;
end;

procedure TfItensOrdem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dsCad.State = dsInsert then
      dsCad.DataSet.Cancel;
   if dsCad.State = dsedit then
   begin
      if confirma('Deseja Salvar as Alterações','S') = idno then
         dsCad.DataSet.Cancel
      else
         butSalvarClick(Self);
   end;

   if dm.Ordem.State in [dsEdit, dsInsert] then
    DM.Ordem.Cancel;

   action:=cafree;
end;

procedure TfItensOrdem.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfItensOrdem.FormCreate(Sender: TObject);
begin
  IniciarLancamento;
end;

procedure TfItensOrdem.butSalvarClick(Sender: TObject);
var vqtde: string[20];
   vlSelo: String;
   Servico: TNegocioServico;
   bIncluir: Boolean;
begin
   if Trim(serie.Text) = '' then
   begin
     Mensagem('Informe a Série');
     Exit;
   end;

   if CodMarca.Text = '' then
   begin
      Mensagem('Informe a marca');
      exit;
   end;

   if Critica = False then
      Exit;

   if RExtNao.Checked then
   begin
      if Confirma('Confirmar a Inativação do Extintor ?', 'S') = idNo then
         exit;
   end;

   with dm do
   begin
      if dsCad.State = dsBrowse then
         exit;

      bIncluir := (dsCad.DataSet.State = dsInsert);

      try
         dm.IniTrans;
         ModoEdicao(Ordem);
         if (dsCad.State = dsInsert) then
         begin
            if ValidarSelo then
            begin
               if SeloExiste = False then
                  exit;
            end;
//   //===============================================
//   // Salvar Selos
//   //===============================================
//            if rsim.Checked then
//               IncrementaSelo;
         end;
//         else begin
//            if (trim(vuSeloEmBranco) = '') and (ValidarSelo) then
//            begin
//               if SeloExiste = False then
//                  exit;
//
//               if rsim.Checked then
//                  IncrementaSelo;
//            end;
//         end;

         if Ordem.State = dsInsert then
         begin
            Servico := TNegocioServico.Create;
            dm.OrdemNUMORDEM.AsInteger := Servico.Incrementar();
            FreeAndNil(Servico);
         end;

         dm.ItensOrdemNUMORDEM.AsInteger  := OrdemNUMORDEM.AsInteger;
         dm.ItensOrdemLOTERESUMIDO.Text   := CboLote.Text;
         dm.ItensOrdemCODPESSOA.AsInteger := OrdemCODPESSOA.AsInteger;
         dm.ItensOrdemAnoFab.Text         := '';
         dm.ItensOrdemVENCIMENTO.Text     := '';
         dm.itensOrdemDATACARGA.text      := '';

         if Trim(AnoFab.Text) <> '' then
            dm.ItensOrdemAnoFab.Text:='01/01/' + AnoFab.Text;

         if copy(venctoCarga.Text,1,1) <> ' ' then
            dm.ItensOrdemVENCIMENTO.Text:='01/' + VenctoCarga.Text;

         if Trim(Venctoteste.Text) <> '' then
            dm.itensOrdemDATACARGA.text:='01/01/' + VenctoTeste.Text;

         if trim(CboLote.Text) = 'FABR' then
            dm.ItensOrdemLOTE.Text:='FABR';

         if dm.itensOrdemQTDE.IsNull then
            dm.ItensOrdemQTDE.AsFloat:=0;

         dm.ItensOrdem.Post;

   //===============================================
   // Salvar Selos
   //===============================================
        if bIncluir then
        begin
          if rsim.Checked then
             IncrementaSelo;
        end
        else begin
          if (trim(vuSeloEmBranco) = '') and (ValidarSelo) then
          begin
            if SeloExiste = False then
              exit;

            if rsim.Checked then
              IncrementaSelo;
          end;
        end;

   //===============================================
   // Salvar dados nos clientes e seus extintores
   //===============================================

         ComandoQuery(Qsql,'Select CONTROLE from TCLIEXT where CODPESSOA = ' + IntToString(dm.OrdemCODPESSOA.Text) + ' and SERIE = "'+Serie.Text+'"');
         if not Qsql.FieldByName('CONTROLE').IsNull then
         begin
            procura(Extintor,Qsql.fieldbyname('CONTROLE').text);
            Extintor.Edit;

            if copy(venctoCarga.text,1,1) <> ' ' then
               ExtintorVenctoCarga.AsString:='01/'+venctoCarga.Text;

            if copy(venctoteste.text,1,1) <> ' ' then
               ExtintorVencimento.AsString:='01/01/'+venctoTeste.Text;

            if anoFab.Text <> '' then
               ExtintorAnoFab.Text:='01/01/'+AnoFab.Text;

            if rExtSim.Checked then
               ExtintorSITUACAO.Text:='A'
            else
               ExtintorSITUACAO.Text:='I';

            ExtintorCODMARCA.Text     := ItensOrdemCODMARCA.Text;
            ExtintorCAPACIDADE.Text   := ItensOrdemCAPACIDADE.Text;
            ExtintorDataCarga.Value   := ItensOrdemDataCarregamento.Value;
            ExtintorConservacao.Value := ItensOrdemConservacao.Value;

            if ValidarSelo then
               ExtintorSelo.AsString:=ItensOrdemNumSelo.AsString;

            ExtintorNumero.Value := ItensOrdemNumero.Value;

            if trim(ExtintorCODPROJETO.Text) = '' then
               ExtintorCODPROJETO.Text := ItensOrdemCODPROJETO.Text;

            ExtintorCODCAPACIDADE.Text      := ItensOrdemCODCAPACIDADE.Text;
            ExtintorPESO.Text               := ItensOrdemPESO.Text;
            ExtintorTIPO.Text               := ItensOrdemTIPO.Text;
            ExtintorDATA_INSPECAO.AsString  := ItensOrdemDATA_INSPECAO.AsString;

            if ValidarSelo then
            begin
               if ExtintorULTIMOSELO.Text <> ItensOrdemNUMSELO.Text then
               begin
                  vlSelo:=dmR.Busca_UltimoSelo(DM.OrdemCODPESSOA.Text,Serie.Text,Selo.Text);
                  if vlSelo = 'NULL' then
                     vlSelo:='';
                  ExtintorULTIMOSELO.AsFloat := StrToFloatDef(vlSelo, 0);
               end;
            end;

            if Cbolote.text <> '' then
               ExtintorLOTERESUMIDO.Text := CboLote.Text;

            Extintor.Post;
            GravaTab(Extintor);
         end;

         if Ordem.State in [dsedit,dsInsert] then
            Ordem.Post;

         GravaTab(dm.Ordem);
         GravaTab(dm.ItensOrdem);
         GravaTab(dm.TabPecas);
         dm.GravaTrans;

         vseloant := ItensOrdemNUMSELO.Text;
         vloteant := ItensOrdemLOTERESUMIDO.Text;
         vqtdeant := ItensOrdemQTDE.Text;

//         if FTelaCodigoBarras then
//          butNovoClick(Self)
//         else
          butNovo.SetFocus;
         except
          on E: Exception do
          begin
            dm.CancelaTrans;
            mensagem(PWideChar('Gravação Cancelada: ' + E.Message));
         end;
      end;
   end;
   HabilitaBotao;
end;

procedure TfItensOrdem.SerieExit(Sender: TObject);
begin
   if Serie.Modified then
    PesquisaSerie(Serie.text);
end;

procedure TfItensOrdem.butNovoClick(Sender: TObject);
begin
//   LimpaTela(fitensOrdem);

   LimparControles();
   dm.ItensOrdem.Append;
   Serie.Enabled:=true;
   AbrirPecas('0000');
   Serie.Enabled:=true;
   vuSeloEmBranco := '';

   if FTelaCodigoBarras then
      edtCodBarras.SetFocus
   else
      serie.SetFocus;

   HabilitaBotao;
   MostraResponsavel;
end;

procedure TfItensOrdem.GrpSeloExit(Sender: TObject);
begin
   ModoEdicao(dm.ItensOrdem);
   if rNao.Checked then
      dm.ItensOrdemNUMSELO.Text:=vseloant
   else begin
      procura(dm.Control,'Selo');
      dm.ItensOrdemNUMSELO.Text:=dm.ControlCODIGO.text;
      dm.Control.Close;
   end;
end;

procedure TfItensOrdem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  form: TfrmCodigoBarras;
begin
//  if Key = VK_F2 then
//  begin
//    form := TfrmCodigoBarras.Create(Self);
//    if Form.ShowModal = mrOk then
//    begin
//      DM.ItensOrdemSERIE.AsString := form.edtCodBarras.Text;
//      Serie.Modified := True;
//      SerieExit(Self);
//      try
//        CodMarca.SetFocus;
//      except
//        // nada
//      end;
//    end;
//    FreeAndNil(Form);
//  end;

  case key of
    VK_INSERT:
    begin
      if butNovo.Enabled then
      begin
        butNovo.SetFocus;
        butNovoClick(Self);
      end;
    end;
    VK_F8:
    begin
      if butSalvar.Enabled then
      begin
        butSalvar.SetFocus;
        butSalvarClick(Self);
      end;
    end;
    VK_ESCAPE:
    begin
      if FTelaCodigoBarras = False then
      begin
        Close;
        Exit;
      end;

      if edtCodBarras.Focused then
        Close
      else begin
        LimparTelaCodBarras;
        edtCodBarras.SetFocus;
      end;
    end;

  end;
end;

procedure TfItensOrdem.CodMarcaEnter(Sender: TObject);
begin
   CodMarca.Modified:=false;
end;

procedure TfItensOrdem.DescMarcaEnter(Sender: TObject);
begin
   DescMarca.Modified:=false;
end;

procedure TfItensOrdem.CodMarcaExit(Sender: TObject);
begin
   if CodMarca.Modified = false then exit;
   if CodMarca.Text <> '' then
      PesquisaMarca('C')
   else begin
      DescMarca.Clear;
      dm.ItensOrdemCAPACIDADE.Clear;
      dm.ItensOrdemCODCAPACIDADE.Clear;
      dm.ItensOrdemPESO.Clear;
      dm.ItensOrdemTIPO.Clear;
   end;
end;

procedure TfItensOrdem.DescMarcaExit(Sender: TObject);
begin
   if DescMarca.Modified = false then exit;
   if DescMarca.Text <> '' then
      PesquisaMarca('D')
   else begin
      dm.ItensOrdemCODMARCA.Clear;
      dm.ItensOrdemCAPACIDADE.Clear;
      dm.ItensOrdemCODCAPACIDADE.Clear;
      dm.ItensOrdemPESO.Clear;
      dm.ItensOrdemTIPO.Clear;
   end;
end;

procedure TfItensOrdem.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfItensOrdem.CodResultadoEnter(Sender: TObject);
begin
   CodResultado.Modified:=false;
end;

procedure TfItensOrdem.CodAgenteEnter(Sender: TObject);
begin
   CodAgente.Modified:=false;
end;

procedure TfItensOrdem.CodManutencaoEnter(Sender: TObject);
begin
   CodManutencao.Modified:=false;
end;

procedure TfItensOrdem.CodRespEnter(Sender: TObject);
begin
   CodResp.Modified:=false;
end;

procedure TfItensOrdem.CodResultadoExit(Sender: TObject);
begin
   if CodResultado.Modified = false then exit;
   if CodResultado.Text <> '' then
      PesquisaResultado('C')
   else
      DescResultado.Clear;

  ConsisteResultado();
end;

procedure TfItensOrdem.DescResultadoExit(Sender: TObject);
begin
   if DescResultado.Modified = false then exit;
   if DescResultado.Text <> '' then
      PesquisaResultado('D')
   else
      dm.ItensOrdemCODRESULTADO.Clear;

   ConsisteResultado();
end;

procedure TfItensOrdem.DescResultadoEnter(Sender: TObject);
begin
   Descresultado.Modified:=false;
end;

procedure TfItensOrdem.CodAgenteExit(Sender: TObject);
begin
   if CodAgente.Modified = false then exit;
   if CodAgente.Text <> '' then
      PesquisaAgente('C')
   else
      DescAgente.Clear;
end;

procedure TfItensOrdem.DescAgenteExit(Sender: TObject);
begin
   if DescAgente.Modified = false then exit;
   if DescAgente.Text <> '' then
      PesquisaAgente('D')
   else
      dm.ItensOrdemCODAGENTE.Clear;
end;

procedure TfItensOrdem.DescAgenteEnter(Sender: TObject);
begin
   DescAgente.Modified:=false;
end;

procedure TfItensOrdem.CodManutencaoExit(Sender: TObject);
begin
   if CodManutencao.Modified = false then exit;
   if CodManutencao.Text <> '' then
      PesquisaManutencao('C')
   else begin
      DescManutencao.Clear;
      TestaPainel;
   end;
end;

procedure TfItensOrdem.DescManutencaoExit(Sender: TObject);
begin
   if DescManutencao.Modified = false then exit;
   if DescManutencao.Text <> '' then
      PesquisaManutencao('D')
   else begin
      dm.ItensOrdemCODNIVEL.Clear;
      TestaPainel;
   end;
end;

procedure TfItensOrdem.CodRespExit(Sender: TObject);
begin
   if CodResp.Modified = false then exit;
   if CodResp.Text <> '' then
      PesquisaResp('C')
   else
      DescResp.Clear;
end;

procedure TfItensOrdem.DescRespExit(Sender: TObject);
begin
   if DescResp.Modified = false then exit;
   if DescResp.Text <> '' then
      PesquisaResp('D')
   else
      dm.ItensOrdemCODNIVEL.Clear;
end;

procedure TfItensOrdem.DescRespEnter(Sender: TObject);
begin
   DescResp.Modified:=false;
end;

procedure TfItensOrdem.DescManutencaoEnter(Sender: TObject);
begin
   DescManutencao.Modified:=false;
end;

procedure TfItensOrdem.CboLoteChange(Sender: TObject);
begin
   comandoQuery(dm.Qsql,'select * from TESTLOTE where LOTERESUMIDO = "'+CboLote.Text+'"');
   dm.ItensOrdemLOTE.Text:=dm.Qsql.fieldbyname('LOTE').Text;
   dm.ItensOrdemCOMPLEMENTO.Text:=dm.Qsql.fieldbyname('COMPLEMENTO').Text;
   QtdeEstoque.Text:=formatfloat('###,###,##0.00',dm.Qsql.fieldbyname('QTDEESTOQUE').AsFloat);
   dm.Qsql.close;
end;

procedure TfItensOrdem.CboLoteExit(Sender: TObject);
begin
   comandoQuery(dm.Qsql,'select * from TESTLOTE where LOTERESUMIDO = "'+CboLote.Text+'"');
   dm.ItensOrdemLOTE.Text:=dm.Qsql.fieldbyname('LOTE').Text;
   dm.ItensOrdemCOMPLEMENTO.Text:=dm.Qsql.fieldbyname('COMPLEMENTO').Text;
   QtdeEstoque.Text:=formatfloat('###,###,##0.00',dm.Qsql.fieldbyname('QTDEESTOQUE').AsFloat);
   dm.Qsql.close;
end;

procedure TfItensOrdem.butMarcaClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Marca,'%');
   fMarca:=TfMarca.create(Self);
   fMarca.butConf.Visible:=true;
   fMarca.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCMARCA from TMARCA where CODMARCA = '+vgcodigo);
      dm.ItensOrdemCODMARCA.Text:=vgcodigo;
      DESCMARCA.Text:=dm.Qsql.fieldbyname('DESCMARCA').Text;

      dm.ItensOrdemCAPACIDADE.Clear;
      dm.ItensOrdemCODCAPACIDADE.Clear;
      dm.ItensOrdemPESO.Clear;
      dm.ItensOrdemTIPO.Clear;

      DescMarca.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfItensOrdem.butResultadoClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Resultado,'%');
   fResultado:=TfResultado.create(Self);
   fResultado.butConf.Visible:=true;
   fResultado.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCRESULTADO from TRESULT where CODRESULTADO = '+vgcodigo);
      dm.ItensOrdemCODRESULTADO.Text:=vgcodigo;
      DESCRESULTADO.Text:=dm.Qsql.fieldbyname('DESCRESULTADO').Text;
      DescResultado.SetFocus;
      dm.Qsql.Close;
      ConsisteResultado();
   end;
end;

procedure TfItensOrdem.butAgenteClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Agente,'%');
   fAgente:=TfAgente.create(Self);
   fAgente.butConf.Visible:=true;
   fAgente.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCAGENTE from TAGENTE where CODAGENTE = '+vgcodigo);
      dm.ItensOrdemCODAGENTE.Text:=vgcodigo;
      DESCAGENTE.Text:=dm.Qsql.fieldbyname('DESCAGENTE').Text;
      BuscarLotes();
      DescAgente.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfItensOrdem.butManutencaoClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Manutencao,'%');
   fManutencao:=TfManutencao.create(Self);
   fManutencao.butConf.Visible:=true;
   fManutencao.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCMANUTENCAO from TMANUT where CODMANUTENCAO = '+vgcodigo);
      dm.ItensOrdemCODNIVEL.Text:=vgcodigo;
      DESCMANUTENCAO.Text:=dm.Qsql.fieldbyname('DESCMANUTENCAO').Text;
      VencimentoReteste(vgcodigo);
      TestaPainel;
      DescManutencao.SetFocus;
      dm.Qsql.Close;
      PressTrabalho;
   end;
end;

procedure TfItensOrdem.butResponsavelClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Resp,'%');
   fResp:=TfResp.create(Self);
   fResp.butConf.Visible:=true;
   fResp.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select NOME from TRESP where CODRESP = "'+vgcodigo+'"');
      dm.ItensOrdemCODRESP.Text:=vgcodigo;
      DESCRESP.Text:=dm.Qsql.fieldbyname('NOME').Text;
      DescResp.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfItensOrdem.butNovaPecaClick(Sender: TObject);
begin
   dm.TabPecas.Append;
   fTabPeca:=TfTabPeca.create(Self);
   fTabPeca.show;
end;

procedure TfItensOrdem.GradeDblClick(Sender: TObject);
begin
   fTabPeca:=TfTabPeca.create(Self);
   fTabPeca.show;
   if dm.TabPecas.IsEmpty then
      dm.TabPecas.Append
   else
      dm.TabPecas.edit;
end;

procedure TfItensOrdem.butExcClick(Sender: TObject);
begin
   if dm.TabPecas.IsEmpty then
      exit;
   if confirma('Deseja Excluir peça ?','N') = idNo then
      exit;
   dm.TabPecas.Delete;
end;

procedure TfItensOrdem.butImprimirClick(Sender: TObject);
var
  Formulario: TfrmImpressaoOrdemServico;
begin
  Formulario := TfrmImpressaoOrdemServico.Create(Self);
  Formulario.ShowModal;
  FreeAndNil(Formulario);
end;

procedure TfItensOrdem.dsCadStateChange(Sender: TObject);
begin
   butNovo.Enabled:=dsCad.State in [dsedit,dsBrowse];
   btnEtiqueta.Enabled := dsCad.State in [dsedit,dsBrowse];
   butSalvar.Enabled := dsCad.State in [dsedit, dsInsert];
end;

procedure TfItensOrdem.DescCapacidadeExit(Sender: TObject);
begin
   if DescCapacidade.Modified = false then exit;
   if DescCapacidade.Text <> '' then
      PesquisaCapacidade('D')
   else begin
      dm.ItensOrdemCAPACIDADE.Clear;
      dm.ItensOrdemCODCAPACIDADE.Clear;
      dm.ItensOrdemPESO.Clear;
      dm.ItensOrdemTIPO.Clear;
   end;
   DescCapacidade.Modified := false;
end;

procedure TfItensOrdem.SpeedButton1Click(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Capacidade,'%');
   fCapacidade:=TfCapacidade.create(Self);
   fCapacidade.butConf.Visible:=true;
   fCapacidade.showModal;
   if vgcodigo <> '' then
   begin
      ModoEdicao(dm.ItensOrdem);
//      ComandoQuery(dm.Qsql,'select CODCAPACIDADE,DESCCAPACIDADE,PESO,TIPO,QTDE_PO, CODAGENTE from Capacidade where CODCapacidade = '+vgcodigo);
      ComandoQuery(dm.Qsql,'select CODCAPACIDADE from Capacidade where CODCapacidade = '+vgcodigo);
      dm.ItensOrdemCODCapacidade.Text:=dm.Qsql.fieldbyname('CODCapacidade').Text;
      DescCapacidade.Modified := True;
      pesquisaCapacidade('D');

      Exit;

      DM.ItensOrdemCAPACIDADE.Text:=dm.Qsql.fieldbyname('DESCCAPACIDADE').Text;
      dm.ItensOrdemPESO.Text:=dm.Qsql.fieldbyname('PESO').Text;
      dm.ItensOrdemQTDE.AsFloat:=dm.Qsql.fieldbyname('QTDE_PO').AsFloat;
      dm.ItensOrdemTIPO.Text:=dm.Qsql.fieldbyname('TIPO').Text;

      ProcuraCapacidade(dm.Qsql.fieldbyname('CODAGENTE').Text);
      PressTrabalho;
      DescCapacidade.SetFocus;
      dm.Qsql.Close;
   end;
   DescCapacidade.Modified := false;
end;

procedure TfItensOrdem.PressTrabalho;
var Flag: String;
var vlData: TDate;
begin
   Flag := 'N';
   if copy(DescCapacidade.Text,1,2) = 'PP' then
      Flag := 'S';
   if copy(DescCapacidade.Text,1,2) = 'AP' then
      Flag := 'S';
   if copy(DescCapacidade.Text,1,3) = 'PQP' then
      Flag := 'S';
   if CodManutencao.text <> '3' then
      Flag := 'N';

   if Flag = 'S' then
   begin
      dm.ItensOrdemPRESTRABALHO.Text := '10,5';
      dm.ItensOrdemPRESENSAIO.Text := '28';
   end;

   vlData := Date + 365;

   VenctoCarga.Text := formatDatetime('mm/yyyy', vlData);
end;

procedure TfItensOrdem.EditSeloExit(Sender: TObject);
begin
   if EditSelo.Modified then
   begin
      if EditSelo.Text <> '' then
      begin
         QConsultaSelo.close;
         QConsultaSelo.Params.ParamByName('CODPESSOA').Text := dm.OrdemCODPESSOA.Text;
         QConsultaSelo.Params.ParamByName('SELO').Text := EditSelo.Text;
         QConsultaSelo.Open;
         if QConsultaSelo.IsEmpty then
         begin
            showmessage('Selo não encontrado!');
            QConsultaSelo.close;
            Serie.Enabled := True;
            Serie.SetFocus;
            exit;
         end;
         Serie.Text := QConsultaSeloSERIE.Text;
         QConsultaSelo.Close;
         PesquisaSerie(Serie.Text);
      end;
   end;
end;

procedure TfItensOrdem.edtCodBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if Trim(edtCodBarras.Text) <> '' then
      BuscarCodigoBarras(tpBarras);
  end;
end;

procedure TfItensOrdem.edtNumSeloKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if Trim(edtNumSelo.Text) <> '' then
      BuscarCodigoBarras(tpSelo);
  end;
end;

procedure TfItensOrdem.EditSeloEnter(Sender: TObject);
begin
   EditSelo.Modified := False;
end;

procedure TfItensOrdem.SerieEnter(Sender: TObject);
begin
   Serie.Modified := False;
end;

procedure TfItensOrdem.PesquisaSerie(inSerie: String);
var
  cap: TCapacidade;
begin
   if inSerie = '' then
      exit;
//   LimpaTela(fitensOrdem);
   dtCliExt.Close;
   dtCliExt.Params[0].AsInteger := dm.OrdemCODPESSOA.AsInteger;
   dtCliExt.Params[1].Text := Serie.Text;
   dtCliExt.Open;
   if dtCliExt.IsEmpty then
   begin
      if FTelaCodigoBarras then
      begin
        mensagem('Extintor não cadastrado');
        LimparTelaCodBarras;
        edtCodBarras.SetFocus;
        Exit;
      end
      else
        mensagem('Extintor não cadastrado');

      dtCliExt.Close;
      try
        serie.SetFocus;
      except
        // nada
      end;
      procura(dm.Extintor,'0');
      dm.Extintor.Append;
      fNovoExtintor:=TfNovoExtintor.create(Self);
      fNovoExtintor.CodPessoa.Text:=dm.OrdemCODPESSOA.Text;
      dm.ExtintorSERIE.text:=Serie.Text;
      dm.ExtintorSITUACAO.Text:='A';
      dm.ExtintorDATACARGA.AsDateTime:=date;
      dm.ExtintorCONSERVACAO.Text:='BOA';
      PressTrabalho;
      fNovoExtintor.showModal;
      Serie.Modified := True;
      HabilitaBotao;
      exit;
   end;
   ModoEdicao(dm.ItensOrdem);
   dm.ItensOrdemSERIE.Text := dtCliExtSERIE.Text;
   dm.ItensOrdemCODMARCA.Text:=dtCliExtCODMARCA.Text;
   DescMarca.Text:=dtCliExtDESCMARCA.text;
   dm.ItensOrdemCAPACIDADE.Text:=dtCliExtCAPACIDADE.Text;
   dm.ItensOrdemCODCAPACIDADE.AsString := dtCliExtCODCAPACIDADE.AsString;
   dm.ItensOrdemNUMERO.Text:=dtCliExtNUMERO.Text;
   AnoFab.Text:=dtCliExtANOFAB.Text;

   if ValidarSelo then
      dm.ItensOrdemNUMSELO.Text:=dtCliExtSELO.Text
   else
      dm.ItensOrdemNUMSELO.Text:='';
   vuSeloEmBranco := dm.ItensOrdemNUMERO.Text;

   VenctoCarga.Text:=dtCliExtVENCTO_CARGA.Text;
   VenctoTeste.Text:=dtCliExtVENCTO_TESTE.Text;
   dm.ItensOrdemDATACARREGAMENTO.asdatetime:=date;

   try
    dm.ItensOrdemDATACARGA.Text := '01/01/' + VenctoTeste.Text;
   except
    dm.ItensOrdemDATACARGA.Text := '';
   end;

   dm.ItensOrdemCONSERVACAO.Text:=dtCliExtCONSERVACAO.Text;
   dm.ItensOrdemTIPO.Text:=dtCliExtTIPO.Text;
   dm.ItensOrdemPESO.AsFloat:=dtCliExtPESO.AsFloat;
   CboLote.Text:=dtCliExtLOTERESUMIDO.Text;
   EditSelo.Text := dtCliExtSELO.text;

   vloteant:=CboLote.Text;
   vqtdeant:='0';
   if dtCliExtLOTERESUMIDO.Text <> '' then
   begin
      dm.Qsql.Close;
      dm.Qsql.SQL.Clear;
      dm.Qsql.SQL.Add('select LOTE,COMPLEMENTO,QTDEESTOQUE from TESTLOTE where LOTERESUMIDO = "'+dtCliExtLOTERESUMIDO.text+'"');
      dm.Qsql.Open;
      dm.ItensOrdemLOTE.Text:=dm.Qsql.fieldbyname('LOTE').Text;
      dm.ItensOrdemCOMPLEMENTO.Text:=dm.Qsql.fieldbyname('COMPLEMENTO').Text;
      QtdeEstoque.Text:=formatfloat('###,###,##0.00',dm.Qsql.fieldbyname('QTDEESTOQUE').AsFloat);
      dm.Qsql.Close;
   end;

   if dm.ItensOrdemCAPACIDADE.Text <> '' then
   begin
      cap := TCapacidade.Create;
      try
        cap.LocalizarId(dtCliExtCODCAPACIDADE.AsInteger);
        if cap.Codigo > 0 then
          ProcuraCapacidade(cap.CodAgente)
        else begin
          dm.QCapacidade.close;
          dm.QCapacidade.Params.ParamByName('DESCCAPACIDADE').Text := dm.ItensOrdemCAPACIDADE.Text;
          dm.QCapacidade.Open;

          if not (dm.QCapacidade.IsEmpty) then
          begin
             ProcuraCapacidade(DM.QCapacidadeCODAGENTE.Text);
          end;
          dm.QCapacidade.Close;
        end;
      finally
        FreeAndNil(cap);
      end;

//      dm.QCapacidade.close;
//      dm.QCapacidade.Params.ParamByName('DESCCAPACIDADE').Text := dm.ItensOrdemCAPACIDADE.Text;
//      dm.QCapacidade.Open;
//
//      if not (dm.QCapacidade.IsEmpty) then
//      begin
//         //dm.ItensOrdemQTDE.AsFloat := dm.QCapacidadeQTDE_PO.AsFloat;
//         ProcuraCapacidade(DM.QCapacidadeCODAGENTE.Text);
//      end;
//      dm.QCapacidade.Close;
   end;

   BuscarNivel();

   vseloAnt:=dm.ItensOrdemNUMSELO.text;
   if dtCliExtSITUACAO.Text = 'A' then
      RExtSim.Checked:=true
   else
      RExtNao.Checked:=true;
   dtCliExt.Close;
   Serie.Enabled:=false;
   PressTrabalho();
   HabilitaBotao();
   MostraResponsavel();
   IncrementaDataInspecao();

//   BuscarLotes();
end;

function TfItensOrdem.ValidarSelo: Boolean;
begin
   Result := GrpSelo.Enabled;
end;

function TfItensOrdem.SeloExiste: Boolean;
begin
   Result := True;
   dm.Qsql.Close;
   dm.Qsql.SQL.Clear;
   dm.Qsql.SQL.Add('select NUMSELO from TIORDEM where NUMSELO = ' + IntToString(Selo.Text));
   dm.Qsql.Open;
   if not dm.Qsql.FieldByName('NUMSELO').IsNull then
   begin
      if confirma('Selo já existente, deseja salvar mesmo assim?','N') = idno then
         Result := False;
   end;
   dm.Qsql.Close;
end;

procedure TfItensOrdem.IncrementaDataInspecao;
var
  sDia,
  sMes,
  sAno: string;
begin
  Exit;
  sDia := FormatDateTime('dd', dm.OrdemDATAORDEM.AsDateTime);
  sMes := FormatDateTime('mm', dm.OrdemDATAORDEM.AsDateTime);
  sAno := FormatDateTime('yyyy', dm.OrdemDATAORDEM.AsDateTime);

  dm.ItensOrdemDATA_INSPECAO.AsDateTime := Date;

  try
    sMes := IntToStr(StrToInt(sMes) + 1);
    sAno := IntToStr(StrToInt(sAno) + 1);
    dm.ItensOrdemDATA_INSPECAO.AsDateTime := StrToDate(sDia + '/' + sMes + '/' + sAno);
  except
    // nada
  end;
end;

procedure TfItensOrdem.IncrementaSelo;
begin
   procura(dm.Control,'Selo');
   dm.Control.Edit;
   dm.ControlCODIGO.AsInteger:=dm.ControlCODIGO.AsInteger + 1;
   dm.Control.Post;
   GravaTab(dm.Control);
   dm.Control.Close;
end;

procedure TfItensOrdem.butBuscarSeloClick(Sender: TObject);
begin
   dtCliExt.Close;
   dtCliExt.Params[0].Text:=dm.OrdemCODPESSOA.Text;
   dtCliExt.Params[1].Text:=Serie.Text;
   dtCliExt.Open;
   if not dtCliExt.IsEmpty then
      dm.ItensOrdemNUMSELO.Text:=dtCliExtSELO.Text;
   dtCliExt.close;
   vseloant := dm.ItensOrdemNUMSELO.Text;

end;

procedure TfItensOrdem.ProcuraCapacidade(inCodAgente: String);
begin
   if inCodAgente <> '' then
   begin
      dm.ItensOrdemCODAGENTE.Text := inCodAgente;
      Qage.Close;
      Qage.Params[0].Text := inCodAgente;
      Qage.Open;

      DescAgente.Text := QAgeDESCAGENTE.text;
      Qage.Close;
   end;
end;

procedure TfItensOrdem.VencimentoReteste(inCodNivel: String);
var
  vlAno: word;
  nivelNew,
  nivelOld: Integer;
begin
   TestaPainel();

   try
      nivelNew := dm.ItensOrdemCODNIVEL.AsInteger;
   except
      nivelNew := 0;
   end;

   if nivelNew = 3 then
   begin
      vlAno := YearOf(Date);
      vlAno := vlAno + 5;
      VenctoTeste.Text := IntToStr(vlAno);
   end
   else begin
    try
      VenctoTeste.Text := FormatDateTime('yyyy', dm.ItensOrdemDATACARGA.AsDateTime);
    except
      // nada
    end;
   end;



//   try
//      nivelOld := dm.ItensOrdemCODNIVEL.OldValue;
//   except
//      nivelOld := 0;
//   end;
//
//   if (nivelOld <> 3) and (nivelNew = 3) then
//   begin
//      vlAno := YearOf(Date);
//      vlAno := vlAno + 5;
//      VenctoTeste.Text := IntToStr(vlAno);
//   end;
//
//   if (nivelNew <> 3) then
//   begin
//    try
//     VenctoTeste.Text := FormatDateTime('yyyy', dm.ItensOrdemDATACARGA.AsDateTime);
//    except
//      // nada
//    end;
//   end;
//
//   if (nivelOld = 0) and (nivelNew <> 3) then
//   begin
//    if dm.ItensOrdemDATACARGA.AsDateTime > 0 then
//      VenctoTeste.Text := FormatDateTime('yyyy', dm.ItensOrdemDATACARGA.AsDateTime);
//   end;
end;

procedure TfItensOrdem.MostraResponsavel;
begin
   if dsCad.DataSet.State = dsInsert then
   begin
      if CodResp.Text = '' then
      begin
         dm.ItensOrdemCODRESP.Text := 'VO';
         CodResp.Modified := True;
         CodRespExit(self);
      end;
   end;
end;

function TfItensOrdem.Critica: Boolean;
begin
   Result := True;

   if vuValidaIntervaloSelo = 'S' then
   begin
      if SeloDentroIntervalo = False then
      begin
         Result := False;
         Exit;
      end;
   end;

   if Trim(edtPeso.Text) = '' then
   begin
      if Confirma('Deseja deixar o Peso em Branco?','N') = idNo then
      begin
         Result := False;
         Exit;
      end;
   end;

   if Trim(edtTipo.Text) = '' then
   begin
      if Confirma('Deseja deixar o Tipo BC/ABC em Branco?','N') = idNo then
      begin
         Result := False;
         Exit;
      end;
   end;

   if (CodManutencao.Text = '1') or
      (CodManutencao.Text = '2') or
      (CodManutencao.Text = '3') or
      (CodManutencao.Text = '22') then
   begin
      if CodAgente.Text = '' then
      begin
         if Confirma('Deseja deixar o Agente Extintor em Branco?','N') = idNo then
         begin
            Result := False;
            Exit;
         end;
      end;

      if CboLote.Text = '' then
      begin
         if Confirma('Deseja deixar o Lote/Complemento em Branco?','N') = idNo then
         begin
            Result := False;
            Exit;
         end;
      end;

      if dm.ItensOrdemQTDE.AsFloat <= 0 then
      begin
         if Confirma('Deseja informar a Quantidade?','S') = idYes then
         begin
            Result := False;
            Exit;
         end;
      end;
   end;

   if (CodAgente.text = '15') then
   begin
      if dm.ItensOrdemQTDE.AsFloat <= 0 then
      begin
         Mensagem('Informe o Lote e a Quantidade!');
         Qtde.SetFocus;
         Result := False;
         exit;
      end;
   end;

   if (trim(Selo.Text) = '') and (ValidarSelo) then
   begin
      mensagem('Digite o número do selo');
      Selo.SetFocus;
      Result := False;
      exit;
   end;
   if trim(Serie.Text) = '' then
   begin
      mensagem('Digite a Série');
      Result := False;
      exit;
   end;

   if ConfirmarInativo = False then
      Result := False;


end;

function TfItensOrdem.ConfirmarInativo: Boolean;
begin
   Result := True;
   
   QInativo.Close;
   QInativo.Params.ParamByName('CODPESSOA').Text := dm.OrdemCODPESSOA.Text;
   QInativo.Params.ParamByName('SERIE').Text := Serie.Text;
   QInativo.Open;

   if QInativoSITUACAO.Text = 'A' then
   begin
      if RExtNao.Checked then
      begin
         if Confirma('Confirmar Extintor Inativo?','N') = idNo then
            Result := False;
      end;
   end;

   QInativo.Close;

end;

constructor TfItensOrdem.create(AOwner: TComponent; ACodigoBarras: Boolean);
begin
  inherited create(AOwner);

  FTelaCodigoBarras := ACodigoBarras;
  if ACodigoBarras = False then
  begin
    pnlCodBarras.Visible := False;
  end
  else begin
    butSalvar.Enabled := False;
    butNovo.Enabled := False;
    btnEtiqueta.Visible := False;
    AbrirPecas('00000');
    pnlCorpo.Enabled := False;
  end;
  IniciarLancamento();
end;

procedure TfItensOrdem.LimparTelaCodBarras;
begin
  LimparControles;
  pnlCorpo.Enabled := False;
  if dsCad.DataSet.State in [dsEdit, dsInsert] then
    dsCad.DataSet.Cancel;
  if dsOrdem.DataSet.State in [dsEdit, dsInsert] then
    dsOrdem.DataSet.Cancel;
  Procura(dm.ItensOrdem, '-1');
  AbrirPecas('0000');
end;

procedure TfItensOrdem.ConsisteResultado;
begin
  if copy(DescResultado.Text, 1, 9) = 'REPROVADO' then
    RextNao.Checked := true
  else
    RextSim.Checked := true;
end;

procedure TfItensOrdem.AbrirPecas(ASerie: string);
begin
  dm.TabPecas.Close;
  dm.TabPecas.Params[0].AsInteger := dm.OrdemNUMORDEM.AsInteger;
  dm.TabPecas.Params[1].Text := ASerie;
  //Serie.Text;
  dm.TabPecas.open;
end;

procedure TfItensOrdem.BuscarNivel;
var
  objNivel: TManutencaoController;
  AnoAtual: string;
  AnoTeste: string;
  iCodigo: Integer;
begin
  AnoAtual := FormatDateTime('yyyy', Date);
  AnoTeste := Trim(VenctoTeste.Text);

  objNivel := TManutencaoController.Create;
  try
    if StrToIntDef(AnoAtual, 0) >= StrToIntDef(AnoTeste, 0) then
      iCodigo := 3
    else
      iCodigo := 2;

    objNivel.LocalizarCodigo(iCodigo);
    dm.ItensOrdemCODNIVEL.AsInteger := objNivel.Codigo;
    DescManutencao.Text := objNivel.Nome;

    VencimentoReteste(dm.ItensOrdemCODNIVEL.Text);
  finally
    FreeAndNil(objNivel);
  end;
end;

function TfItensOrdem.SeloDentroIntervalo: Boolean;
var
   S : TItensServico;
begin
   Result := True;
   if (CodManutencao.Text = '2') or (CodManutencao.Text = '3') then
   begin
      S := TItensServico.create;
      if S.DentroIntervaloSelo(Selo.Text) = False then
      begin
         Mensagem('Selo fora do Intervalo. Ajuste!');
         Result := False;
      end;
      FreeAndNil(S);
   end;
end;

procedure TfItensOrdem.btnEtiquetaClick(Sender: TObject);
var
  form: TfEtiqueta;
begin
  form  := TfEtiqueta.Create(dm.OrdemNUMORDEM.AsInteger);
  form.ShowModal;
  form.Free;
end;

procedure TfItensOrdem.BuscarCodigoBarras(ATipo: TTipoPesquisa);
var
  objOrdem: TdmOrdemServico;
  Formulario: TfrmOSCliente;
  iCodPessoa: Integer;
  sNomeCliente: string;
begin
{
  ATipo: BARR, SELO
}
  pnlCorpo.Enabled := True;
  objOrdem := TdmOrdemServico.Create(nil);
  try
    if ATipo = tpBarras then
    begin
      objOrdem.BuscarPessoa(edtCodBarras.Text);
      iCodPessoa := objOrdem.cdsBuscarClienteCODPESSOA.AsInteger;
      sNomeCliente := objOrdem.cdsBuscarClienteNOME.AsString;

      if objOrdem.cdsBuscarCliente.RecordCount > 1 then
      begin
        Formulario := TfrmOSCliente.Create(Self);
        if Formulario.ShowModal = mrOk then
        begin
          iCodPessoa := Formulario.Codigo;
          sNomeCliente := Formulario.Nome;
        end;
        FreeAndNil(Formulario);
      end;
    end
    else begin
      objOrdem.BuscarSelo(StrToIntDef(edtNumSelo.Text, 0));
      if objOrdem.cdsSeloOrdem.IsEmpty then
      begin
        raise Exception.Create('Selo não Encontrado!');
      end;
      iCodPessoa := objOrdem.cdsSeloOrdemCODPESSOA.AsInteger;
      sNomeCliente := objOrdem.cdsSeloOrdemNOME.AsString;
      edtCodBarras.Text := objOrdem.cdsSeloOrdemSERIE.AsString;

      if objOrdem.cdsSeloOrdem.RecordCount > 1 then
      begin
        Formulario := TfrmOSCliente.Create(Self);
        Formulario.dsCad.DataSet := objOrdem.cdsSeloOrdem;
        if Formulario.ShowModal = mrOk then
        begin
          iCodPessoa := Formulario.Codigo;
          sNomeCliente := Formulario.Nome;
        end;
        FreeAndNil(Formulario);
      end;
    end;

    LocalizarOrdem(iCodPessoa, objOrdem);
    edtNomePessoa.Text := sNomeCliente;

    if dm.Ordem.State in [dsInsert, dsEdit] then
      dm.OrdemCODPESSOA.AsInteger := iCodPessoa;
  finally
    FreeAndNil(objOrdem);
  end;

  Serie.Enabled:=true;
  AbrirPecas('0000');
  Serie.Enabled:=true;
  vuSeloEmBranco := '';

  edtCodBarras.SetFocus;

  HabilitaBotao;
  MostraResponsavel;

  dm.ItensOrdem.Append;
  DM.ItensOrdemSERIE.AsString := edtCodBarras.Text;
  PesquisaSerie(DM.ItensOrdemSERIE.AsString);

  try
    edtDataInspecao.SetFocus;
  except
    // nada
  end;
end;

procedure TfItensOrdem.BuscarLotes;
var
  sCboLote: string;
  sLote: string;
  sCompl: string;
begin
//  if dsCad.DataSet.State <> dsInsert then
//    Exit;

  sCboLote  := CboLote.Text;
  sLote     := dm.ItensOrdemLOTE.AsString;
  sCompl    := dm.ItensOrdemCOMPLEMENTO.AsString;
  if CodAgente.Text <> '15' then
  begin
    dm.Qsql.Close;
    dm.Qsql.SQL.Text := 'select LOTERESUMIDO from TESTLOTE order by LOTERESUMIDO';
    dm.Qsql.Open;

    if not dm.Qsql.IsEmpty then
      CboLote.Clear;

    while not dm.Qsql.Eof do
    begin
      CboLote.Items.Add(dm.Qsql.fieldbyname('LOTERESUMIDO').text);
      dm.Qsql.Next;
    end;
    CboLote.Items.Add('FABR');
    dm.Qsql.Close;
  end;

  if CodAgente.Text = '15' then
  begin
    dm.Qsql.Close;
    dm.Qsql.SQL.Text := 'select LOTERESUMIDO from TESTLOTE where COMPLEMENTO = ' + QuotedStr(edtTipo.Text) + ' order by LOTERESUMIDO';
    dm.Qsql.Open;

    if not dm.Qsql.IsEmpty then
      CboLote.Clear;

    while not dm.Qsql.Eof do
    begin
      CboLote.Items.Add(dm.Qsql.fieldbyname('LOTERESUMIDO').text);
      dm.Qsql.Next;
    end;
    dm.Qsql.Close;
  end;
  CboLote.Text := sCboLote;

  if dm.ItensOrdem.State in [dsEdit, dsInsert] then
  begin
    dm.ItensOrdemLOTE.AsString := sLote;
    dm.ItensOrdemCOMPLEMENTO.AsString := sCompl;
  end;
end;

procedure TfItensOrdem.IniciarLancamento;
begin
  dm.GetUsuario(vgUsuario);
  if dm.CadUsuarioALTERAR_SELO.Text = 'N' then
  begin
    butBuscarSelo.Visible := False;
    GrpSelo.Enabled := False;
  end;

  vuValidaIntervaloSelo := DM.CadUsuarioVALIDA_INTERVALO_SELO.Text;
  if vuValidaIntervaloSelo = '' then
    vuValidaIntervaloSelo := 'N';

  dm.CadUsuario.Close;
  if not dm.ItensOrdem.IsEmpty then
    Serie.Enabled := false;

  BuscarLotes;

  CboLote.Text := dm.ItensOrdemLOTERESUMIDO.Text;
  vloteant := dm.ItensOrdemLOTERESUMIDO.Text;
  vqtdeant := dm.ItensOrdemQTDE.text;
  vseloant := dm.ItensOrdemNUMSELO.Text;
  vuSeloEmBranco := vseloAnt;

  if not dm.ItensOrdem.IsEmpty then
  begin
    Qordem.Close;
    Qordem.Params[0].AsInteger := dm.ItensOrdemCONTROLE.AsInteger;
    Qordem.Open;

    DescMarca.Text := QordemDESCMARCA.Text;
    AnoFab.Text := QordemANOFAB.Text;
    DescResultado.Text := QordemDESCRESULTADO.Text;
    VenctoCarga.Text := QordemVENCTO_CARGA.Text;
    VenctoTeste.Text := QordemVENCTO_TESTE.Text;
    DescAgente.Text := QordemDESCAGENTE.Text;
    DescManutencao.Text := QordemDESCMANUTENCAO.Text;
    DescResp.Text := QordemNOME.Text;

    TestaPainel;
    QtdeEstoque.Text := formatfloat('###,###,##0.00', QordemQTDEESTOQUE.AsFloat);
    Qordem.Close;

    dm.ItensOrdem.Edit;
  end;
  if serie.Text <> '' then
  begin
    Qativo.Close;
    Qativo.Params[0].Text := dm.OrdemCODPESSOA.Text;
    Qativo.Params[1].Text := Serie.Text;
    Qativo.Open;
    if QativoSITUACAO.Text = 'A' then
      rExtSim.Checked := true
    else
      RExtNao.Checked := true;
    Qativo.Close;
  end;

  AbrirPecas(Serie.Text);
//  dm.TabPecas.Close;
//  dm.TabPecas.Params[0].AsInteger := dm.OrdemNUMORDEM.AsInteger;
//  dm.TabPecas.Params[1].Text := serie.Text;
//  dm.TabPecas.Open;
  HabilitaBotao;
end;

procedure TfItensOrdem.LimparControles;
begin
  edtCodBarras.Clear;
  edtNumSelo.Clear;
  EditSelo.Clear;
  DescMarca.Clear;
  AnoFab.Clear;
  DescManutencao.Clear;
  DescResultado.Clear;
  Cbolote.Text:='';
  venctoCarga.Clear;
  VenctoTeste.Clear;
  DescAgente.Clear;
  DescResp.Clear;
  vloteant:='';
  vqtdeant:='0';
  AnoFab.Clear;
  QtdeEstoque.Text:='0';

  edtNomePessoa.Clear;
  edtNumOrdem.Clear;
end;

procedure TfItensOrdem.LocalizarOrdem(ACodPessoa: Integer; obj: TdmOrdemServico);
var
  objSeq: TNegocioServico;
  iCodigo: Integer;
begin
  obj.BuscarOrdem(date, ACodPessoa);
  if obj.QOrdemNUMORDEM.AsFloat = 0 then
  begin
    if FTelaCodigoBarras then
    begin
      try
        objSeq := TNegocioServico.Create;
        iCodigo := objSeq.ProximoId;
      finally
        FreeAndNil(objSeq);
      end;
      pnlCorpo.Enabled := True;
      procura(dm.Ordem, ICodigo.ToString());
      Procura(dm.ItensOrdem, '-1');

      dm.Ordem.Append;
      dm.OrdemNUMORDEM.AsInteger := iCodigo;
      dm.OrdemDATAORDEM.AsDateTime := Date;
      edtNumOrdem.Text := iCodigo.ToString();
    end;
  end
  else begin
    procura(dm.Ordem, obj.QOrdemNUMORDEM.AsString);
    Procura(dm.ItensOrdem, '-1');
    edtNumOrdem.Text := obj.QOrdemNUMORDEM.AsString;
  end;
end;

end.

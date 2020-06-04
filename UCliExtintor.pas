unit UCliExtintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Grids, DBGrids, StdCtrls, Buttons, Mask,
  ExtCtrls, DBClient, Provider;

type
  TfCliExtintor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    butPessoa: TSpeedButton;
    CodPessoa: TMaskEdit;
    Nome: TEdit;
    Serie: TEdit;
    NumSelo: TMaskEdit;
    GroupBox1: TGroupBox;
    RAtivo: TRadioButton;
    RInativo: TRadioButton;
    RTodos: TRadioButton;
    butOk: TBitBtn;
    Panel2: TPanel;
    Grade: TDBGrid;
    dtAux: TSQLDataSet;
    dtAuxANOFAB: TSmallintField;
    dtAuxVENCTO: TSmallintField;
    dtAuxVENCTOCARGA: TStringField;
    dtAuxCAPACIDADE: TStringField;
    dtAuxCODLOCAL: TFloatField;
    dtAuxCODMARCA: TFloatField;
    dtAuxCODPESSOA: TFloatField;
    dtAuxCONSERVACAO: TStringField;
    dtAuxCONTROLE: TIntegerField;
    dtAuxDATACARGA: TSQLTimeStampField;
    dtAuxNUMERO: TFloatField;
    dtAuxSELO: TFloatField;
    dtAuxSERIE: TStringField;
    dtAuxSITUACAO: TStringField;
    dtAuxULTIMOSELO: TFloatField;
    dtAuxDESCMARCA: TStringField;
    dtAuxDESCLOCAL: TStringField;
    QExtintor: TSQLDataSet;
    QExtintorANOFAB: TSmallintField;
    QExtintorVENCTO: TSmallintField;
    QExtintorVENCTOCARGA: TStringField;
    QExtintorCAPACIDADE: TStringField;
    QExtintorCODLOCAL: TFloatField;
    QExtintorCODMARCA: TFloatField;
    QExtintorCODPESSOA: TFloatField;
    QExtintorCONSERVACAO: TStringField;
    QExtintorCONTROLE: TIntegerField;
    QExtintorDATACARGA: TSQLTimeStampField;
    QExtintorNUMERO: TFloatField;
    QExtintorSELO: TFloatField;
    QExtintorSERIE: TStringField;
    QExtintorSITUACAO: TStringField;
    QExtintorULTIMOSELO: TFloatField;
    QExtintorDESCMARCA: TStringField;
    QExtintorDESCLOCAL: TStringField;
    dspExtintor: TDataSetProvider;
    Extintor: TClientDataSet;
    dsExtintor: TDataSource;
    ExtintorANOFAB: TSmallintField;
    ExtintorVENCTO: TSmallintField;
    ExtintorVENCTOCARGA: TStringField;
    ExtintorCAPACIDADE: TStringField;
    ExtintorCODLOCAL: TFloatField;
    ExtintorCODMARCA: TFloatField;
    ExtintorCODPESSOA: TFloatField;
    ExtintorCONSERVACAO: TStringField;
    ExtintorCONTROLE: TIntegerField;
    ExtintorDATACARGA: TSQLTimeStampField;
    ExtintorNUMERO: TFloatField;
    ExtintorSELO: TFloatField;
    ExtintorSERIE: TStringField;
    ExtintorSITUACAO: TStringField;
    ExtintorULTIMOSELO: TFloatField;
    ExtintorDESCMARCA: TStringField;
    ExtintorDESCLOCAL: TStringField;
    butExc: TBitBtn;
    butFechar: TBitBtn;
    QUltSelo: TSQLQuery;
    QUltSeloNUMSELO: TFloatField;
    QUltSeloDATAORDEM: TSQLTimeStampField;
    QUltSeloNUMORDEM: TFloatField;
    butUltSelo: TBitBtn;
    procedure butOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodPessoaEnter(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure butFecharClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GradeEnter(Sender: TObject);
    procedure GradeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butUltSeloClick(Sender: TObject);
    procedure dsExtintorStateChange(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
  public
    { Public declarations }
  end;

var
  fCliExtintor: TfCliExtintor;

implementation

uses UDMBanco, UDM, UPessoa, UUtil, UItemExtintor, UDMR;

var vpos: integer;

{$R *.dfm}

procedure TfCliExtintor.pesquisaPessoa(Tipo: string);
begin
   if (CodPessoa.Modified) or (Nome.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where CODPESSOA = '+CodPessoa.Text)
      else
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where NOME like "'+Nome.Text+'%" order by NOME');
      if dm.Qsql.RecordCount = 0 then
      begin
         CodPessoa.Clear;
         Nome.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         CodPessoa.Text:=dm.Qsql.fieldbyname('CODPESSOA').Text;
         NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Pessoa,Nome.Text+'%');
         vgcodigo:='';
         fPessoa:=TfPessoa.create(Self);
         fPessoa.butConf.Visible:=true;
         fPessoa.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
            CodPessoa.Text:=vgcodigo;
            NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
            Nome.SetFocus;
         end
         else begin
            CodPessoa.Clear;
            Nome.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   if trim(CodPessoa.Text) <> '' then
      butOkClick(Self);
   CodPessoa.Modified:=false;
   Nome.Modified:=false;
end;

procedure TfCliExtintor.butOkClick(Sender: TObject);
begin
   if (trim(codpessoa.Text) = '') and (trim(serie.text) = '') and (trim(NumSelo.Text) = '') then
      exit;
   Extintor.Close;
   Extintor.CommandText:=dtAux.CommandText;
   if trim(CodPessoa.Text) <> '' then
      Extintor.CommandText:=Extintor.CommandText
      + ' where C.CODPESSOA = '+Codpessoa.Text
   else
      Extintor.CommandText:=Extintor.CommandText
      + ' where C.CODPESSOA > 0';
   if Serie.text <> '' then
      Extintor.CommandText:=Extintor.CommandText +
      ' and C.SERIE = "'+Serie.Text+'"';
   if NumSelo.text <> '' then
      Extintor.CommandText:=Extintor.CommandText +
      ' and C.SELO = '+NumSelo.Text;
   if rAtivo.Checked then
      Extintor.CommandText:=Extintor.CommandText +
      ' and C.SITUACAO = "A"';
   if rInativo.Checked then
      Extintor.CommandText:=Extintor.CommandText +
      ' and C.SITUACAO = "I"';
   Extintor.CommandText:=Extintor.CommandText +
   ' order by C.NUMERO';
   Extintor.Open;
   if trim(CodPessoa.Text) = '' then
   begin
      if not Extintor.IsEmpty then
      begin
         comandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where CODPESSOA = '+ExtintorCODPESSOA.Text);
         CodPessoa.Text:=dm.Qsql.fieldbyname('CODPESSOA').Text;
         Nome.Text:=dm.Qsql.fieldbyname('NOME').Text;
         dm.Qsql.Close;
      end;
   end;
   Grade.SetFocus;
end;

procedure TfCliExtintor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Extintor.close;
   action:=cafree;
end;

procedure TfCliExtintor.CodPessoaExit(Sender: TObject);
begin
   CodPessoa.Enabled:=false;
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfCliExtintor.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
   Nome.ReadOnly:=true;
end;

procedure TfCliExtintor.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfCliExtintor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
   begin
      if CodPessoa.Focused then
         close
      else begin
         CodPessoa.Enabled:=true;
         Codpessoa.SetFocus;
      end;
   end;
   if key = vk_F4 then
      butExcClick(Self);
end;

procedure TfCliExtintor.CodPessoaEnter(Sender: TObject);
begin
   Codpessoa.clear;
   Nome.clear;
   Serie.clear;
   NumSelo.clear;
   Nome.ReadOnly:=false;
   Extintor.close;
end;

procedure TfCliExtintor.butPessoaClick(Sender: TObject);
begin
   procura(dm.Pessoa,'ABCDE%');
   vgcodigo:='';
   fPessoa:=TfPessoa.create(Self);
   fPessoa.butConf.Visible:=true;
   fPessoa.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
      CodPessoa.Text:=vgcodigo;
      NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      Nome.SetFocus;
   end
   else begin
      CodPessoa.Clear;
      Nome.clear;
   end;
end;

procedure TfCliExtintor.butExcClick(Sender: TObject);
begin
   if dsExtintor.DataSet.IsEmpty then
      exit;

   dm.Qsql.Close;
   dm.Qsql.SQL.Clear;
   dm.Qsql.SQL.Add('select SERIE from TIORDEM');
   dm.Qsql.SQL.Add(' where SERIE = '''+ExtintorSERIE.Text+'''');
   dm.Qsql.Open;
   if not dm.Qsql.IsEmpty then
   begin
      mensagem('Não será possível excluir, possui movimento');
      dm.Qsql.Close;
      exit;
   end;
   dm.Qsql.Close;

   if confirma('Confirma Exclusão?','N')=idno then
      exit;
   procura(dm.Extintor,ExtintorCONTROLE.Text);

   dm.IniTrans;
   dm.Extintor.Delete;
   GravaTab(dm.Extintor);
   dm.GravaTrans;
   Extintor.Delete;
   dm.Extintor.close;
end;

procedure TfCliExtintor.butFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfCliExtintor.GradeDblClick(Sender: TObject);
begin
   if trim(CodPessoa.Text) = '' then
   begin
      Mensagem('Informe o Cliente');
      exit;
   end;
   if not dsExtintor.DataSet.IsEmpty then
   begin
      if ExtintorCODPESSOA.Text <> trim(CodPessoa.Text) then
      begin
         CodPessoa.Text:=ExtintorCODPESSOA.Text;
         comandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+ExtintorCodpessoa.Text);
         Nome.Text:=dm.Qsql.fieldbyname('NOME').Text;
         dm.Qsql.Close;
      end;
   end;
   Grade.SetFocus;
   vpos:=Extintor.RecNo;
   fItemExtintor:=TfItemExtintor.create(Self);
   fItemExtintor.CodPessoa.Text:=CodPessoa.Text;
   fItemExtintor.show;
end;

procedure TfCliExtintor.FormActivate(Sender: TObject);
begin
   if codpessoa.text <> '' then
   begin
      butOkClick(Self);
      if vpos > 0 then
         Extintor.RecNo:=vpos;
   end;
end;

procedure TfCliExtintor.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Return then
   begin
      GradeDblClick(Sender);
   end;
   if key = vk_Escape then
   begin
      if CodPessoa.Focused then
         close
      else begin
         CodPessoa.Enabled:=true;
         Codpessoa.SetFocus;
      end;
   end;
   if key = vk_F4 then
      butExcClick(Self);
end;

procedure TfCliExtintor.GradeEnter(Sender: TObject);
begin
   fCliExtintor.KeyPreview:=false;
end;

procedure TfCliExtintor.GradeExit(Sender: TObject);
begin
   fCliExtintor.KeyPreview:=true;
end;

procedure TfCliExtintor.FormCreate(Sender: TObject);
begin
   vpos:=0;
end;

procedure TfCliExtintor.butUltSeloClick(Sender: TObject);
var
   vlSelo: String;
begin
   if Confirma('Confirmar busca de últimos selos?','N')=idno then
      exit;
   Extintor.DisableControls;
   Extintor.First;
   butUltSelo.Enabled:=false;
   while not Extintor.Eof do
   begin
      if ExtintorSELO.text <> '' then
      begin
         vlSelo:=dmR.Busca_UltimoSelo(CodPessoa.Text,ExtintorSERIE.Text,ExtintorSELO.Text);
         if trim(vlSelo) <> '' then
            DmBanco.BancoDados.ExecuteDirect('update TCLIEXT set ULTIMOSELO = '+vlSelo+ ' where CONTROLE = ' + ExtintorCONTROLE.Text);
      end;
      Extintor.Next;
   end;
   showMessage('Fim do Processo');
   Extintor.First;
   Extintor.EnableControls;
   butUltSelo.Enabled:=true;
end;

procedure TfCliExtintor.dsExtintorStateChange(Sender: TObject);
begin
   butUltSelo.Enabled:= not (dsExtintor.DataSet.State = dsInactive);
end;

end.

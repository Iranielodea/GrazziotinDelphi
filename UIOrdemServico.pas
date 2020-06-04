unit UIOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TfIOrdemServico = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DataIni: TMaskEdit;
    DataFin: TMaskEdit;
    Panel1: TPanel;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    Label4: TLabel;
    Label8: TLabel;
    NivelIni: TMaskEdit;
    NivelFin: TMaskEdit;
    butRelacao: TBitBtn;
    Label3: TLabel;
    Label5: TLabel;
    SeloIni: TEdit;
    SeloFim: TEdit;
    Label6: TLabel;
    CodPessoa: TEdit;
    Nome: TEdit;
    butPessoa: TSpeedButton;
    procedure butSairClick(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure butRelacaoClick(Sender: TObject);
    procedure CodPessoaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure NomeExit(Sender: TObject);
  private
    function Filtro: string;
    function Validacao: Boolean;
    function ValidaNivel: Boolean;
    function ValidaSelos: Boolean;
    procedure pesquisaPessoa(Tipo: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIOrdemServico: TfIOrdemServico;

implementation

uses UrOrdemServicoI, UUtil, UDM, UPessoa;

{$R *.dfm}

procedure TfIOrdemServico.butImprimirClick(Sender: TObject);
begin
   if Validacao = False then
      exit;

   frOrdemServicoI := TfrOrdemServicoI.Create(self);
   with frOrdemServicoI do
   begin
      frOrdemServicoI.vuSeloInicial := SeloIni.Text;
      frOrdemServicoI.vuSeloFinal := SeloFim.Text;
      frOrdemServicoI.vuCodPessoa := CodPessoa.Text;

      lblData01.Caption := 'Período de: ' + DataIni.Text + ' A ' + DataFin.Text;
      dtOrdem.Close;
      QOrdem.SQL.Text := frOrdemServicoI.SqlRelatorio(DataIni.Text, DataFin.Text, NivelIni.Text, NivelFin.Text);
      QOrdem.SQL.Add(Filtro);

      dtOrdem.Open;
      RelOrdem01.Print;
   end;
   frOrdemServicoI.Free;
end;

procedure TfIOrdemServico.butPessoaClick(Sender: TObject);
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
   end;
end;

procedure TfIOrdemServico.butRelacaoClick(Sender: TObject);
begin
   if Validacao = False then
      exit;

   frOrdemServicoI := TfrOrdemServicoI.Create(self);
   with frOrdemServicoI do
   begin
      frOrdemServicoI.vuSeloInicial := SeloIni.Text;
      frOrdemServicoI.vuSeloFinal := SeloFim.Text;

      lblData02.Caption := 'Período de: ' + DataIni.Text + ' A ' + DataFin.Text;
      dtOrdem1.Close;

      QOrdem1.SQL.Add(' and i.CodNivel between ' + NivelIni.Text + ' and ' + NivelFin.Text);

      if (SeloIni.Text <> '') and (SeloFim.Text <> '') then
         QOrdem1.SQL.Add(' and i.NumSelo between ' + SeloIni.Text + ' and ' + SeloFim.Text);

      if CodPessoa.Text <> '' then
         Qordem1.SQL.Add(' and O.CODPESSOA = ' + CodPessoa.Text);

      QOrdem1.SQL.Add(' order by o.numordem, i.numselo');

      dtOrdem1.Params.ParamByName('DATAINI').AsDate := StrToDate(DataIni.Text);
      dtOrdem1.Params.ParamByName('DATAFIM').AsDate := StrToDate(DataFin.Text);
      dtOrdem1.Open;

      RelOrdem02.Print;
      dtOrdem1.Close;
   end;
   frOrdemServicoI.Free;
end;

procedure TfIOrdemServico.butSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfIOrdemServico.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = true then
   begin
      if CodPessoa.Text <> '' then
         PesquisaPessoa('C')
      else
         Nome.Clear;
   end;
end;

function TfIOrdemServico.Filtro: string;
var
   vlFiltro: string;
begin
   vlFiltro := '';
   if NivelIni.Text <> '' then
   begin
      vlFiltro := vlFiltro + ' and exists(';
      vlFiltro := vlFiltro + ' select 1 from TIORDEM I';
      vlFiltro := vlFiltro + '   where O.NUMORDEM = I.NUMORDEM';
      vlFiltro := vlFiltro + '   and I.CODNIVEL between '+NivelIni.Text+' and '+NivelFin.text;
      if (SeloIni.Text <> '') and (SeloFim.Text <> '') then
         vlFiltro := vlFiltro + '   and I.NUMSELO between '+SeloIni.Text+' and '+SeloFim.text;
      if CodPessoa.Text <> '' then
         vlFiltro := vlFiltro + '   and O.CODPESSOA = ' + CodPessoa.Text;
      vlFiltro := vlFiltro + ')';
   end;
   vlFiltro := vlFiltro + ' order by O.DataOrdem, O.NumOrdem';
   Result := vlFiltro;
end;

procedure TfIOrdemServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfIOrdemServico.FormCreate(Sender: TObject);
begin
   DataIni.Text := DateToStr(Date);
   DataFin.Text := DateToStr(Date);
end;

procedure TfIOrdemServico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TfIOrdemServico.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfIOrdemServico.NomeExit(Sender: TObject);
begin
   if Nome.Modified = True then
   begin
      if Nome.Text <> '' then
         PesquisaPessoa('D')
      else
         Codpessoa.Clear;
   end;
end;

procedure TfIOrdemServico.pesquisaPessoa(Tipo: string);
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
   CodPessoa.Modified := False;
   Nome.Modified := False;
end;

function TfIOrdemServico.Validacao: Boolean;
begin
   result := False;
   if ValidaDatas(DataIni.Text, DataFin.Text) = False then
      Exit;

   if ValidaNivel() = False then
      Exit;

   if ValidaSelos = False then
      exit;

   Result := True;
end;

function TfIOrdemServico.ValidaNivel: Boolean;
begin
   Result := True;
   try
      StrToInt(NivelIni.Text);
      StrToInt(NivelFin.Text);
   except
      Mensagem('Nível Inválido!');
      Result := False;
      NivelIni.SetFocus;
      Exit;
   end;

   if StrToInt(NivelIni.Text) > StrToInt(NivelFin.Text) then
   begin
      Mensagem('Nivel inicial maior que nível final!');
      NivelIni.SetFocus;
      Result := False;
   end;
end;

function TfIOrdemServico.ValidaSelos: Boolean;
begin
   try
      Result := True;
      if (SeloIni.Text <> '') or (SeloFim.Text <> '') then
      begin
         if StrToInt(SeloIni.Text) > StrToInt(SeloFim.Text) then
         begin
            Mensagem('Selo Inicial maior que Selo final.');
            Result := False;
         end;
      end;
   except
      Result := False;
   end;
   // TODO -cMM: TfIOrdemServico.ValidaSelos default body inserted
end;

end.

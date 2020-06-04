unit UJProposta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, SqlExpr, Mask, Grids, DBGrids,
  ExtCtrls, DBClient, Provider;

type
  TfjProposta = class(TForm)
    Panel1: TPanel;
    Grade: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Dataini: TMaskEdit;
    Datafin: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Codpessoa: TMaskEdit;
    Nome: TEdit;
    dtpesq: TSQLDataSet;
    butMostra: TBitBtn;
    dspPesq: TDataSetProvider;
    Pesq: TClientDataSet;
    dsPesq: TDataSource;
    PesqCODPESSOA: TFloatField;
    PesqNOME: TStringField;
    butConf: TBitBtn;
    butCancel: TBitBtn;
    butPessoa: TSpeedButton;
    lblRegua: TLabel;
    PesqEMISSAO: TSQLTimeStampField;
    PesqNUMPROPOSTA: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure butMostraClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsPesqStateChange(Sender: TObject);
    procedure butConfClick(Sender: TObject);
    procedure CodpessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
  public
    { Public declarations }
  end;

var
  fjProposta: TfjProposta;

implementation

uses UDM, UDMBanco, UUtil, UPessoa;

{$R *.dfm}


procedure TfjProposta.pesquisaPessoa(Tipo: string);
begin
   if (CodPessoa.Modified) or (Nome.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where CODPESSOA = '+CodPessoa.Text)
      else
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where NOME like "'+Nome.Text+'%"');
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
end;

procedure TfjProposta.FormCreate(Sender: TObject);
begin
   dataini.text:=datetostr(date);
   datafin.text:=datetostr(date);
end;

procedure TfjProposta.butMostraClick(Sender: TObject);
begin
   if (copy(dataini.Text,1,1) = ' ') or (copy(datafin.Text,1,1) = ' ') then
   begin
      mensagem('Informe a Data');
      exit;
   end;
   if strtodate(dataini.text) > strtodate(datafin.text) then
   begin
      mensagem('Data inicial maior que Data final');
      exit;
   end;
   pesq.Close;
   pesq.CommandText:=' select'
      +' O.CODPESSOA,'
      +' P.NOME,'
      +' O.EMISSAO,'
      +' O.NUMPROPOSTA'
      +' from TPROPOST O, TPESSOA P'
      +' where O.CODPESSOA = P.CODPESSOA'
      +' and O.EMISSAO between '+DataIngles(dataini.text)+' and '+dataIngles(datafin.text);
   if Codpessoa.Text <> '' then
      pesq.CommandText:=pesq.CommandText +' and O.CODPESSOA = '+CodPessoa.Text;
   pesq.CommandText:=pesq.CommandText +' order by O.EMISSAO desc';
   Pesq.Open;
   Grade.setfocus;
end;

procedure TfjProposta.GradeDblClick(Sender: TObject);
begin
   close;
   ModalResult:=mrOk;
end;

procedure TfjProposta.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          key:=#0;
          perform(Wm_NextDlgCtl,0,0);
     end;
end;

procedure TfjProposta.dsPesqStateChange(Sender: TObject);
begin
   butConf.Enabled:=not dsPesq.DataSet.IsEmpty;
end;

procedure TfjProposta.butConfClick(Sender: TObject);
begin
   ModalResult:=mrOk;
end;

procedure TfjProposta.CodpessoaExit(Sender: TObject);
begin
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfjProposta.NomeExit(Sender: TObject);
begin
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfjProposta.butPessoaClick(Sender: TObject);
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

end.

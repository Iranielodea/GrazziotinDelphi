unit UJOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, SqlExpr, Mask, Grids, DBGrids,
  ExtCtrls, DBClient, Provider;

type
  TfjOrdem = class(TForm)
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
    PesqDATAORDEM: TSQLTimeStampField;
    PesqNUMORDEM: TFloatField;
    butConf: TBitBtn;
    butCancel: TBitBtn;
    butPessoa: TSpeedButton;
    lblRegua: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure butMostraClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsPesqStateChange(Sender: TObject);
    procedure butConfClick(Sender: TObject);
    procedure CodpessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure CodpessoaEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
  public
    { Public declarations }
  end;

var
  fjOrdem: TfjOrdem;

implementation

uses UDM, UDMBanco, UUtil, UPessoa;

{$R *.dfm}


procedure TfjOrdem.pesquisaPessoa(Tipo: string);
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

procedure TfjOrdem.FormCreate(Sender: TObject);
begin
   dataini.text:=datetostr(date);
   datafin.text:=datetostr(date);
end;

procedure TfjOrdem.butMostraClick(Sender: TObject);
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
      +' O.DATAORDEM,'
      +' O.NUMORDEM'
      +' from TORDEM O, TPESSOA P'
      +' where O.CODPESSOA = P.CODPESSOA'
      +' and O.DATAORDEM between '+DataIngles(dataini.text)+' and '+dataIngles(datafin.text);
   if Codpessoa.Text <> '' then
      pesq.CommandText:=pesq.CommandText +' and O.CODPESSOA = '+CodPessoa.Text;
   pesq.CommandText:=pesq.CommandText +' order by O.DATAORDEM desc';
   Pesq.Open;
   Grade.setfocus;
end;

procedure TfjOrdem.GradeDblClick(Sender: TObject);
begin
   close;
   ModalResult:=mrOk;
end;

procedure TfjOrdem.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          key:=#0;
          perform(Wm_NextDlgCtl,0,0);
     end;
end;

procedure TfjOrdem.dsPesqStateChange(Sender: TObject);
begin
   butConf.Enabled:=not dsPesq.DataSet.IsEmpty;
end;

procedure TfjOrdem.butConfClick(Sender: TObject);
begin
   ModalResult:=mrOk;
end;

procedure TfjOrdem.CodpessoaExit(Sender: TObject);
begin
   if Codpessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfjOrdem.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfjOrdem.butPessoaClick(Sender: TObject);
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

procedure TfjOrdem.CodpessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfjOrdem.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

end.

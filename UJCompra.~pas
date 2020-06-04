unit UJCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, FMTBcd,
  DBClient, Provider, DB, SqlExpr;

type
  TfJCompra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DataIni: TMaskEdit;
    Datafin: TMaskEdit;
    Label3: TLabel;
    CodPessoa: TMaskEdit;
    Nome: TEdit;
    butPessoa: TSpeedButton;
    Grade: TDBGrid;
    Panel1: TPanel;
    QPesq: TSQLDataSet;
    QPesqDATA: TSQLTimeStampField;
    QPesqNUMORDEM: TFloatField;
    QPesqNF: TStringField;
    QPesqNOME: TStringField;
    QPesqTOTALCOMPRA: TFloatField;
    dsPesquisa: TDataSource;
    DataSetProvider1: TDataSetProvider;
    Pesq: TClientDataSet;
    PesqDATA: TSQLTimeStampField;
    PesqNUMORDEM: TFloatField;
    PesqNF: TStringField;
    PesqNOME: TStringField;
    PesqTOTALCOMPRA: TFloatField;
    butMostra: TBitBtn;
    butConf: TBitBtn;
    butCancel: TBitBtn;
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure butMostraClick(Sender: TObject);
    procedure dsPesquisaStateChange(Sender: TObject);
    procedure butConfClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
  public
    { Public declarations }
  end;

var
  fJCompra: TfJCompra;

implementation

uses UDM, UPessoa, UUtil, UDMBanco;

{$R *.dfm}

procedure TfJCompra.pesquisaPessoa(Tipo: string);
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
end;

procedure TfJCompra.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfJCompra.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfJCompra.butPessoaClick(Sender: TObject);
begin
   procura(dm.Pessoa,'ABCDE%');
   vgcodigo:='';
   fPessoa:=TfPessoa.create(Self);
   fPessoa.butConf.Visible:=true;
   fPessoa.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
      CODPESSOA.Text:=vgcodigo;
      NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      Nome.SetFocus;
   end;
end;

procedure TfJCompra.butMostraClick(Sender: TObject);
begin
   Pesq.Close;
   Pesq.CommandText:=' select'
      +' C.DATA,'
      +' C.NUMORDEM,'
      +' C.NF,'
      +' P.NOME,'
      +' C.TOTALCOMPRA'
      +' from TCOMPRA C, TPESSOA P'
      +' where C.CODPESSOA = P.CODPESSOA';
   Pesq.CommandText:=Pesq.CommandText + ' and C.DATA between '+dataingles(dataini.Text)+' and '+Dataingles(datafin.Text);
   if Codpessoa.Text <> '' then
      Pesq.CommandText:=Pesq.CommandText + ' and C.CODPESSOA = '+CodPessoa.Text;
   Pesq.CommandText:=Pesq.CommandText + ' order by C.DATA,C.NUMORDEM desc';
   pesq.Open;
   Grade.SetFocus;
end;

procedure TfJCompra.dsPesquisaStateChange(Sender: TObject);
begin
   butConf.Enabled:=not dsPesquisa.DataSet.IsEmpty;
end;

procedure TfJCompra.butConfClick(Sender: TObject);
begin
   ModalResult:=mrOk;
end;

procedure TfJCompra.GradeDblClick(Sender: TObject);
begin
   close;
   ModalResult:=mrOk;
end;

procedure TfJCompra.FormCreate(Sender: TObject);
begin
   dataini.Text:=datetostr(date);
   datafin.Text:=datetostr(date);
end;

procedure TfJCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
          key:=#0;
          perform(Wm_NextDlgCtl,0,0);
     end;
end;

end.

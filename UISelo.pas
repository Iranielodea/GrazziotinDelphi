unit UISelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TfISelo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    butPessoa: TSpeedButton;
    Emi_ini: TMaskEdit;
    Emi_Fin: TMaskEdit;
    Carga_ini: TMaskEdit;
    Carga_Fin: TMaskEdit;
    VCarga_Ini: TMaskEdit;
    VCarga_Fin: TMaskEdit;
    Vteste_ini: TMaskEdit;
    Vteste_fin: TMaskEdit;
    CodPessoa: TMaskEdit;
    Nome: TEdit;
    Selo_Ini: TMaskEdit;
    Selo_Fin: TMaskEdit;
    Panel1: TPanel;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    procedure butSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodPessoaEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
  public
    { Public declarations }
  end;

var
  fISelo: TfISelo;

implementation

uses UDM, UPessoa, UUtil, URSelo;

{$R *.dfm}

procedure TfISelo.pesquisaPessoa(Tipo: string);
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

procedure TfISelo.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfISelo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfISelo.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfISelo.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfISelo.butPessoaClick(Sender: TObject);
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

procedure TfISelo.butImprimirClick(Sender: TObject);
var vsql: string;
begin
   vsql:='';
   if copy(emi_ini.Text,1,1) <> ' ' then
      vsql:=vsql + ' and O.DATAORDEM between '+dataingles(emi_ini.Text)+' and '+dataingles(emi_fin.Text);
   if copy(carga_ini.Text,1,1) <> ' ' then
      vsql:=vsql + ' and I.DATACARREGAMENTO between '+dataingles(carga_ini.Text)+' and '+dataingles(carga_fin.Text);
   if copy(vcarga_ini.Text,1,1) <> ' ' then
      vsql:=vsql + ' and I.VENCIMENTO between '+dataingles('01/'+vcarga_ini.Text)+' and '+dataingles('01/'+vcarga_fin.Text);
   if copy(vteste_ini.Text,1,1) <> ' ' then
      vsql:=vsql + ' and I.DATACARGA between '+dataingles('01/01/'+vteste_ini.Text)+' and '+dataingles('01/01/'+vteste_fin.Text);
   if Selo_ini.Text <> '' then
      vsql:=vsql + ' and I.NUMSELO between '+Selo_ini.Text+' and '+Selo_fin.Text;
   if Codpessoa.Text <> '' then
      vsql:=vsql + ' and O.CODPESSOA = '+Codpessoa.Text;
   vsql:=vsql + ' order by I.NUMSELO';
   frSelo:=TfrSelo.create(Self);
   with frSelo do
   begin
      ordem.close;
      dtordem.CommandText:=dtordem.CommandText + (vsql);
      ordem.open;
      TamanhoPagina(RelOrdem);
      RelOrdem.print;
      ordem.close;
      free;
   end;
end;

procedure TfISelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfISelo.CodPessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfISelo.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

end.

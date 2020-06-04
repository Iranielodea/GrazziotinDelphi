unit UTabPeca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfTabPeca = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CodPeca: TDBEdit;
    DescPeca: TEdit;
    DBEdit2: TDBEdit;
    dsCad: TDataSource;
    Panel4: TPanel;
    butCancelar: TBitBtn;
    butOk: TBitBtn;
    butMarca: TSpeedButton;
    butNovo: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodPecaExit(Sender: TObject);
    procedure DescPecaExit(Sender: TObject);
    procedure butMarcaClick(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butCancelarClick(Sender: TObject);
    procedure CodPecaEnter(Sender: TObject);
    procedure DescPecaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCadStateChange(Sender: TObject);
    procedure butNovoClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPeca(Tipo: string);
  public
    { Public declarations }
  end;

var
  fTabPeca: TfTabPeca;

implementation

uses UUtil, UDM, UPeca;

{$R *.dfm}

procedure TfTabPeca.pesquisaPeca(Tipo: string);
begin
   if (CodPeca.Modified) or (DescPeca.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODPECA,DESCPECA from TPECA where CODPECA = '+CodPeca.Text)
      else
         ComandoQuery(dm.Qsql,'select CODPECA,DESCPECA from TPECA where DESCPECA like "'+DescPeca.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.TabPecasCODPECA.Clear;
         DescPeca.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.TabPecasCODPECA.Text:=dm.Qsql.fieldbyname('CODPECA').Text;
         DESCPECA.Text:=dm.Qsql.fieldbyname('DESCPECA').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Peca,DescPeca.Text+'%');
         vgcodigo:='';
         fPeca:=TfPeca.create(Self);
         fPeca.butConf.Visible:=true;
         fPeca.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCPECA from TPECA where CODPECA = '+vgcodigo);
            dm.TabPecasCODPECA.Text:=vgcodigo;
            DESCPECA.Text:=dm.Qsql.fieldbyname('DESCPECA').Text;
            DescPeca.SetFocus;
         end
         else begin
            dm.TabPecasCODPECA.Clear;
            DescPeca.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfTabPeca.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfTabPeca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TfTabPeca.CodPecaExit(Sender: TObject);
begin
   if CodPeca.Modified = false then exit;
   if CodPeca.Text <> '' then
      PesquisaPeca('C')
   else
      DescPeca.Clear;
end;

procedure TfTabPeca.DescPecaExit(Sender: TObject);
begin
   if DescPeca.Modified = false then exit;
   if DescPeca.Text <> '' then
      PesquisaPeca('D')
   else
      dm.TabPecasCODPECA.Clear;
end;

procedure TfTabPeca.butMarcaClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Peca,'%');
   fPeca:=TfPeca.create(Self);
   fPeca.butConf.Visible:=true;
   fPeca.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCPECA from TPECA where CODPECA = '+vgcodigo);
      dm.TabPecasCODPECA.Text:=vgcodigo;
      DESCPECA.Text:=dm.Qsql.fieldbyname('DESCPECA').Text;
      DescPeca.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfTabPeca.butOkClick(Sender: TObject);
begin
   dm.TabPecasNUMSERVICO.Text:=dm.OrdemNUMORDEM.Text;
   dm.TabPecasSERIE.Text:=dm.ItensOrdemSERIE.Text;
   dm.TabPecas.Post;
   butNovo.SetFocus;
end;

procedure TfTabPeca.FormCreate(Sender: TObject);
begin
   DescPeca.clear;
   if CodPEca.Text <> '' then
   begin
      comandoQuery(dm.Qsql,'select DESCPECA from TPECA where CODPECA = '+CodPeca.Text);
      DescPeca.Text:=dm.Qsql.fieldbyname('DESCPECA').Text;
      dm.Qsql.close;
   end;
end;

procedure TfTabPeca.butCancelarClick(Sender: TObject);
begin
   close;
end;

procedure TfTabPeca.CodPecaEnter(Sender: TObject);
begin
   CodPeca.Modified:=false;
end;

procedure TfTabPeca.DescPecaEnter(Sender: TObject);
begin
   DescPeca.Modified:=false;
end;

procedure TfTabPeca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dm.TabPecas.State in [dsedit,dsinsert] then
      dm.TabPecas.Cancel;
   ModoEdicao(dm.ItensOrdem);
   action:=cafree;
end;

procedure TfTabPeca.dsCadStateChange(Sender: TObject);
begin
   butOk.Enabled:=dsCad.State in [dsedit,dsinsert];
   butNovo.Enabled:=dsCad.State in [dsBrowse,dsedit];
end;

procedure TfTabPeca.butNovoClick(Sender: TObject);
begin
   descPeca.Clear;
   dsCad.DataSet.Append;
   CodPeca.SetFocus;
end;

end.

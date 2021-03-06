unit UCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DB, DBCtrls, Buttons, ExtCtrls,
  FMTBcd, SqlExpr;

type
  TfCompra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Data: TDBEdit;
    dsCad: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    CodPessoa: TDBEdit;
    NumOrdem: TMaskEdit;
    Nome: TEdit;
    grade: TDBGrid;
    Panel1: TPanel;
    butExc: TBitBtn;
    butSalvar: TBitBtn;
    butSair: TBitBtn;
    butPesq: TBitBtn;
    butExcTudo: TBitBtn;
    Pesq: TSQLQuery;
    PesqNOME: TStringField;
    dsItens: TDataSource;
    butPessoa: TSpeedButton;
    DBEdit1: TDBEdit;
    NumItem: TDBEdit;
    Label6: TLabel;
    procedure butSairClick(Sender: TObject);
    procedure dsCadStateChange(Sender: TObject);
    procedure NumOrdemEnter(Sender: TObject);
    procedure NumOrdemExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodPessoaEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure gradeDblClick(Sender: TObject);
    procedure gradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gradeEnter(Sender: TObject);
    procedure gradeExit(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure butExcTudoClick(Sender: TObject);
    procedure butPesqClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
  public
    { Public declarations }
  end;

var
  fCompra: TfCompra;

implementation

uses UDM, UUtil, UPessoa, UItensCompra, UDMBanco, UJCompra;

{$R *.dfm}

procedure TfCompra.pesquisaPessoa(Tipo: string);
begin
   if (CodPessoa.Modified) or (Nome.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where CODPESSOA = '+CodPessoa.Text)
      else
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where NOME like "'+Nome.Text+'%" order by NOME');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.CompraCodPessoa.Clear;
         Nome.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.CompraCodPessoa.Text:=dm.Qsql.fieldbyname('CODPESSOA').Text;
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
            dm.CompraCodPessoa.Text:=vgcodigo;
            NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
            Nome.SetFocus;
         end
         else begin
            dm.CompraCodPessoa.Clear;
            Nome.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfCompra.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfCompra.dsCadStateChange(Sender: TObject);
begin
   //butPesq.Enabled:=dsCad.State in [dsBrowse,dsInactive];
   butExc.Enabled:=dsCad.State in [dsBrowse,dsEdit];
   butExcTudo.Enabled:=dsCad.State in [dsBrowse,dsEdit];
   butSalvar.Enabled:=dsCad.State in [dsedit,dsinsert];
end;

procedure TfCompra.NumOrdemEnter(Sender: TObject);
begin
   if dm.Compra.State in [dsedit,dsinsert] then
      dm.Compra.Cancel;
   dm.Compra.Close;
   dm.ItensCompra.Close;
   LimpaTela(fCompra);
   procura(dm.Control,'Compra');
   NUMORDEM.Text:=dm.ControlCODIGO.Text;
   dm.Control.close;
   NumOrdem.SelectAll;
end;

procedure TfCompra.NumOrdemExit(Sender: TObject);
begin
   procura(dm.Compra,NumOrdem.Text);
   if dm.Compra.IsEmpty then
   begin
      dm.Compra.Append;
      dm.CompraNUMORDEM.Text:=NumOrdem.Text;
      dm.CompraDATA.AsDateTime:=date;
   end
   else begin
      Pesq.Close;
      Pesq.Params[0].Text:=codpessoa.Text;
      Pesq.Open;
      Nome.Text:=PesqNOME.Text;
      Pesq.Close;
      dm.Compra.Edit;
   end;
   procura(dm.ItensCompra,NumOrdem.Text);
   NumOrdem.Enabled:=false;
end;

procedure TfCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
   begin
      if NumOrdem.Focused then
         close
      else
      begin
         NumOrdem.Enabled:=true;
         NumOrdem.SetFocus;
      end;
   end;
end;

procedure TfCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.DataSet.Cancel;
   dscad.DataSet.Close;
   dsItens.DataSet.Close;
   action:=cafree;
end;

procedure TfCompra.CodPessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfCompra.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

procedure TfCompra.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfCompra.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfCompra.butPessoaClick(Sender: TObject);
begin
   procura(dm.Pessoa,'ABCDE%');
   vgcodigo:='';
   fPessoa:=TfPessoa.create(Self);
   fPessoa.butConf.Visible:=true;
   fPessoa.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
      dm.CompraCODPESSOA.Text:=vgcodigo;
      NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      Nome.SetFocus;
   end;
end;

procedure TfCompra.gradeDblClick(Sender: TObject);
begin
   fItensCompra:=TfItensCompra.create(self);
   if dm.ItensCompraQTDEITENS.Text <> '' then
      fItensCompra.NumItem.Text:=dm.ItensCompraQTDEITENS.Text
   else
      fItensCompra.NumItem.Text:='1';
   fItensCompra.show;
end;

procedure TfCompra.gradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
   begin
      if NumOrdem.Focused then
         close
      else
      begin
         NumOrdem.Enabled:=true;
         NumOrdem.SetFocus;
      end;
   end;

   if key = vk_Return then
   begin
      GradeDblClick(Sender);
      if dsItens.DataSet.IsEmpty then
         fItensCompra.CboLote.SetFocus;
   end;
end;

procedure TfCompra.gradeEnter(Sender: TObject);
begin
   fCompra.KeyPreview:=false;
end;

procedure TfCompra.gradeExit(Sender: TObject);
begin
   fCompra.KeyPreview:=true;
end;

procedure TfCompra.butSalvarClick(Sender: TObject);
begin
   try
      dm.IniTrans;
      GravaTab(dm.Compra);
      dm.GravaTrans;
      except begin
         mensagem('Grava��o Cancelada');
         dm.CancelaTrans;
      end;
   end;
end;

procedure TfCompra.butExcClick(Sender: TObject);
var vqtde: string[20];
begin
   if dm.ItensCompra.IsEmpty then
      exit;
   if dm.ItensCompra.RecordCount = 1 then
   begin
      mensagem('Clique em Excluir Tudo');
      exit;
   end;
   if confirma('Confirma a exclus�o deste �tem','N') = idNo then
      exit;
   try
      dm.IniTrans;
      dm.ItensCompra.Delete;
      GravaTab(dm.ItensCompra);
      dm.GravaTrans;
      except begin
         mensagem('Exclus�o Cancelada');
         dm.CancelaTrans;
      end;
   end;
end;

procedure TfCompra.butExcTudoClick(Sender: TObject);
var vqtde: string[20];
begin
   if dm.ItensCompra.IsEmpty then
      exit;
   if confirma('Confirma a exclus�o de Toda Compra','N') = idNo then
      exit;
   if confirma('Tem Certeza','N') = idNo then
      exit;
   try
      dm.IniTrans;
      dm.ItensCompra.First;
      while not dm.ItensCompra.Eof do
      begin
         dm.ItensCompra.Delete;
      end;
      dm.Compra.Delete;
      GravaTab(dm.ItensCompra);
      GravaTab(dm.Compra);
      dm.GravaTrans;
      NumOrdem.Enabled:=true;
      NumOrdem.SetFocus;
      except
        on E: Exception do
        begin
          dm.CancelaTrans;
          mensagem(PWideChar('Exclus�o Cancelada: ' + E.Message));
        end;
   end;
end;

procedure TfCompra.butPesqClick(Sender: TObject);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.DataSet.Cancel;
   fJCompra:=TfJCompra.create(Self);
   if fJCompra.showModal = mrOk then
   begin
      if not fjCompra.Pesq.IsEmpty then
      begin
         NumOrdem.Text:=fjCompra.PesqNUMORDEM.text;
         NumOrdem.Modified:=true;
         NumOrdemExit(Self);
         Codpessoa.setfocus;
      end;
   end;
   fjCompra.Pesq.close;
   fJCompra.free;
end;

end.

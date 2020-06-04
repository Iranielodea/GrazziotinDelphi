unit Uproposta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, Grids, DBGrids, ExtCtrls, DB,
  FMTBcd, SqlExpr;

type
  TfProposta = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    NumProposta: TMaskEdit;
    CodPessoa: TDBEdit;
    Nome: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    CodVendedor: TDBEdit;
    DescVendedor: TEdit;
    butVendedor: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Grade: TDBGrid;
    Label5: TLabel;
    PercDesconto: TDBEdit;
    Label11: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Panel1: TPanel;
    dsCad: TDataSource;
    dsItens: TDataSource;
    Pesq: TSQLDataSet;
    PesqNOME: TStringField;
    PesqVend: TSQLDataSet;
    PesqVendDESCVENDEDOR: TStringField;
    butSalvar: TBitBtn;
    butExc: TBitBtn;
    butExcTudo: TBitBtn;
    butPesq: TBitBtn;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    butExec: TBitBtn;
    butAnal: TBitBtn;
    procedure NumPropostaEnter(Sender: TObject);
    procedure NumPropostaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodPessoaEnter(Sender: TObject);
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure CodVendedorEnter(Sender: TObject);
    procedure CodVendedorExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DescVendedorExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure butVendedorClick(Sender: TObject);
    procedure PercDescontoExit(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure butExcTudoClick(Sender: TObject);
    procedure dsCadStateChange(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure butExecClick(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butPesqClick(Sender: TObject);
    procedure butAnalClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
    procedure pesquisaVendedor(Tipo: string);
  public
    { Public declarations }
  end;

var
  fProposta: TfProposta;

implementation

uses UDM, UDMBanco, UUtil, UPessoa, UVendedor, UItensProposta, URProposta,
  UJProposta;

{$R *.dfm}


procedure TfProposta.pesquisaVendedor(Tipo: string);
begin
   if (CodVendedor.Modified) or (DescVendedor.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODVENDEDOR,DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+CodVendedor.Text)
      else
         ComandoQuery(dm.Qsql,'select CODVENDEDOR,DESCVENDEDOR from TVENDEDO where DESCVENDEDOR like "'+DescVendedor.Text+'%"');
      ModoEdicao(dm.Proposta);
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.PropostaCODVENDEDOR.Clear;
         DescVendedor.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.PropostaCODVENDEDOR.Text:=dm.Qsql.fieldbyname('CODVENDEDOR').Text;
         DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Vendedor,DescVendedor.Text+'%');
         vgcodigo:='';
         fVendedor:=TfVendedor.create(Self);
         fVendedor.butConf.Visible:=true;
         fVendedor.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+vgcodigo);
            dm.PropostaCODVENDEDOR.Text:=vgcodigo;
            DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
            DescVendedor.SetFocus;
         end
         else begin
            dm.PropostaCODVENDEDOR.Clear;
            DescVendedor.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodVendedor.Modified:=false;
   DescVendedor.Modified:=false;
end;

procedure TfProposta.pesquisaPessoa(Tipo: string);
begin
   if (CodPessoa.Modified) or (Nome.Modified) then
   begin
      ModoEdicao(dm.Proposta);
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where CODPESSOA = '+CodPessoa.Text)
      else
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where NOME like "'+Nome.Text+'%" order by NOME');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.PropostaCodPessoa.Clear;
         Nome.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.PropostaCodPessoa.Text:=dm.Qsql.fieldbyname('CODPESSOA').Text;
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
            dm.PropostaCodPessoa.Text:=vgcodigo;
            NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
            Nome.SetFocus;
         end
         else begin
            dm.PropostaCodPessoa.Clear;
            Nome.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfProposta.NumPropostaEnter(Sender: TObject);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.dataset.Cancel;
   dsCad.dataset.Close;
   dsItens.dataset.Close;
   LimpaTela(fProposta);
   procura(dm.Control,'Proposta');
   NumProposta.Text:=dm.ControlCODIGO.Text;
   dm.Control.close;
   NumProposta.SelectAll;
end;

procedure TfProposta.NumPropostaExit(Sender: TObject);
begin
   procura(dm.Proposta,NumProposta.Text);
   if dm.Proposta.IsEmpty then
   begin
      dm.Proposta.Append;
      dm.PropostaNUMProposta.Text:=NumProposta.Text;
      dm.PropostaEMISSAO.AsDateTime:=date;
   end
   else begin
      if codpessoa.text <> '' then
      begin
         Pesq.Close;
         Pesq.Params[0].Text:=codpessoa.Text;
         Pesq.Open;
         Nome.Text:=PesqNOME.Text;
         Pesq.Close;
      end;
      if CodVendedor.Text <> '' then
      begin
         PesqVend.Close;
         PesqVend.Params[0].Text:=codVendedor.Text;
         PesqVend.Open;
         DescVendedor.Text:=PesqVendDESCVENDEDOR.Text;
         PesqVend.Close;
      end;

      //dm.Proposta.Edit;
   end;
   procura(dm.ItensProposta,NumProposta.Text);
   NumProposta.Enabled:=false;
end;

procedure TfProposta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.dataset.Cancel;
   dsCad.DataSet.Close;
   dsItens.DataSet.Close;
   action:=cafree;
end;

procedure TfProposta.CodPessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfProposta.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfProposta.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

procedure TfProposta.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfProposta.CodVendedorEnter(Sender: TObject);
begin
   CodVendedor.Modified:=false;
end;

procedure TfProposta.CodVendedorExit(Sender: TObject);
begin
   if CodVendedor.Modified=false then exit;
   if CodVendedor.Text <> '' then
      PesquisaVendedor('C')
   else
      DescVendedor.Clear;
end;

procedure TfProposta.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfProposta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
   begin
      if NumProposta.Focused then
         close
      else begin
         NumProposta.Enabled:=true;
         NumProposta.SetFocus;
      end;
   end;
end;

procedure TfProposta.DescVendedorExit(Sender: TObject);
begin
   if DescVendedor.Modified = false then exit;
   if DescVendedor.Text <> '' then
      PesquisaVendedor('D')
   else
      dm.ClienteCODVENDEDOR.Clear;
end;

procedure TfProposta.SpeedButton1Click(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Vendedor,'%');
   fVendedor:=TfVendedor.create(Self);
   fVendedor.butConf.Visible:=true;
   fVendedor.showModal;
   if vgcodigo <> '' then
   begin
      ModoEdicao(dm.Proposta);
      ComandoQuery(dm.Qsql,'select DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+vgcodigo);
      dm.PropostaCODVENDEDOR.Text:=vgcodigo;
      DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
      DescVendedor.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfProposta.butVendedorClick(Sender: TObject);
begin
   procura(dm.Pessoa,'ABCDE%');
   vgcodigo:='';
   fPessoa:=TfPessoa.create(Self);
   fPessoa.butConf.Visible:=true;
   fPessoa.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
      dm.PropostaCODPESSOA.Text:=vgcodigo;
      NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      Nome.SetFocus;
   end;
end;

procedure TfProposta.PercDescontoExit(Sender: TObject);
var vvalor,vvalor1: double;
begin
   dm.ItensProposta.DisableControls;
   dm.ItensProposta.First;
   vvalor:=0;
   vvalor1:=0;
   while not dm.ItensProposta.Eof do
   begin
      vvalor1:=vvalor1 + dm.ItensPropostaVALORUNIT.AsFloat;
      dm.ItensProposta.Edit;
      dm.ItensPropostaVALORTOTAL.AsFloat:=dm.ItensPropostaVALORUNIT.AsFloat -
         (dm.ItensPropostaVALORUNIT.AsFloat * dm.PropostaDESCONTO.AsFloat) / 100;
      dm.ItensProposta.Post;
      vvalor:=vvalor + dm.ItensPropostaVALORTOTAL.AsFloat;
      dm.ItensProposta.Next;
   end;
   if not (dm.Proposta.State in [dsedit,dsinsert]) then
      dm.Proposta.Edit;
   dm.PropostaTOTALBRUTO.AsFloat:=vvalor1;
   dm.PropostaVALORPROPOSTA.AsFloat:=vvalor;
   dm.ItensProposta.First;
   dm.ItensProposta.EnableControls;
end;

procedure TfProposta.GradeDblClick(Sender: TObject);
var vpos: integer;
begin
   vpos:=dm.ItensProposta.RecNo;
   if not (dm.Proposta.State in [dsedit,dsinsert]) then
      dm.Proposta.Edit;
   if dm.Proposta.State = dsInsert then
      dm.PropostaNUMPROPOSTA.Text:=NumProposta.Text;
   fItensProposta:=TfItensProposta.create(Self);
   fItensProposta.showModal;
   fItensProposta.free;
   PercDescontoExit(Self);
   if not (dm.Proposta.State in [dsedit,dsinsert]) then
      dm.Proposta.Edit;
   butSalvarClick(Sender);
   Grade.Setfocus;
   if vpos > 0 then
      dm.ItensProposta.RecNo:=vpos;
end;

procedure TfProposta.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfProposta.butSalvarClick(Sender: TObject);
begin
   dm.IniTrans;
   dm.PropostaNUMPROPOSTA.Text:=NumProposta.Text;
   dm.Proposta.Post;
   GravaTab(dm.ItensProposta);
   GravaTab(dm.Proposta);
   dm.GravaTrans;
end;

procedure TfProposta.butExcClick(Sender: TObject);
begin
   if dm.ItensProposta.RecordCount = 0 then
      exit;
   if Confirma('Deseja Excluir este ítem','N') = idNo then
      exit;
   if dm.ItensProposta.RecordCount = 1 then
   begin
      mensagem('Clique em Excluir tudo');
      exit;
   end;
   dm.IniTrans;
   dm.ItensProposta.Delete;
   GravaTab(dm.ItensProposta);
   dm.GravaTrans;
end;

procedure TfProposta.butExcTudoClick(Sender: TObject);
begin
   if Confirma('Deseja Excluir Tudo?','N') = idNo then
      exit;
   if Confirma('Tem Certeza?','N') = idNo then
      exit;
   dm.IniTrans;
   dm.ItensProposta.First;
   while not dm.ItensProposta.Eof do
      dm.ItensProposta.delete;
   dm.Proposta.Delete;
   GravaTab(dm.ItensProposta);
   GravaTab(dm.Proposta);
   dm.GravaTrans;
end;

procedure TfProposta.dsCadStateChange(Sender: TObject);
begin
   butSalvar.Enabled:=dsCad.State in [dsedit,dsinsert];
   butExc.Enabled:=dsCad.State in [dsBrowse];
   butExcTudo.Enabled:=dsCad.State in [dsBrowse];
   butImprimir.Enabled:=dsCad.State in [dsBrowse];
   butExec.Enabled:=dsCad.State in [dsBrowse];
   butAnal.Enabled:=dsCad.State in [dsBrowse];
end;

procedure TfProposta.butImprimirClick(Sender: TObject);
begin
   frProposta:=TfrProposta.create(Self);
   with frProposta do
   begin
      Proposta.close;
      Qproposta.params[0].text:=NumProposta.text;
      Proposta.Open;
      RelProposta.print;
      proposta.close;
   end;

{
GROUP BY
 TPessoa.Nome,
 TPessoa.CodCidade,
 TPessoa.CodPessoa,
 TPessoa.CodBairro,
 TPessoa.Fone1,
 TPessoa.Contato,
 TPessoa.Rua,
 TPessoa.Numero,
 TPessoa.Complemento,
 TVendedo.DescVendedor,
 TVendedo.Fone,
 TVendedo.Fone2,
 TPropost.NumProposta ,
 TPropost.CondPagto ,
 TPropost.Entrega,
 TPropost.Validade,
 TPropost.Emissao,
 TPropost.TotalBruto,
 TPropost.ValorProposta,
 TIPropos.Capacidade,
 TIPropos.CodManutencao,
 TIPropos.ValorTotal,
 TIPropos.ValorUnit,
 TIPropos.CodNivel,
 TBairro.DescBairro,
 TCidade.DescCidade,
 TCidade.Uf,
 TLocal.DescLocal
 }
end;

procedure TfProposta.butExecClick(Sender: TObject);
begin
   frProposta:=TfrProposta.create(Self);
   with frProposta do
   begin
      Exec.close;
      QExec.params[0].text:=NumProposta.text;
      RelExec.print;
      Exec.close;
   end;
end;

procedure TfProposta.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Return then
      GradeDblClick(Sender);
end;

procedure TfProposta.butPesqClick(Sender: TObject);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.DataSet.Cancel;
   fJProposta:=TfJProposta.create(Self);
   if fJProposta.showModal = mrOk then
   begin
      if not fjProposta.Pesq.IsEmpty then
      begin
         NumProposta.Text:=fjProposta.PesqNUMProposta.text;
         NumProposta.Modified:=true;
         NumPropostaExit(Self);
         Codpessoa.setfocus;
      end;
   end;
   fjProposta.Pesq.close;
   fJProposta.free;
end;

procedure TfProposta.butAnalClick(Sender: TObject);
begin
   frProposta:=TfrProposta.create(Self);
   with frProposta do
   begin
      Analise.close;
      QAnalise.params[0].text:=NumProposta.text;
      RelAnalitica.print;
      Analise.close;
   end;
end;

end.

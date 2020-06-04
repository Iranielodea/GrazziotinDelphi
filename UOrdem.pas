unit UOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, FMTBcd, Grids, DBGrids, DB, SqlExpr,
  Buttons, ExtCtrls;

type
  TfOrdem = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NumOrdem: TMaskEdit;
    CodPessoa: TDBEdit;
    Nome: TEdit;
    Data: TDBEdit;
    Pesq: TSQLQuery;
    PesqNOME: TStringField;
    dsCad: TDataSource;
    dsItens: TDataSource;
    Grade: TDBGrid;
    butPessoa: TSpeedButton;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    butNovo: TBitBtn;
    butSalvar: TBitBtn;
    butExc: TBitBtn;
    butExcTudo: TBitBtn;
    butPesq: TBitBtn;
    butImprimir: TBitBtn;
    btnEtiqueta: TBitBtn;
    butSair: TBitBtn;
    btnInspTec: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure NumOrdemEnter(Sender: TObject);
    procedure NumOrdemExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsCadStateChange(Sender: TObject);
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure GradeEnter(Sender: TObject);
    procedure GradeExit(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodPessoaEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure butExcClick(Sender: TObject);
    procedure butExcTudoClick(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure butNovoClick(Sender: TObject);
    procedure butSalvarClick(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure butPesqClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEtiquetaClick(Sender: TObject);
    procedure btnInspTecClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
    procedure BloqueiaPessoa(inTipo: boolean);
    procedure Existe;
    procedure PesquisarOrdem(Id: String);
    procedure ProximaOrdem;
    procedure Consiste;
  public
    { Public declarations }
  end;

var
  fOrdem: TfOrdem;

implementation

uses UUtil, UDMBanco, UDM, UPessoa, UItensOrdem, UROrdemServico, UJOrdem,
  UUtilServico, UClasServicoNegocio, uEtiqueta, UROrdemServico2, UROrdemServicoInspecao;

{$R *.dfm}

procedure TfOrdem.pesquisaPessoa(Tipo: string);
begin
   if (CodPessoa.Modified) or (Nome.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where CODPESSOA = '+CodPessoa.Text)
      else
         ComandoQuery(dm.Qsql,'select CODPESSOA,NOME from TPESSOA where NOME like "'+Nome.Text+'%" order by NOME');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.OrdemCodPessoa.Clear;
         Nome.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.OrdemCodPessoa.Text:=dm.Qsql.fieldbyname('CODPESSOA').Text;
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
            dm.OrdemCodPessoa.Text:=vgcodigo;
            NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
            Nome.SetFocus;
         end
         else begin
            dm.OrdemCodPessoa.Clear;
            Nome.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfOrdem.PesquisarOrdem(Id: String);
var
   vlNumOrdem: integer;
begin
   try
      vlNumOrdem := StrToInt(Id);
   except
      vlNumOrdem := 0;
   end;

   procura(dm.Ordem, IntToStr(vlNumOrdem));
   Procura(dm.ItensOrdem, IntToStr(vlNumOrdem));

end;

procedure TfOrdem.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfOrdem.NumOrdemEnter(Sender: TObject);
begin
   if dm.Ordem.State in [dsedit,dsinsert] then
      dm.Ordem.Cancel;
   LimpaTela(fordem);
   NumOrdem.Enabled := True;
   dm.Ordem.Close;
   dm.ItensOrdem.Close;

   ProximaOrdem;
   BloqueiaPessoa(True);
   NumOrdem.SelectAll;
end;

procedure TfOrdem.NumOrdemExit(Sender: TObject);
begin
   if NumOrdem.Modified then
   begin
      try
         strToInt(NumOrdem.Text);
      except
         NumOrdem.Text := '0';
      end;

      procura(dm.Ordem,NumOrdem.Text);
      if dm.Ordem.IsEmpty then
      begin
         Mensagem('Ordem de Serviço não Encontrada!');
         NumOrdem.SetFocus;
      end
      else begin
         NumOrdem.Enabled := False;

         (*TODO: extracted code
         Pesq.Close;
         Pesq.Params[0].Text:=codpessoa.Text;
         Pesq.Open;
         Nome.Text:=PesqNOME.Text;
         Pesq.Close;
         *)
         Existe;

         procura(dm.ItensOrdem,NumOrdem.Text);
      end;
   end;
end;

procedure TfOrdem.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfOrdem.dsCadStateChange(Sender: TObject);
begin
   butNovo.Enabled:=dsCad.State in [dsBrowse,dsInactive];
   butPesq.Enabled:=dsCad.State in [dsBrowse,dsInactive];
   butExc.Enabled:=dsCad.State in [dsBrowse,dsEdit];
   butImprimir.Enabled:=dsCad.State in [dsBrowse,dsEdit];
   butExcTudo.Enabled:=dsCad.State in [dsBrowse,dsEdit];
   butSalvar.Enabled:=dsCad.State in [dsedit,dsinsert];
end;

procedure TfOrdem.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified then
   begin
      if CodPessoa.Text <> '' then
         PesquisaPessoa('C')
      else
         Nome.Clear;
   end;
   CodPessoa.Modified := False;
   Nome.Modified := False;
end;

procedure TfOrdem.Consiste;
begin
  if (dsCad.DataSet.Active) and (dm.OrdemDATAORDEM.AsFloat = 0) then
    raise Exception.Create('Informe a Data!');

  if Trim(NumOrdem.Text) = '' then
    raise Exception.Create('Informe o Número da Ordem!');

  if Trim(CodPessoa.Text) = '' then
    raise Exception.Create('Informe o Cliente!');

end;

procedure TfOrdem.NomeExit(Sender: TObject);
begin
   if Nome.Modified then
   begin
      ModoEdicao(dm.Ordem);
      if Nome.Text <> '' then
         PesquisaPessoa('D')
      else
         Codpessoa.Clear;
   end;
   CodPessoa.Modified := False;
   Nome.Modified := False;
end;

procedure TfOrdem.GradeDblClick(Sender: TObject);
begin
   if trim(NumOrdem.text) = '' then
   begin
      mensagem('informe o Número da Ordem');
      exit;
   end;

   if trim(CodPessoa.text) = '' then
   begin
      mensagem('informe o Cliente');
      exit;
   end;

   if trim(Data.text) = '' then
   begin
      mensagem('informe a Data');
      exit;
   end;

   fItensOrdem:=TfItensOrdem.create(Self, False);
   fItensOrdem.show;

   BloqueiaPessoa(True);
end;

procedure TfOrdem.GradeEnter(Sender: TObject);
begin
   fOrdem.KeyPreview:=false;
end;

procedure TfOrdem.GradeExit(Sender: TObject);
begin
   fOrdem.KeyPreview:=true;
end;

procedure TfOrdem.GradeKeyDown(Sender: TObject; var Key: Word;
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
      Consiste;

      GradeDblClick(Sender);
      if dsItens.DataSet.IsEmpty then
         fItensOrdem.Serie.SetFocus;
   end;
end;

procedure TfOrdem.CodPessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfOrdem.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

procedure TfOrdem.butPessoaClick(Sender: TObject);
begin
   procura(dm.Pessoa,'ABCDE%');
   vgcodigo:='';
   fPessoa:=TfPessoa.create(Self);
   fPessoa.butConf.Visible:=true;
   fPessoa.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select NOME from TPESSOA where CODPESSOA = '+vgcodigo);
      ModoEdicao(dm.Ordem);
      dm.OrdemCODPESSOA.Text:=vgcodigo;
      NOME.Text:=dm.Qsql.fieldbyname('NOME').Text;
      Nome.SetFocus;
   end;

   CodPessoa.Modified := False;
   Nome.Modified := False;

end;

procedure TfOrdem.btnEtiquetaClick(Sender: TObject);
var
  form: TfEtiqueta;
begin
  if DM.Ordem.State = dsInactive then
    Exit;

  if dm.Ordem.RecordCount = 0 then
    Exit;

  form  := TfEtiqueta.Create(dm.OrdemNUMORDEM.AsInteger);
  form.ShowModal;
  form.Free;
end;

procedure TfOrdem.btnInspTecClick(Sender: TObject);
begin
   fROrdemServicoInspecao := TfROrdemServicoInspecao.Create(Self);
   fROrdemServicoInspecao.Impressao(StrToIntDef(NumOrdem.Text, 0));
   fROrdemServicoInspecao.free;
end;

procedure TfOrdem.butExcClick(Sender: TObject);
var vqtde: string[20];
begin
   if dm.ItensOrdem.IsEmpty then
      exit;
   if dm.ItensOrdem.RecordCount = 1 then
   begin
      mensagem('Clique em Excluir Tudo');
      exit;
   end;
   if confirma('Confirma a exclusão deste Ítem','N') = idNo then
      exit;
   try
      dm.IniTrans;

//      dmBanco.BancoDados.ExecuteDirect('delete from TTABPECA where NUMSERVICO = '+NumOrdem.Text+' and SERIE = "'+dm.ItensOrdemSERIE.Text+'"');

      fUtilServico:=TfUtilServico.Create(nil);
      fUtilServico.UltimoCilindro(CodPessoa.Text,dm.ItensOrdemSERIE.Text,NumOrdem.Text);
      fUtilServico.Free;

      dm.ItensOrdem.Delete;
      GravaTab(dm.ItensOrdem);
      dm.GravaTrans;
      except begin
         dm.CancelaTrans;
         mensagem('Exclusão Cancelada');
      end;
   end;
end;

procedure TfOrdem.butExcTudoClick(Sender: TObject);
var vqtde: string[20];
begin
   if dm.ItensOrdem.IsEmpty then
      exit;
   if confirma('Confirma a exclusão de Toda Ordem','N') = idNo then
      exit;
   if confirma('Tem Certeza','N') = idNo then
      exit;
   try
      fUtilServico:=TfUtilServico.Create(nil);
      dm.IniTrans;
      dm.ItensOrdem.First;
      while not dm.ItensOrdem.Eof do
      begin

         fUtilServico.UltimoCilindro(CodPessoa.Text,dm.ItensOrdemSERIE.Text,NumOrdem.Text);

         dm.ItensOrdem.Delete;
      end;
      fUtilServico.Free;

//      dmBanco.BancoDados.ExecuteDirect('delete from TTABPECA where NUMSERVICO = '+NumOrdem.Text);
      dm.Ordem.delete;
      GravaTab(dm.ItensOrdem);
      GravaTab(dm.Ordem);
      dm.GravaTrans;
      NumOrdem.Enabled:=true;
      NumOrdem.SetFocus;
      except begin
         dm.CancelaTrans;
         mensagem('Exclusão Cancelada');
      end;
   end;
end;

procedure TfOrdem.butImprimirClick(Sender: TObject);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.DataSet.Cancel;
   if dsCad.DataSet.IsEmpty then
   begin
      mensagem('Não há ítens');
      exit;
   end;

   fROrdemServico2 := TfROrdemServico2.Create(Self);
   fROrdemServico2.Impressao(StrToIntDef(NumOrdem.Text, 0));
   frOrdemServico2.free;

//   frOrdemServico1:=TfrOrdemServico1.create(Self);
//   fROrdemServico1.Impressao(StrToIntDef(NumOrdem.Text, 0));
//   frOrdemServico1.free;
end;

procedure TfOrdem.butSalvarClick(Sender: TObject);
begin
   if dm.ItensOrdem.IsEmpty then
      exit;
   if dm.Ordem.State in [dsedit,dsinsert] then
   begin
      try
         dm.IniTrans;
         dm.ItensOrdem.DisableControls;
         dm.ItensOrdem.First;
         while not dm.ItensOrdem.Eof do
         begin
            if dm.ItensOrdemCODPESSOA.Text <> dm.OrdemCODPESSOA.Text then
            begin
               dm.ItensOrdem.Edit;
               dm.ItensOrdemCODPESSOA.Text:=dm.OrdemCODPESSOA.Text;
               dm.ItensOrdem.Post;
            end;
            dm.ItensOrdem.Next;
         end;
         dm.ItensOrdem.First;
         dm.ItensOrdem.EnableControls;
         GravaTab(dm.ItensOrdem);
         GravaTab(dm.Ordem);
         dm.GravaTrans;
         except begin
            mensagem('Exclusão Cancelada');
            dm.CancelaTrans;
         end;
      end;
   end;
end;

procedure TfOrdem.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfOrdem.butPesqClick(Sender: TObject);
begin
   if dsCad.State in [dsedit,dsinsert] then
      dsCad.DataSet.Cancel;
   fJOrdem:=TfJOrdem.create(Self);
   if fJOrdem.showModal = mrOk then
   begin
      if not fjOrdem.Pesq.IsEmpty then
      begin
         NumOrdem.Text:=fjOrdem.PesqNUMORDEM.text;
         NumOrdem.Modified:=true;
         NumOrdemExit(Self);
         Data.setfocus;
      end;
   end;
   fjOrdem.Pesq.close;
   fJOrdem.free;
end;

procedure TfOrdem.BloqueiaPessoa(inTipo: boolean);
begin
   CodPessoa.ReadOnly := (inTipo);
   Nome.ReadOnly :=  (inTipo);
   butPessoa.Enabled := not (inTipo);
end;

procedure TfOrdem.butNovoClick(Sender: TObject);
begin
   LimpaTela(Self);
   BloqueiaPessoa(False);
   ProximaOrdem;
   PesquisarOrdem(NumOrdem.Text);
   if dm.Ordem.IsEmpty then
   begin
      dm.Ordem.Append;
      dm.OrdemDATAORDEM.AsDateTime := Date;
   end
   else
      Existe();

   CodPessoa.SetFocus;
end;

procedure TfOrdem.Existe;
begin
   Pesq.Close;
   Pesq.Params[0].AsInteger := StrToIntDef(codpessoa.Text, 0);
   Pesq.Open;
   Nome.Text:=PesqNOME.Text;
   Pesq.Close;
end;

procedure TfOrdem.FormShow(Sender: TObject);
var
  iPos: Integer;
  iFixo: Integer;
begin
  iFixo := 25;
  butNovo.Top := 5;
  iPos := 30;
  butSalvar.Top := iPos;
  iPos := iPos + iFixo;

  butExc.Top := iPos;
  iPos := iPos + iFixo;

  butExcTudo.Top := iPos;
  iPos := iPos + iFixo;

  butPesq.Top := iPos;
  iPos := iPos + iFixo;

  butImprimir.Top := iPos;
  iPos := iPos + iFixo;

  btnInspTec.Top := iPos;
  iPos := iPos + iFixo;

  btnEtiqueta.Top := iPos;
  iPos := iPos + iFixo;

  butSair.Top := iPos;

   NumOrdem.SetFocus;
   NumOrdem.Enabled := True;
end;

procedure TfOrdem.ProximaOrdem;
var
   obj: TNegocioServico;
begin
   try
      obj := TNegocioServico.Create;
      NumOrdem.Text := IntToStr(obj.ProximoId);
   finally
      FreeAndNil(obj);
   end;
//   procura(dm.Control,'Ordem');
//   NUMORDEM.Text:=dm.ControlCODIGO.Text;
//   dm.Control.close;
end;

end.

unit UIVencimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TfIVencimento = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    lblAtivo: TLabel;
    butPessoa: TSpeedButton;
    butCidade: TSpeedButton;
    Label5: TLabel;
    butVendedor: TSpeedButton;
    Dataini: TMaskEdit;
    Datafin: TMaskEdit;
    CodPessoa: TMaskEdit;
    Nome: TEdit;
    GroupBox1: TGroupBox;
    RGeral: TRadioButton;
    Rcidade: TRadioButton;
    Panel1: TPanel;
    butImprimir: TBitBtn;
    butSair: TBitBtn;
    butResumo: TBitBtn;
    CodCidade: TMaskEdit;
    DescCidade: TEdit;
    CboAtivo: TComboBox;
    CodVendedor: TMaskEdit;
    DescVendedor: TEdit;
    chkInspecao: TCheckBox;
    procedure butSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodPessoaExit(Sender: TObject);
    procedure NomeExit(Sender: TObject);
    procedure butPessoaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodPessoaEnter(Sender: TObject);
    procedure NomeEnter(Sender: TObject);
    procedure CodCidadeEnter(Sender: TObject);
    procedure DescCidadeEnter(Sender: TObject);
    procedure CodVendedorEnter(Sender: TObject);
    procedure DescVendedorEnter(Sender: TObject);
    procedure CodCidadeExit(Sender: TObject);
    procedure DescCidadeExit(Sender: TObject);
    procedure butCidadeClick(Sender: TObject);
    procedure CodVendedorExit(Sender: TObject);
    procedure DescVendedorExit(Sender: TObject);
    procedure butVendedorClick(Sender: TObject);
    procedure butImprimirClick(Sender: TObject);
    procedure butResumoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkInspecaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaPessoa(Tipo: string);
    procedure pesquisaCIDADE(Tipo: string);
    procedure pesquisaVendedor(Tipo: string);
    procedure ImpressaoInspecao(AInstrucaoSQL: string);
  public
    { Public declarations }
  end;

var
  fIVencimento: TfIVencimento;

implementation

uses UDM, UPessoa, UUtil, UCidade, UVendedor, URVencimento, UrResVencimento;

{$R *.dfm}

procedure TfIVencimento.pesquisaVendedor(Tipo: string);
begin
   if (CodVendedor.Modified) or (DescVendedor.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODVENDEDOR,DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+CodVendedor.Text)
      else
         ComandoQuery(dm.Qsql,'select CODVENDEDOR,DESCVENDEDOR from TVENDEDO where DESCVENDEDOR like "'+DescVendedor.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         CODVENDEDOR.Clear;
         DescVendedor.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         CODVENDEDOR.Text:=dm.Qsql.fieldbyname('CODVENDEDOR').Text;
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
            CODVENDEDOR.Text:=vgcodigo;
            DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
            DescVendedor.SetFocus;
         end
         else begin
            CODVENDEDOR.Clear;
            DescVendedor.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfIVencimento.pesquisaCIDADE(Tipo: string);
begin
   if (CodCIDADE.Modified) or (DescCIDADE.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODCIDADE,DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+CodCIDADE.Text)
      else
         ComandoQuery(dm.Qsql,'select CODCIDADE,DESCCIDADE,CEP,UF from TCIDADE where DESCCIDADE like "'+DescCIDADE.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         CODCIDADE.Clear;
         DescCIDADE.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         CODCIDADE.Text:=dm.Qsql.fieldbyname('CODCIDADE').Text;
         DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.CIDADE,DescCIDADE.Text+'%');
         vgcodigo:='';
         fCIDADE:=TfCIDADE.create(Self);
         fCIDADE.butConf.Visible:=true;
         fCIDADE.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+vgcodigo);
            CODCIDADE.Text:=vgcodigo;
            DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
            DescCIDADE.SetFocus;
         end
         else begin
            CODCIDADE.clear;
            DESCCIDADE.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
end;

procedure TfIVencimento.pesquisaPessoa(Tipo: string);
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

procedure TfIVencimento.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfIVencimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfIVencimento.ImpressaoInspecao(AInstrucaoSQL: string);
begin
  frResVencimento:=TfrResVencimento.create(Self);
  with frResVencimento do
  begin
    if RGeral.Checked then
    begin
       cdsInspecao.close;
       QInspecao.SQL.Add(AInstrucaoSQL);
       QInspecao.SQL.Add(' GROUP BY');
       QInspecao.SQL.Add(' C.VENCTOCARGA,');
       QInspecao.SQL.Add(' P.FONE1,');
       QInspecao.SQL.Add(' P.CONTATO,');
       QInspecao.SQL.Add(' P.NOME,');
       QInspecao.SQL.Add(' C.CODPESSOA');
       QInspecao.SQL.Add(' order by P.NOME');

       QInspecao.Params[0].AsDate:=strtodate(dataini.Text);
       QInspecao.Params[1].AsDate:=strtodate(datafin.Text);
       cdsInspecao.Open;

       lblInspecaoData.Caption:='Vencto de: '+dataini.Text+' até: '+datafin.Text;
       lblInspecaoVend.caption:='Vendedor: '+DescVendedor.Text;
       TamanhoPagina(RelInspecao);
       RelInspecao.Print;
       cdsInspecao.Close;
    end
    else begin
       cdsInspecaoCidade.close;
       QInspecaoCidade.SQL.Add(AInstrucaoSQL);
       QInspecaoCidade.SQL.Add(' group by');
       QInspecaoCidade.SQL.Add(' C.VENCTOCARGA,');
       QInspecaoCidade.SQL.Add(' P.FONE1,');
       QInspecaoCidade.SQL.Add(' P.CONTATO,');
       QInspecaoCidade.SQL.Add(' P.NOME,');
       QInspecaoCidade.SQL.Add(' P.CODCIDADE,');
       QInspecaoCidade.SQL.Add(' CI.DESCCIDADE,');
       QInspecaoCidade.SQL.Add(' C.CODPESSOA');
       QInspecaoCidade.SQL.Add(' order by CI.DESCCIDADE, P.NOME');

       QInspecaoCidade.Params[0].AsDate:=strtodate(dataini.Text);
       QInspecaoCidade.Params[1].AsDate:=strtodate(datafin.Text);
       cdsInspecaoCidade.Open;

       lblInspecaoCidadeData.Caption:='Vencto de: '+dataini.Text+' até: '+datafin.Text;
       lblInspecaoCidadeVend.caption:='Vendedor: '+DescVendedor.Text;
       RelInspecaoCidade.Print;
       cdsInspecaoCidade.Close;
    end;
  end;
  FrResVencimento.Free;
end;

procedure TfIVencimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfIVencimento.CodPessoaExit(Sender: TObject);
begin
   if CodPessoa.Modified = false then exit;
   if CodPessoa.Text <> '' then
      PesquisaPessoa('C')
   else
      Nome.Clear;
end;

procedure TfIVencimento.NomeExit(Sender: TObject);
begin
   if Nome.Modified = false then exit;
   if Nome.Text <> '' then
      PesquisaPessoa('D')
   else
      Codpessoa.Clear;
end;

procedure TfIVencimento.butPessoaClick(Sender: TObject);
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

procedure TfIVencimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TfIVencimento.CodPessoaEnter(Sender: TObject);
begin
   CodPessoa.Modified:=false;
end;

procedure TfIVencimento.NomeEnter(Sender: TObject);
begin
   Nome.Modified:=false;
end;

procedure TfIVencimento.CodCidadeEnter(Sender: TObject);
begin
   CodCidade.Modified:=false;
end;

procedure TfIVencimento.DescCidadeEnter(Sender: TObject);
begin
   DescCidade.Modified:=false;
end;

procedure TfIVencimento.CodVendedorEnter(Sender: TObject);
begin
   CodVendedor.Modified:=false;
end;

procedure TfIVencimento.DescVendedorEnter(Sender: TObject);
begin
   DescVendedor.Modified:=false;
end;

procedure TfIVencimento.CodCidadeExit(Sender: TObject);
begin
   if Codcidade.Modified = false then exit;
   if CodCidade.Text <> '' then
      PesquisaCidade('C')
   else
      DescCidade.Clear;
end;

procedure TfIVencimento.DescCidadeExit(Sender: TObject);
begin
   if DescCidade.Modified = false then exit;
   if DescCidade.Text <> '' then
      PesquisaCidade('D')
   else
      CODCIDADE.Clear;
end;

procedure TfIVencimento.butCidadeClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.CIDADE,'%');
   fCIDADE:=TfCIDADE.create(Self);
   fCIDADE.butConf.Visible:=true;
   fCIDADE.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+vgcodigo);
      CODCIDADE.Text:=vgcodigo;
      DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
      DescCIDADE.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfIVencimento.CodVendedorExit(Sender: TObject);
begin
   if Codvendedor.Modified = false then exit;
   if CodVendedor.Text <> '' then
      PesquisaVendedor('C')
   else
      DescVendedor.Clear;
end;

procedure TfIVencimento.DescVendedorExit(Sender: TObject);
begin
   if DescVendedor.Modified = false then exit;
   if DescVendedor.Text <> '' then
      PesquisaVendedor('D')
   else
      CODVENDEDOR.Clear;
end;

procedure TfIVencimento.butVendedorClick(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Vendedor,'%');
   fVendedor:=TfVendedor.create(Self);
   fVendedor.butConf.Visible:=true;
   fVendedor.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCVENDEDOR from TVENDEDO where CODVENDEDOR = '+vgcodigo);
      CODVENDEDOR.Text:=vgcodigo;
      DESCVENDEDOR.Text:=dm.Qsql.fieldbyname('DESCVENDEDOR').Text;
      DescVendedor.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfIVencimento.chkInspecaoClick(Sender: TObject);
begin
  lblAtivo.Visible := not (chkInspecao.Checked);
  CboAtivo.Visible := not (chkInspecao.Checked);
end;

procedure TfIVencimento.butImprimirClick(Sender: TObject);
var vsql: string;
begin
   vsql:='';
   if CodPessoa.Text <> '' then
      vsql:=vsql + ' and C.CODPESSOA = '+Codpessoa.Text;
   if CodVendedor.Text <> '' then
      vsql:=vsql + ' and P.CODVENDEDOR = '+Codvendedor.Text;
   if Codcidade.Text <> '' then
      vsql:=vsql + ' and P.CODCIDADE = '+Codcidade.Text;

   if chkInspecao.Checked = False then
   begin
     if uppercase(CboAtivo.Text) <> 'TODOS' then
        vsql:=vsql + ' and C.SITUACAO = "'+copy(CboAtivo.Text,1,1)+'"';
   end;

   if (rGeral.Checked) or (rCidade.Checked) then
   begin
      if rGeral.Checked then
         vsql:=vsql + ' order by P.NOME, C.VENCTOCARGA, C.NUMERO'
      else
         vsql:=vsql + ' order by CI.DESCCIDADE, P.NOME, C.NUMERO';
      frVencimento:=TfrVencimento.create(Self);
      with frVencimento do
      begin
         if chkInspecao.Checked then
         begin
           cdsInspecao.close;
           dtInspecao.SQL.Add(vsql);
           dtInspecao.Params[0].AsDate:=strtodate(dataini.Text);
           dtInspecao.Params[1].AsDate:=strtodate(datafin.Text);
           cdsInspecao.Open;
           lblInspecaoVend.caption:='Vendedor: '+DescVendedor.Text;
           lblInspecaoData.Caption:='Vencto de: '+dataini.Text+' até: '+datafin.Text;
           TamanhoPagina(RelInspecao);
           RelInspecao.Print;
           cdsInspecao.Close;
         end
         else begin
           Ordem.close;
           dtOrdem.SQL.Add(vsql);
           dtOrdem.Params[0].AsDate:=strtodate(dataini.Text);
           dtOrdem.Params[1].AsDate:=strtodate(datafin.Text);
           Ordem.Open;
           lblVend.caption:='Vendedor: '+DescVendedor.Text;
           lblData.Caption:='Vencto de: '+dataini.Text+' até: '+datafin.Text;
           TamanhoPagina(RelOrdem);
           RelOrdem.Print;
           Ordem.Close;
         end;
         free;
      end;
   end;
end;

procedure TfIVencimento.butResumoClick(Sender: TObject);
var vsql: string;
begin
   vsql:='';
   if CodPessoa.Text <> '' then
      vsql:=vsql + ' and C.CODPESSOA = '+Codpessoa.Text;
   if CodCidade.Text <> '' then
      vsql:=vsql + ' and P.CODCIDADE = '+CodCidade.Text;
   if CodVendedor.Text <> '' then
      vsql:=vsql + ' and P.CODVENDEDOR = '+Codvendedor.Text;

   if chkInspecao.Checked = False then
   begin
     if copy(CboAtivo.Text,1,1) <> 'T' then
        vsql:=vsql + ' and C.SITUACAO = "'+copy(CboATivo.text,1,1)+'"';
     if uppercase(CboAtivo.Text) <> 'TODOS' then
        vsql:=vsql + ' and C.SITUACAO = "'+copy(CboAtivo.Text,1,1)+'"';
   end;

   if chkInspecao.Checked then
   begin
      ImpressaoInspecao(vsql);
      Exit;
   end;

  frResVencimento:=TfrResVencimento.create(Self);
  with frResVencimento do
  begin
    if rGeral.Checked then
    begin
       Resumo.close;
       QResumo.SQL.Add(vsql);
       Qresumo.SQL.Add(' GROUP BY');
       Qresumo.SQL.Add(' C.VENCTOCARGA,');
       Qresumo.SQL.Add(' P.FONE1,');
       Qresumo.SQL.Add(' P.CONTATO,');
       Qresumo.SQL.Add(' P.NOME,');
       Qresumo.SQL.Add(' C.CODPESSOA');
       Qresumo.SQL.Add(' order by P.NOME');


       QResumo.Params[0].AsDate:=strtodate(dataini.Text);
       QResumo.Params[1].AsDate:=strtodate(datafin.Text);
       Resumo.Open;
       lblData.Caption:='Vencto de: '+dataini.Text+' até: '+datafin.Text;
       lblVend.caption:='Vendedor: '+DescVendedor.Text;
       lblVend1.caption:='Vendedor: '+DescVendedor.Text;
       TamanhoPagina(relResumo);
       relResumo.Print;
       Resumo.Close;
       free;
    end;
    if rcidade.Checked then
    begin
       ResumoC.close;
       QResumoC.SQL.Add(vsql);
       QResumoC.SQL.Add(' group by');
       QResumoC.SQL.Add(' C.VENCTOCARGA,');
       QResumoC.SQL.Add(' P.FONE1,');
       QResumoC.SQL.Add(' P.CONTATO,');
       QResumoC.SQL.Add(' P.NOME,');
       QResumoC.SQL.Add(' P.CODCIDADE,');
       QResumoC.SQL.Add(' CI.DESCCIDADE,');
       QResumoC.SQL.Add(' C.CODPESSOA');
       QResumoC.SQL.Add(' order by CI.DESCCIDADE, P.NOME');

       QResumoC.Params[0].AsDate:=strtodate(dataini.Text);
       QResumoC.Params[1].AsDate:=strtodate(datafin.Text);
       ResumoC.Open;
       lblDataCid.Caption:='Vencto de: '+dataini.Text+' até: '+datafin.Text;
       lblVend.caption:='Vendedor: '+DescVendedor.Text;
       lblVend1.caption:='Vendedor: '+DescVendedor.Text;
       relResumoC.Print;
       ResumoC.Close;
       free;
    end;
   end;
end;

procedure TfIVencimento.FormCreate(Sender: TObject);
begin
   dataini.text:=datetostr(date);
   Datafin.text:=datetostr(date);
end;

end.

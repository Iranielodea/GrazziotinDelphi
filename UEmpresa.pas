unit UEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, ComCtrls, StdCtrls, DBCtrls,
  Mask, DB, FMTBcd, SqlExpr, DBClient;

type
  TfEmpresa = class(TForm)
    PageControl1: TPageControl;
    sheetLista: TTabSheet;
    sheetCad: TTabSheet;
    Panel1: TPanel;
    Grade: TDBGrid;
    dsCad: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Codigo: TDBEdit;
    Label7: TLabel;
    Nome: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label5: TLabel;
    CodBairro: TDBEdit;
    DescBairro: TEdit;
    SpeedButton6: TSpeedButton;
    CodCidade: TDBEdit;
    Label11: TLabel;
    DescCidade: TEdit;
    SpeedButton8: TSpeedButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    UF: TEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    butOk: TBitBtn;
    butCancelar: TBitBtn;
    dtPesq: TSQLDataSet;
    dtPesqDESCBAIRRO: TStringField;
    dtPesqDESCCIDADE: TStringField;
    dtPesqUF: TStringField;
    butInc: TBitBtn;
    butExc: TBitBtn;
    butPesq: TBitBtn;
    butFechar: TBitBtn;
    butAlt: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure butFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure butIncClick(Sender: TObject);
    procedure butCancelarClick(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure butExcClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butPesqClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodBairroExit(Sender: TObject);
    procedure DescBairroExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure butAltClick(Sender: TObject);
    procedure CodCidadeExit(Sender: TObject);
    procedure DescCidadeExit(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisaBairro(Tipo: string);
    procedure pesquisaCidade(Tipo: string);
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses UDM, UDMBanco, UUtil, UBairro, UPesquisa, UCidade;

{$R *.dfm}

procedure TfEmpresa.pesquisaBairro(Tipo: string);
begin
   if (CodBairro.Modified) or (DescBairro.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODBAIRRO,DESCBAIRRO from TBAIRRO where CODBAIRRO = '+CodBairro.Text)
      else
         ComandoQuery(dm.Qsql,'select CODBAIRRO,DESCBAIRRO from TBAIRRO where DESCBAIRRO like "'+DescBairro.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.EmpresaCODBAIRRO.Clear;
         DescBairro.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.EmpresaCODBAIRRO.Text:=dm.Qsql.fieldbyname('CODBAIRRO').Text;
         DESCBAIRRO.Text:=dm.Qsql.fieldbyname('DESCBAIRRO').Text;
      end;
      if dm.Qsql.RecordCount > 1 then
      begin
         procura(dm.Bairro,DescBairro.Text+'%');
         vgcodigo:='';
         fBairro:=TfBairro.create(Self);
         fBairro.butConf.Visible:=true;
         fBairro.showModal;
         if vgcodigo <> '' then
         begin
            ComandoQuery(dm.Qsql,'select DESCBAIRRO from TBAIRRO where CODBAIRRO = '+vgcodigo);
            dm.EmpresaCODBAIRRO.Text:=vgcodigo;
            DESCBAIRRO.Text:=dm.Qsql.fieldbyname('DESCBAIRRO').Text;
            DescBairro.SetFocus;
         end
         else begin
            dm.EmpresaCODBAIRRO.Clear;
            DescBairro.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodBairro.Modified:=false;
   DescBairro.Modified:=false;
end;

procedure TfEmpresa.pesquisaCIDADE(Tipo: string);
begin
   if (CodCIDADE.Modified) or (DescCIDADE.Modified) then
   begin
      if Tipo = 'C' then
         ComandoQuery(dm.Qsql,'select CODCIDADE,DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+CodCIDADE.Text)
      else
         ComandoQuery(dm.Qsql,'select CODCIDADE,DESCCIDADE,CEP,UF from TCIDADE where DESCCIDADE like "'+DescCIDADE.Text+'%"');
      if dm.Qsql.RecordCount = 0 then
      begin
         dm.EmpresaCODCIDADE.Clear;
         dm.EmpresaCEP.Clear;
         uf.Clear;
         DescCIDADE.Clear;
      end;
      if dm.Qsql.RecordCount = 1 then
      begin
         dm.EmpresaCODCIDADE.Text:=dm.Qsql.fieldbyname('CODCIDADE').Text;
         DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
         dm.EmpresaCEP.Text:=dm.Qsql.fieldbyname('CEP').Text;
         uf.Text:=dm.Qsql.fieldbyname('UF').Text;
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
            dm.EmpresaCODCIDADE.Text:=vgcodigo;
            DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
            dm.EmpresaCEP.Text:=dm.Qsql.fieldbyname('CEP').Text;
            uf.Text:=dm.Qsql.fieldbyname('UF').Text;
            DescCIDADE.SetFocus;
         end
         else begin
            dm.EmpresaCODCIDADE.clear;
            DESCCIDADE.clear;
            dm.EmpresaCEP.clear;
            uf.clear;
         end;
      end;
      dm.Qsql.Close;
   end;
   CodCIDADE.Modified:=false;
   DescCIDADE.Modified:=false;
end;

procedure TfEmpresa.butFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfEmpresa.FormActivate(Sender: TObject);
begin
   if sheetLista.Showing then
      Grade.SetFocus;
end;

procedure TfEmpresa.butIncClick(Sender: TObject);
begin
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   dsCad.DataSet.Append;
   Nome.SetFocus;
end;

procedure TfEmpresa.butCancelarClick(Sender: TObject);
begin
   dsCad.DataSet.Cancel;
   sheetLista.TabVisible:=true;
   sheetCad.TabVisible:=false;
   Grade.SetFocus;
end;

procedure TfEmpresa.butOkClick(Sender: TObject);
var tm: string[1];
begin
   dm.IniTrans;
   tm:='A';
   if dsCad.State = dsInsert then
      tm:='I';
   dsCad.DataSet.Post;
   GravaTab((dsCad.dataset as TClientDataSet));
   if tm = 'I' then
   begin
      dsCad.DataSet.Append;
      Nome.SetFocus;
   end
   else begin
      sheetLista.TabVisible:=true;
      sheetCad.TabVisible:=false;
      Grade.SetFocus;
   end;
   dm.GravaTrans;
end;

procedure TfEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dsCad.DataSet.State in [dsedit,dsinsert] then
   begin
      if Confirma('Deseja salvar as alterações?','S') = idNo then
         butCancelarClick(Self)
      else
         butOkClick(Self);
   end;
   dsCad.DataSet.close;
   action:=cafree;
end;

procedure TfEmpresa.butExcClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   if confirma('Confirma Exclusão?','N')=idno then
      exit;
   dm.IniTrans;
   dsCad.DataSet.Delete;
   GravaTab((dsCad.dataset as TClientDataSet));
   dm.GravaTrans;
end;

procedure TfEmpresa.GradeDblClick(Sender: TObject);
begin
   butAltClick(Self);
end;

procedure TfEmpresa.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Return then
   begin
      GradeDblClick(Self);
      //if editSit.text = 'C' then
         sheetCad.SetFocus;
   end;
end;

procedure TfEmpresa.butPesqClick(Sender: TObject);
begin
   fPesquisa:=TfPesquisa.create(self);
   fPesquisa.dsCad:=dsCad;
   fPesquisa.showModal;
   fPesquisa.free;
   Grade.SetFocus;
end;

procedure TfEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfEmpresa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
   begin
      if sheetCad.Showing then
         butCancelarClick(Self)
      else
         close;
   end;
end;

procedure TfEmpresa.CodBairroExit(Sender: TObject);
begin
   if CodBairro.Text <> '' then
      PesquisaBairro('C')
   else
      DescBairro.Clear;
end;

procedure TfEmpresa.DescBairroExit(Sender: TObject);
begin
   if DescBairro.Text <> '' then
      PesquisaBairro('D')
   else
      dm.EmpresaCODBAIRRO.Clear;
end;

procedure TfEmpresa.SpeedButton6Click(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.Bairro,'%');
   fBairro:=TfBairro.create(Self);
   fBairro.butConf.Visible:=true;
   fBairro.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCBAIRRO from TBAIRRO where CODBAIRRO = '+vgcodigo);
      dm.EmpresaCODBAIRRO.Text:=vgcodigo;
      DESCBAIRRO.Text:=dm.Qsql.fieldbyname('DESCBAIRRO').Text;
      DescBairro.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfEmpresa.butAltClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
      dsCad.DataSet.Edit;
   sheetLista.TabVisible:=false;
   sheetCad.TabVisible:=true;
   dtPesq.Close;
   dtPesq.Params[0].text:=codigo.Text;
   dtpesq.Open;
   DescBairro.Text:=dtPesqDESCBAIRRO.Text;
   DescCidade.Text:=dtpesqDESCCIDADE.text;
   Uf.Text:=dtpesqUF.Text;
   dtpesq.Close;
   Nome.SetFocus;
end;

procedure TfEmpresa.CodCidadeExit(Sender: TObject);
begin
   if CodCidade.Text <> '' then
      PesquisaCidade('C')
   else begin
      DescCidade.Clear;
      uf.Clear;
   end;
end;

procedure TfEmpresa.DescCidadeExit(Sender: TObject);
begin
   if DescCidade.Text <> '' then
      PesquisaCidade('D')
   else
      dm.EmpresaCODCIDADE.Clear;
end;

procedure TfEmpresa.SpeedButton8Click(Sender: TObject);
begin
   vgcodigo:='';
   procura(dm.CIDADE,'%');
   fCIDADE:=TfCIDADE.create(Self);
   fCIDADE.butConf.Visible:=true;
   fCIDADE.showModal;
   if vgcodigo <> '' then
   begin
      ComandoQuery(dm.Qsql,'select DESCCIDADE,CEP,UF from TCIDADE where CODCIDADE = '+vgcodigo);
      dm.EmpresaCODCIDADE.Text:=vgcodigo;
      DESCCIDADE.Text:=dm.Qsql.fieldbyname('DESCCIDADE').Text;
      dm.EmpresaCEP.Text:=dm.Qsql.fieldbyname('CEP').Text;
      uf.Text:=dm.Qsql.fieldbyname('UF').Text;
      DescCIDADE.SetFocus;
      dm.Qsql.Close;
   end;
end;

procedure TfEmpresa.FormCreate(Sender: TObject);
begin
   sheetCad.TabVisible:=false;
   if dscad.DataSet.Active = false then
      procura((dsCad.dataset as TClientDataSet),'-1');
end;

end.

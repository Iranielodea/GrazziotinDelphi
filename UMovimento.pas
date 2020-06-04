unit UMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfMovimento = class(TForm)
    Grade: TDBGrid;
    Panel2: TPanel;
    butExcluir: TBitBtn;
    butExcluirTudo: TBitBtn;
    butSair: TBitBtn;
    Panel1: TPanel;
    DataIni: TMaskEdit;
    Label1: TLabel;
    DataFin: TMaskEdit;
    Label2: TLabel;
    butOk: TBitBtn;
    dsCad: TDataSource;
    procedure butSairClick(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure DataIniExit(Sender: TObject);
    procedure DataFinExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure butExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GradeDblClick(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GradeEnter(Sender: TObject);
    procedure GradeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butExcluirTudoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovimento: TfMovimento;

implementation

uses UDM, UUtil, UDMBanco, UItensMovimento;

{$R *.dfm}

procedure TfMovimento.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfMovimento.butExcluirTudoClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   if confirma('Confirma a exclusão de tudo?','N') = idNo then
      exit;
   try
      dm.IniTrans;
      dm.Movimento.First;
      while not dm.Movimento.Eof do
        dsCad.DataSet.Delete;

      GravaTab(dm.Movimento);
      dm.GravaTrans;
   except
    begin
      dm.CancelaTrans;
      mensagem('Exclusão Cancelada');
    end;
   end;
end;

procedure TfMovimento.butOkClick(Sender: TObject);
begin
   if (dataini.Text = '  /  /    ') or (datafin.Text = '  /  /    ') then
   begin
      mensagem('Informe as Datas');
      exit;
   end;
   if strtodate(dataini.text) > strtodate(datafin.Text) then
   begin
      mensagem('Data inicial maior que data final');
      exit;
   end;
   dm.Movimento.Close;
   dm.Movimento.Params[0].AsDate:=strtodate(dataini.Text);
   dm.Movimento.Params[1].AsDate:=strtodate(datafin.Text);
   dm.Movimento.Open;
end;

procedure TfMovimento.DataIniExit(Sender: TObject);
begin
   if dataerro(dataini.Text) = 'S' then
      dataini.SetFocus;
end;

procedure TfMovimento.DataFinExit(Sender: TObject);
begin
   if dataerro(datafin.Text) = 'S' then
      datafin.SetFocus;
end;

procedure TfMovimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfMovimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfMovimento.butExcluirClick(Sender: TObject);
begin
   if dsCad.DataSet.IsEmpty then
      exit;
   if confirma('Confirma a exclusão deste Ítem ?','N') = idNo then
      exit;
   try
      dm.IniTrans;
      dsCad.DataSet.Delete;
      GravaTab(dm.Movimento);
      dm.GravaTrans;
   except begin
         mensagem('Exclusão Cancelada');
         dm.CancelaTrans;
      end;
   end;
end;

procedure TfMovimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dsCad.DataSet.Close;
   action:=cafree;
end;

procedure TfMovimento.GradeDblClick(Sender: TObject);
begin
   if dsCad.DataSet.Active = false then
      exit;
   fItensMovimento:=TfItensMovimento.create(Self);
   fItensMovimento.show;
end;

procedure TfMovimento.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
   if key = vk_Return then
   begin
      GradeDblClick(Sender);
   end;
end;

procedure TfMovimento.GradeEnter(Sender: TObject);
begin
   fMovimento.KeyPreview:=false;
end;

procedure TfMovimento.GradeExit(Sender: TObject);
begin
   fMovimento.KeyPreview:=true;
end;

procedure TfMovimento.FormCreate(Sender: TObject);
begin
   dataini.text:=datetostr(date);
   datafin.text:=datetostr(date);
   butOkClick(Self);
end;

end.

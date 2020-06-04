unit UPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient;

type
  TfPesquisa = class(TForm)
    GroupBox1: TGroupBox;
    RIni: TRadioButton;
    RContem: TRadioButton;
    Label1: TLabel;
    Nome: TEdit;
    Panel1: TPanel;
    butOk: TBitBtn;
    butCanc: TBitBtn;
    dsCad: TDataSource;
    procedure butCancClick(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPesquisa: TfPesquisa;

implementation

{$R *.dfm}

procedure TfPesquisa.butCancClick(Sender: TObject);
begin
   close;
end;

procedure TfPesquisa.butOkClick(Sender: TObject);
begin
   (dsCad.DataSet as TClientDataSet).Close;
   if rIni.Checked then
      (dsCad.DataSet as TClientDataSet).params[0].text:=Nome.text+'%'
   else
      (dsCad.DataSet as TClientDataSet).params[0].text:='%'+Nome.text+'%';
   (dsCad.DataSet as TClientDataSet).Open;
   close;
end;

procedure TfPesquisa.FormActivate(Sender: TObject);
begin
   Nome.SetFocus;
end;

procedure TfPesquisa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key:=#0;
      perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

end.

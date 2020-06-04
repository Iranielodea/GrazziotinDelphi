unit UJUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, FMTBcd, DB,
  DBClient, Provider, SqlExpr;

type
  TfJUsuario = class(TForm)
    Panel2: TPanel;
    Grade: TDBGrid;
    butOk: TBitBtn;
    butFechar: TBitBtn;
    QCadUsuario: TSQLQuery;
    dspCadUsuario: TDataSetProvider;
    CadUsuario: TClientDataSet;
    CadUsuarioNOME: TStringField;
    CadUsuarioGERENTE: TStringField;
    dsCadUsuario: TDataSource;
    procedure dsCadUsuarioStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure butOkClick(Sender: TObject);
    procedure butFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GradeDblClick(Sender: TObject);
    procedure GradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fJUsuario: TfJUsuario;

implementation

{$R *.dfm}

procedure TfJUsuario.dsCadUsuarioStateChange(Sender: TObject);
begin
   butOk.Enabled := (dspCadUsuario.DataSet.RecordCount > 0);
end;

procedure TfJUsuario.FormCreate(Sender: TObject);
begin
   CadUsuario.Close;
   CadUsuario.Open;
end;

procedure TfJUsuario.butOkClick(Sender: TObject);
begin
   close;
   ModalResult := mrOk;
end;

procedure TfJUsuario.butFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfJUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Escape then
      close;
end;

procedure TfJUsuario.GradeDblClick(Sender: TObject);
begin
   butOkClick(self);
end;

procedure TfJUsuario.GradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_Return then
      butOkClick(self);
end;

procedure TfJUsuario.FormShow(Sender: TObject);
begin
   Grade.SetFocus;
end;

end.

unit UOSCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, udm, Data.DB,
  Vcl.ExtCtrls, UdmOrdemServico, Datasnap.DBClient;

type
  TfrmOSCliente = class(TForm)
    Grid: TDBGrid;
    Panel1: TPanel;
    dsCad: TDataSource;
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridTitleClick(Column: TColumn);
  private
    FCodigo: Integer;
    FNome: string;
    { Private declarations }
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
  end;

var
  frmOSCliente: TfrmOSCliente;

implementation

{$R *.dfm}

procedure TfrmOSCliente.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    VK_RETURN:
    begin
      FCodigo := dsCad.DataSet.FieldByName('CODPESSOA').AsInteger;
      FNome := dsCad.DataSet.FieldByName('NOME').AsString;
      Close;
      ModalResult := mrOk;
    end;
    VK_ESCAPE: close;
  end;
end;

procedure TfrmOSCliente.GridTitleClick(Column: TColumn);
begin
  (dsCad.DataSet AS TClientDataSet).IndexFieldNames := Column.FieldName;
end;

end.

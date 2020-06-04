unit uTrataGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;

type
  TDBGrade = class
  private

  public
    procedure CriarCheckBox(var Grid: TDBGrid; Column: TColumn; const Rect: TRect;
      CampoSelecionar, CampoMarcar: string);
    procedure MarcarCampo(pClientDataSet: TClientDataSet; Column: TColumn;
      CampoSelecionar, CampoMarcar: string);
  end;

implementation

{ TDBGrade }

procedure TDBGrade.CriarCheckBox(var Grid: TDBGrid; Column: TColumn;
  const Rect: TRect; CampoSelecionar, CampoMarcar: string);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = CampoSelecionar then
  begin
    Grid.Canvas.FillRect(Rect);
    Check := 0;
    if CampoMarcar = 'S' then
      Check := DFCS_CHECKED
    else
      Check := 0;
    R:=Rect;
    InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
    DrawFrameControl(Grid.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TDBGrade.MarcarCampo(pClientDataSet: TClientDataSet; Column: TColumn;
  CampoSelecionar, CampoMarcar: string);
begin
  if Column.FieldName = CampoSelecionar then
  begin
    pClientDataSet.Edit;
    if pClientDataSet.FieldByName(CampoMarcar).AsString = 'S' then
      pClientDataSet.FieldByName(CampoMarcar).AsString := 'N'
    else
      pClientDataSet.FieldByName(CampoMarcar).AsString := 'S';
    pClientDataSet.Post;
  end;

end;

end.

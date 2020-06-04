unit UUtilServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr;

type
  TfUtilServico = class(TForm)
    QExtintor: TSQLQuery;
    QExtintorCONTROLE: TIntegerField;
    QUltimo: TSQLQuery;
    QUltimoVENCIMENTO: TSQLTimeStampField;
    QUltimoDATACARGA: TSQLTimeStampField;
    QUltimoANOFAB: TSQLTimeStampField;
    QUltimoCODMARCA: TFloatField;
    QUltimoCAPACIDADE: TStringField;
    QUltimoDATACARREGAMENTO: TSQLTimeStampField;
    QUltimoCONSERVACAO: TStringField;
    QUltimoNUMSELO: TFloatField;
    QUltimoNUMERO: TFloatField;
    QUltimoCODPROJETO: TStringField;
    QUltimoCODCAPACIDADE: TIntegerField;
    QUltimoPESO: TFloatField;
    QUltimoTIPO: TStringField;
    QUltimoLOTERESUMIDO: TStringField;
    QUltimoDATAORDEM: TSQLTimeStampField;
    QUltimoNUMORDEM: TFloatField;
    QUltimoCODPESSOA: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UltimoCilindro(CodPessoa, Serie, NumOrdem: String);
  end;

var
  fUtilServico: TfUtilServico;

implementation

uses UClServico, UItemExtintor, UDM, UDMBanco, UUtil;

{$R *.dfm}

{ TfUtilServico }

{ TfUtilServico }

procedure TfUtilServico.UltimoCilindro(CodPessoa, Serie, NumOrdem: String);
begin
   QUltimo.Close;
   QUltimo.Params.ParamByName('CODPESSOA').Text:=CodPessoa;
   QUltimo.Params.ParamByName('NUMORDEM').Text:=NumOrdem;
   QUltimo.Params.ParamByName('SERIE').Text:=Serie;
   if not QUltimo.IsEmpty then
   begin
      QExtintor.close;
      QExtintor.Params.ParamByName('CODPESSOA').Text:=CodPessoa;
      QExtintor.Params.ParamByName('SERIE').Text:=Serie;
      QExtintor.Open;
      if not QExtintorCONTROLE.IsNull then
      begin
         procura(dm.Extintor,QExtintorCONTROLE.text);
         dm.Extintor.Edit;
         dm.ExtintorVENCTOCARGA.Text:=QUltimoVENCIMENTO.Text;
         dm.ExtintorVENCIMENTO.Text:=QUltimoDATACARGA.Text;
         dm.ExtintorANOFAB.text:=QUltimoANOFAB.Text;
         dm.ExtintorSITUACAO.text:='A';
         dm.ExtintorCODMARCA.Text:=QUltimoCODMARCA.text;
         dm.ExtintorCAPACIDADE.text:=QUltimoCAPACIDADE.text;
         dm.ExtintorDATACARGA.Text:=QUltimoDATACARREGAMENTO.text;
         dm.ExtintorCONSERVACAO.Text:=QUltimoCONSERVACAO.Text;
         dm.ExtintorSELO.Text:=QUltimoNUMSELO.Text;
         dm.ExtintorNUMERO.Text:=QUltimoNUMERO.Text;
         dm.ExtintorCODPROJETO.Text:=QUltimoCODPROJETO.Text;
         dm.ExtintorCODCAPACIDADE.text:=QUltimoCODCAPACIDADE.Text;
         dm.ExtintorPESO.Text:=QUltimoPESO.Text;
         dm.ExtintorTIPO.text:=QUltimoTIPO.Text;
         dm.ExtintorLOTERESUMIDO.Text:=QUltimoLOTERESUMIDO.Text;
         dm.Extintor.Post;
         GravaTab(dm.Extintor);
      end;
   end;
   QExtintor.Close;
   QUltimo.Close;
end;

end.

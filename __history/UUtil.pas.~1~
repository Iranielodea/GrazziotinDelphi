unit UUtil;

interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ToolWin, ComCtrls, DB,
  IBCustomDataSet, IBQuery, ExtCtrls, Buttons, Mask, DBCtrls, IBDatabase, ppReport,
  Math, DBClient, SqlExpr;

   function Confirma(Texto: pchar; botao: string): Integer;
   function ContaReg(Tabela: TClientDataSet): integer;
   function ContaReg2(Tabela: TSQLQuery): integer;
   procedure GravaTab(Tabela: TClientDataSet);
   procedure Mensagem(Texto: Pchar);
   procedure ComandoQuery(Tabela: TSQLQuery; Comando: string);
   procedure ComandoCli(Tabela: TClientDataSet; Comando: string);
   procedure Procura(Tabela: TClientDataSet; Campo: string);
   function TrocaCar(Campo, Antigo, Novo: string): string;
   function CVal(Campo: string): string;
   function TiraCar(Campo,Caracter: string): string;
   procedure LimpaTela(Formulario: TForm);
   procedure BloquearCampos(Formulario: TForm; Bloquear: Boolean);

   function preparaextenso(Valor: string): double;
   function Ext999(intValor: integer): string;
   function Extenso(intValor: integer): string;
   function MoedaExtenso(dblValor: double; stMoeda, stMoedas: string): string;
   procedure ExtSinPlur(intValor: integer; stSing, stPlural: string; var stValor: string);
   function Zeros(vtaman: integer; vcampo: string): string;

   {procedure IniTrans;
   procedure GravaTrans;
   procedure CancelaTrans;}
   function DataIngles(Data: string): string;
   function DataErro(Data: string): string;
   procedure ModoEdicao(Tabela: TClientDataSet);
   procedure GravaZeroDataSet(Tabela: TClientDataSet);
   procedure Pesquisa(Query: TSqlDataSet; Tabela: TClientDataSet; Comando: string);
   procedure TamanhoPagina(Relatorio: TppReport);
   function ValidaDatas(DataInicial, DataFinal: string): Boolean;
   procedure VerificarDatas(Sender: TField; const Text: string);
   function IntToString(AValor: string): string;

implementation

uses UDM, UDMBanco;

function IntToString(AValor: string): string;
begin
  try
    Result := FloatToStr(StrToFloat(AValor));
  except
    Result := '0';
  end;
end;

procedure VerificarDatas(Sender: TField; const Text: string);
begin
  if Trim(Text) = DataEmBranco then
    Sender.Clear
  else begin
    try
      StrToDate(text)
    except
      raise Exception.Create('Data Inválida');
    end;
    Sender.AsString := Text;
  end;
end;

procedure BloquearCampos(Formulario: TForm; Bloquear: Boolean);
var i: integer;
begin
   for i:=0 to Formulario.ComponentCount - 1 do
   begin
      if (formulario.Components[i] is Tedit) then
         TEdit(Formulario.Components[I]).Enabled := Bloquear;
      if (formulario.Components[i] is TmaskEdit) then
         TMaskEdit(Formulario.Components[I]).Enabled := Bloquear;
      if (formulario.Components[i] is TSpeedButton) then
         TSpeedButton(Formulario.Components[I]).Enabled := Bloquear;
      if (formulario.Components[i] is TDBEdit) then
         TDBEdit(Formulario.Components[I]).Enabled := Bloquear;
   end;
end;

function ValidaDatas(DataInicial, DataFinal: string): Boolean;
begin
   try
      StrToDate(DataInicial);
      StrToDate(DataFinal);
      Result := True;
   except
      Mensagem('Data Inválida');
      Result := False;
      Exit;
   end;

   if StrToDate(DataInicial) > StrToDate(DataFinal) then
   begin
      mensagem('Data inicial maior que data final!');
      Result := False;
   end;
end;
//***********************************************
// Insere zeros a esquerda do numero
//***********************************************
function Zeros(vtaman: integer; vcampo: string): string;
var
   vcomp: integer;
   vzeros: string;
begin
     {* Acrescenta zeros na frente de um número *}
     vcomp:=length(vcampo);
     vzeros:=copy('000000000000000000',1,vtaman-vcomp);
     zeros:=vzeros+vcampo;
end;

procedure ExtSinPlur(intValor: integer; stSing, stPlural: string; var stValor: string);
begin
  if (Copy(stValor, Length(stValor) - 2, 3) = 'OES') or
       (Copy(stValor, Length(stValor) - 1, 2) = 'AO') then
     stValor := stValor + ' DE';
  if intValor = 1 then
     stValor := stValor + ' ' + stSing
  else
     stValor := stValor + ' ' + stPlural;
end;

{
    Função que retorna uma string com um valor monetário por extenso.
    Parâmetro: o valor e o nome da moeda singular e plural.
    Retorno  : o valor por extenso.
}

function MoedaExtenso(dblValor: double; stMoeda, stMoedas: string): string;
var stMoedaExtenso, stCentavos : string;
    intCentavos, intMoeda : integer;
begin
  intMoeda := Trunc(dblValor);
  intCentavos := Round(100*(dblValor - intMoeda));
  if intCentavos > 0 then
     begin
       stCentavos := Ext999(intCentavos) + ' CENTAVO';
       if intCentavos <> 1 then stCentavos := stCentavos + 'S';
     end
  else stCentavos := '';
  if intMoeda > 0 then
     begin
       stMoedaExtenso := Extenso(intMoeda);
       ExtSinPlur(intMoeda, stMoeda, stMoedas, stMoedaExtenso);
     end
  else stMoedaExtenso := '';
  if (intCentavos <> 0) and (intMoeda <> 0) then
     stMoedaExtenso := stMoedaExtenso + ' E ' + stCentavos
  else
     stMoedaExtenso := stMoedaExtenso + stCentavos;
  Result := '('+stMoedaExtenso+')';
end;

{
    Funçãoo que retorna uma string com um valor por extenso.
    Parâmetro: o valor.
    Retorno  : o valor por extenso.
}

function Extenso(intValor: integer): string;
var stValExtenso, stValor : string;
    intValor1, intValor2, intValor3, intValor4 : integer;
begin
  stValor :=Zeros(12,InttoStr(IntValor));
  intValor1 := StrToInt(Copy(stValor, 1, 3));
  intValor2 := StrToInt(Copy(stValor, 4, 3));
  intValor3 := StrToInt(Copy(stValor, 7, 3));
  intValor4 := StrToInt(Copy(stValor, 10, 3));
  stValExtenso := '';
  if intValor1 > 0 then
     begin
       stValExtenso := Ext999(intValor1);
       ExtSinPlur(intValor1, 'BILHAO, ', 'BILHOES, ', stValExtenso);
     end;
  if intValor2 > 0 then
     begin
       stValExtenso := stValExtenso + Ext999(intValor2);
       ExtSinPlur(intValor2, 'MILHAO, ', 'MILHOES, ', stValExtenso);
     end;
  if intValor3 > 0 then
     stValExtenso := stValExtenso + Ext999(intValor3) + ' MIL, ';
  if intValor4 > 0 then
     stValExtenso := stValExtenso + Ext999(intValor4);
  if Copy(stValExtenso, Length(stValExtenso) - 1, 2) = ', ' then
     Delete(stValExtenso, Length(stValExtenso) - 1, 2);
  Result := stValExtenso;
end;

function Ext999(intValor: integer): string;
var stValExtenso, stUnidade, stDezena, stCentena : string;
    intUnidade, intDezena, intCentena : integer;
    stUnidades, stTeens, stDezenas, stCentenas : Variant;
begin
  stUnidades := VarArrayOf(['UM', 'DOIS', 'TRES', 'QUATRO', 'CINCO',
                            'SEIS', 'SETE', 'OITO', 'NOVE' ]);
  stTeens := VarArrayOf(['ONZE', 'DOZE', 'TREZE', 'CATORZE', 'QUINZE',
                         'DEZESSEIS', 'DEZESSETE', 'DEZOITO', 'DEZENOVE']);
  stDezenas := VarArrayOf(['DEZ', 'VINTE', 'TRINTA', 'QUARENTA', 'CINQUENTA',
                           'SESSENTA', 'SETENTA', 'OITENTA', 'NOVENTA']);
  stCentenas := VarArrayOf(['CENTO', 'DUZENTOS', 'TREZENTOS', 'QUATROCENTOS',
                            'QUINHENTOS', 'SEISCENTOS', 'SETECENTOS',
                            'OITOCENTOS', 'NOVECENTOS']);

  if intValor = 0 then
     stValExtenso := 'ZERO'
  else if intValor = 100 then
     stValExtenso := 'CEM'
  else if intValor <= 999 then
     begin
       stCentena := '';
       stDezena := '';
       stUnidade := '';
       intCentena := Trunc(intValor/100);
       intDezena  := Trunc((intValor - intCentena*100)/10);
       intUnidade := Trunc(intValor - intCentena*100 - intDezena*10);
       if intCentena <> 0 then
          stCentena := stCentenas[intCentena - 1] + ' E ';
       if intDezena = 1 then
          if intUnidade = 0 then
             stDezena := 'DEZ'
          else
             stDezena := stTeens[intUnidade - 1];
       if intDezena > 1 then
          stDezena := stDezenas[intDezena - 1] + ' E ';
       if (intUnidade <> 0) and (intDezena <> 1) then
          stUnidade := stUnidades[intUnidade - 1];
       stValExtenso := stCentena + stDezena + stUnidade;
       if Copy(stValExtenso, Length(stValExtenso) - 2, 3) = ' E ' then
          Delete(stValExtenso, Length(stValExtenso) - 2, 3);
     end;
  Result := stValExtenso;
end;

procedure TamanhoPagina(Relatorio: TppReport);
begin
   Relatorio.PrinterSetup.MarginBottom:=dm.RelM_INFERIOR.AsFloat;
   Relatorio.PrinterSetup.MarginTop:=dm.RelM_SUPERIOR.AsFloat;
   Relatorio.PrinterSetup.PaperHeight:=dm.RelALTURA.AsFloat;
   Relatorio.PrinterSetup.PaperWidth:=dm.RelLARGURA.AsFloat;
end;

function preparaextenso(Valor: string): double;
var i: integer;
   vv: string[30];
begin
   vv:='';
   for i:=1 to length(valor) do
   begin
      if copy(valor,i,1) = '.' then
         continue;
      vv:=vv + copy(valor,i,1);
   end;
   if vv = '' then
      vv:='0';
   result:=strtofloat(vv);
end;

procedure Pesquisa(Query: TSqlDataSet; Tabela: TClientDataSet; Comando: string);
begin
   Tabela.Close;
   Tabela.CommandText:=Query.CommandText+' '+Comando;
   Tabela.Open;
end;

procedure GravaZeroDataSet(Tabela: TClientDataSet);
var I: integer;
begin
   for I:=0 to Tabela.FieldCount-1 do
   begin
      if Tabela.Fields[I].DefaultExpression <> '' then
      begin
         if Tabela.Fields[I].IsNull then
            Tabela.Fields[I].Value:=0;
      end;
   end;
end;

function TrocaCar(Campo, Antigo, Novo: string): string;
var i: integer;
   b: string;
begin
   b:='';
   for i:=1 to length(campo) do
   begin
      if copy(campo,i,1) = Antigo then
         b:=b + Novo
      else
         b:=b + copy(campo,i,1);
   end;
   result:=b;
end;

procedure ModoEdicao(Tabela: TClientDataSet);
begin
   if not (Tabela.State in [dsedit,dsinsert]) then
      Tabela.Edit;
end;

procedure LimpaTela(Formulario: TForm);
var i: integer;
begin
   for i:=0 to Formulario.ComponentCount - 1 do
   begin
      if (formulario.Components[i] is Tedit) then
         TEdit(Formulario.Components[I]).Clear;
      if (formulario.Components[i] is TmaskEdit) then
         TMaskEdit(Formulario.Components[I]).Clear;
   end;
end;

function DataErro(Data: string): string;
begin
   if copy(data,1,1) = ' ' then
   begin
      result:='N';
      exit;
   end;
   try
      strtodate(data);
      result:='N';
      except begin
         mensagem('Data inválida');
         result:='S';
      end;
   end;
end;

function DataIngles(Data: string): string;
var vdia,vmes,vano: word;
   vdata: string[15];
begin
   decodedate(strtodate(data),vano,vmes,vdia);
   vdata:='"'+inttostr(vmes)+'/'+inttostr(vdia)+'/'+inttostr(vano)+'"';
   result:=vdata;
end;

{procedure IniTrans;
begin
   if not dmBanco.BancoDados.InTransaction then
      dmBanco.BancoDados.StartTransaction(TransDesc);
end;

procedure GravaTrans;
begin
   if dmBanco.BancoDados.InTransaction then
      dmBanco.BancoDados.Commit(TransDesc);
end;

procedure CancelaTrans;
begin
   if dmBanco.BancoDados.InTransaction then
      dmBanco.BancoDados.Rollback(TransDesc);
end;}

function TiraCar(Campo,Caracter: string): string;
var i: integer;
    a: string;
begin
   a:='';
   for i:=1 to length(Campo) do
   begin
      if copy(campo,i,1) = Caracter then
         continue;
      a:=a +copy(campo,i,1);
   end;
   result:=a;
end;

function CVal(Campo: string): string;
var vvalor: string[20];
begin
   if Campo = '' then
      result:='0'
   else begin
      vvalor:=TiraCar(Campo,'.');
      result:=trocaCar(vvalor,',','.');
   end;
end;

function ContaReg2(Tabela: TSQLQuery): integer;
var i: integer;
begin
   i:=0;
   while not Tabela.Eof do
   begin
      if i > 2 then
         break;
      inc(i);
      tabela.Next;
   end;
   Tabela.First;
   result:=i;
end;

procedure Procura(Tabela: TClientDataSet; Campo: string);
begin
   Tabela.Close;
   Tabela.Params[0].Text:=Campo;
   Tabela.Open;
end;

procedure ComandoCli(Tabela: TClientDataSet; Comando: string);
begin
   Tabela.close;
   dm.Qsql.sql.text:=comando;
   Tabela.open;
end;

procedure ComandoQuery(Tabela: TSQLQuery; Comando: string);
begin
   Tabela.close;
   Tabela.sql.text:=Comando;
   Tabela.open;
end;

function ContaReg(Tabela: TClientDataSet): integer;
var vcont: integer;
begin
   vcont:=0;
   while not Tabela.Eof do
   begin
      if vcont > 2 then
         break;
      vcont:=vcont + 1;
      Tabela.Next;
   end;
   Tabela.First;
   result:=vcont;
end;

procedure Mensagem(Texto: Pchar);
begin
     Application.MessageBox(Texto,'Informação',mb_Ok+mb_iconInformation);
end;


procedure GravaTab(Tabela: TClientDataSet);
var verro: integer;
begin
   verro:=Tabela.ApplyUpdates(0);
   if verro <> 0 then
      Mensagem('Erro ao Gravar os dados');
end;

//***********************************************
// abre caixa de dialogo para confirmacao sim/nao
//***********************************************
function Confirma(Texto: pchar; botao: string): Integer;
begin
   if botao = 'S' then
      result:=application.MessageBox(Texto,'Confirmação',mb_YesNo + mb_IconQuestion + mb_DefButton1)
   else
      result:=application.MessageBox(Texto,'Confirmação',mb_YesNo + mb_IconQuestion + mb_DefButton2);
end;

end.
 
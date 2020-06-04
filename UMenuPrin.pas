unit UMenuPrin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, ToolWin, ComCtrls, StdCtrls, Vcl.ExtCtrls;

type
  TfMenuPrin = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Bairro1: TMenuItem;
    MinhaEmpresa1: TMenuItem;
    Cidade1: TMenuItem;
    Localizao1: TMenuItem;
    AgenteExtintor1: TMenuItem;
    Resultado: TMenuItem;
    Manuteno1: TMenuItem;
    Marcas1: TMenuItem;
    Peas1: TMenuItem;
    Observaes1: TMenuItem;
    Vendedores1: TMenuItem;
    Responsveis1: TMenuItem;
    PesquisadeSelos1: TMenuItem;
    N1: TMenuItem;
    TabelaControle: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Estoque1: TMenuItem;
    CadastrodeLotes1: TMenuItem;
    Relatorios1: TMenuItem;
    RelatrioparaClientes: TMenuItem;
    RelatriodeSelos1: TMenuItem;
    PorOrdemdeServico1: TMenuItem;
    RelatriodeVencimentodeExtintores1: TMenuItem;
    RelatriodeServios1: TMenuItem;
    RelatriodeLotes1: TMenuItem;
    ExtratodeEstoque1: TMenuItem;
    Compra1: TMenuItem;
    N3: TMenuItem;
    ConfRelatrios1: TMenuItem;
    Movimento_Manual: TMenuItem;
    Edit1: TEdit;
    RastreamentodoPQumico1: TMenuItem;
    Propostas1: TMenuItem;
    abeladePreos1: TMenuItem;
    Capacidades1: TMenuItem;
    Usuarios1: TMenuItem;
    CadSenha: TMenuItem;
    AlterarSenha1: TMenuItem;
    TrocaDeSelo: TMenuItem;
    IntervalodeSelos1: TMenuItem;
    OrdensdeServio1: TMenuItem;
    RelatriodeServiosII1: TMenuItem;
    Parametros: TMenuItem;
    Panel1: TPanel;
    butCliente: TSpeedButton;
    butCliExtintor: TSpeedButton;
    butServico: TSpeedButton;
    butSair: TSpeedButton;
    Ajuda1: TMenuItem;
    About1: TMenuItem;
    Movimentos1: TMenuItem;
    mmOrdemServicoBarras: TMenuItem;
    procedure MinhaEmpresa1Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Localizao1Click(Sender: TObject);
    procedure AgenteExtintor1Click(Sender: TObject);
    procedure ResultadoClick(Sender: TObject);
    procedure Manuteno1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Peas1Click(Sender: TObject);
    procedure Observaes1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Responsveis1Click(Sender: TObject);
    procedure PesquisadeSelos1Click(Sender: TObject);
    procedure TabelaControleClick(Sender: TObject);
    procedure CadastrodeLotes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure butSairClick(Sender: TObject);
    procedure butClienteClick(Sender: TObject);
    procedure butCliExtintorClick(Sender: TObject);
    procedure butServicoClick(Sender: TObject);
    procedure RelatrioparaClientesClick(Sender: TObject);
    procedure PorOrdemdeServico1Click(Sender: TObject);
    procedure RelatriodeVencimentodeExtintores1Click(Sender: TObject);
    procedure RelatriodeServios1Click(Sender: TObject);
    procedure RelatriodeLotes1Click(Sender: TObject);
    procedure ExtratodeEstoque1Click(Sender: TObject);
    procedure Compra1Click(Sender: TObject);
    procedure ConfRelatrios1Click(Sender: TObject);
    procedure Movimento_ManualClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RastreamentodoPQumico1Click(Sender: TObject);
    procedure Propostas1Click(Sender: TObject);
    procedure abeladePreos1Click(Sender: TObject);
    procedure Capacidades1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CadSenhaClick(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure TrocaDeSeloClick(Sender: TObject);
    procedure IntervalodeSelos1Click(Sender: TObject);
    procedure ParametrosClick(Sender: TObject);
    procedure RelatriodeServiosII1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure mmOrdemServicoBarrasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuPrin: TfMenuPrin;

implementation

uses UEmpresa, UBairro, UCidade, ULocal, UAgente, UResultado, UManutencao,
  UMarca, UPeca, UObs, UVendedor, UResp, UPesqSelo, UTabControle, ULote,
  UPessoa, UCliExtintor, UOrdem, UICliExtintor, UISelo, UIVencimento,
  UIOrdem, UILote, UExtratoEstoque, UCompra, UMedida, UCliente, UMovimento,
  UIRastro, Uproposta, UTabPreco, UCapacidade, UDM, UUsuario, UAleraSenha,
  UTrocaSelo, UIntervaloSelo, UIOrdemServico, UParametros, UAbout, UItensOrdem;

{$R *.dfm}

procedure TfMenuPrin.MinhaEmpresa1Click(Sender: TObject);
begin
   fEmpresa:=TfEmpresa.create(self);
   fEmpresa.show;
end;

procedure TfMenuPrin.mmOrdemServicoBarrasClick(Sender: TObject);
var
  fItensOrdem: TfItensOrdem;
begin
   fItensOrdem := TfItensOrdem.create(Self, True);
   fItensOrdem.show;
end;

procedure TfMenuPrin.Bairro1Click(Sender: TObject);
begin
   fBairro:=TfBairro.create(self);
   fBairro.show;
end;

procedure TfMenuPrin.Cidade1Click(Sender: TObject);
begin
   fCidade:=TfCidade.create(self);
   fCidade.show;
end;

procedure TfMenuPrin.Localizao1Click(Sender: TObject);
begin
   fLOCAL:=TfLOCAL.create(self);
   fLOCAL.show;
end;

procedure TfMenuPrin.About1Click(Sender: TObject);
begin
  frmAbout := TfrmAbout.Create(Self);
  frmAbout.ShowModal;
  frmAbout.Free;
end;

procedure TfMenuPrin.AgenteExtintor1Click(Sender: TObject);
begin
   fAgente:=TfAgente.create(self);
   fAgente.show;
end;

procedure TfMenuPrin.ResultadoClick(Sender: TObject);
begin
   fResultado:=TfResultado.create(self);
   fResultado.show;
end;

procedure TfMenuPrin.Manuteno1Click(Sender: TObject);
begin
   fManutencao:=TfManutencao.create(self);
   fManutencao.show;
end;

procedure TfMenuPrin.Marcas1Click(Sender: TObject);
begin
   fMarca:=TfMarca.create(self);
   fMarca.show;
end;

procedure TfMenuPrin.Peas1Click(Sender: TObject);
begin
   fPeca:=TfPeca.create(self);
   fPeca.show;
end;

procedure TfMenuPrin.Observaes1Click(Sender: TObject);
begin
   fObs:=TfObs.create(self);
   fObs.show;
end;

procedure TfMenuPrin.Vendedores1Click(Sender: TObject);
begin
   fVendedor:=TfVendedor.create(self);
   fVendedor.show;
end;

procedure TfMenuPrin.Responsveis1Click(Sender: TObject);
begin
   fResp:=TfResp.create(self);
   fResp.show;
end;

procedure TfMenuPrin.PesquisadeSelos1Click(Sender: TObject);
begin
   fPesqSelo:=TfPesqSelo.create(self);
   fPesqSelo.show;
end;

procedure TfMenuPrin.TabelaControleClick(Sender: TObject);
begin
   fTabControle:=TfTabControle.create(self);
   fTabControle.show;
end;

procedure TfMenuPrin.CadastrodeLotes1Click(Sender: TObject);
begin
   fLote:=TfLote.create(self);
   fLote.show;
end;

procedure TfMenuPrin.Sair1Click(Sender: TObject);
begin
   close;
end;

procedure TfMenuPrin.butSairClick(Sender: TObject);
begin
   close;
end;

procedure TfMenuPrin.butClienteClick(Sender: TObject);
begin
   fCliente:=TfCliente.create(self);
   fCliente.show;
end;

procedure TfMenuPrin.butCliExtintorClick(Sender: TObject);
begin
   fCliExtintor:=TfCliExtintor.create(Self);
   fCliExtintor.show;
end;

procedure TfMenuPrin.butServicoClick(Sender: TObject);
begin
   fOrdem:=TfOrdem.create(Self);
   fOrdem.show;
end;

procedure TfMenuPrin.RelatrioparaClientesClick(Sender: TObject);
begin
   fICliExtintor:=TfICliExtintor.create(Self);
   fICliExtintor.show;
end;

procedure TfMenuPrin.PorOrdemdeServico1Click(Sender: TObject);
begin
   fISelo:=TfISelo.create(Self);
   fISelo.show;
end;

procedure TfMenuPrin.RelatriodeVencimentodeExtintores1Click(
  Sender: TObject);
begin
   fIVencimento:=TfIVencimento.create(Self);
   fIVencimento.show;
end;

procedure TfMenuPrin.RelatriodeServios1Click(Sender: TObject);
begin
   fIOrdem:=TfIOrdem.create(Self);
   fIOrdem.show;
end;

procedure TfMenuPrin.RelatriodeServiosII1Click(Sender: TObject);
begin
   fIOrdemServico := TfIOrdemServico.Create(self);
   fIOrdemServico.Show;
end;

procedure TfMenuPrin.RelatriodeLotes1Click(Sender: TObject);
begin
   fILote:=TfILote.create(self);
   fILote.Show;
end;

procedure TfMenuPrin.ExtratodeEstoque1Click(Sender: TObject);
begin
   fExtratoEstoque:=TfExtratoEstoque.create(Self);
   fExtratoEstoque.show;
end;

procedure TfMenuPrin.Compra1Click(Sender: TObject);
begin
   fCompra:=TfCompra.create(self);
   fCompra.Show;
end;

procedure TfMenuPrin.ConfRelatrios1Click(Sender: TObject);
begin
   fMedida:=TfMedida.create(self);
   fMedida.Show;
end;

procedure TfMenuPrin.Movimento_ManualClick(Sender: TObject);
begin
   fMovimento:=TfMovimento.create(self);
   fMovimento.Show;
end;

procedure TfMenuPrin.FormClick(Sender: TObject);
begin
   edit1.SetFocus;
end;

procedure TfMenuPrin.FormCreate(Sender: TObject);
begin
   Movimento_manual.Visible:=false;
end;

procedure TfMenuPrin.RastreamentodoPQumico1Click(Sender: TObject);
begin
   fIRastro:=TfIRastro.create(self);
   fIRastro.Show;
end;

procedure TfMenuPrin.Propostas1Click(Sender: TObject);
begin
   fProposta:=TfProposta.create(self);
   fProposta.Show;
end;

procedure TfMenuPrin.abeladePreos1Click(Sender: TObject);
begin
   fTabPreco:=TfTabPreco.create(Self);
   fTabPreco.show;
end;

procedure TfMenuPrin.Capacidades1Click(Sender: TObject);
begin
   fCapacidade:=TfCapacidade.create(self);
   fCapacidade.Show;
end;

procedure TfMenuPrin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Application.Terminate;
end;

procedure TfMenuPrin.FormShow(Sender: TObject);
var vlGerente: boolean;
begin
   if vgUsuario = 'SUPERVISOR' then
      exit;

   dm.GetUsuario(vgUsuario);
   vlGerente := (dm.CadUsuarioGERENTE.text = 'S');

   Estoque1.Visible := vlGerente;
   Relatorios1.Visible := vlGerente;
   butCliente.Visible := vlGerente;
   CadSenha.Visible := vlGerente;
   TabelaControle.Visible := vlGerente;
   Propostas1.Visible := vlGerente;
   TabelaControle.Visible := vlGerente;
end;

procedure TfMenuPrin.CadSenhaClick(Sender: TObject);
begin
   fUsuario:=TfUsuario.create(self);
   fUsuario.Show;
end;

procedure TfMenuPrin.AlterarSenha1Click(Sender: TObject);
begin
   fAlteraSenha:=TfAlteraSenha.create(self);
   fAlteraSenha.Show;
end;

procedure TfMenuPrin.TrocaDeSeloClick(Sender: TObject);
begin
   fTrocaSelo:=TfTrocaSelo.create(self);
   fTrocaSelo.Show;
end;

procedure TfMenuPrin.IntervalodeSelos1Click(Sender: TObject);
begin
   fIntervaloSelo := TfIntervaloSelo.Create(self);
   fIntervaloSelo.ShowModal;
   fIntervaloSelo.Free;
end;

procedure TfMenuPrin.Panel1Click(Sender: TObject);
begin
  if edit1.Text = 'LOTE' then
    Movimento_manual.Visible:=true;
end;

procedure TfMenuPrin.Panel1DblClick(Sender: TObject);
begin
   edit1.Clear;
   edit1.SetFocus;
   Movimento_manual.Visible:=false;
end;

procedure TfMenuPrin.ParametrosClick(Sender: TObject);
begin
   fParametros:=TfParametros.create(self);
   fParametros.Show;
end;

end.

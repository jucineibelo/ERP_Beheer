unit View.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg,
  System.ImageList,
  Vcl.ImgList,
  System.Actions,
  Vcl.ActnList;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersao: TLabel;
    lblVersaoNum: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUsuarioBranca: TImage;
    pnlDadosUsuario: TPanel;
    lblUsuario: TLabel;
    lblCargo: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicensa: TPanel;
    lblLicensaEmpresa: TLabel;
    lblLicenciadoPara: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnCaixa: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnClientes: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnSair: TSpeedButton;
    imgUsuarioLaranja: TImage;
    pnlConteudo: TPanel;
    imgPrincipal: TImage;
    btnFuncionarios: TSpeedButton;
    btnReceber: TSpeedButton;
    btnVendas: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUsuarioBrancaMouseEnter(Sender: TObject);
    procedure imgUsuarioLaranjaMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
  private
    procedure GetLineMenu(Sender: TObject);
  public
    procedure AjustarFormCenter(ViewForm : TForm);
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses
  Provider.Costantes,
  View.clientes,
  View.fornecedores,
  Provider.Conversao,
  View.produtos,
  View.funcionarios,
  View.vendas,
  View.caixa,
  View.receber;

procedure TViewPrincipal.AjustarFormCenter(ViewForm: TForm);
begin
    ViewForm.Top := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewForm.Height) / 2));
    ViewForm.Left := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewForm.Width) / 2));
end;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
  GetLineMenu(Sender);
  ViewCaixa := TViewCaixa.Create(Self);
  try
    AjustarFormCenter(ViewCaixa);
    ViewCaixa.DisableAllButtons(True);
    ViewCaixa.ButtonSelecionar(False);
    ViewCaixa.DBGridDados.OnDblClick := nil;
    ViewCaixa.ShowModal;
  finally
    ViewCaixa.DisposeOf;
  end;
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  GetLineMenu(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  GetLineMenu(Sender);
  ViewFornecedores := TViewFornecedores.Create(Self);
  try
    AjustarFormCenter(ViewFornecedores);
    ViewFornecedores.Tag := PessoasToInt(TpFornecedores);
    ViewFornecedores.ShowModal;
  finally
    ViewFornecedores.DisposeOf;
  end;
end;

procedure TViewPrincipal.btnFuncionariosClick(Sender: TObject);
begin
  GetLineMenu(Sender);
  ViewFuncionarios := TViewFuncionarios.Create(Self);
  try
    AjustarFormCenter(ViewFuncionarios);
    ViewFuncionarios.Tag := PessoasToInt(TpFuncionarios);
    ViewFuncionarios.ShowModal;
  finally
    ViewFuncionarios.DisposeOf;
  end;
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  GetLineMenu(Sender);
  ViewProdutos := TViewProdutos.Create(Self);
  try
    AjustarFormCenter(ViewProdutos);
    ViewProdutos.STela := TelasToInt(TpProdutos);
    ViewProdutos.ShowModal;
  finally
    ViewProdutos.DisposeOf;
  end;
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewPrincipal.btnVendasClick(Sender: TObject);
begin
  GetLineMenu(Sender);
  ViewVendas := TViewVendas.Create(Self);
  try
    AjustarFormCenter(ViewVendas);
    ViewVendas.ShowModal;
  finally
    ViewVendas.DisposeOf;
  end;
end;

procedure TViewPrincipal.btnReceberClick(Sender: TObject);
begin
  GetLineMenu(Sender);
  ViewAReceber:= TViewAReceber.Create(Self);
  try
    AjustarFormCenter(ViewAReceber);
    ViewAReceber.DisableAllButtons(True);
    ViewAReceber.ButtonSelecionar(False);
    ViewAReceber.DBGridDados.OnDblClick := nil;
    ViewAReceber.ShowModal;
  finally
    ViewAReceber.DisposeOf;
  end;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin // Show
  GetLineMenu(btnClientes);
  lblLicensaEmpresa.Caption := SRazao_Filial;
end;

procedure TViewPrincipal.GetLineMenu(Sender: TObject);
begin   //Fun��o do ShapeMenu
  ShapeMenu.Left := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height;
  ShapeMenu.Top := TSpeedButton(Sender).Top;
  ShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUsuarioBrancaMouseEnter(Sender: TObject);
begin
  imgUsuarioBranca.Visible := False;
  imgUsuarioLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUsuarioLaranjaMouseLeave(Sender: TObject);
begin
  imgUsuarioBranca.Visible := True;
  imgUsuarioLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clYellow;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  GetLineMenu(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try
    AjustarFormCenter(ViewClientes);
    ViewClientes.Tag := PessoasToInt(TpClientes);
    ViewClientes.ShowModal;
  finally
    ViewClientes.DisposeOf;
  end;

end;

end.

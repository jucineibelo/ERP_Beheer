program ERPCurso;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal},
  Service.Conexao in 'src\services\Service.Conexao.pas' {ServiceConexao: TDataModule},
  Service.Cadastro in 'src\services\Service.Cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.Costantes in 'src\providers\Provider.Costantes.pas',
  View.base in 'src\views\View.base.pas' {ViewBase},
  View.base.lista in 'src\views\View.base.lista.pas' {ViewBaseListas},
  View.clientes in 'src\views\View.clientes.pas' {ViewClientes},
  View.fornecedores in 'src\views\View.fornecedores.pas' {ViewFornecedores},
  Provider.Conversao in 'src\providers\Provider.Conversao.pas',
  View.produtos in 'src\views\View.produtos.pas' {ViewProdutos},
  View.mensagens in 'src\views\View.mensagens.pas' {ViewMensagens},
  View.fundo in 'src\views\View.fundo.pas' {ViewFundo},
  View.funcionarios in 'src\views\View.funcionarios.pas' {ViewFuncionarios},
  View.vendas in 'src\views\View.vendas.pas' {ViewVendas},
  View.formaspgto in 'src\views\View.formaspgto.pas' {ViewFormasPGTO},
  View.caixa in 'src\views\View.caixa.pas' {ViewCaixa},
  View.receber in 'src\views\View.receber.pas' {ViewAReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TViewBase, ViewBase);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.Run;
end.

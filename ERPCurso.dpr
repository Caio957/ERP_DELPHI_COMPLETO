program ERPCurso;

uses
  Vcl.Forms,
  view.principal in 'src\view\view.principal.pas' {ViewPrincipal},
  Service.conexao in 'src\services\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in 'src\services\Service.cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.constants in 'src\providers\Provider.constants.pas',
  view.base in 'src\view\view.base.pas' {ViewBase},
  Provider.conversao in 'src\providers\Provider.conversao.pas',
  View.BaseLista2 in 'src\view\View.BaseLista2.pas' {ViewBaseLista2},
  view.clientes2 in 'src\view\view.clientes2.pas' {ViewClientes2},
  view.fornecedores2 in 'src\view\view.fornecedores2.pas' {ViewFornecedores2},
  view.produtos2 in 'src\view\view.produtos2.pas' {ViewProdutos2},
  view.Mensagens in 'src\view\view.Mensagens.pas' {ViewMensagens},
  view.fundo in 'src\view\view.fundo.pas' {ViewFundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseLista2, ViewBaseLista2);
  Application.CreateForm(TViewClientes2, ViewClientes2);
  Application.CreateForm(TViewFornecedores2, ViewFornecedores2);
  Application.CreateForm(TViewProdutos2, ViewProdutos2);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.Run;
end.

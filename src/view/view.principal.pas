unit view.principal;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  System.ImageList,
  Vcl.ImgList,
  System.Actions,
  Vcl.ActnList,
  Provider.constants;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    backPrincipal: TPanel;
    Panel1: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicenca: TPanel;
    lblLicenciado: TLabel;
    lblTitLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnForncedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    SpeedButton1: TSpeedButton;
    imgUserLaranja: TImage;
    imgBackground: TImage;
    btnFuncionarios: TSpeedButton;
    btnVendas: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnForncedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
  private
    procedure Get_LineMENU(Sender: TObject);
  public
    { Public declarations }
  end;

type
  tCliente = record
    Codigo:  Integer;
    Nome: String;
    private
    procedure limpar;



  end;


var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

uses Provider.conversao,
  view.base,
  Service.conexao,
  Service.cadastro,
  view.clientes2,
  view.fornecedores2,
  view.produtos2;


procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin   //Caixa
    Get_LineMENU(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);

begin  //Clientes
    Get_LineMENU(Sender);

    ViewClientes2 := TViewClientes2.Create(nil);
    try

        ViewClientes2.Top    := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewClientes2.Height) / 2));
        ViewClientes2.Left   := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewClientes2.Width) / 2));

        ViewClientes2.Tag := PessoasToint(tpcliente);
        ViewClientes2.ShowModal;
    finally
      FreeAndNil(ViewClientes2);
    end;

end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin  //Config
     Get_LineMENU(Sender);
end;

procedure TViewPrincipal.btnForncedoresClick(Sender: TObject);
begin  //Fornecedores
     Get_LineMENU(Sender);

     ViewFornecedores2 := TViewFornecedores2.Create(Self);
    try

        ViewFornecedores2.Top    := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewFornecedores2.Height) / 2));
        ViewFornecedores2.Left   := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewFornecedores2.Width) / 2));

        ViewFornecedores2.Tag := PessoasToint(tpfornecedores);
        ViewFornecedores2.ShowModal;
    finally
      FreeAndNil(ViewFornecedores2);
    end;

end;

procedure TViewPrincipal.btnFuncionariosClick(Sender: TObject);
begin   //Funcion�rios

    Get_LineMENU(Sender);

end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  // Produtos
  Get_LineMENU(Sender);

  // Verifica se o formul�rio j� foi criado
  if not Assigned(ViewProdutos2) then
  begin
    // Criar o formul�rio se ele ainda n�o existe
    ViewProdutos2 := TViewProdutos2.Create(nil);
  end;

  try
    // Definir a posi��o do formul�rio
    ViewProdutos2.Top := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewProdutos2.Height) / 2));
    ViewProdutos2.Left := Round(pnlMenu.Width + ((pnlConteudo.Width - ViewProdutos2.Width) / 2));

    // Exibir o formul�rio
    ViewProdutos2.Show;  // Alterado para Show
  except
    FreeAndNil(ViewProdutos2);  // Liberar em caso de erro
    raise;  // Lan�ar o erro novamente para ser tratado externamente, se necess�rio
  end;
end;


procedure TViewPrincipal.btnVendasClick(Sender: TObject);
begin  //vendas

    Get_LineMENU(Sender);

end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
     Get_LineMENU(btnClientes);
     lblLicenciado.Caption := sRAZAO_FILLIAL;
end;

procedure TViewPrincipal.Get_LineMENU(Sender: TObject);
begin
     ShapeMenu.Left := 0;
     ShapeMenu.Top := 0;
     ShapeMenu.Height := TSpeedButton(Sender).Height;
     ShapeMenu.Top := TSpeedButton(Sender).Top;
     ShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUserBrancaMouseEnter(Sender: TObject);
begin
 imgUserBranca.Visible := false;
 imgUserLaranja.Visible := true;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
    imgUserBranca.Visible := True;
    imgUserLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
     lblTituloEmpresa.font.color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
     lblTituloEmpresa.font.color := clWhite;
end;

procedure TViewPrincipal.SpeedButton1Click(Sender: TObject);
begin
    Application.Terminate;
end;

{ tCliente }

procedure tCliente.limpar;
begin
Codigo := 0;
Nome := '';
end;

end.

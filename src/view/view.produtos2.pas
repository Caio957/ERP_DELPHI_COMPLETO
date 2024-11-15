unit view.produtos2;

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
  View.BaseLista2,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Mask,
  Vcl.DBCtrls;

type
  TViewProdutos2 = class(TViewBaseLista2)
    pnlDetalhe: TPanel;
    dsDados2: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    lblProdutos2: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBG_detalhe: TDBGrid;
    procedure CardPanel_ListasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos2: TViewProdutos2;

implementation

uses
  Service.cadastro, Provider.constants, Provider.conversao, view.Mensagens;

{$R *.dfm}

procedure TViewProdutos2.btnEditarClick(Sender: TObject);
begin
  inherited;
    dsDados2.DataSet.Edit;
end;

procedure TViewProdutos2.btnNovoClick(Sender: TObject);
begin
  inherited;

  // Coloca o QRY_produto1 no modo de inser��o
  if not (ServiceCadastro.QRY_produto1.State in [dsInsert, dsEdit]) then
  begin
    ServiceCadastro.QRY_produto1.Insert;
  end;

  ServiceCadastro.QRY_produto1PR1_GRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto1PR1_SUBGRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto2.Open();
  ServiceCadastro.QRY_produto2.insert;
end;

procedure TViewProdutos2.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dsDados.DataSet.Post;

  ServiceCadastro.QRY_produto2.Edit;
  ServiceCadastro.QRY_produto2PR2_CODIGOPR1.AsInteger     := ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger;
  ServiceCadastro.QRY_produto2PR2_FILIAL.AsInteger        := iCOD_FILIAL;
  ServiceCadastro.QRY_produto2PR2_SITRIBUTARIA.AsInteger  := 1;
  ServiceCadastro.QRY_produto2.Post;

  TViewMensagens.Mensagem('Produto salvo com sucesso!', 'Sucesso', 'I', [mbOk]);

end;

procedure TViewProdutos2.CardPanel_ListasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin              //marcar grupo e subgrupo padr�o 1
  inherited;

  SelectFirst;
  btnRetornarPesquisa.Visible := false;

   if CardPanel_Listas.ActiveCard = Card_Cadastro then
  begin
    lblTituloClientes.Caption := 'Cadastro de Produtos';
     btnRetornarPesquisa.visible := True;
  end

  else
  begin
    lblTituloClientes.Caption := 'Consulta de Produtos';
  end;

end;

procedure TViewProdutos2.FormShow(Sender: TObject);
begin
  inherited;
  GET_Produtos;
  if not ServiceCadastro.QRY_produto2.Active then
    ServiceCadastro.QRY_produto2.Open;
end;


end.

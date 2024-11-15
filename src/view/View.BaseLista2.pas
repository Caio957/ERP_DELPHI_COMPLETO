unit View.BaseLista2;

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
  view.base,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXCtrls;

type
  TViewBaseLista2 = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcone: TPanel;
    Image1: TImage;
    pnlFechar: TPanel;
    SpeedButton1: TSpeedButton;
    lblTituloClientes: TLabel;
    btnNovo: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    pnlLinhaDeFundo: TPanel;
    CardPanel_Listas: TCardPanel;
    Card_Pesquisa: TCard;
    Card_Cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edt_Pesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    pnlTituloCadCli: TPanel;
    lblCadTitulo: TLabel;
    btnRetornarPesquisa: TSpeedButton;
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanel_ListasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnRetornarPesquisaClick(Sender: TObject);
    procedure DBG_dadosDblClick(Sender: TObject);

  private
    { Private declarations }
  public

  var
    xTELA: string;

  end;

var
  ViewBaseLista2: TViewBaseLista2;

implementation

uses
  Provider.constants, Provider.conversao, Service.cadastro, view.Mensagens, view.fundo;

{$R *.dfm}




procedure TViewBaseLista2.btnCancelarClick(Sender: TObject);
begin           //procedure do bot�o de Cancelar
  inherited;

  if dsDados.DataSet.State in dsEditModes then
  begin

    dsDados.DataSet.Cancel;

  end;

  CardPanel_Listas.ActiveCard := Card_Pesquisa;


end;


procedure TViewBaseLista2.btnEditarClick(Sender: TObject);
begin     //procedure para bot�o de edi��o
  inherited;

  dsDados.DataSet.Edit;
  CardPanel_Listas.ActiveCard := Card_Cadastro;

end;

procedure TViewBaseLista2.btnExcluirClick(Sender: TObject);
begin       //procedure para bot�o EXCLUIR

    if dsDados.DataSet.RecordCount > 0 then
  begin

      if Self.Tag > 0 then
      begin

          case tag of

            1: begin

              if TViewMensagens.Mensagem('Deseja mesmo excluir este cliente?', 'Exclus�o', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Cliente deletado com sucesso!', 'Deletar', 'E', [mbOk]);
              end;

            end;

            2: begin

            if TViewMensagens.Mensagem('Deseja mesmo excluir este fornecedor?', 'Exclus�o', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Fornecedor deletado com sucesso!', 'Deletar', 'E', [mbOk]);
              end;

            end;

            3: begin

              if TViewMensagens.Mensagem('Deseja mesmo excluir este funcion�rio?', 'Exclus�o', 'E', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Funcion�rio deletado com sucesso!', 'Deletar', 'E', [mbOk]);
              end;

            end;


          end;

      end


      else
      begin
          dsDados.DataSet.Delete;
          if xTELA = TelasToStr(tpProdutos) then
          begin
            TViewMensagens.Mensagem('Produto deletado com sucesso!', 'Deletar', 'E', [mbOk]);
          end;

          if xTELA = TelasToStr(tpCaixa) then
          begin
            TViewMensagens.Mensagem('Caixa deletado com sucesso!', 'Deletar', 'E', [mbOk]);
          end;

          if xTELA = TelasToStr(tpGrupo) then
          begin
            TViewMensagens.Mensagem('Grupo deletado com sucesso!', 'Deletar', 'E', [mbOk]);
          end;

          if xTELA = TelasToStr(tpSubgrupo) then
          begin
            TViewMensagens.Mensagem('SubGrupo deletado com sucesso!', 'Deletar', 'E', [mbOk]);
          end;

      end;

      CardPanel_Listas.ActiveCard := Card_Pesquisa;

  end;

end;

procedure TViewBaseLista2.btnNovoClick(Sender: TObject);
begin
  inherited;

  dsDados.DataSet.Insert;
  CardPanel_Listas.ActiveCard := Card_Cadastro;

end;

procedure TViewBaseLista2.btnRetornarPesquisaClick(Sender: TObject);
begin
  inherited;
  CardPanel_Listas.ActiveCard := Card_Pesquisa;
end;

PROCEDURE TViewBaseLista2.btnSalvarClick(Sender: TObject);
begin        //procedure do bot�o Salvar
  INHERITED;

  if dsDados.DataSet.State in dsEditModes then
  begin


      if Self.Tag > 0 then
      begin
         ServiceCadastro.QRY_PessoasPES_TIPOPESSOA.AsInteger := Self.Tag;
         ServiceCadastro.QRY_Pessoas.Post;

          case tag of

            1: begin
              TViewMensagens.Mensagem('Cliente salvo com sucesso!', 'Sucesso', 'I', [mbOk]);
            end;

            2: begin
              TViewMensagens.Mensagem('Fornecedor salvo com sucesso!', 'Sucesso', 'I', [mbOk]);
            end;

            3: begin
              TViewMensagens.Mensagem('Funcion�rio salvo com sucesso!', 'Sucesso', 'I', [mbOk]);
            end;

          end;

          CardPanel_Listas.ActiveCard := Card_Pesquisa;
      end;


//      else
//      begin
//          dsDados.DataSet.Post;
//
//          if xTELA = TelasToStr(tpProdutos) then
//          begin
//            TViewMensagens.Mensagem('Produto salvo com sucesso!', 'Salvar', 'I', [mbOk]);
//          end;
//
//          if xTELA = TelasToStr(tpCaixa) then
//          begin
//            TViewMensagens.Mensagem('Caixa salvo com sucesso!', 'Salvar', 'I', [mbOk]);
//          end;
//
//          if xTELA = TelasToStr(tpGrupo) then
//          begin
//            TViewMensagens.Mensagem('Grupo salvo com sucesso!', 'Salvar', 'I', [mbOk]);
//          end;
//
//          if xTELA = TelasToStr(tpSubgrupo) then
//          begin
//            TViewMensagens.Mensagem('Subgrupo salvo com sucesso!', 'Salvar', 'I', [mbOk]);
//          end;
//
//      end;
//
      CardPanel_Listas.ActiveCard := Card_Pesquisa;

  end;

end;


procedure TViewBaseLista2.CardPanel_ListasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);  //implementa��o das procedures de mostrar cardPanel
begin
  inherited;
  if CardPanel_Listas.ActiveCard = Card_Cadastro then
  begin
    SelectFirst;
  end;
end;


procedure TViewBaseLista2.DBG_dadosDblClick(Sender: TObject);
begin   //clicar duas vezes na grid
  inherited;
  btnEditar.Click;
end;

//implementa��o de mostrar o card_pesquisa sempre que iniciar o form



procedure TViewBaseLista2.FormShow(Sender: TObject);
begin
  inherited;
  CardPanel_Listas.ActiveCard := Card_Pesquisa;
  GET_Pessoas(self.Tag);
end;

//implementa��o de tornar o panel m�vel, podendo mover o form inteiro para algum lado do sistema
procedure TViewBaseLista2.pnlTopoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin   //mover o formulario sem bordas
    inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TViewBaseLista2.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  self.Close;
end;

end.

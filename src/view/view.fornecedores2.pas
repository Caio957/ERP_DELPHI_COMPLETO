unit view.fornecedores2;

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
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TViewFornecedores2 = class(TViewBaseLista2)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure CardPanel_ListasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores2: TViewFornecedores2;

implementation

uses
  Service.cadastro;

{$R *.dfm}

procedure TViewFornecedores2.CardPanel_ListasCardChange(Sender: TObject;
  PrevCard, NextCard: TCard);
begin
  inherited;

  if CardPanel_Listas.ActiveCard = Card_Cadastro then
  begin
    lblTituloClientes.Caption := 'Cadastro de Fornecedores';
  end

  else
  begin

    lblTituloClientes.Caption := 'Consulta de Fornecedores';

  end;

end;

end.

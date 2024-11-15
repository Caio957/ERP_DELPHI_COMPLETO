unit view.clientes2;

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
  TViewClientes2 = class(TViewBaseLista2)
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CardPanel_ListasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewClientes2: TViewClientes2;

implementation

uses
  Service.cadastro, view.base;

{$R *.dfm}

procedure TViewClientes2.CardPanel_ListasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;

  if CardPanel_Listas.ActiveCard = Card_Cadastro then
  begin
    lblTituloClientes.Caption := 'Cadastro de clientes';
  end

  else
  begin

    lblTituloClientes.Caption := 'Consulta de clientes';

  end;

end;



procedure TViewClientes2.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Self.close;
end;

end.

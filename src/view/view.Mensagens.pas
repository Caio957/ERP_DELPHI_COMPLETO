unit view.Mensagens;

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
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;


  Type
    TMyButtons = (mbSim, mbNao, mbOk);


type
  TViewMensagens = class(TViewBase)
    pnlImagens: TPanel;
    pnlConteudo: TPanel;
    pnlBotoes: TPanel;
    mmoTexto: TMemo;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    btnOk: TSpeedButton;
    btnNao: TSpeedButton;
    btnSim: TSpeedButton;
    imgAlert: TImage;
    imgInformation: TImage;
    imgError: TImage;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mmoTextoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgAlertMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlBotoesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public

  Class function Mensagem(Texto: string; Titulo: string; Tipo: Char; Botoes: array of TMyButtons): Boolean;

  end;

var
  ViewMensagens: TViewMensagens;

implementation

uses
  view.fundo;

{$R *.dfm}

{ TViewBase1 }

procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin      //botão não
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOkClick(Sender: TObject);
begin       //botão OK
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin    //botão sim
  inherited;
  Self.ModalResult := mrYes;
end;

procedure TViewMensagens.imgAlertMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin   //mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TViewMensagens.lblTituloMouseDown(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin   //mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;


class function TViewMensagens.Mensagem(Texto, Titulo: string; Tipo: Char; Botoes: array of TMyButtons): Boolean;
var
  zI: integer;
  zVIEW: TViewMensagens;

begin

  zVIEW := TViewMensagens.Create(nil);
  try

    zView.lblTitulo.Caption := Titulo;
    zVIEW.mmoTexto.Text     := Texto;

    for zI := 0 to Length(Botoes) - 1 do
    begin   //Tratando os botões

        case (Botoes[zI]) of

          mbOk: begin
                zView.btnOk.Visible := True;
                zVIEW.btnOk.Align   :=alRight;
                end;

          mbSim: begin
                zView.btnSim.Visible := True;
                zVIEW.btnSim.Align   :=alRight;
                end;

          mbNao: begin
                zView.btnNao.Visible := True;
                zVIEW.btnNao.Align   :=alRight;
                end;

          else begin
            zView.btnOk.Visible := True;
            zView.btnOk.Align   := alRight;
          end;
        end;


    end;


    //Tipo das imagens
    case(Tipo) of

      'I':begin
              zVIEW.imginformation.Visible := True;  //informação
          end;


      'A':begin
              zVIEW.imgAlert.Visible := True;  //Alerta
          end;



      'E':begin
              zVIEW.imgError.Visible := True;  //Erro
          end;


      else begin
        zVIEW.imgInformation.Visible := True;     //Exceções
      end;

    end;

    ViewFundo.Show;
    zVIEW.ShowModal;  //mostrar a notificação personalizada



    case zVIEW.ModalResult of
        mrOk, mrYes : Result := True;

        else
        Result := False;
    end;


  finally
    if (zVIEW <> nil) then
    begin
      ViewFundo.Hide;
      FreeAndNil(zVIEW);
    end;

  end;

end;

procedure TViewMensagens.mmoTextoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin   //mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TViewMensagens.pnlBotoesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin   //mover o formulario sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.

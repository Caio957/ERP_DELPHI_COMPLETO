unit view.base;

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
  Vcl.ExtCtrls;

type
  TViewBase = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
  public

  end;

var
  ViewBase: TViewBase;

implementation

{$R *.dfm}


                  //parei na aula 7 parte 1
procedure TViewBase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin


   if Key = VK_ESCAPE then
   begin
    Self.Close;
   end;


  if Key = VK_RETURN then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
  end;


end;

end.

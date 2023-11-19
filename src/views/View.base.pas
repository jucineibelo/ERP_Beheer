unit View.base;

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
  Vcl.Dialogs;

type
  TViewBase = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBase: TViewBase;

implementation

{$R *.dfm}

procedure TViewBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then // se eu pressionar ESC
  begin
    Self.Close; // Tela vai fechar automaticamente
  end;

  if Key = VK_RETURN then // se eu pressionar enter
  begin
    Perform(WM_NEXTDLGCTL, 0, 0); // o edit vai pular para o proximo
  end;

end;

end.

unit View.caixa;

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
  View.base.lista,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TViewCaixa = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewCaixa: TViewCaixa;

implementation

{$R *.dfm}

uses
  Service.Cadastro,
  Provider.Costantes;

procedure TViewCaixa.FormShow(Sender: TObject);
begin
  inherited;
  GetCaixa;
end;

end.

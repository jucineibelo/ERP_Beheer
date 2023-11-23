unit View.receber;

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
  TViewAReceber = class(TViewBaseListas)
    DBGrid1: TDBGrid;
    dsConta_detalhes: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewAReceber: TViewAReceber;

implementation

{$R *.dfm}

uses
  Service.Cadastro,
  Provider.Costantes;

procedure TViewAReceber.FormShow(Sender: TObject);
begin
  inherited;
  GetAReceber;
end;

end.

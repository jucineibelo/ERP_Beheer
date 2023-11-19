unit View.clientes;

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
  Vcl.ExtCtrls,
  Service.Cadastro,
  Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TViewClientes = class(TViewBaseListas)
    lblCod: TLabel;
    lblNomeCliente: TLabel;
    edtNomeCliente: TDBEdit;
    lblFantasia: TLabel;
    edtFantasia: TDBEdit;
    lblTelefone: TLabel;
    edtTelefone: TDBEdit;
    lblCnpjCpf: TLabel;
    edtCnpj: TDBEdit;
    lblIeRg: TLabel;
    edtIeRg: TDBEdit;
    lblObs: TLabel;
    edtObs: TDBEdit;
    dbEdtCod: TDBText;
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  edtCnpj.SetFocus;
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCnpj.SetFocus;
end;

end.

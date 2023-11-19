unit View.fornecedores;

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
  Data.DB, Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TViewFornecedores = class(TViewBaseListas)
    lblCod: TLabel;
    dbEdtCod: TDBText;
    edtCnpj: TDBEdit;
    lblCnpjCpf: TLabel;
    edtNomeCliente: TDBEdit;
    lblNomeCliente: TLabel;
    edtFantasia: TDBEdit;
    lblFantasia: TLabel;
    edtTelefone: TDBEdit;
    lblTelefone: TLabel;
    edtIeRg: TDBEdit;
    lblIeRg: TLabel;
    lblObs: TLabel;
    edtObs: TDBEdit;
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

uses
  Service.Cadastro;


procedure TViewFornecedores.btnEditarClick(Sender: TObject);
begin
  inherited;
  edtCnpj.SetFocus;
end;

procedure TViewFornecedores.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtCnpj.SetFocus;
end;

end.

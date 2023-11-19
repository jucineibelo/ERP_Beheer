unit View.funcionarios;

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
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  Vcl.Mask;

type
  TViewFuncionarios = class(TViewBaseListas)
    edtObs: TDBEdit;
    lblObs: TLabel;
    edtIeRg: TDBEdit;
    lblIeRg: TLabel;
    edtTelefone: TDBEdit;
    lblTelefone: TLabel;
    edtCnpj: TDBEdit;
    lblCnpjCpf: TLabel;
    lblCod: TLabel;
    dbEdtCod: TDBText;
    edtNomeCliente: TDBEdit;
    lblNomeCliente: TLabel;
    edtFantasia: TDBEdit;
    lblFantasia: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFuncionarios: TViewFuncionarios;

implementation

{$R *.dfm}

uses
  Service.Cadastro,
  Provider.Conversao,
  Provider.Costantes;

procedure TViewFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
  GetPessoas(PessoasToInt(TpFuncionarios));
end;

end.

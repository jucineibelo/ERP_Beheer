unit View.produtos;

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
  Vcl.Mask,
  Vcl.DBCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    dsProdDetalhes: TDataSource;
    pnlProdutosDetalhes: TPanel;
    DBGridProdutosDetalhes: TDBGrid;
    lblID: TLabel;
    lblNomeProduto: TLabel;
    edtNomeProduto: TDBEdit;
    lblNomePopular: TLabel;
    edtNomePopular: TDBEdit;
    lblCodigoBarras: TLabel;
    edtCodigoBarras: TDBEdit;
    lblReferencia: TLabel;
    edtReferencia: TDBEdit;
    lblNcm: TLabel;
    edtNcm: TDBEdit;
    edtID: TDBText;
    lblCustoInicial: TLabel;
    edtCustoInicial: TDBEdit;
    lblCustoAvista: TLabel;
    edtCustoAvista: TDBEdit;
    lblVendaPrazo: TLabel;
    edtVendaPrazo: TDBEdit;
    lblEstoque: TLabel;
    edtEstoque: TDBEdit;
    lblDetalhesProduto: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

uses
  Service.Cadastro,
  Provider.Costantes,
  View.mensagens;

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dsProdDetalhes.DataSet.Edit;
end;

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  with ServiceCadastro do
  begin
    Qry_ProdutosGRUPO.AsInteger    := 1;
    Qry_ProdutosSUBGRUPO.AsInteger := 1;
    Qry_Produtos_Detalhes.Open();
    Qry_Produtos_Detalhes.Insert;
  end;
end;

procedure TViewProdutos.btnSalvarClick(Sender: TObject);
begin // foi necessario implementar para a tabela produtos detalhes porque a produtoz normal ta implemntado na viewlista
  inherited;

  with ServiceCadastro.Qry_Produtos do
  begin
    Edit;
    Post;
  end;

   with ServiceCadastro do
   begin
    Qry_Produtos_Detalhes.Edit;
    Qry_Produtos_DetalhesID_PRODUTO.AsInteger          := ServiceCadastro.Qry_ProdutosID.AsInteger;
    Qry_Produtos_DetalhesID_FILIAL.AsInteger           := ICod_Filial;
    Qry_Produtos_DetalhesSITUACAO_TRIBUTARIA.AsInteger := 1;
    Qry_Produtos_Detalhes.Post;
  end;

  ViewMensagens.Mensagem('Salvar', 'Produto salvo com sucesso.', 'I', [mbOk]);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin
  inherited;
  GetProdutos;
end;

end.

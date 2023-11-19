unit Service.Cadastro;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServiceCadastro = class(TDataModule)
    Qry_Pessoas: TFDQuery;
    Qry_Enderecos: TFDQuery;
    Qry_EnderecosID: TIntegerField;
    Qry_EnderecosPESSOA: TIntegerField;
    Qry_EnderecosCEP: TStringField;
    Qry_EnderecosCIDADE: TStringField;
    Qry_EnderecosENDERECO: TStringField;
    Qry_EnderecosBAIRRO: TStringField;
    Qry_EnderecosOBSERVACAO: TStringField;
    Qry_EnderecosNUMERO: TStringField;
    Qry_PessoasID: TIntegerField;
    Qry_PessoasRAZAO: TStringField;
    Qry_PessoasFANTASIA: TStringField;
    Qry_PessoasTELEFONE: TStringField;
    Qry_PessoasCNPJ_CPF: TStringField;
    Qry_PessoasIE_RG: TStringField;
    Qry_PessoasOBSERVACAO: TStringField;
    Qry_PessoasTIPO_PESSOA: TIntegerField;
    Qry_Produtos: TFDQuery;
    Qry_Produtos_Detalhes: TFDQuery;
    Qry_ProdutosID: TIntegerField;
    Qry_ProdutosNOME_PRODUTO: TStringField;
    Qry_ProdutosNOME_POPULAR: TStringField;
    Qry_ProdutosCODIGO_BARRA: TStringField;
    Qry_ProdutosREFERENCIA: TStringField;
    Qry_ProdutosGRUPO: TIntegerField;
    Qry_ProdutosSUBGRUPO: TIntegerField;
    Qry_Produtos_DetalhesID: TIntegerField;
    Qry_Produtos_DetalhesID_PRODUTO: TIntegerField;
    Qry_Produtos_DetalhesID_FILIAL: TIntegerField;
    Qry_Produtos_DetalhesCUSTO_INICIAL: TFMTBCDField;
    Qry_Produtos_DetalhesVENDA_AVISTA: TFMTBCDField;
    Qry_Produtos_DetalhesVENDA_APRAZO: TFMTBCDField;
    Qry_Produtos_DetalhesSITUACAO_TRIBUTARIA: TIntegerField;
    Qry_ProdutosNCM: TStringField;
    Qry_Produtos_DetalhesESTOQUE: TFMTBCDField;
    Qry_Estoque: TFDQuery;
    Qry_Estoque_Item: TFDQuery;
    Qry_Estoque_ItemID: TIntegerField;
    Qry_Estoque_ItemID_ESTOQUE: TIntegerField;
    Qry_Estoque_ItemID_PRODUTO: TIntegerField;
    Qry_Estoque_ItemQTDE: TFMTBCDField;
    Qry_Estoque_ItemVALOR_UNITARIO: TFMTBCDField;
    Qry_Estoque_ItemDESCONTO: TFMTBCDField;
    Qry_Estoque_ItemVALOR_TOTAL: TFMTBCDField;
    Qry_EstoqueID: TIntegerField;
    Qry_EstoqueTIPO: TIntegerField;
    Qry_EstoqueVENDEDOR: TIntegerField;
    Qry_EstoqueDATA_: TDateField;
    Qry_EstoqueHORA: TTimeField;
    Qry_EstoqueDESCONTO: TFMTBCDField;
    Qry_EstoqueVLR_TOTAL: TFMTBCDField;
    Qry_Caixa: TFDQuery;
    Qry_CaixaID: TIntegerField;
    Qry_CaixaID_ESTOQUE: TIntegerField;
    Qry_CaixaDATA_HORA: TSQLTimeStampField;
    Qry_CaixaTIPO: TStringField;
    Qry_CaixaVALOR: TFMTBCDField;
    Qry_CaixaDESCRICAO: TStringField;
    procedure Qry_ProdutosAfterScroll(DataSet: TDataSet);
    procedure Qry_EstoqueAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  Service.Conexao,
  Provider.Costantes;

{$R *.dfm}

procedure TServiceCadastro.Qry_EstoqueAfterScroll(DataSet: TDataSet);
begin
  GetVendaItens(Qry_EstoqueID.AsInteger);
end;

procedure TServiceCadastro.Qry_ProdutosAfterScroll(DataSet: TDataSet);
begin //pegando os produtos detalhes
  GetProdutos_Detalhes(ServiceCadastro.Qry_ProdutosID.AsInteger, ICod_Filial);
end;

end.

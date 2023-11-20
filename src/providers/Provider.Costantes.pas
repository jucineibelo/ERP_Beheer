unit Provider.Costantes;

interface

procedure GetPessoas(ATipo: Integer);
procedure GetProdutos;
procedure GetProdutos_Detalhes(ACodigoProduto: Integer); overload;
procedure GetProdutos_Detalhes(ACodigoProduto, ACodigoFilial: Integer); overload;
procedure GetVendedor(ACodigoVendedor: Integer);
procedure GetVendas;
procedure GetVendaItens(AcodidoVenda: Integer);
procedure PutCaixa(AIdEstoque, AIdFormaPgto: Integer; ATipo, ADescricao: string; AValor: Double);
procedure UpdateCaixa(AIdEstoque: Integer; AValor: Double);

var
  ICod_Filial: Integer;
  ICod_Vendedor: Integer;
  SRazao_Filial: string;
  SNome_Vendedor: string;
  TOTAL_VENDA: Double;

implementation

uses
  Service.Cadastro,
  Provider.Conversao,
  View.mensagens,
  System.SysUtils;

procedure GetPessoas(ATipo: Integer);
begin // Fun��o para buscar uma pessoa passada por parametro
  with ServiceCadastro.Qry_Pessoas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from pessoa p where p.tipo_pessoa =:tipopessoa');
    SQL.Add('order by id asc');
    Params[0].AsInteger := ATipo;
    Open();
  end;
end;

procedure GetProdutos;
begin // Fun��o para buscar todos os produtos
  with ServiceCadastro.Qry_Produtos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from produtos order by id');
    Open();
  end;
end;

procedure GetProdutos_Detalhes(ACodigoProduto: Integer);
begin // Fun��o para buscar um produto passado por parametro
  with ServiceCadastro.Qry_Produtos_Detalhes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from produtos_detalhes where id_produto = :idproduto');
    Params[0].AsInteger := ACodigoProduto;
    Open();
  end;
end;

procedure GetProdutos_Detalhes(ACodigoProduto, ACodigoFilial: Integer);
begin // Fun��o para buscar um produto e filial passado por parametro
  with ServiceCadastro.Qry_Produtos_Detalhes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from produtos_detalhes where id_produto = :idproduto and id_filial = :idfilial');
    Params[0].AsInteger := ACodigoProduto;
    Params[1].AsInteger := ACodigoFilial;
    Open();
  end;
end;

procedure GetVendedor(ACodigoVendedor: Integer);
begin // Fun��o para buscar vendedor que no caso � um funcionario | parametro 1 o ID da pessoa | parametro 2 tipo da pessoa
  // que no caso � tipo funcionarios, ja temos uma fun��o que retorna um inteiro com o tipo atravez de um ENUM
  with ServiceCadastro.Qry_Pessoas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from pessoa where id = :id and tipo_pessoa = :tipo');
    Params[0].AsInteger := ACodigoVendedor;
    Params[1].AsInteger := PessoasToInt(TpFuncionarios);
    Open();
  end;

  if ServiceCadastro.Qry_Pessoas.RecordCount > 0 then
  begin
    ICod_Vendedor := 0;
    SNome_Vendedor := '';

    ICod_Vendedor := ServiceCadastro.Qry_PessoasID.AsInteger;
    SNome_Vendedor := ServiceCadastro.Qry_PessoasRAZAO.AsString;
  end
  else
  begin
    ViewMensagens.Mensagem('Informa��o.', 'Vendedor n�o encontrado!', 'I', [mbOk])
  end;
end;

procedure GetVendas;
begin
  with ServiceCadastro.Qry_Estoque do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from estoque order by 1');
    Open();
  end;
end;

procedure GetVendaItens(AcodidoVenda: Integer);
begin
  with ServiceCadastro.Qry_Estoque_Item do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' select *                                          ' +
            '     from estoque_item ei                          ' +
            '     inner join estoque e on e.id = ei.id_estoque  ' +
            ' where ei.id_estoque = :idestoque;                 ');

    Params[0].AsInteger := AcodidoVenda;
    Open();
  end;

  //SOMANDO A VENDA
  TOTAL_VENDA := 0;

  ServiceCadastro.Qry_Estoque_Item.DisableControls;
  ServiceCadastro.Qry_Estoque_Item.First;

  while not ServiceCadastro.Qry_Estoque_Item.Eof do
  begin
    TOTAL_VENDA := TOTAL_VENDA + ServiceCadastro.Qry_Estoque_ItemVALOR_TOTAL.AsFloat;
    ServiceCadastro.Qry_Estoque_Item.Next;
  end;

  ServiceCadastro.Qry_Estoque_Item.EnableControls;
end;

procedure PutCaixa(AIdEstoque, AIdFormaPgto: Integer; ATipo, ADescricao: string; AValor: Double);
begin
  with ServiceCadastro do
  begin
    Qry_Caixa.Close;
    Qry_Caixa.SQL.Clear;
    Qry_Caixa.SQL.Add(' INSERT INTO caixa (id_estoque, ' +
                      ' id_forma_pgto,                 ' +
                      ' data_hora,                     ' +
                      ' tipo,                          ' +
                      ' valor,                         ' +
                      ' descricao)                     ' +
                      ' VALUES (:id,                   ' +
                      ' :idFormaPgto,                  ' +
                      ' :datahora,                     ' +
                      ' :tipo,                         ' +
                      ' :valor,                        ' +
                      ' :descricao)                    '
                      );
    Qry_Caixa.Params.ParamByName('id').AsInteger            := AIdEstoque;
    Qry_Caixa.Params.ParamByName('idFormaPgto').AsInteger := AIdFormaPgto;
    Qry_Caixa.Params.ParamByName('datahora').AsDateTime     := Now;
    Qry_Caixa.Params.ParamByName('tipo').AsString           := 'E';
    Qry_Caixa.Params.ParamByName('valor').AsFloat           := AValor;
    Qry_Caixa.Params.ParamByName('descricao').AsString      := ADescricao;
    Qry_Caixa.ExecSQL;
  end;
end;

procedure UpdateCaixa(AIdEstoque: Integer; AValor: Double);
begin
   with ServiceCadastro do
   begin
     Qry_Caixa.Close;
     Qry_Caixa.SQL.Clear;
     Qry_Caixa.SQL.Add(' UPDATE caixa           ' +
                       ' SET                    ' +
                       ' DATA_HORA = :datahora, ' +
                       ' VALOR = :valor         ' +
                       ' WHERE ID_ESTOQUE = :id '
                       );
    Qry_Caixa.Params.ParamByName('datahora').AsDateTime := Now;
    Qry_Caixa.Params.ParamByName('valor').AsFloat       := AValor;
    Qry_Caixa.Params.ParamByName('id').AsInteger        := AIdEstoque;
    Qry_Caixa.ExecSQL;
   end;
end;

end.

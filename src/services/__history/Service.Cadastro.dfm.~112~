object ServiceCadastro: TServiceCadastro
  Height = 508
  Width = 359
  object Qry_Pessoas: TFDQuery
    Active = True
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from pessoa where id =:id')
    Left = 56
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Qry_PessoasID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_PessoasRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object Qry_PessoasFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object Qry_PessoasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object Qry_PessoasCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Origin = 'CNPJ_CPF'
      Size = 30
    end
    object Qry_PessoasIE_RG: TStringField
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
      Size = 30
    end
    object Qry_PessoasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object Qry_PessoasTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
    end
  end
  object Qry_Enderecos: TFDQuery
    Active = True
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from endereco where id = :id')
    Left = 56
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Qry_EnderecosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_EnderecosPESSOA: TIntegerField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
    end
    object Qry_EnderecosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object Qry_EnderecosCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object Qry_EnderecosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object Qry_EnderecosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object Qry_EnderecosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object Qry_EnderecosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
  end
  object Qry_Produtos: TFDQuery
    Active = True
    AfterScroll = Qry_ProdutosAfterScroll
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from produtos where id = :id')
    Left = 56
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Qry_ProdutosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_ProdutosNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 100
    end
    object Qry_ProdutosNOME_POPULAR: TStringField
      FieldName = 'NOME_POPULAR'
      Origin = 'NOME_POPULAR'
      Size = 100
    end
    object Qry_ProdutosCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Origin = 'CODIGO_BARRA'
      Size = 50
    end
    object Qry_ProdutosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object Qry_ProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object Qry_ProdutosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
    end
    object Qry_ProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
  end
  object Qry_Produtos_Detalhes: TFDQuery
    Active = True
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from produtos_detalhes where id =:id')
    Left = 184
    Top = 144
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Qry_Produtos_DetalhesID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_Produtos_DetalhesID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object Qry_Produtos_DetalhesID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object Qry_Produtos_DetalhesCUSTO_INICIAL: TFMTBCDField
      FieldName = 'CUSTO_INICIAL'
      Origin = 'CUSTO_INICIAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry_Produtos_DetalhesVENDA_AVISTA: TFMTBCDField
      FieldName = 'VENDA_AVISTA'
      Origin = 'VENDA_AVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry_Produtos_DetalhesVENDA_APRAZO: TFMTBCDField
      FieldName = 'VENDA_APRAZO'
      Origin = 'VENDA_APRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry_Produtos_DetalhesSITUACAO_TRIBUTARIA: TIntegerField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SITUACAO_TRIBUTARIA'
    end
    object Qry_Produtos_DetalhesESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
  object Qry_Estoque: TFDQuery
    AfterScroll = Qry_EstoqueAfterScroll
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from estoque'
      '')
    Left = 56
    Top = 208
    object Qry_EstoqueID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_EstoqueTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object Qry_EstoqueVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
    object Qry_EstoqueID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Qry_EstoqueDATA_: TDateField
      FieldName = 'DATA_'
      Origin = 'DATA_'
    end
    object Qry_EstoqueHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object Qry_EstoqueDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object Qry_EstoqueVLR_TOTAL: TFMTBCDField
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object Qry_Estoque_Item: TFDQuery
    Active = True
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from estoque_item')
    Left = 184
    Top = 208
    object Qry_Estoque_ItemID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_Estoque_ItemID_ESTOQUE: TIntegerField
      FieldName = 'ID_ESTOQUE'
      Origin = 'ID_ESTOQUE'
    end
    object Qry_Estoque_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object Qry_Estoque_ItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 2
    end
    object Qry_Estoque_ItemVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      Precision = 18
      Size = 2
    end
    object Qry_Estoque_ItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object Qry_Estoque_ItemVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object Qry_Caixa: TFDQuery
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select c.*, f.descricao as Desc_Forma_Pag from caixa c'
      'inner join formas_pagamento f on (f.id = c.id_forma_pgto)'
      'order by id desc')
    Left = 56
    Top = 272
    object Qry_CaixaID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_CaixaID_ESTOQUE: TIntegerField
      FieldName = 'ID_ESTOQUE'
      Origin = 'ID_ESTOQUE'
    end
    object Qry_CaixaID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
    end
    object Qry_CaixaDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Qry_CaixaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qry_CaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry_CaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object Qry_CaixaDESC_FORMA_PAG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_FORMA_PAG'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object Qry_FormaPagamento: TFDQuery
    Active = True
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from formas_pagamento order by id')
    Left = 56
    Top = 336
    object Qry_FormaPagamentoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_FormaPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object Qry_FormaPagamentoGERA_RECEBER: TStringField
      FieldName = 'GERA_RECEBER'
      Origin = 'GERA_RECEBER'
      Size = 10
    end
  end
  object Qry_Contas_Receber: TFDQuery
    AfterScroll = Qry_Contas_ReceberAfterScroll
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select c.*, p.razao from contas_receber c'
      'inner join pessoa p on p.id = c.id_cliente'
      'order by id')
    Left = 56
    Top = 400
    object Qry_Contas_ReceberID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_Contas_ReceberID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Qry_Contas_ReceberRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Qry_Contas_ReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 50
    end
    object Qry_Contas_ReceberVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Qry_Contas_Rec_detalh: TFDQuery
    AutoCalcFields = False
    IndexesActive = False
    Connection = ServiceConexao.FDCon
    SQL.Strings = (
      'select * from c_receber_detalh')
    Left = 192
    Top = 400
    object Qry_Contas_Rec_detalhID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_Contas_Rec_detalhDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Size = 50
    end
    object Qry_Contas_Rec_detalhDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Qry_Contas_Rec_detalhVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry_Contas_Rec_detalhPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object Qry_Contas_Rec_detalhDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object Qry_Contas_Rec_detalhARECEBER: TFMTBCDField
      FieldName = 'ARECEBER'
      Origin = 'ARECEBER'
      currency = True
      Precision = 18
      Size = 2
    end
    object Qry_Contas_Rec_detalhSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
end

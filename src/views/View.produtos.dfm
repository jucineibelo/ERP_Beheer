inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Produtos'
      ExplicitWidth = 77
    end
  end
  inherited pnlLinhadeFundo: TPanel
    inherited CardPanelListas: TCardPanel
      inherited CardPesquisa: TCard
        inherited DBGridDados: TDBGrid
          Height = 218
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'C'#243'digo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_PRODUTO'
              Title.Caption = 'Nome do Produto'
              Width = 280
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_POPULAR'
              Title.Caption = 'Nome Popular'
              Width = 230
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_BARRA'
              Title.Caption = 'C'#243'digo de Barras'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Caption = 'Refer'#234'ncias'
              Width = 200
              Visible = True
            end>
        end
        object pnlProdutosDetalhes: TPanel
          Left = 0
          Top = 325
          Width = 1022
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object DBGridProdutosDetalhes: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1012
            Height = 140
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            DataSource = dsProdDetalhes
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_FILIAL'
                Title.Caption = 'Filial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CUSTO_INICIAL'
                Title.Caption = 'Custo Compra'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDA_AVISTA'
                Title.Caption = 'Venda Avista'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENDA_APRAZO'
                Title.Caption = 'Venda Prazo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTOQUE'
                Title.Caption = 'Estoque'
                Visible = True
              end>
          end
        end
      end
      inherited CardCadastro: TCard
        object lblID: TLabel [0]
          Left = 26
          Top = 88
          Width = 11
          Height = 15
          Caption = 'ID'
        end
        object lblNomeProduto: TLabel [1]
          Left = 96
          Top = 88
          Width = 96
          Height = 15
          Caption = 'Nome do Produto'
          FocusControl = edtNomeProduto
        end
        object lblNomePopular: TLabel [2]
          Left = 472
          Top = 88
          Width = 77
          Height = 15
          Caption = 'Nome Popular'
          FocusControl = edtNomePopular
        end
        object lblCodigoBarras: TLabel [3]
          Left = 19
          Top = 147
          Width = 90
          Height = 15
          Caption = 'C'#243'digo de Barras'
          FocusControl = edtCodigoBarras
        end
        object lblReferencia: TLabel [4]
          Left = 253
          Top = 147
          Width = 60
          Height = 15
          Caption = 'Refer'#234'ncias'
          FocusControl = edtReferencia
        end
        object lblNcm: TLabel [5]
          Left = 587
          Top = 147
          Width = 28
          Height = 15
          Caption = 'NCM'
          FocusControl = edtNcm
        end
        object edtID: TDBText [6]
          Left = 11
          Top = 112
          Width = 47
          Height = 17
          Alignment = taCenter
          DataField = 'ID'
          DataSource = dsDados
          Enabled = False
        end
        object lblCustoInicial: TLabel [7]
          Left = 19
          Top = 292
          Width = 65
          Height = 15
          Caption = 'Custo Inicial'
          FocusControl = edtCustoInicial
        end
        object lblCustoAvista: TLabel [8]
          Left = 125
          Top = 292
          Width = 67
          Height = 15
          Caption = 'Venda Avista'
          FocusControl = edtCustoAvista
        end
        object lblVendaPrazo: TLabel [9]
          Left = 231
          Top = 292
          Width = 64
          Height = 15
          Caption = 'Venda Prazo'
          FocusControl = edtVendaPrazo
        end
        object lblEstoque: TLabel [10]
          Left = 337
          Top = 292
          Width = 42
          Height = 15
          Caption = 'Estoque'
          FocusControl = edtEstoque
        end
        object lblDetalhesProduto: TLabel [11]
          Left = 19
          Top = 254
          Width = 197
          Height = 21
          Caption = '[ DETALHES DO PRODUTO ]'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = 7697781
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object edtNomeProduto: TDBEdit [12]
          Left = 96
          Top = 109
          Width = 350
          Height = 23
          DataField = 'NOME_PRODUTO'
          DataSource = dsDados
          TabOrder = 0
        end
        object edtNomePopular: TDBEdit [13]
          Left = 472
          Top = 109
          Width = 350
          Height = 23
          DataField = 'NOME_POPULAR'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtCodigoBarras: TDBEdit [14]
          Left = 19
          Top = 168
          Width = 200
          Height = 23
          DataField = 'CODIGO_BARRA'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtReferencia: TDBEdit [15]
          Left = 253
          Top = 168
          Width = 300
          Height = 23
          DataField = 'REFERENCIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtNcm: TDBEdit [16]
          Left = 587
          Top = 168
          Width = 154
          Height = 23
          DataField = 'NCM'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtCustoInicial: TDBEdit [17]
          Left = 19
          Top = 313
          Width = 100
          Height = 23
          DataField = 'CUSTO_INICIAL'
          DataSource = dsProdDetalhes
          TabOrder = 5
        end
        object edtCustoAvista: TDBEdit [18]
          Left = 125
          Top = 313
          Width = 100
          Height = 23
          DataField = 'VENDA_AVISTA'
          DataSource = dsProdDetalhes
          TabOrder = 6
        end
        object edtVendaPrazo: TDBEdit [19]
          Left = 231
          Top = 313
          Width = 100
          Height = 23
          DataField = 'VENDA_APRAZO'
          DataSource = dsProdDetalhes
          TabOrder = 7
        end
        object edtEstoque: TDBEdit [20]
          Left = 337
          Top = 313
          Width = 100
          Height = 23
          DataField = 'ESTOQUE'
          DataSource = dsProdDetalhes
          TabOrder = 8
        end
        inherited pnlTituloCadastro: TPanel
          TabOrder = 9
          inherited lblTituloCadastro: TLabel
            Caption = 'Cadastro de Produtos'
            ExplicitWidth = 227
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.Qry_Produtos
    Left = 945
    Top = 243
  end
  object dsProdDetalhes: TDataSource
    DataSet = ServiceCadastro.Qry_Produtos_Detalhes
    Left = 945
    Top = 307
  end
end

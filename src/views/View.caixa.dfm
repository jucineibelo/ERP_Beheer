inherited ViewCaixa: TViewCaixa
  Caption = 'ViewCaixa'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 903
      Height = 29
      Caption = 'Caixa'
      ExplicitWidth = 47
    end
  end
  inherited pnlLinhadeFundo: TPanel
    inherited CardPanelListas: TCardPanel
      inherited CardPesquisa: TCard
        inherited DBGridDados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'N. Lan'#231'amento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_ESTOQUE'
              Title.Caption = 'N. Venda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_HORA'
              Title.Caption = 'Data'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 280
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Caption = 'Tipo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_FORMA_PAG'
              Title.Caption = 'Forma de Pagamento'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 130
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        CardVisible = False
        Enabled = False
        inherited pnlTituloCadastro: TPanel
          inherited lblTituloCadastro: TLabel
            Width = 741
            Height = 48
            Caption = 'Caixa'
            ExplicitWidth = 61
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.Qry_Caixa
  end
end

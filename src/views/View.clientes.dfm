inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 903
      Height = 29
      Caption = 'Clientes'
      ExplicitWidth = 68
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
              Title.Caption = 'C'#243'digo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Title.Caption = 'Nome do Cliente'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Caption = 'Telefone'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJ_CPF'
              Title.Caption = 'CNPJ / CPF'
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        object lblCod: TLabel [0]
          Left = 16
          Top = 88
          Width = 42
          Height = 15
          Caption = 'C'#243'digo:'
        end
        object lblNomeCliente: TLabel [1]
          Left = 331
          Top = 88
          Width = 93
          Height = 15
          Caption = 'Nome do Cliente:'
          FocusControl = edtNomeCliente
        end
        object lblFantasia: TLabel [2]
          Left = 716
          Top = 88
          Width = 82
          Height = 15
          Caption = 'Nome Fantasia:'
          FocusControl = edtFantasia
        end
        object lblTelefone: TLabel [3]
          Left = 240
          Top = 152
          Width = 47
          Height = 15
          Caption = 'Telefone:'
          FocusControl = edtTelefone
        end
        object lblCnpjCpf: TLabel [4]
          Left = 94
          Top = 88
          Width = 62
          Height = 15
          Caption = 'CNPJ / CPF:'
          FocusControl = edtCnpj
        end
        object lblIeRg: TLabel [5]
          Left = 16
          Top = 152
          Width = 38
          Height = 15
          Caption = 'IE / RG:'
          FocusControl = edtIeRg
        end
        object lblObs: TLabel [6]
          Left = 16
          Top = 207
          Width = 65
          Height = 15
          Caption = 'Observa'#231#227'o:'
          FocusControl = edtObs
        end
        object dbEdtCod: TDBText [7]
          Left = 16
          Top = 112
          Width = 39
          Height = 17
          Alignment = taCenter
          DataField = 'ID'
          DataSource = dsDados
          Enabled = False
        end
        inherited pnlTituloCadastro: TPanel
          TabOrder = 6
          inherited lblTituloCadastro: TLabel
            Width = 190
            Caption = 'Cadastro de Clientes'
            ExplicitWidth = 190
          end
        end
        object edtNomeCliente: TDBEdit
          Left = 331
          Top = 109
          Width = 350
          Height = 23
          DataField = 'RAZAO'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtFantasia: TDBEdit
          Left = 716
          Top = 109
          Width = 300
          Height = 23
          DataField = 'FANTASIA'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtTelefone: TDBEdit
          Left = 240
          Top = 173
          Width = 200
          Height = 23
          DataField = 'TELEFONE'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtCnpj: TDBEdit
          Left = 94
          Top = 109
          Width = 200
          Height = 23
          DataField = 'CNPJ_CPF'
          DataSource = dsDados
          TabOrder = 0
        end
        object edtIeRg: TDBEdit
          Left = 16
          Top = 173
          Width = 200
          Height = 23
          DataField = 'IE_RG'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtObs: TDBEdit
          Left = 16
          Top = 228
          Width = 1000
          Height = 23
          DataField = 'OBSERVACAO'
          DataSource = dsDados
          TabOrder = 5
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.Qry_Pessoas
  end
end

inherited ViewAReceber: TViewAReceber
  Caption = 'ViewAReceber'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Contas a Receber'
      ExplicitWidth = 903
    end
  end
  inherited pnlLinhadeFundo: TPanel
    inherited CardPanelListas: TCardPanel
      inherited CardPesquisa: TCard
        inherited DBGridDados: TDBGrid
          Height = 237
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CLIENTE'
              Title.Caption = 'C'#243'd Cliente'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Title.Caption = 'Nome Cliente'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Caption = 'Documento'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 150
              Visible = True
            end>
        end
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 344
          Width = 1012
          Height = 126
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BorderStyle = bsNone
          DataSource = dsConta_detalhes
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGridDadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'DOCUMENTO'
              Title.Caption = 'Documento'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Title.Caption = 'Parcela'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_VENCIMENTO'
              Title.Caption = 'Vencimento'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARECEBER'
              Title.Caption = 'A Receber'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Caption = 'Saldo'
              Width = 64
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        CardVisible = False
        Enabled = False
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.Qry_Contas_Receber
  end
  object dsConta_detalhes: TDataSource
    DataSet = ServiceCadastro.Qry_Contas_Rec_detalh
    Left = 945
    Top = 411
  end
end

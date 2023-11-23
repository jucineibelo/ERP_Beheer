inherited ViewVendas: TViewVendas
  Caption = 'ViewVendas'
  TextHeight = 15
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 903
      Height = 29
      Caption = 'Vendas'
      ExplicitWidth = 61
    end
  end
  inherited pnlRodape: TPanel
    inherited btnExcluir: TSpeedButton
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
    inherited btnSalvar: TSpeedButton
      Left = 743
      ExplicitLeft = 921
    end
    inherited btnCancelar: TSpeedButton
      Left = 637
      ExplicitLeft = 815
    end
    inherited btnEditar: TSpeedButton
      Left = 531
      ExplicitLeft = 709
    end
    inherited btnNovo: TSpeedButton
      Left = 425
      ExplicitLeft = 603
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_'
              Title.Caption = 'Data'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA'
              Title.Caption = 'Hor'#225'rio'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Desconto'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Title.Caption = 'Valor Total'
              Width = 150
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        inherited pnlTituloCadastro: TPanel
          Height = 201
          TabOrder = 1
          ExplicitHeight = 201
          inherited lblTituloCadastro: TLabel
            Width = 741
            Height = 176
            Caption = '[ Vendas ]'
            ExplicitWidth = 113
          end
          object lblEscolherProd: TLabel [1]
            Left = 24
            Top = 127
            Width = 133
            Height = 20
            Caption = 'Escolha um produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentFont = False
          end
          object lblNomeVendor: TLabel [2]
            Left = 95
            Top = 83
            Width = 127
            Height = 20
            Caption = '[ Nome Vendedor ]'
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentColor = False
            ParentFont = False
          end
          object lblQtd: TLabel [3]
            Left = 457
            Top = 127
            Width = 29
            Height = 20
            Caption = 'QTD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentFont = False
          end
          object lblSubTotal: TLabel [4]
            Left = 659
            Top = 127
            Width = 65
            Height = 20
            Caption = 'Sub. Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentFont = False
          end
          object lblVendedor: TLabel [5]
            Left = 24
            Top = 55
            Width = 67
            Height = 20
            Caption = 'C'#243'd. Vend'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentFont = False
          end
          object lblVlrUnitario: TLabel [6]
            Left = 552
            Top = 127
            Width = 78
            Height = 20
            Caption = 'Vlr. Unit'#225'rio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentFont = False
          end
          object Label1: TLabel [7]
            Left = 256
            Top = 55
            Width = 80
            Height = 20
            Caption = 'C'#243'd. Cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentFont = False
          end
          object lblNomeCliente: TLabel [8]
            Left = 326
            Top = 83
            Width = 109
            Height = 20
            Caption = '[ Nome Cliente ]'
            Color = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentColor = False
            ParentFont = False
          end
          inherited pnlBtnVoltar: TPanel
            Height = 201
            ExplicitHeight = 201
            inherited btnVoltarPesquisa: TSpeedButton
              Height = 48
              Align = alTop
              ExplicitLeft = 3
              ExplicitWidth = 133
              ExplicitHeight = 48
            end
          end
          object edtQtd: TEdit
            Left = 457
            Top = 153
            Width = 80
            Height = 23
            NumbersOnly = True
            TabOrder = 3
            OnExit = edtQtdExit
          end
          object edtSubTotal: TEdit
            Left = 659
            Top = 153
            Width = 90
            Height = 23
            NumbersOnly = True
            ReadOnly = True
            TabOrder = 5
          end
          object edtVlrUnitario: TEdit
            Left = 551
            Top = 153
            Width = 90
            Height = 23
            NumbersOnly = True
            ReadOnly = True
            TabOrder = 4
            OnExit = edtQtdExit
          end
          object pnlBotaoAdicionar: TPanel
            Left = 768
            Top = 153
            Width = 74
            Height = 23
            BevelOuter = bvNone
            Color = 16759413
            ParentBackground = False
            TabOrder = 2
            object btnAdicionar: TSpeedButton
              Left = 0
              Top = 0
              Width = 74
              Height = 23
              Align = alClient
              Caption = 'Adicionar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI Semibold'
              Font.Style = []
              ParentFont = False
              OnClick = btnAdicionarClick
              ExplicitLeft = 8
              ExplicitTop = 8
            end
          end
          object edtCodCliente: TSearchBox
            Left = 256
            Top = 81
            Width = 64
            Height = 23
            TabOrder = 1
            OnExit = edtCodClienteExit
            OnInvokeSearch = edtCodClienteInvokeSearch
          end
        end
        object edtVendedor: TSearchBox
          Left = 25
          Top = 81
          Width = 64
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvNone
          NumbersOnly = True
          TabOrder = 0
          OnExit = edtVendedorExit
          OnInvokeSearch = edtVendedorInvokeSearch
        end
        object edtDescriProd: TSearchBox
          Left = 24
          Top = 153
          Width = 409
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 2
          OnInvokeSearch = edtDescriProdInvokeSearch
        end
        object DBGridVendas: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 206
          Width = 1012
          Height = 172
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          Color = 16709613
          DataSource = dsItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGridDadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_PRODUTO'
              Title.Caption = 'C'#243'd Produto'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_ESTOQUE'
              Title.Caption = 'C'#243'd Estoque'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Title.Caption = 'Quantidade'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_UNITARIO'
              Title.Caption = 'Valor Unit'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Desconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Title.Caption = 'Valor Total'
              Width = 150
              Visible = True
            end>
        end
        object pnlTotais: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 383
          Width = 1022
          Height = 91
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alBottom
          BevelOuter = bvNone
          Color = 16761992
          ParentBackground = False
          TabOrder = 4
          OnMouseDown = pnlRodapeMouseDown
          object lblTotalVenda: TLabel
            Left = 921
            Top = 6
            Width = 81
            Height = 25
            Caption = 'Sub. Total'
            Color = clBackground
            Font.Charset = ANSI_CHARSET
            Font.Color = 5526612
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Pitch = fpFixed
            Font.Style = []
            Font.Quality = fqDraft
            ParentColor = False
            ParentFont = False
          end
          object edtTotalVenda: TEdit
            Left = 848
            Top = 36
            Width = 154
            Height = 45
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16761992
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '0,00'
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.Qry_Estoque
    Left = 969
    Top = 187
  end
  object dsItens: TDataSource
    DataSet = ServiceCadastro.Qry_Estoque_Item
    Left = 969
    Top = 251
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 892
    Top = 187
    object FDMemTable1ID_PRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PRODUTO'
    end
    object FDMemTable1ID_ESTOQUE: TIntegerField
      FieldName = 'ID_ESTOQUE'
    end
    object FDMemTable1VALOR_UNITARIO: TCurrencyField
      FieldName = 'VALOR_UNITARIO'
    end
    object FDMemTable1QTDE: TFloatField
      FieldName = 'QTDE'
    end
    object FDMemTable1DESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object FDMemTable1SUBTOTAL: TCurrencyField
      FieldName = 'SUBTOTAL'
    end
  end
end

unit View.base.lista;

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
  View.base,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.WinXPanels,
  Vcl.WinXCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Imaging.pngimage;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnllcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnExcluir: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnNovo: TSpeedButton;
    pnlLinhadeFundo: TPanel;
    CardPanelListas: TCardPanel;
    CardPesquisa: TCard;
    CardCadastro: TCard;
    pnlPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    SearchBox1: TSearchBox;
    DBGridDados: TDBGrid;
    dsDados: TDataSource;
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
    pnlBtnVoltar: TPanel;
    btnVoltarPesquisa: TSpeedButton;
    pnlBotaoSelecionar: TPanel;
    btnSelecionar: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgIconeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlRodapeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanelListasCardChange(Sender: TObject;
      PrevCard, NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnVoltarPesquisaClick(Sender: TObject);
    procedure DBGridDadosDblClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure dsDadosStateChange(Sender: TObject);
  private
  public
    procedure ClearAllEdtis;
    procedure DisableAllButtons(AValue: Boolean);
    procedure ButtonSelecionar(AValue : Boolean);
    var
      STela: string;


  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

uses
  Service.Cadastro,
  Provider.Conversao,
  Provider.Costantes,
  View.mensagens;

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  begin
    dsDados.DataSet.Cancel;
  end;

  CardPanelListas.ActiveCard := CardPesquisa;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin
  inherited;
  CardPanelListas.ActiveCard := CardCadastro;
  dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin
  inherited;

  if dsDados.DataSet.RecordCount > 0 then
  begin

    if Self.Tag > 0 then
    begin

      case Self.Tag of
        // Self retorna a propria tela | Tag � um m�todo inteiro nativo que por padr�o retorna 0
        1:
          begin
            if TViewMensagens.Mensagem('Excluir','Deseja mesmo excluir o Cliente?','E', [mbSim, mbNao]) then
            begin
              dsDados.DataSet.Delete;
              TViewMensagens.Mensagem('Sucesso','Cliente exclu�do com sucesso.','I', [mbOk]);
            end;
          end;

        2:
          begin
            if TViewMensagens.Mensagem('Excluir','Deseja mesmo excluir o Fornecedor?','E', [mbSim, mbNao]) then
            begin
              dsDados.DataSet.Delete;
              TViewMensagens.Mensagem('Sucesso','Fornecedor exclu�do com sucesso.','I', [mbOk]);
            end;
          end;

        3:
          begin
            if TViewMensagens.Mensagem('Excluir','Deseja mesmo excluir o funcion�rio?','E', [mbSim, mbNao]) then
            begin
              dsDados.DataSet.Delete;
              TViewMensagens.Mensagem('Sucesso','Funcion�rio exclu�do com sucesso','I', [mbOk]);
            end;
          end;

      end
    end
    else
    begin
      if STela = TelasToInt(TpProdutos) then
      begin
        if TViewMensagens.Mensagem('Excluir','Deseja mesmo excluir o produto?','E', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Sucesso','Produto exclu�do com sucesso','I', [mbOk]);
        end;
      end;

      if STela = TelasToInt(TpCaixa) then
      begin
        if TViewMensagens.Mensagem('Excluir','Deseja mesmo excluir o caixa?','E', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Sucesso','Caixa exclu�do com sucesso','I', [mbOk]);
        end;
      end;

      if STela = TelasToInt(TpGrupo) then
      begin
        if TViewMensagens.Mensagem('Excluir','Deseja mesmo excluir o grupo?','E', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Sucesso','Grupo exclu�do com sucesso','I', [mbOk]);
        end;
      end;

      if STela = TelasToInt(TpSubGrupo) then
      begin
        if TViewMensagens.Mensagem('Excluir','Deseja mesmo excluir o subgrupo?','E', [mbSim, mbNao]) then
        begin
          dsDados.DataSet.Delete;
          TViewMensagens.Mensagem('Sucesso','Subgrupo exclu�do com sucesso','I', [mbOk]);
        end;
      end;

    end;

  end;

  CardPanelListas.ActiveCard := CardPesquisa;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin
  inherited;
  CardPanelListas.ActiveCard := CardCadastro;
  dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if dsDados.DataSet.State in dsEditModes then
  begin
    if Self.Tag > 0 then
    begin
      ServiceCadastro.Qry_PessoasTIPO_PESSOA.AsInteger := Self.Tag;
      ServiceCadastro.Qry_Pessoas.Post;

      case Self.Tag of
        // Self retorna a propria tela | Tag � um m�todo inteiro nativo nesse caso foi desenvolvido um ENUN
        1:
          begin
            ViewMensagens.Mensagem('Sucesso','Cliente salvo com sucesso.', 'I', [mbOk]);
          end;

        2:
          begin
            ViewMensagens.Mensagem('Sucesso','Fornecedor salvo com sucesso.', 'I', [mbOk]);
          end;

        3:
          begin
            ViewMensagens.Mensagem('Sucesso','Funcion�rio salvo com sucesso.', 'I', [mbOk]);
          end;
      end;
    end;
  end;

  CardPanelListas.ActiveCard := CardPesquisa;
end;

procedure TViewBaseListas.btnSelecionarClick(Sender: TObject);
begin //bot�o selecionar
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewBaseListas.btnVoltarPesquisaClick(Sender: TObject);
begin
  inherited;
  CardPanelListas.ActiveCard := CardPesquisa;
end;

procedure TViewBaseListas.ButtonSelecionar(AValue: Boolean);
begin
  pnlBotaoSelecionar.Visible := AValue;
  btnSelecionar.Visible      := AValue;
end;

procedure TViewBaseListas.CardPanelListasCardChange(Sender: TObject;
  PrevCard, NextCard: TCard);
begin
  inherited;
  btnVoltarPesquisa.Visible := False;

  if CardPanelListas.ActiveCard = CardCadastro then
  begin
    SelectFirst; // esse comando substitui com SetFocus ou seja ele sempre entrara no primeiro componente ativo
    btnVoltarPesquisa.Visible := True;
  end;

end;

procedure TViewBaseListas.ClearAllEdtis;
var
 I: Integer;
begin
  for I := 0 to ComponentCount -1 do
  begin
    if Components[I] is TSearchBox then
      TSearchBox(Components[I]).Clear;
  end;
end;

procedure TViewBaseListas.DBGridDadosDblClick(Sender: TObject);
begin
  inherited;
  btnEditar.Click;
end;

procedure TViewBaseListas.DisableAllButtons(AValue: Boolean); //desativar todos os bot�es
var
I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TSpeedButton then
      TSpeedButton(Components[I]).Visible := not AValue;
  end;

  btnSair.Visible            := AValue;
end;

procedure TViewBaseListas.dsDadosStateChange(Sender: TObject);
begin
  inherited;
  btnNovo.Enabled     := not (dsDados.State in [dsInsert, dsEdit]);
  btnEditar.Enabled   := btnNovo.Enabled and (dsDados.DataSet.RecordCount > 0);
  btnSalvar.Enabled   := dsDados.State in [dsInsert, dsEdit];
  btnCancelar.Enabled := btnSalvar.Enabled;
  btnExcluir.Enabled  := btnEditar.Enabled;
  end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  CardPanelListas.ActiveCard := CardPesquisa;
  GetPessoas(Self.Tag);
  dsDados.DataSet.Open;
end;

procedure TViewBaseListas.imgIconeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);

end;

procedure TViewBaseListas.lblTituloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewBaseListas.pnlRodapeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

end.

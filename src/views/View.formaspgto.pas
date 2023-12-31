unit View.formaspgto;

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
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TViewFormasPGTO = class(TViewBase)
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnllcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    pnlRodape: TPanel;
    btnSalvar: TSpeedButton;
    pnlFPagamentos: TPanel;
    pnlInfoPgto: TPanel;
    dbgDados: TDBGrid;
    dsFormasPgto: TDataSource;
    pnlTotais: TPanel;
    dbgFormasPgtoEscolhida: TDBGrid;
    FDMemFormasPgto: TFDMemTable;
    FDMemFormasPgtoVALOR_PGTO: TCurrencyField;
    dsPagamentosEscolhidos: TDataSource;
    FDMemFormasPgtoDESCR_PGTO: TStringField;
    FDMemFormasPgtoID_FORMA_PGTO: TIntegerField;
    btnSair: TSpeedButton;
    edtValorFaturado: TEdit;
    lblTotalVenda: TLabel;
    edtValorVenda: TEdit;
    lblValorVenda: TLabel;
    Label2: TLabel;
    edtValorRestante: TEdit;
    pnlValor: TPanel;
    pnlTituValor: TPanel;
    lblVlrParaFaturar: TLabel;
    pnlRdapeVlrFat: TPanel;
    pnlBotaoOk: TPanel;
    btnOk: TSpeedButton;
    edtValorPFaturar: TEdit;
    FDMemFormasPgtoGERA_RECEBER: TStringField;
    FDMemFormasPgtoID_CLIENTE: TIntegerField;
    FDMemFormasPgtoDOCUMENTO: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbgDadosDblClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    FValorVenda: Double;
    { Private declarations }
  public
    property ValorVenda: Double read FValorVenda write FValorVenda;
  end;

var
  ViewFormasPGTO: TViewFormasPGTO;

implementation

{$R *.dfm}

uses
  Service.Cadastro,
  View.vendas,
  Provider.Costantes,
  View.mensagens,
  View.fundo;

procedure TViewFormasPGTO.btnOkClick(Sender: TObject);
var
  Valor_Faturado: Double;
  Valor_Restante: Double;
begin
  inherited;
  FDMemFormasPgto.Open;
  FDMemFormasPgto.Insert;
  FDMemFormasPgtoID_FORMA_PGTO.AsInteger := ServiceCadastro.Qry_FormaPagamentoID.AsInteger;
  FDMemFormasPgtoVALOR_PGTO.AsFloat      := StrToFloatDef(edtValorPFaturar.Text, 0);
  FDMemFormasPgtoDESCR_PGTO.AsString     := ServiceCadastro.Qry_FormaPagamentoDESCRICAO.AsString;
  FDMemFormasPgtoGERA_RECEBER.AsString   := ServiceCadastro.Qry_FormaPagamentoGERA_RECEBER.AsString;
  FDMemFormasPgtoID_CLIENTE.AsInteger    := ViewVendas.IdCliente;
  FDMemFormasPgtoDOCUMENTO.AsString      := ServiceCadastro.Qry_EstoqueID.AsString;
  FDMemFormasPgto.Post;

  //calculando a diferen�a
  Valor_Faturado        := StrToFloatDef(edtValorPFaturar.Text, 0);
  edtValorFaturado.Text := FloatToStr(Valor_Faturado + StrToFloatDef(edtValorFaturado.Text, 0));

  Valor_Restante        := FValorVenda - StrToFloatDef(edtValorFaturado.Text, 0);
  edtValorRestante.Text := FloatToStr(Valor_Restante);

  edtValorPFaturar.Clear;
  pnlValor.Visible := False;
  dbgDados.SetFocus;
end;

procedure TViewFormasPGTO.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewFormasPGTO.btnSalvarClick(Sender: TObject);
begin
  while not FDMemFormasPgto.Eof do
  begin
    // atualizar caixa
    if ViewVendas.ClickEditMode then
    begin
      UpdateCaixa(ServiceCadastro.Qry_EstoqueID.AsInteger,
                  FDMemFormasPgtoVALOR_PGTO.AsFloat);
    end
    else
    begin
      //gravar caixa
      PutCaixa(ServiceCadastro.Qry_EstoqueID.AsInteger,
               FDMemFormasPgtoID_FORMA_PGTO.AsInteger,
               'E',
               'N. ' + ServiceCadastro.Qry_EstoqueID.AsString,
               FDMemFormasPgtoVALOR_PGTO.AsFloat);
    end;

    //gravar o gera a receber caso n�o seja avista
    if FDMemFormasPgtoGERA_RECEBER.AsString = 'S' then
    begin
      PutAReceber(FDMemFormasPgtoID_CLIENTE.AsInteger,
                  FDMemFormasPgtoDOCUMENTO.AsString,
                  FDMemFormasPgtoVALOR_PGTO.AsFloat);
    end;

    FDMemFormasPgto.Next;
  end;

  ViewMensagens.Mensagem('Sucesso', 'Venda salva com sucesso.', 'I', [mbOk]);
  Self.Close;
end;

procedure TViewFormasPGTO.dbgDadosDblClick(Sender: TObject);
begin
  inherited;
  if StrToFloatDef(edtValorRestante.Text, 0) > 0 then
  begin
    pnlValor.Visible := True;
    edtValorPFaturar.Text := edtValorRestante.Text;
    edtValorPFaturar.SetFocus;
  end
  else
  begin
    ViewMensagens.Mensagem('Aten��o', 'N�o h� mais valor para faturar.', 'E', [mbOk]);
  end;
end;

procedure TViewFormasPGTO.FormShow(Sender: TObject);
begin
  inherited;
  if not ServiceCadastro.Qry_FormaPagamento.Active then
  begin
    ServiceCadastro.Qry_FormaPagamento.Close;
    ServiceCadastro.Qry_FormaPagamento.Open();
  end;

  edtValorVenda.Text    := FloatToStr(ValorVenda);
  edtValorRestante.Text := FloatToStr(ValorVenda);

end;

end.

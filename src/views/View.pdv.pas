unit View.pdv;

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
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Vcl.Imaging.jpeg,
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
  FireDAC.Stan.StorageBin,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons;

type
  TViewPdv = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    pnlBottom2: TPanel;
    pnlImgLogo: TPanel;
    Image1: TImage;
    pnlEmpresa: TPanel;
    lblNomeEmpr: TLabel;
    pnlHora: TPanel;
    lblHora: TLabel;
    pnlGeo: TPanel;
    pnlData: TPanel;
    pnlMunicipio: TPanel;
    lblData: TLabel;
    lblMunicipio: TLabel;
    pnlCaixa: TPanel;
    lblCaixa: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edtDescProd: TLabel;
    edtCodBarra: TEdit;
    Panel7: TPanel;
    imgProduto: TImage;
    lblNomeProduto: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    lblQtde: TLabel;
    lblVlrUnit: TLabel;
    edtQtde: TEdit;
    edtVlrUnit: TEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1ID: TIntegerField;
    FDMemTable1NOME: TStringField;
    FDMemTable1QTDE: TFloatField;
    FDMemTable1VALOR_UNIT: TFloatField;
    FDMemTable1SUB_TOTAL: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure pnlBottom2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblNomeEmprMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblHoraMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblDataMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlBottomMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlCaixaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlGeoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblCaixaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblMunicipioMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPdv: TViewPdv;

implementation

{$R *.dfm}

procedure TViewPdv.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewPdv.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.lblCaixaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.lblDataMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.lblHoraMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.lblMunicipioMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.lblNomeEmprMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.pnlBottom2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.pnlBottomMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.pnlCaixaMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.pnlGeoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $F012;
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;

procedure TViewPdv.Timer1Timer(Sender: TObject);
begin
  lblHora.Caption := TimeToStr(Time);
end;

end.

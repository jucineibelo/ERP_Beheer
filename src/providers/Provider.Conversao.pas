unit Provider.Conversao;

interface

uses
  SysUtils,
  StrUtils,
  Classes;

type

  TPCPessoas = (TpClientes, TpFornecedores, TpFuncionarios);   //ENUM (ou seja cada posi��o vai representar um tipo de pessoa nesse caso
  TPCTelas = (TpProdutos, TpCaixa, TpGrupo, TpSubGrupo); //ENUM Telas

function PessoasToInt(const ATipo: TPCPessoas): Integer;
function TelasToInt(const ATipo: TPCTelas): string;

implementation

function PessoasToInt(const ATipo: TPCPessoas): Integer;
begin
  case ATipo of
    TpClientes:       Result := 1;
    TpFornecedores:   Result := 2;
    TpFuncionarios:   Result := 3;
  end;
end;

function TelasToInt(const ATipo: TPCTelas): string;
begin
  case ATipo of
    TpProdutos:       Result := 'Produtos';
    TpCaixa:          Result := 'Caixa';
    TpGrupo:          Result := 'Grupo';
    TpSubGrupo:       Result := 'SubGrupo';
  end;
end;

end.

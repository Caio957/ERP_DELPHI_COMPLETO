unit Provider.conversao;


interface

  uses
    SysUtils,
    StrUtils,
    Classes;

    Type
    TPCPessoas = (tpcliente, tpfornecedores, tpfuncionarios);
    TPCTelas = (tpProdutos, tpCaixa, tpGrupo, tpSubgrupo);

    function PessoasToint(const t: TPCPessoas):integer;
    function TelasToStr(const t: TPCTelas):string;

implementation

//implementando pessoas

function PessoasToint(const t: TPCPessoas):integer;
begin
    case t of
    tpcliente:        Result := 1;     //Esse Result l� na frente vai ajudar a, mesmo que o valor iniciar do valor retornado pela function seja 0,
    tpfornecedores:   Result := 2;     //identificar o tp como o n�mero destinado ao Result; N�o importando outro n�emero padr�o.
    tpfuncionarios:   Result := 3;
    end;                               //esse � um tipo de ENUMERA��O tirado do ACBR, onde eu deixo mais expl�cito o tipo que estou trabalhando.

end;

function TelasToStr(const t: TPCTelas):string;
begin

    case t of
      tpProdutos:     Result := 'Produtos';
      tpCaixa:        Result := 'Caixa';
      tpGrupo:        Result := 'Grupo';
      tpSubgrupo:     Result := 'Subgrupo';
    end;

end;


end.

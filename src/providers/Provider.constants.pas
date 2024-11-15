unit Provider.constants;

interface

  procedure GET_Pessoas(iTIPO: integer);
  procedure GET_Produtos;
  procedure GET_Produto_Detalhe(iCOD_PRODUTO: integer); overload;
  procedure GET_Produto_Detalhe(iCOD_PRODUTO, iCOD_FILIAL: integer); overload;


var
   iCOD_FILIAL:     integer;
   sRAZAO_FILLIAL:  string;

implementation

uses Service.cadastro;

procedure GET_Pessoas(iTIPO: integer);
begin
    ServiceCadastro.QRY_Pessoas.Close;
    ServiceCadastro.QRY_Pessoas.SQL.Clear;
    ServiceCadastro.QRY_Pessoas.SQL.Add('SELECT * FROM PESSOAS WHERE PES_TIPOPESSOA = :TIPOPESSOA ORDER BY 1');
    ServiceCadastro.QRY_Pessoas.Params[0].AsInteger := iTIPO;
    ServiceCadastro.QRY_Pessoas.Open();
end;

procedure GET_Produtos;
begin  //busca todos os produtos
    ServiceCadastro.QRY_produto1.Close;
    ServiceCadastro.QRY_produto1.SQL.Clear;
    ServiceCadastro.QRY_produto1.SQL.Add('SELECT * FROM PRODUTO1 ORDER BY PR1_CODIGO');
    ServiceCadastro.QRY_produto1.Open();
end;

 procedure GET_Produto_Detalhe(iCOD_PRODUTO: integer);
 begin  //busca apenas o detalhe do produto selecionado (todos)
    ServiceCadastro.QRY_produto2.Close;
    ServiceCadastro.QRY_produto2.SQL.Clear;
    ServiceCadastro.QRY_produto2.SQL.Add('SELECT * FROM PRODUTO2 where PR2_CODIGOPR1 = :codigo');
    ServiceCadastro.QRY_produto2.Params[0].AsInteger :=  iCOD_PRODUTO;
    ServiceCadastro.QRY_produto2.Open();
 end;

 procedure GET_Produto_Detalhe(iCOD_PRODUTO, iCOD_FILIAL: integer);
 begin  //busca apenas o detalhe do produto selecionado (busca por filial)
    ServiceCadastro.QRY_produto2.Close;
    ServiceCadastro.QRY_produto2.SQL.Clear;
    ServiceCadastro.QRY_produto2.SQL.Add('SELECT * FROM PRODUTO2 where PR2_CODIGOPR1 = :codigo');
    ServiceCadastro.QRY_produto2.SQL.Add('and pr2_filial = :filial');
    ServiceCadastro.QRY_produto2.Params[0].AsInteger :=  iCOD_PRODUTO;
    ServiceCadastro.QRY_produto2.Params[1].AsInteger :=  iCOD_FILIAL;
    ServiceCadastro.QRY_produto2.Open();

 end;

end.

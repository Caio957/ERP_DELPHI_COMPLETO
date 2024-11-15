unit Service.cadastro;

interface

uses
  System.SysUtils,
  System.Classes,
  Service.conexao,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServiceCadastro = class(TDataModule)
    QRY_Pessoas: TFDQuery;
    QRY_PessoasPES_CODIGO: TIntegerField;
    QRY_PessoasPES_RAZAO: TStringField;
    QRY_PessoasPES_FANTASIA: TStringField;
    QRY_PessoasPES_TELEFONE: TStringField;
    QRY_PessoasPES_CNPJ: TStringField;
    QRY_PessoasPES_OBSERVACAO: TStringField;
    QRY_PessoasPES_TIPOPESSOA: TIntegerField;
    QRY_Endereco: TFDQuery;
    QRY_EnderecoEND_CODIGO: TIntegerField;
    QRY_EnderecoEND_PESSOA: TIntegerField;
    QRY_EnderecoEND_CEP: TStringField;
    QRY_EnderecoEND_CIDADE: TStringField;
    QRY_EnderecoEND_ENDERECO: TStringField;
    QRY_EnderecoEND_BAIRRO: TStringField;
    QRY_EnderecoEND_OBSERVACAO: TStringField;
    QRY_EnderecoEND_NUMERO: TStringField;
    QRY_PessoasPES_IERG: TIntegerField;
    QRY_produto1: TFDQuery;
    QRY_produto2: TFDQuery;
    QRY_produto1FDQuery: TFDQuery;
    QRY_produto1PR1_CODIGO: TIntegerField;
    QRY_produto1PR1_NOMECOMPLETO: TStringField;
    QRY_produto1PR1_NOMEPOPULAR: TStringField;
    QRY_produto1PR1_CODIGOBARRA: TStringField;
    QRY_produto1PR1_REFERENCIA: TStringField;
    QRY_produto1PR1_GRUPO: TIntegerField;
    QRY_produto1PR1_SUBGRUPO: TIntegerField;
    QRY_produto1PR1_NCM: TStringField;
    QRY_produto2PR2_CODIGO: TIntegerField;
    QRY_produto2PR2_CODIGOPR1: TIntegerField;
    QRY_produto2PR2_FILIAL: TIntegerField;
    QRY_produto2PR2_CUSTOINI: TFMTBCDField;
    QRY_produto2PR2_VENDAVISTA: TFMTBCDField;
    QRY_produto2PR2_VENDAPRAZO: TFMTBCDField;
    QRY_produto2PR2_SITRIBUTARIA: TIntegerField;
    QRY_produto2PR2_ESTOQUE: TFMTBCDField;
    procedure QRY_produto1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

uses
  Provider.constants;

{%CLASSGROUP 'Vcl.Controls.TControl'}



{$R *.dfm}

procedure TServiceCadastro.QRY_produto1AfterScroll(DataSet: TDataSet);
begin  //pegando os detalhes dos produtos
     GET_Produto_Detalhe(ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger, iCOD_FILIAL);
end;

end.

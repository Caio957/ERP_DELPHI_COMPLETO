object ServiceCadastro: TServiceCadastro
  Height = 480
  Width = 640
  object QRY_Pessoas: TFDQuery
    Active = True
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from pessoas where pes_codigo = :codigo')
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_PessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_PessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_PessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_PessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 30
    end
    object QRY_PessoasPES_CNPJ: TStringField
      FieldName = 'PES_CNPJ'
      Origin = 'PES_CNPJ'
      Size = 30
    end
    object QRY_PessoasPES_IERG: TIntegerField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
    end
    object QRY_PessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 300
    end
    object QRY_PessoasPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object QRY_Endereco: TFDQuery
    Active = True
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from endereco where end_codigo = :codigo')
    Left = 40
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_EnderecoEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_EnderecoEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object QRY_EnderecoEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
    end
    object QRY_EnderecoEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 100
    end
    object QRY_EnderecoEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 100
    end
    object QRY_EnderecoEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 100
    end
    object QRY_EnderecoEND_OBSERVACAO: TStringField
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 100
    end
    object QRY_EnderecoEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
    end
  end
  object QRY_produto1: TFDQuery
    AfterScroll = QRY_produto1AfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto1 where pr1_codigo = :codigo')
    Left = 40
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto1PR1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto1PR1_NOMECOMPLETO: TStringField
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produto1PR1_NOMEPOPULAR: TStringField
      DisplayWidth = 200
      FieldName = 'PR1_NOMEPOPULAR'
      Origin = 'PR1_NOMEPOPULAR'
      Size = 100
    end
    object QRY_produto1PR1_CODIGOBARRA: TStringField
      FieldName = 'PR1_CODIGOBARRA'
      Origin = 'PR1_CODIGOBARRA'
      Size = 50
    end
    object QRY_produto1PR1_REFERENCIA: TStringField
      FieldName = 'PR1_REFERENCIA'
      Origin = 'PR1_REFERENCIA'
      Size = 50
    end
    object QRY_produto1PR1_GRUPO: TIntegerField
      FieldName = 'PR1_GRUPO'
      Origin = 'PR1_GRUPO'
    end
    object QRY_produto1PR1_SUBGRUPO: TIntegerField
      FieldName = 'PR1_SUBGRUPO'
      Origin = 'PR1_SUBGRUPO'
    end
    object QRY_produto1PR1_NCM: TStringField
      FieldName = 'PR1_NCM'
      Origin = 'PR1_NCM'
      Size = 11
    end
  end
  object QRY_produto2: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto2 where pr2_codigo = :codigo')
    Left = 40
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto2PR2_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR2_CODIGO'
      Origin = 'PR2_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto2PR2_CODIGOPR1: TIntegerField
      FieldName = 'PR2_CODIGOPR1'
      Origin = 'PR2_CODIGOPR1'
    end
    object QRY_produto2PR2_FILIAL: TIntegerField
      FieldName = 'PR2_FILIAL'
      Origin = 'PR2_FILIAL'
    end
    object QRY_produto2PR2_CUSTOINI: TFMTBCDField
      FieldName = 'PR2_CUSTOINI'
      Origin = 'PR2_CUSTOINI'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAVISTA: TFMTBCDField
      FieldName = 'PR2_VENDAVISTA'
      Origin = 'PR2_VENDAVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAPRAZO: TFMTBCDField
      FieldName = 'PR2_VENDAPRAZO'
      Origin = 'PR2_VENDAPRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_SITRIBUTARIA: TIntegerField
      FieldName = 'PR2_SITRIBUTARIA'
      Origin = 'PR2_SITRIBUTARIA'
    end
    object QRY_produto2PR2_ESTOQUE: TFMTBCDField
      FieldName = 'PR2_ESTOQUE'
      Origin = 'PR2_ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
  object QRY_produto1FDQuery: TFDQuery
    Left = 248
    Top = 40
  end
end

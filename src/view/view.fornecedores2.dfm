inherited ViewFornecedores2: TViewFornecedores2
  Caption = 'ViewFornecedores2'
  ClientHeight = 550
  ClientWidth = 1000
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1000
  ExplicitHeight = 550
  TextHeight = 15
  inherited pnlTopo: TPanel
    Width = 1000
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1000
    inherited lblTituloClientes: TLabel
      Width = 889
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlIcone: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      Left = 930
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 930
    end
  end
  inherited pnlRodape: TPanel
    Top = 515
    Width = 1000
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 515
    ExplicitWidth = 1000
    inherited btnNovo: TSpeedButton
      Left = 500
      ExplicitLeft = 378
    end
    inherited btnCancelar: TSpeedButton
      Left = 700
      ExplicitLeft = 578
    end
    inherited btnSalvar: TSpeedButton
      Left = 800
      ExplicitLeft = 678
    end
    inherited btnExcluir: TSpeedButton
      Left = 900
      ExplicitLeft = 778
    end
    inherited btnEditar: TSpeedButton
      Left = 600
      ExplicitLeft = 478
    end
  end
  inherited pnlLinhaDeFundo: TPanel
    Width = 1000
    Height = 480
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1000
    ExplicitHeight = 480
    inherited CardPanel_Listas: TCardPanel
      Width = 996
      Height = 480
      ActiveCard = Card_Cadastro
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 996
      ExplicitHeight = 480
      inherited Card_Pesquisa: TCard
        Width = 994
        Height = 478
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 994
        ExplicitHeight = 478
        inherited pnlTituloPesquisa: TPanel
          Width = 994
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 994
          inherited lblTituloPesquisa: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edt_Pesquisa: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited DBG_dados: TDBGrid
          Width = 984
          Height = 387
          Color = clWhite
          DataSource = dsDados
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Nome do fornecedor'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJ'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Title.Caption = 'CPF/CNPJ'
              Visible = True
            end>
        end
      end
      inherited Card_Cadastro: TCard
        Width = 994
        Height = 478
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 994
        ExplicitHeight = 478
        object Label1: TLabel [0]
          Left = 9
          Top = 80
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel [1]
          Left = 85
          Top = 80
          Width = 88
          Height = 15
          Caption = 'Nome do cliente'
          FocusControl = DBEdit2
        end
        object Label3: TLabel [2]
          Left = 441
          Top = 80
          Width = 44
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit3
        end
        object Label4: TLabel [3]
          Left = 647
          Top = 80
          Width = 59
          Height = 15
          Caption = 'CPF / CNPJ'
          FocusControl = DBEdit4
        end
        object Label5: TLabel [4]
          Left = 9
          Top = 136
          Width = 79
          Height = 15
          Caption = 'Nome Fantasia'
          FocusControl = DBEdit5
        end
        object Label6: TLabel [5]
          Left = 315
          Top = 136
          Width = 89
          Height = 15
          Caption = 'Incri'#231#227'o Estadual'
          FocusControl = DBEdit6
        end
        object Label7: TLabel [6]
          Left = 9
          Top = 196
          Width = 62
          Height = 15
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit7
        end
        inherited pnlTituloCadCli: TPanel
          Width = 994
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 994
          inherited lblCadTitulo: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 96
          Width = 70
          Height = 23
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 85
          Top = 96
          Width = 350
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 441
          Top = 96
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 647
          Top = 96
          Width = 215
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CNPJ'
          DataSource = dsDados
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 9
          Top = 152
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 315
          Top = 152
          Width = 154
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 9
          Top = 212
          Width = 500
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_Pessoas
  end
end

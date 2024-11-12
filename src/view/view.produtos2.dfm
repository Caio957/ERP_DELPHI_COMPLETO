inherited ViewProdutos2: TViewProdutos2
  Caption = 'ViewProdutos2'
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
      ExplicitLeft = 500
    end
    inherited btnCancelar: TSpeedButton
      Left = 700
      ExplicitLeft = 700
    end
    inherited btnSalvar: TSpeedButton
      Left = 800
      ExplicitLeft = 800
    end
    inherited btnExcluir: TSpeedButton
      Left = 900
      ExplicitLeft = 900
    end
    inherited btnEditar: TSpeedButton
      Left = 600
      ExplicitLeft = 600
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
          Height = 73
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 994
          ExplicitHeight = 73
          inherited lblTituloPesquisa: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edt_Pesquisa: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited DBG_dados: TDBGrid
          Top = 78
          Width = 984
          Height = 208
          Color = clWhite
          DataSource = dsDados
          Columns = <
            item
              Expanded = False
              FieldName = 'PR1_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMECOMPLETO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMEPOPULAR'
              Title.Caption = 'Nome popular'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_CODIGOBARRA'
              Title.Caption = 'C'#243'digo Barras'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncia'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_GRUPO'
              Title.Caption = 'Grupo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_SUBGRUPO'
              Title.Caption = 'Sub-Grupo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NCM'
              Title.Caption = 'NCM'
              Width = 130
              Visible = True
            end>
        end
        object pnlDetalhe: TPanel
          Left = 0
          Top = 291
          Width = 994
          Height = 187
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object DBG_detalhe: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 984
            Height = 177
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsDados2
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PR2_FILIAL'
                Title.Caption = 'Filial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_CUSTOINI'
                Title.Caption = 'Custo Inicial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAVISTA'
                Title.Caption = 'Venda a vista'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAPRAZO'
                Title.Caption = 'Venda a prazo'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_ESTOQUE'
                Title.Caption = 'Estoque Geral'
                Width = 64
                Visible = True
              end>
          end
        end
      end
      inherited Card_Cadastro: TCard
        Width = 994
        Height = 478
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 994
        ExplicitHeight = 478
        object Label1: TLabel [0]
          Left = 16
          Top = 80
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel [1]
          Left = 104
          Top = 80
          Width = 209
          Height = 21
          Caption = 'Nome completo do produto'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel [2]
          Left = 479
          Top = 80
          Width = 195
          Height = 21
          Caption = 'Nome popular do produto'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel [3]
          Left = 16
          Top = 141
          Width = 126
          Height = 21
          Caption = 'C'#243'digo de barras'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel [4]
          Left = 240
          Top = 141
          Width = 85
          Height = 21
          Caption = 'Refer'#234'ncias'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [5]
          Left = 568
          Top = 141
          Width = 37
          Height = 21
          Caption = 'NCM'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutos2: TLabel [6]
          Left = 16
          Top = 232
          Width = 254
          Height = 30
          Caption = '[ DETALHES DO PRODUTO ]'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -21
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label7: TLabel [7]
          Left = 16
          Top = 277
          Width = 88
          Height = 21
          Caption = 'Custo Inicial'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel [8]
          Left = 192
          Top = 277
          Width = 94
          Height = 21
          Caption = 'Venda '#224' vista'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel [9]
          Left = 368
          Top = 277
          Width = 102
          Height = 21
          Caption = 'Venda a prazo'
          FocusControl = DBEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel [10]
          Left = 540
          Top = 277
          Width = 59
          Height = 21
          Caption = 'Estoque'
          FocusControl = DBEdit10
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlTituloCadCli: TPanel
          Width = 994
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 994
          inherited lblCadTitulo: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited btnRetornarPesquisa: TSpeedButton
            Left = 818
            Visible = False
          end
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 107
          Width = 60
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGO'
          DataSource = dsDados
          Enabled = False
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 107
          Width = 350
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = dsDados
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 479
          Top = 107
          Width = 350
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = dsDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 168
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGOBARRA'
          DataSource = dsDados
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 240
          Top = 168
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_REFERENCIA'
          DataSource = dsDados
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 568
          Top = 168
          Width = 169
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR1_NCM'
          DataSource = dsDados
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 16
          Top = 304
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR2_CUSTOINI'
          DataSource = dsDados2
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 192
          Top = 304
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR2_VENDAVISTA'
          DataSource = dsDados2
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 368
          Top = 304
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR2_VENDAPRAZO'
          DataSource = dsDados2
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 540
          Top = 304
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PR2_ESTOQUE'
          DataSource = dsDados2
          TabOrder = 10
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto1
    Left = 776
  end
  object dsDados2: TDataSource
    DataSet = ServiceCadastro.QRY_produto2
    Left = 840
    Top = 40
  end
end

inherited frmRecebimentoVendaProduto: TfrmRecebimentoVendaProduto
  Caption = 
    'Registrar recebimento por compra de produto ou por presta'#231#227'o de ' +
    'servi'#231'o'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 32
    Top = 16
    Width = 521
    Height = 305
    Lines.Strings = (
      
        'ALTERA'#199#195'O: Acabar com a tela de servi'#231'os e mostrar tanto servi'#231'o' +
        's quanto produtos nessa tela.'
      'A l'#243'gica '#233' a mesma.'
      
        #201' exibida uma lista de todas as contas a receber por produtos ve' +
        'ndidos para clientes (e servi'#231'os prestados),'
      ' com possibilidade para filtro.'
      
        'Ent'#227'o, o usu'#225'rio seleciona uma conta (Ou v'#225'rias) e clica em "Rec' +
        'eber". '#201' '
      'pedida confirma'#231#227'o de '
      'certeza e ent'#227'o as contas s'#227'o retiradas e os recebimentos s'#227'o '
      'efetuados.'
      'D'#250'vida: Que filtros s'#227'o importantes? Como ser'#225' o filtro?'
      'Data m'#225'xima e/ou data m'#237'nima? Por data de venda?')
    TabOrder = 0
  end
end

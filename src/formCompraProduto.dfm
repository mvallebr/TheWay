inherited frmCompraProduto: TfrmCompraProduto
  Caption = 'Efetuar compra de produtos'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Memo1: TMemo
    Left = 32
    Top = 24
    Width = 521
    Height = 409
    Lines.Strings = (
      
        'Aqui deve ser pedido o ID do fornecedor (procurar em uma lista? ' +
        'Pelo '
      'nome? Por qual campo?)'
      
        'e o ID do funcion'#225'rio que est'#225' sendo respons'#225'vel pelo registro d' +
        'a compra.'
      #201' fornecida tamb'#233'm a forma de pagamento para a compra.'
      
        'Em seguida, uma lista de produtos sendo comprados (com qtd, '#233' cl' +
        'aro) '#233' '
      'esperada. '
      
        'No caso de um produto existir no registro mas n'#227'o estar registra' +
        'do para '
      'aquele fornecedor, '
      #233' pedida uma confirma'#231#227'o e o produto '#233' associado ao fornecedor '
      'automaticamente.'
      
        'No caso do produto n'#227'o existir, existe a possibilidade de se adi' +
        'cionar o '
      'produto "on the fly", de forma f'#225'cil,'
      
        'sem sair da tela, e o produto adicionado '#233' automaticamente assoc' +
        'iado '#224' '
      'compra e ao fornecedor.'
      
        'Ap'#243's finalizar a compra, todos os items comprados s'#227'o adicionado' +
        's '#224' lista de '
      
        'contas a pagar (produtos). Caso haja alguma presta'#231#227'o '#224' vista, '#233 +
        ' perguntado '
      
        'se o pagamento deve ser efetuado agora e, caso deva, a tela de p' +
        'agamentos '#233
      'aberta.')
    TabOrder = 0
  end
end

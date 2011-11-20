inherited frmContratacaoServico: TfrmContratacaoServico
  Caption = 'Efetuar contrata'#231#227'o de servi'#231'o'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 40
    Top = 32
    Width = 401
    Height = 321
    Lines.Strings = (
      
        'Aqui deve ser pedido o ID do fornecedor (procurar em uma lista? ' +
        'Pelo '
      'nome? Por qual campo?)'
      
        'e o ID do funcion'#225'rio que est'#225' sendo respons'#225'vel pelo registro d' +
        'a contrata'#231#227'o.'
      #201' fornecida tamb'#233'm a forma de pagamento para a contrata'#231#227'o.'
      'Em seguida, '#233' informado qual '#233' o servi'#231'o sendo prestado.'
      
        'No caso do servi'#243's existir no registro mas n'#227'o estar registrado ' +
        'para '
      'aquele fornecedor, '
      #233' pedida uma confirma'#231#227'o e o servi'#231'o '#233' associado ao fornecedor '
      'automaticamente.'
      
        'No caso do servi'#231'o n'#227'o existir, existe a possibilidade de se adi' +
        'cionar o '
      'servi'#231'o "on the fly", de forma f'#225'cil,'
      
        'sem sair da tela, e o servi'#231'o adicionado '#233' automaticamente assoc' +
        'iado '#224' '
      'contrata'#231#227'o e ao fornecedor.'
      
        'Ap'#243's finalizar a contrata'#231'ao, todos os items comprados s'#227'o adici' +
        'onados '#224' lista de '
      
        'contas a pagar (servi'#231'os). Caso haja alguma presta'#231#227'o '#224' vista, '#233 +
        ' perguntado '
      
        'se o pagamento deve ser efetuado agora e, caso deva, a tela de p' +
        'agamentos '#233
      'aberta.')
    TabOrder = 0
  end
end

#language: pt

Funcionalidade: Realizar o login
     Para que o cliente consiga acessar a minha conta
     Sendo um cliente cadastrado no site
     Desejo que o cliente consiga acessar suas reservas 

  @login
  Cenário: Acessar a minha conta
     Dado que o cliente tenha cadastro no site
     Quando o cliente acessar seu cadastro com '<email>' e '<senha>'
     Então valido que o cliente esta logado

  Exemplos:
  | email                             |  senha         |
  | janethy.oriundi@viajanet.com.br   | Viajanet123!   | 
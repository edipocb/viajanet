#language: pt
# frozen_string_literal: true

Funcionalidade: Realizar o login
     Para que o cliente consiga acessar a minha conta
     Sendo um cliente cadastrado no site
     Desejo que o cliente consiga acessar suas reservas 

  @login
  Cenário: Acessar a minha conta
     Dado que o cliente tenha cadastro no site
     Quando o cliente acessar seu cadastro com <email> e <senha>
     Entao valido que o <pedido> está legível para solicitar o reembolso


   # Exemplos:
   # | email                              |  senha          |
   # | janethy.oriundi@viajanet.com.br    | Viajanet123!    | 
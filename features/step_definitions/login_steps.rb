# frozen_string_literal: true

Dado('que o cliente tenha cadastro no site') do
  @login_page.acessar_site
end
Quando('o cliente acessar seu cadastro com <email> e <senha>') do
  @login_page.acessar_conta('janethy.oriundi@viajanet.com.br', 'Viajanet123!')
  @login_page.cliente_logado
end
Entao('valido que o <pedido> está legível para solicitar o reembolso') do
  @checkout_window = window_opened_by do
    @login_page.localizar_pedido('6500115')
    sleep 5
  end
end
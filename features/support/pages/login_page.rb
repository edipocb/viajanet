class LoginPage < SitePrism::Page

   element  :btn_close_modal,    '.btn-close-modal' 
   element  :modal_checkout,     '#checkoutAbandon'           
   element  :btn_entrar,         '#btn-acesse-3' 
   element  :cadastre_se,        '#btn-cadastro'  
   element  :inserir_email,      '#emailsuper'
   element  :inserir_senha,      '#senhasuper'
   element  :botao_entrar,       '#btacessesuaconta' 
   element  :nome_cliente,       '.name-user'
   element  :minhas_reservas,    '#perfil-link-reservas'

include Capybara::DSL

def acessar_site
    visit "/"
    btn_close_modal.click if has_modal_checkout?
    btn_entrar.click
    cadastre_se.click
end
def acessar_conta(email, senha)
    inserir_email.set email
    inserir_senha.set senha
    botao_entrar.click
end
def cliente_logado 
    nome_cliente.click
    minhas_reservas.click
end
end
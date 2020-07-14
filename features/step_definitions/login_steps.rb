Dado('que o cliente tenha cadastro no site') do
    @login_page.acessar_site
end
Quando('o cliente acessar seu cadastro com {string} e {string}') do |email, senha|
    @login_page.acessar_conta(email, senha)
end
Então('valido que o cliente esta logado') do
    @login_page.cliente_logado
end
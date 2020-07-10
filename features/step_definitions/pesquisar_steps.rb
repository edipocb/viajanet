Dado('o cliente esta no site viajanet') do
    @home = HomePage.new
    @home.acessar
    
  end
  
  Quando('informa os dados do voo desejado') do
    
    
  end
  
  Então('o site retornar os resultados da pesquisa') do
    pending # Write code here that turns the phrase above into concrete actions
  end
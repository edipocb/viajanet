#language: pt

Funcionalidade: Comprar passagem
    Para que o cliente consiga pesquisar passagem
    Sendo um cliente do site
    Desejo que o cliente consiga pesquisar a passagem

   @pesquisar
   Cenario: Pesquisa
        Dado o cliente esta no site viajanet
        Quando informa os dados do voo desejado
        Então o site retornar os resultados da pesquisa 
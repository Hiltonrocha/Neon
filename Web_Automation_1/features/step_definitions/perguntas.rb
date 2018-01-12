Dado("que eu acesso a homepage") do
   @home = Home.new
   @home.load
end
  
Quando("acessar a pagina de perguntas") do

end
  
  Quando("acessar o topico {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("a resposta deve possuir o texto {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
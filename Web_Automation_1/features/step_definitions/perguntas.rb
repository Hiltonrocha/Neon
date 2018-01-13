Dado("que eu acesso a homepage") do
   @homepage = HomePage.new
   @perguntas = Perguntas.new
   @homepage.load
end
  
Quando("acessar a pagina de perguntas") do
  @homepage.rolarpage.click
  @homepage.wait_for_perguntas
  @homepage.perguntas.click
end
  
Quando("acessar o topico Sobre o Banco Neon e a pergunta O neon é so um cartao") do
  @perguntas.pergunta_e_so_um_cartao
end

Entao("a resposta deve possuir o texto") do |table|
  texto = table.rows_hash['text']
  expect(@perguntas.resposta.text).to eql texto
end
#encoding: utf-8
Dado("que acesse a homepage") do
    @loginPage = Login.new
    @menuPage = Menu.new
    @loginPage.load
end
  
Quando("realize o login como Admin") do |table|
    login = table.rows_hash['usuario']
    senha = table.rows_hash['senha']
    @loginPage.realizar_login(login, senha)
end
  
  Dado("que acesse o menu Novo Funcionario") do
    @menuPage.wait_for_pim
    @menuPage.pim.click
    @menuPage.wait_until_addFuncionario_visible
    @menuPage.addFuncionario.click

  end
  
  Quando("preencher os dados do novo usuario") do
    @menuPage.funcionariotbl.criar_funcionario
  end
  
  Então("o usuario deve ser cadastrado com sucesso") do
    @id = @menuPage.funcionariotbl.funcionario_id.value
    @menuPage.funcionarioList.click
    @menuPage.buscafuncionario.buscar_funcionario(@id)

    expect(@menuPage.resultadofuncionariotbl.id_resultado).not_to be_empty
    expect(@menuPage.resultadofuncionariotbl.id_resultado[0].text).to eql @id
   
  end
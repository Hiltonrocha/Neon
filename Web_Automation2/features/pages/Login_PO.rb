class Login < SitePrism::Page
    set_url 'http://opensource.demo.orangehrmlive.com'
    element :login, '#txtUsername'
    element :senha, '#txtPassword'
    element :btnlogin, '#btnLogin'

    def realizar_login(l, senha)
        self.login.set l
        self.senha.set senha
        self.btnlogin.click
    end

end

class Menu < SitePrism::Page ##mapea os elementos do menu
    element :pim, '#menu_pim_viewPimModule'
    element :addFuncionario, '#menu_pim_addEmployee'
    element :funcionarioList, '#menu_pim_viewEmployeeList'


    class FuncionarioTbl < SitePrism::Section # mapea somente os elementos que estao dentro da div para preencher os dados do func
        element :firstName, '#firstName'
        element :middleName, '#middleName'
        element :lastName, '#lastName'
        element :funcionario_id, '#personal_txtEmployeeId'
        element :btnsalvar, '#btnSave'

        def criar_funcionario
            firstName.set Faker::Name.first_name
            middleName.set Faker::Name.last_name
            lastName.set Faker::Name.last_name
            btnsalvar.click
        end
    end

    class BuscaFuncionario < SitePrism::Section  #mapea somente os elementos para realizar a busca do funcionario
        element :id_funcionario, '#empsearch_id'
        element :btn_funcionario, '#searchBtn'
    
        def buscar_funcionario id   
            id_funcionario.set id
            btn_funcionario.click
        end
    end

    class ResultadoFuncionario < SitePrism::Section # mapea os elementos que retorna na table
        elements :id_resultado, 'td.left'
    end
    
    section :funcionariotbl, FuncionarioTbl, 'div#content'
    section :buscafuncionario, BuscaFuncionario, 'div#content'
    section :resultadofuncionariotbl, ResultadoFuncionario, '#search-results'
end


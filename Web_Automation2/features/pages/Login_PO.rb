class Login < SitePrism::Page
    set_url 'http://opensource.demo.orangehrmlive.com'
    element :login, '#txtUsername'
    element :senha, '#txtPassword'
    element :btnlogin, '#btnLogin'

    def realizar_login(l, s)
        self.login.set l
        self.senha.set s
        self.btnlogin.click
    end

end

class Menu < SitePrism::Page ##mapea os elementos do menu
    element :pim, '#menu_pim_viewPimModule'
    element :addFuncionario, '#menu_pim_addEmployee'


    class FuncionarioTbl < SitePrism::Section # mapea somente os elementos que estao dentro da div para preencher os dados do func
        element :firstName, '#firstName'
        element :middleName, '#middleName'
        element :lastName, '#lastName'
        element :btnsalvar, '#btnSave'

        def criar_funcionario
            firstName.set Faker::Name.first_name
            middleName.set Faker::Name.last_name
            middleName.set Faker::Name.last_name
        end
    end 
    section :funcionariotbl, FuncionarioTbl, 'div#content'
end


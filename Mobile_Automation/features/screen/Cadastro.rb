class Cadastro < Calabash::ABase

    $nome = "Onix"

    def modelo_marca
        wait_for_elements_exist(["* id:'modelo'"], :timeout => 40)
        touch("* id:'modelo'")
        keyboard_enter_text($nome)             
    end    

    def ano
        touch("* id:'ano'")
        keyboard_enter_text("2013")
    end    

    def placa
        touch("* id:'placa'")
        keyboard_enter_text("FIQ 0101")
    end   

    def km
        touch("* id:'km'")
        keyboard_enter_text("40000")
        hide_soft_keyboard
    end     

    def valor
        touch("* id:'valor'")
        keyboard_enter_text("31000")
        hide_soft_keyboard
    end    

    def bnt_cadastrar 
        wait_for_elements_exist(["* id:'cadastrar'"], :timeout => 40)
        touch("* id:'cadastrar'")
    end    

    def contem_mensagem?        
        wait_for_elements_exist(["* text:'Carro cadastrado com sucesso'"], :timeout => 40)
    end
end
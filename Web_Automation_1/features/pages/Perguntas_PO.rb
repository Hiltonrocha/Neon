class Perguntas < SitePrism::Page
    elements :botaomais, '.btn-redondo'
    element :resposta, '.aba-conteudo .ativo'


    def pergunta_e_so_um_cartao
        self.botaomais[0].click
        self.botaomais[4].click
    end




end

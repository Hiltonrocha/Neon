#encoding: utf-8
#language: pt

Funcionalidade: Pesquisar por pergunta
Eu como usuário 
Quero acessar a página de perguntas 
Para tirar minhas duvidas 

@teste
Cenário: Pesquisar por Pergunta
Dado que eu acesso a homepage
Quando acessar a pagina de perguntas 
E acessar o topico Sobre o Banco Neon e a pergunta O neon é so um cartao
Entao a resposta deve possuir o texto 
    | text | Não! O Neon é muito mais que um cartão. Somos um banco. Com uma conta Neon você pode fazer pagamentos, transferências, receber grana via boletos e ainda usar seu cartão de débito em qualquer lugar do mundo. Tudo isso sem cobrar taxas absurdas, filas e sem aquela papelada e burocracia que os bancos antigos costumam ter. |

#encoding: utf-8
#language: pt
Funcionalidade: Meu teste

Contexto: Login como Admin
Dado que acesse a homepage
Quando realize o login como Admin
    | usuario | admin |
    | senha   | admin |

Cenário: Cadastrar novo usuário
Dado que acesse o menu Novo Funcionario
Quando preencher os dados do novo usuario
Então o usuario deve ser cadastrado com sucesso
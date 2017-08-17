#language: pt
#utf-8

Funcionalidade:	cadastrar novo empregado
Eu como usuario
Quero logar no site
Para cadastrar um novo empregado

@cadastro
Cenario: Cadastrar empregado no site
 Dado que eu estou no site OrangeHRM
 Quando realizo o cadastro
 Então o usuário é cadastrado

 @verlista
 Cenario: Editar empregado existente
 Dado que estou no site OrangeHRM
 Quando efetuo o login e entro na lista de empregado
 Então edito um empregado
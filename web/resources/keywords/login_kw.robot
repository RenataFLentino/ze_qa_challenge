*** Settings ***
Library  ./../page_objects/login.py
Library  ./../page_objects/contasPedidos.py


*** Keywords ***

## LOGIN SUCESSO ##

Dado que estou na página de login
    Click Enter Button

Quando selecionar a opção entrar com e-mail
    Click Enter Create Email

E preencher email e senha   
    Enter Email  ${USER}
    Enter Password  ${PASS}

E clicar em Entrar
    Click Login Enter Button
    
Então o login é efetuado com sucesso
    Sleep   3
    Page Should Contain     Sucesso

## LOGIN E-MAIL INVÁLIDO ##

E preencher email inválido com senha válida
    Enter Email  ${INVALID_USER}
    Enter Password  ${PASS}

Então é exibida a mensagem de erro de autenticação do e-mail
    Sleep   3
    Page Should Contain  E-mail não encontrado

## LOGIN SENHA INVÁLIDA ##

E preencher email válido com senha inválida
    Enter Email  ${USER}
    Enter Password  ${INVALID_PASS}

Então é exibida a mensagem de erro de autenticação da senha
    Sleep   3
    Page Should Contain  Senha inválida

## LOGIN EM BRANCO ##

E não preencher email e senha
    Textfield Value Should Be    id=login-mail-input-email      ${EMPTY}
    Textfield Value Should Be    id=login-mail-input-password   ${EMPTY}

Então o botão Entrar permanece desabilitado
    Element Should Be Disabled   id=login-mail-button-sign-in

##  DESLOGAR USUÁRIO COM SUCESSO ##

Dado que esteja logado no site
    Click Enter Create Email
    Enter Email  ${USER}
    Enter Password  ${PASS}
    Click Login Enter Button
    Sleep   3
    Page Should Contain     Sucesso

E acessar o menu Conta e Pedidos
    Click Contas Pedidos Link
    
E deslogar o usuário
    Click Contas Pedidos Sair
    Click Modal Sair

Então é exibida a mensagem de sessão encerrada com sucesso
    Sleep   3
    Page Should Contain     Sucesso
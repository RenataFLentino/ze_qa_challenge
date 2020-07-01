*** Settings ***
Resource  ./../resources/support/config/index.robot

Force Tags  login
#Suit Setup

Test Setup     Run keywords  Start Browser                      AND
...                          Maximize Browser Window            AND
...                          Click Age Gate Button Yes          AND
...                          Dado que estou na página de login  

#Suit Teardown
Test Teardown  Run keywords  Capture Page Screenshot           AND
...                          Close Browser


*** Test Cases ***

Scenario: Login com sucesso
   [Tags]  login_com_sucesso
   Quando selecionar a opção entrar com e-mail
   E preencher email e senha
   E clicar em Entrar
   Então o login é efetuado com sucesso

Scenario: Login com e-mail inválido
   [Tags]  login_email_invalido
   Quando selecionar a opção entrar com e-mail
   E preencher email inválido com senha válida
   E clicar em Entrar
   Então é exibida a mensagem de erro de autenticação do e-mail

Scenario: Login com senha inválida
   [Tags]  login_senha_invalida
   Quando selecionar a opção entrar com e-mail
   E preencher email válido com senha inválida
   E clicar em Entrar
   Então é exibida a mensagem de erro de autenticação da senha

Scenario: Login em branco
   [Tags]  login_em_branco
   Quando selecionar a opção entrar com e-mail
   E não preencher email e senha
   Então o botão Entrar permanece desabilitado

Scenário: Deslogar usuário com sucesso
   [Tags]  deslogar_usuario_com_sucesso
   Dado que esteja logado no site
   E acessar o menu Conta e Pedidos
   E deslogar o usuário
   Então é exibida a mensagem de sessão encerrada com sucesso   
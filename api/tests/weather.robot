*** Settings ***
Resource    ./../resource/support/config/index.robot
Force Tags  weather
       
*** Test Cases ***

Scenario: Buscar dados meteorológicos pelo nome da cidade
    [Tags]  busca_cidade
    Quando realizar um GET para consultar as condições meteorológicas na cidade
    Então validar a lista de parâmetros climáticos
    E código de resposta "200"

Scenario: Buscar dados meteorológicos pelo nome da cidade com api key inválida
    [Tags]  busca_cidade_api_key_invalida
    Quando realizar um GET para consultar as condições meteorológicas na cidade com api key inválida
    Então validar mensagem de erro para api key inválida
    E código de resposta "401"
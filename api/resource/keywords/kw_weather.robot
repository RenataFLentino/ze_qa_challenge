*** Settings ***
Resource    ./../support/config/index.robot

*** Variables ***

${SESSION}          weather
${city}             Rio de Janeiro
${key_invalid}      Invalid API key. Please see http://openweathermap.org/faq#error401 for more info.

*** Keywords ***

### BUSCA POR CIDADE  ###

Quando realizar um GET para consultar as condições meteorológicas na cidade
    &{params}=   Create Dictionary   q=${city}     appid=${API_KEY}

    Create Session  ${SESSION}  ${HOST_BASE}    headers=${HEADER}

    ${RESPONSE}      GET Request  ${SESSION}    ${WEATHER_ENDPOINT}   params=${params}    headers=${HEADER}

    Set Test Variable   ${RESPONSE}

Então validar a lista de parâmetros climáticos
    Log                                 Response: ${RESPONSE.text}
    Log To Console                      Response: ${RESPONSE.text}
    Should Not Be Empty                 ${RESPONSE.json()}
    Dictionary Should Contain Key       ${RESPONSE.json()}      id
    Dictionary Should Contain Item      ${RESPONSE.json()}      name        ${city}


### BUSCA POR CIDADE COM API KEY INVÁLIDA ###

Quando realizar um GET para consultar as condições meteorológicas na cidade com api key inválida
    &{params}=   Create Dictionary   q=${city}     appid=${API_KEY_INCORRETA}
    Create Session  ${SESSION}  ${HOST_BASE}    headers=${HEADER}

    ${RESPONSE}      GET Request  ${SESSION}    ${WEATHER_ENDPOINT}   params=${params}    headers=${HEADER}
    
    Set Test Variable   ${RESPONSE}

Então validar mensagem de erro para api key inválida
    Log                                 Response: ${RESPONSE.text}
    Log To Console                      Response: ${RESPONSE.text}
    Dictionary Should Contain item      ${RESPONSE.json()}      message        ${key_invalid}



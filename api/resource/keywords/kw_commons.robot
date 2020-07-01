*** Settings ***
Resource   ./../support/config/index.robot


*** Keywords ***

E código de resposta ${expected_status}
    Should Be Equal  ${expected_status}     "${RESPONSE.status_code}"


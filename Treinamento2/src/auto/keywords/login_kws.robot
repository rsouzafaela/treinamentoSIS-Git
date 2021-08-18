*** Settings **
Documentation   Keyowrds relacionadas a tela de login

*** Keywords ***
Quando inserir os dados de login
    [Arguments]     ${email}    ${senha}
    Wait Until Element Is Visible    ${LOGIN.AUTHENTICATION}
    Input Text                       ${LOGIN.EMAIL}     ${email}
    Input Text                       ${LOGIN.PASSWD}    ${senha}
    Click Element                    ${LOGIN.BTN_SIGNIN}


*** Settings **
Documentation   Keyowrds relacionadas a tela de login

*** Keywords ***
Quando realizar login com sucesso
    Wait Until Element Is Visible    ${LOGIN.AUTHENTICATION}
    Input Text                       ${LOGIN.EMAIL}             ${DADOS_CADASTRAIS.EMAIL}
    Input Text                       ${LOGIN.PASSWD}            ${DADOS_CADASTRAIS.PASSWD}
    Click Element                    ${LOGIN.BTN_SIGNIN}


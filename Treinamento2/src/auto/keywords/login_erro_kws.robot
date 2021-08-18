*** Settings ***
Documentation    Keyowrds relacionadas a tela de login com erro


*** Keywords ***
Então uma mensagem de erro é exibida
    Wait Until Element Is Visible    ${LOGIN_ERRO.MSG_ERRO}    
    Element Should Be Visible        ${LOGIN_ERRO.MSG_ERRO}
    Element Text Should Be           ${LOGIN_ERRO.MSG_ERRO}      Authentication failed.
*** Settings ***
Documentation    Keyowrds relacionadas a tela home

*** Keywords ***
Dado que o cliente esteja na tela inicial da aplicação
    Wait Until Element Is Visible    ${HOME.BOTAO_SIGNIN}

E acessar a tela de login
    Wait Until Element Is Visible    ${HOME.BOTAO_SIGNIN}
    Click Element                    ${HOME.BOTAO_SIGNIN}

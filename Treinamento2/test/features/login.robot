*** Settings ***
Documentation    Cenários de teste para funcionalidade Login
Resource         ../../src/config/package.resource

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Cenário: Login com Sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login    ${DADOS_CADASTRAIS.EMAIL}   ${DADOS_CADASTRAIS.PASSWD}
    Então o sistema é direcionado para a tela de cadastro

Cenário: Login sem Sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando inserir os dados de login    ${DADOS_CADASTRAIS.EMAIL}   ${DADOS_CADASTRAIS.PASSWD2}
    Então uma mensagem de erro é exibida
    
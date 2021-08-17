*** Settings ***
Documentation    Cenários de teste para funcionalidade Login
Resource         ../../src/config/package.resource

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Cenário: Login com Sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    E acesse a tela de login
    Quando realizar login com sucesso
    Então o sistema é direcionado para a tela de cadastro
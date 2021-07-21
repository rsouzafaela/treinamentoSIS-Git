*** Settings ***
Documentation     Prática de automação com ROBOT
Resource          config/package.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Cenário: Login
    Dado que eu esteja na tela inicial
    E clico em Sign in
    Quando insiro um email válido
    E clico em Create an account
    Então o sistema é direcionado para a tela de cadastro

Cenário: Cadastro
    Dado que eu esteja na tela de cadastro
    Quando insiro os dados solicitados
    E clico no botão registrar
    Então o cadastro é criado com sucesso
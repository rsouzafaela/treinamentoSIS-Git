*** Settings ***
Documentation     Prática de automação com ROBOT
Library    SeleniumLibrary

*** Keywords *** 
Dado que eu esteja na tela inicial
    Wait Until Element Is Visible        ${inicio.btn_signin}
E clico em Sign in
    Click Element                        ${inicio.btn_signin}
 Quando insiro um email válido
    Wait Until Element Is Visible        ${inicio.email}
    Input Text                           ${inicio.email}                ${dados_cadastrais.email}
 E clico em Create an account
    Click Button                         ${inicio.btn_criar}
 Então o sistema é direcionado para a tela de cadastro
    Wait Until Element Is Visible        ${inicio.sra}





Dado que eu esteja na tela de cadastro
    Dado que eu esteja na tela inicial
    E clico em Sign in
    Quando insiro um email válido
    E clico em Create an account
    Então o sistema é direcionado para a tela de cadastro
Quando insiro os dados solicitados
    Click Element                        ${inicio.sra}
    Input Text                           ${formulario.nome}             ${dados_cadastrais.nome}
    Input Text                           ${formulario.sobrenome}        ${dados_cadastrais.sobrenome}
    Input Text                           ${formulario.senha}            ${dados_cadastrais.senha}
    Select From List By Value            ${formulario.dia}              ${dados_cadastrais.dia}
    Select From List By Value            ${formulario.mes}              ${dados_cadastrais.mes}
    Select From List By Value            ${formulario.ano}              ${dados_cadastrais.ano}
    Input Text                           ${formulario.endereço}         ${dados_cadastrais.endereço}
    Input Text                           ${formulario.cidade}           ${dados_cadastrais.cidade}
    Select From List By Value            ${formulario.estado}           ${dados_cadastrais.estado}
    Input Text                           ${formulario.codigo_postal}    ${dados_cadastrais.codigo_postal}
    Select From List By Value            ${formulario.pais}             ${dados_cadastrais.pais}
    Input Text                           ${formulario.celular}          ${dados_cadastrais.celular}
E clico no botão registrar
    Click Button                         ${btn_fim}
Então o cadastro é criado com sucesso
    Wait Until Element Is Visible        ${mensagem}
    #Validação 1
    ${mensagem_atual}    Get Text        ${mensagem}    
    Should Be Equal                      ${mensagem_atual}    Welcome to your account. Here you can manage all of your personal information and orders.
    #Validação 2
    Page Should Contain                  ${msg}
    #Encerramento    










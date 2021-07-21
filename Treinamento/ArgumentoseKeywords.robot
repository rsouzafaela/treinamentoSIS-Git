*** Settings ***
Documentation    Exercício 2 - SIS Academy - Robot Framework Básico

*** Test Cases ***
Realizar Soma de Dois Números
    ${soma}    Soma   5    6
    Log To Console    ${soma}

Realizar a Subtração de Dois Números
    ${subtração}    Subtração    9    5
    Log To Console    ${subtração}

Realizar a Multiplicação de Dois Números
    ${multiplicação}    Multiplicação    3    8
    Log To Console    ${multiplicação}

Realizar a Divisão de Dois Números
    ${divisão}    Divisão   15    2
    Log To Console    ${divisão}

Criando um e-mail a partir de um nome
    ${nome}    Criando um e-mail    Rafaela
    Log To Console    ${nome}


*** Keywords ***
Soma
    [Arguments]    ${num1}    ${num2}
    ${soma}    Evaluate    ${num1}+${num2}
    [Return]    ${soma}
    
Subtração
    [Arguments]    ${num1}    ${num2}
    ${subtração}    Evaluate    ${num1}-${num2}
    [Return]    ${subtração}

Multiplicação
    [Arguments]    ${num1}    ${num2}
    ${multiplicação}    Evaluate    ${num1}*${num2}
    [Return]    ${multiplicação}

Divisão
    [Arguments]    ${num1}    ${num2}
    ${divisão}    Evaluate    ${num1}/${num2}
    [Return]    ${divisão}
 
Criando um e-mail
    [Arguments]    ${nome}
    [Return]  ${nome}@email.com


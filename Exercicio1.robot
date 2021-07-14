*** Settings ***
Documentation    Exercício 1 - SIS Academy - Robot Framework Básico

*** Variables ***

#Variável simples declaro com $
#Dicionário declaro com &
&{Identificação}    Nome=Rafaela    Idade=24 anos    Profissão=Analista de Testes JR    Naturalidade=Recife/PE    Nacionalidade=Brasileira    Residência=Barueri/SP
#Lista declaro com @
@{Celular}    Samsung    Iphone    Motorola    Xiaomi    Nokia
#Dicionário usando o evaluate
&{Notas}    B1=7    B2=8.5    B3=6
#Lista Notas usando o evaluate
@{Notas2}    8    7    9


*** Test Cases ***
Dicionário Completo
    #Log To Console imprime aqui na tela
    Log To Console    ${Identificação}
    #Log imprime no navegador
    Log               ${Identificação}

Dicionário Unitário
    Log To Console ${Identificação.Nome}
    Log            ${Identificação.Nome}
    Log            ${Identificação.Idade}
    Log            ${Identificação.Profissão}
    Log            ${Identificação.Naturalidade}
    Log            ${Identificação.Nacionalidade}
    Log            ${Identificação.Residência}

Lista Completa
    Log To Console    ${Celular}
    Log               ${Celular}

Lista Unitária
    Log To Console    ${Celular[3]}
    Log               ${Celular[0]}
    Log               ${Celular[1]}
    Log               ${Celular[2]}
    Log               ${Celular[3]}
    Log               ${Celular[4]}

Média com Dicionário
    #Usando o evaluate no dicionário consigo setar com o . e o nome
    ${Média}=         evaluate     (${Notas.B1}+${Notas.B2}+${Notas.B3})/3    
    Log To Console    ${Média} 
    Log               ${Média}

Média com Lista
    #Usando o evaluate na lista só consigo setar pela posição
    ${Média2}=        evaluate     (${Notas2[0]}+${Notas2[1]}+${Notas2[2]})/3
    Log To Console    ${Média2}


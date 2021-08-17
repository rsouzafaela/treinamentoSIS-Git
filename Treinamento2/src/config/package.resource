*** Settings ***
Documentation    Arquivo de Mapeamento de Arquivos e Bibliotecas

#Dependencias
Library      SeleniumLibrary
# Library    FakerLibrary       locale=pt_BR
# Library    DateTime
# Library    String
# Library    DebugLibrary
# Library    REST

#Elementos
Resource    ../auto/elements/home_ets.resource
Resource    ../auto/elements/login_ets.resource
Resource    ../auto/elements/my_account_ets.resource

#Keywords
Resource    ../auto/keywords/home_kws.robot
Resource    ../auto/keywords/login_kws.robot
Resource    ../auto/keywords/my_account_kws.robot

#Config
Variables   hooks.yaml
Resource    setup.robot

#Dados
Variables   ../auto/data/dados.yaml


*** Settings ***
Library           SeleniumLibrary

Resource          hooks.robot
Variables         hooks.yaml

Variables         ../dados.yaml

Resource          ../variaveis.robot

Resource          ../keywords.robot



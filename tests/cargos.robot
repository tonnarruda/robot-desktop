*** Settings ***
Resource            ../resources/keywords.robot
Resource            ../resources/resources.robot
Resource            ../resources/database.robot

Suite Setup         Inicia Sessao
Test Teardown       Quit Application
Suite Teardown      Driver Teardown

*** Test Cases ***
Tentativa de Exclusao de Cargo Com Sucesso 
    Insert Cargo        999
    Acessar Cadastro Cargo
    Click               Pesquisa.png
    Send Keys           999
    Send Keys           ${F5}
    Send Keys           ${F4}
    Clica Botao         Sim
    Screen Contains     AssertCargoExcluido
    Send Keys           ${ESCAPE}


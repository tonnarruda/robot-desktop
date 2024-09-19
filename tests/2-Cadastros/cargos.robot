*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot
Resource            ../../resources/database.robot
Force Tags          Windows

Test Setup          Start App
Test Teardown       Finaliza App

*** Test Cases ***
Tentativa de Exclusao de Cargo Com Sucesso 
    Inicia Sessao
    Insert Cargo        999
    Acessar Cadastro Cargo
    Click               Pesquisa.png
    Send Keys           999
    Send Keys           ${F5}
    Send Keys           ${F4}
    Clica Botao         Sim
    Screen Contains     AssertCargoExcluido
    Send Keys           ${ESCAPE}


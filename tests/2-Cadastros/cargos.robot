*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot
Resource            ../../resources/database.robot

Test Setup          Start App
Test Teardown       Finaliza App
Force Tags          Windows

*** Test Cases ***
Tentativa de Exclusao de Cargo Com Sucesso 
    Login no Ponto      ADMIN
    Log To Console    Passei Pelo Login
    Insert Cargo        999
    Log To Console    Consegui Acessar o cadastro de Empresa
    Acessar Cadastro Cargo
    Click               Pesquisa.png
    Send Keys           999
    Send Keys           ${F5}
    Send Keys           ${F4}
    Clica Botao         Sim
    Screen Contains     AssertCargoExcluido
    Send Keys           ${ESCAPE}


*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot

Test Setup          Inicia Sessao
Test Teardown       Finaliza App
Force Tags          Windows


*** Test Cases ***
Tentativa de Exclusao de Empresa Logada
    Log To Console    Passei Pelo Login
    Acessar Cadastro Empresa
    Log To Console    Consegui Acessar o cadastro de Empresa
    Send Keys           ${F4}
    Assert Equal        Empresa corrente nao pode ser excluida
    Clica Botao         OK
    Send Keys           ${ESCAPE}
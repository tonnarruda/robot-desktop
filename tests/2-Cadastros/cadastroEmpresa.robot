*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot
Resource            ../../resources/database.robot

Test Setup          Start App
Test Teardown       Finaliza App
Force Tags          Windows


*** Test Cases ***
Tentativa de Exclusao de Empresa Logada
    Login no Ponto      ADMIN
    Sleep               2
    Send Keys           ${ESCAPE}
    Acessar Cadastro Empresa
    Send Keys           ${F4}
    Assert Equal        Empresa corrente nao pode ser excluida
    Clica Botao         OK
    Send Keys           ${ESCAPE}
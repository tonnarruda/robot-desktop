*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot

Suite Setup         Start App
Test Setup          Inicia Sessao
Test Teardown       Finaliza App
Suite Teardown      Driver Teardown
Force Tags          Windows


*** Test Cases ***
Tentativa de Exclusao de Empresa Logada
    Acessar Cadastro Empresa
    Send Keys           ${F4}
    Assert Equal        Empresa corrente nao pode ser excluida
    Clica Botao         OK
    Send Keys           ${ESCAPE}
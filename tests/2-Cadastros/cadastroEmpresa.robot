*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot
Resource            ../../resources/database.robot

Force Tags          Windows


*** Test Cases ***
Tentativa de Exclusao de Empresa Logada
    Inicia Sessao
    Acessar Cadastro Empresa
    Send Keys           ${F4}
    Assert Equal        Empresa corrente nao pode ser excluida
    Clica Botao         OK
    Send Keys           ${ESCAPE}
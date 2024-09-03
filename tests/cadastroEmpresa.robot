*** Settings ***
Resource            ../resources/keywords.robot
Resource            ../resources/resources.robot

Suite Setup         Inicia Sessao
*** Test Cases ***
Tentativa de Exclusao de Empresa Logada
    Acessar Cadastro Empresa
    Send Keys           ${F4}
    Assert Equal        Empresa corrente nao pode ser excluida
    Clica Botao         OK
    Send Keys           ${ESCAPE}
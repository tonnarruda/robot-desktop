*** Settings ***
Resource            ../resources/keywords.robot
Resource            ../resources/resources.robot

Suite Setup         Start App
Test Teardown       Quit Application
Suite Teardown      Driver Teardown
Force Tags          Windows


*** Test Cases ***
Teste de Login Com Sucesso
    Login no Ponto    ADMIN        
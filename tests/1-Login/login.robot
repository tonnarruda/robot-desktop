*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot

Test Setup          Start App
Test Teardown       Quit Application
Suite Teardown      Driver Teardown
Force Tags          Windows


*** Test Cases ***
Teste de Login Com Sucesso
    Login no Ponto          ADMIN     
    Screen Not Contains     loginScreen

   
Teste de Login Com Senha Invalida
    Login no Ponto      ADMIN         1234
    Assert Equal        senhaIncorreta
    
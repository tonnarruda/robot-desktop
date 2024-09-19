*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot
Force Tags          Windows

Test Setup          Start App
Test Teardown       Finaliza App

*** Test Cases ***
Teste de Login Com Sucesso    
    Login no Ponto          ADMIN     
    Screen Not Contains     loginScreen

   
Teste de Login Com Senha Invalida
    Login no Ponto      ADMIN         1234
    Assert Equal        senhaIncorreta
    
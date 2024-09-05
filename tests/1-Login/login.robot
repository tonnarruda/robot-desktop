*** Settings ***
Resource            ../../resources/keywords.robot
Resource            ../../resources/resources.robot

Force Tags          Windows


*** Test Cases ***
Teste de Login Com Sucesso
    Start App
    Login no Ponto          ADMIN     
    Screen Not Contains     loginScreen

   
Teste de Login Com Senha Invalida
    Login no Ponto      ADMIN         1234
    Assert Equal        senhaIncorreta
    
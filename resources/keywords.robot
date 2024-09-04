*** Settings ***
Resource            ../resources/base.robot
Resource            ../resources/variables.robot
Resource            ../resources/resources.robot
Library             Process


*** Keywords ***
Digita Usuario
    [Arguments]             ${USER}=${EMPTY} 
    Run Keyword If         '${USER}' != ''    Send Keys    ${USER}

Digita Senha
    [Arguments]             ${PASS}=${EMPTY} 
    Run Keyword If         '${PASS}' != ''    Send Keys    ${PASS}


Login no Ponto
    [Arguments]             ${USER}        ${PASS}=${EMPTY}
    Digita Usuario          ${USER}
    Send Keys               ${TAB}
    Run Keyword If         '${PASS}' != ''    Digita Senha    ${PASS}
    Send Keys               ${F9}  


Clica Botao
    [Arguments]     ${PARAMETER}
    Click           ${PARAMETER}.png

Inicia Sessao
    Login no Ponto      ADMIN      
    Send Keys           ${ESCAPE}
    Sleep               15


Acessar Cadastro Empresa
    Click    menuCadastros.png
    Click    menuEmpresa.png
    
Acessar Cadastro Cargo
    Click    menuCadastros.png
    Click    menuCargos.png


Assert Equal
    [Arguments]     ${PARAMETER}
    Exists          ${PARAMETER}.png    


Screen Contains
    [Arguments]                     ${PARAMETER}
    Wait Until Screen Contain       ${PARAMETER}.png        60


Screen Not Contains
    [Arguments]                         ${PARAMETER}
    Wait Until Screen Not Contain       ${PARAMETER}.png    2   

Run Python Script To Kill Process
    Run Process    python    ${EXECDIR}\\kill_process.py    Ponto.exe    shell=True     

Finaliza App
    Quit Application
    Run Python Script To Kill Process
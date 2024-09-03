*** Settings ***
Resource            ../resources/base.robot
Resource            ../resources/variables.robot
Resource            ../resources/resources.robot


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


Inicia Sessao
    Start App
    Login no Ponto                      ADMIN        
    Click                               fecharButton.png
    Sleep                               10


Acessar Cadastro Empresa
    Click    menuCadastros.png
    Click    menuEmpresa.png
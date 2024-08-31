*** Settings ***
Resource            ../resources/base.robot
Resource            ../resources/variables.robot


*** Keywords ***
Digita Usuario
    [Arguments]            ${USER}
    Send Keys              ${USER}

Digita Senha
    [Arguments]            ${PASS}=${EMPTY} 
    Run Keyword If         '${PASS}' != ''    Send Keys    ${PASS}


Login no Ponto
    [Arguments]         ${USER}        ${PASS}=${EMPTY}
    Digita Usuario      ${USER}
    Send Keys               ${TAB}
    Run Keyword If         '${PASS}' != ''    Digita Senha    ${PASS}
    Send Keys               ${F9}  
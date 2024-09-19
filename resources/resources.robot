*** Settings ***
Resource            ../resources/base.robot
Resource            ../resources/keywords.robot

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723
${APP}              ${EXECDIR}\\app\\Ponto\\Ponto.exe


*** Keywords ***
Carrega Imagem
    Add Image Path        ${EXECDIR}\\resources\\image_elements
    Add Image Path        ${EXECDIR}\\resources\\image_elements\\botao

Start App
    Carrega Imagem
    Driver Setup
    ApplicationLibrary.DesktopLibrary.Open Application    ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}        splash_delay=10

Inicia Sessao
    Start App
    Login no Ponto      ADMIN  
    Wait Until Screen Contain        Fechar    60  
    Clica Botao    Fechar
    Sleep               15

Run Python Script To Kill Process
    Run Process    python    ${EXECDIR}\\kill_process.py    Ponto.exe    shell=True     

Finaliza App
    Run Python Script To Kill Process
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
    ApplicationLibrary.DesktopLibrary.Open Application    ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}

Inicia Sessao
    Start App
    Login no Ponto      ADMIN      
    Send Keys           ${ESCAPE}
    Sleep               15

Run Python Script To Kill Process
    Run Process    python    ${EXECDIR}\\kill_process.py    Ponto.exe    shell=True     

Finaliza App
    Quit Application
    Run Python Script To Kill Process
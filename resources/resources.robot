*** Settings ***
Resource            ../resources/base.robot

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723
${APP}              C:\\Fortes\\Ponto\\Ponto.exe


*** Keywords ***
Carrega Imagem
    Add Image Path        ${EXECDIR}\\resources\\image_elements

Start App
    Carrega Imagem
    Driver Setup
    ApplicationLibrary.DesktopLibrary.Open Application    ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}
*** Settings ***
Resource            ../resources/base.robot

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
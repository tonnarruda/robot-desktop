*** Settings ***
Resource            ../resources/base.robot

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723
${APP}              C:\\Fortes\\Ponto\\Ponto.exe


*** Keywords ***
Start App
    Driver Setup
    Open Application    ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}
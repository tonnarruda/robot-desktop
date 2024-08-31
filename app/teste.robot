*** Settings ***
Documentation     ApplicationLibrary Desktop Library Tests.
Library           ApplicationLibrary.DesktopLibrary
Suite Setup       Start App
Test Setup        Launch Application
Test Teardown     Quit Application
Suite Teardown    Close All Applications
Force Tags        Windows

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${APP}                  Microsoft.WindowsCalculator_8wekyb3d8bbwe!App
${Notepad}              C:/Windows/System32/notepad.exe

*** Keywords ***
Start App
    [Documentation]     Sets up the application for quick launching through 'Launch Application'
    Driver Setup
    Open Application    ${REMOTE_URL}     platformName=Windows    deviceName=Windows   app=${APP}    alias=Main
    Maximize Window
    Quit Application

*** Test Cases ***
Wait For And Mouse Over And Click Element Keyword Test
    Wait For And Mouse Over And Click Element     name=Two

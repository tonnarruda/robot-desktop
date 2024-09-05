*** Settings ***
Library           Process
Library    DatabaseLibrary
Library    BuiltIn

*** Variables ***
${FIREBIRD_PORT}  3050

*** Test Cases ***
Check Firebird Port Using Python
    Insert Cargo        996        3050

    
Check Firebird Port Using Python
    Insert Cargo        998        3051

Check Firebird Port Using Python
    Insert Cargo        997        3052



*** Keywords ***
Insert Cargo
    [Arguments]        ${CAR_CODIGO}        ${DB_PORTA}
    Connect To Database    firebirdsql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORTA}
    Execute SQL String    DELETE FROM CAR WHERE CODIGO = ${CAR_CODIGO}
    Execute SQL String    INSERT INTO CAR VALUES ('0002', ${CAR_CODIGO}, 'Cargo Teste End-2-End', NULL)
    Disconnect From Database

*** Variables ***
${DB_HOST}          localhost
${DB_PORT}          3050
${DB_NAME}          ${EXECDIR}\\app\\Ponto\\Ponto.fdb
${DB_USER}          sysdba
${DB_PASSWORD}      masterkey
*** Settings ***
Library    DatabaseLibrary
Library    BuiltIn

*** Variables ***
${DB_HOST}          localhost
${DB_PORT}          3050
${DB_NAME}          ${EXECDIR}\\app\\Ponto\\Ponto.fdb
${DB_USER}          sysdba
${DB_PASSWORD}      masterkey

*** Keywords ***
Insert Cargo
    [Arguments]             ${CAR_CODIGO}
    Conecta No Banco
    Delete By Code          CAR    ${CAR_CODIGO}
    Execute SQL String      INSERT INTO CAR VALUES ('0002', ${CAR_CODIGO}, 'Cargo Teste End-2-End', NULL)
    Disconnect From Database

Conecta No Banco
    Connect To Database    firebirdsql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}

Delete By Code
    [Arguments]        ${TABLE}    ${Code}
    Execute SQL String    DELETE FROM ${TABLE} WHERE CODIGO = ${Code}
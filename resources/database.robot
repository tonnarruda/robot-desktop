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
# Select And Print Data
#     Connect To Database    firebirdsql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
#     ${results}=    Execute SQL String    SELECT count(*) FROM EPG
#     Log    Results: ${results}
#     Disconnect From Database
    
# Delete Data From Usuario
#     Connect To Database    firebirdsql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
#     Execute SQL String    DELETE FROM USU WHERE Codigo = 'TESTE'
#     Log To Console    Data deleted successfully
#     Disconnect From Database

Insert Cargo
    [Arguments]        ${CAR_CODIGO}
    Connect To Database    firebirdsql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
    Execute SQL String    DELETE FROM CAR WHERE CODIGO = ${CAR_CODIGO}
    Execute SQL String    INSERT INTO CAR VALUES ('0002', ${CAR_CODIGO}, 'Cargo Teste End-2-End', NULL)
    Disconnect From Database

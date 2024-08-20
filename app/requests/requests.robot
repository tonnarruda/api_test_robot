*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource    ../../resources/credentials/credentials.robot


*** Keywords ***
Buscar Ferias
    [Arguments]             ${nrInsc}=${EMPTY}    
    ${query_params}=        Create Dictionary
    Run Keyword If          '${nrInsc}' != ''           Set To Dictionary               ${query_params}                nrInscEmpregador=${nrInsc}
    ${response}=            GET                         ${BASE_URL}                     headers=${HEADERS}             params=${query_params}            
    [RETURN]                ${response}

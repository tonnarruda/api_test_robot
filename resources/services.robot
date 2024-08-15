*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}             https://api-desafio-qa.onrender.com
${user_route}           /users
&{HEADERS}              Content-Type=application/json

*** Keywords ***
Create users
    [Arguments]         ${payload}
    ${response}         POST            ${BASE_URL}${user_route}    json=${PAYLOAD}    headers=${HEADERS}  
    [Return]            ${response}


Search All Users
    ${response}         GET             ${BASE_URL}${user_route}    headers=${HEADERS} 
    [Return]            ${response}

    
Delete User by Id
    [Arguments]         ${user_id}
    ${response}=        DELETE          ${BASE_URL}${USER_ROUTE}/${user_id}    headers=${HEADERS}
    [Return]            ${response}
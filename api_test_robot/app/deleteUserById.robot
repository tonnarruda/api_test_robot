*** Settings ***
Resource        ../resources/services.robot

Library    OperatingSystem
Library    Collections
Library    JSONLibrary

*** Variables ***
${FIXTURE_PATH}  ${EXECDIR}/resources/user_payload.json

*** Test Cases ***
Send DELETE Request
    ${payload}=    Load Json From File    ${FIXTURE_PATH}
    
    ${response}    Create users    ${payload}   
    Status Should Be    201
    ${user_id}=    Set Variable    ${response.json()['id']}
    ${response}    Delete User by Id     ${user_id}
    Status Should Be    200    

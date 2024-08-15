*** Settings ***
Resource        ../resources/services.robot
Library    Collections
Library    JSONLibrary

*** Variables ***
${FIXTURE_PATH}  ${EXECDIR}/resources/user_payload.json

*** Test Cases ***
Send POST Request
    ${payload}=         Load Json From File     ${FIXTURE_PATH}
    
    ${response}         Create users            ${payload}    
    Status Should Be    201
*** Settings ***
Resource        ../resources/services.robot

*** Test Cases ***
Send POST Request
    ${PAYLOAD}     Create Dictionary
    ...            name=John
    ...            last_name=Doe
    ...            email=john.doe@example.com
    
   ${response}    Create users    ${PAYLOAD}   
   Status Should Be    201
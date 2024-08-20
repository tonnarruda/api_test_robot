*** Settings ***
Library    Collections

*** Keywords ***
Verify Status 200
    [Arguments]    ${response}    ${expected_status_code}    
    Should Be Equal As Numbers    ${response.status_code}    ${expected_status_code}

Verify Negative Status Code
    [Arguments]                     ${response}                 ${status_code}
    ${initial_parameter}=           Set Variable                1
    ${error_message}=               Get From List               ${response}            ${initial_parameter}
    Should Contain                  ${error_message}            ${status_code}
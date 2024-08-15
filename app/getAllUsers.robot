*** Settings ***
Resource        ../resources/services.robot

*** Test Cases ***
Send GET Request
    ${response}         Search All Users 
    Status Should Be    200
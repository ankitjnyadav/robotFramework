*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test case 1
    Do Something
    Do Something Else
Test case 2
    Do Another Thing
    Do Something Else

*** Keywords ***
Do Something
    log   I am doing something
Do Another Thing
    log   I am doing another thing
Do Something Else
    log   I am doing something else

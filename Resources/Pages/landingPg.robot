*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Keywords ***
Load
    go to  ${startUrl}

Verify Page Loaded
    #wait until element contains  Your Amazon.in  id=nav-your-amazon
    wait until element contains  css=#nav-your-amazon  ${verifySearchText}
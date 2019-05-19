*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
*** Keywords ***
Begin web test
    open browser  about:blank
End Web Test
    close browser
Inserting Testing Data
    log  Inserting Testing Data
Cleanup Testing Data
    log  Cleanup Testing Data
maximizeBrowser
    maximize browser window
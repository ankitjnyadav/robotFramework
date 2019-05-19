*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Keywords ***
 Enter the searchKey
    input text  id=twotabsearchtextbox  ${SearchTerm}
Click on Search Btn
    click button  css=input[type='submit']
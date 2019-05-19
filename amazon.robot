*** Settings ***
Resource  Resources/common.robot
Resource  Resources/product.robot
Suite Setup  Inserting Testing Data
Test Setup  common.Begin web test
Test Teardown  common.End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${startUrl} =  https://www.amazon.in
${verifySearchText} =  Amazon.in
${SearchTerm}=  iPhone XS
@{TestVariable}=  ThiIsAListVariable  Value1  Value2  Value3

*** Test Cases ***
Should be able to search for product
    [Tags]  Smoke
    product.Search for product
    product.Select First Search Result

Printing the List Variable
    [Tags]  List
    Log  @{TestVariable}[0]
    Log  @{TestVariable}[1]
    Log  @{TestVariable}[2]
    Log  @{TestVariable}[3]

Taking input from command line
    [Tags]  Cmd
    Starting web test through cmdLine Args  https://www.amazon.com

Should be able to search the product and add to cart
    [Tags]  Sanity
    product.Search for product
    product.Select First Search Result
    product.Add product to cart
    product.Prodceed to checkout


*** Keywords ***
Starting web test through cmdLine Args
    [Arguments]  ${url}  ${browser}
    open browser  ${url}
    close browser
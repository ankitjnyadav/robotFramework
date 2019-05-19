*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  Pages/landingPg.robot
Resource  Pages/navBar.robot
Resource  Pages/searchResultPg.robot
Resource  Pages/cartPg.robot

*** Keywords ***
Search for product
    landingPg.Load
    landingPg.Verify Page Loaded
    maximize browser window
    navBar.Enter the searchKey
    navBar.Click on search btn

Select First Search Result
    searchResultPg.click on first search Result

Add product to cart
    searchResultPg.click on Add to cart

Prodceed to checkout
    cartPg.click on proceed to checkout


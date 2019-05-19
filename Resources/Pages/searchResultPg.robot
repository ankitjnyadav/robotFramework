*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Keywords ***
click on first search Result
    click element  css=div.sg-col-20-of-24:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > h2:nth-child(1) > a:nth-child(1) > span:nth-child(1)
click on Add to cart
    wait until element contains  css=form#addToCart #buyNow_feature_div i+#add-to-cart-button
    click element  css=form#addToCart #buyNow_feature_div i+#add-to-cart-button  #css=#add-to-cart-button

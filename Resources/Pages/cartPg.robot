*** Settings ***
Documentation    Suite description

*** Keywords ***
click on proceed to checkout
    page should contain  Added to Cart
    click element  css=#hlb-ptc-btn-native
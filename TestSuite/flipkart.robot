*** Settings ***
Documentation    Flipkart
Library         SeleniumLibrary
Resource         ..//POM//flipkart.robot
Suite Teardown      close browser
Test Template


*** Test Cases ***
TC_1
    set selenium speed      3
    flipkart.browseropen
    flipkart.login
    flipkart.Searchforproduct
    flipkart.Selectproduct

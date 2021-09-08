*** Settings ***
Documentation    PHPApplication
Library         SeleniumLibrary
Resource         ..//POM//base.robot
Suite Teardown      close browser

*** Test Cases ***
TC_1
    set selenium speed      2
    base.browseropen
    #base.MouseHower
   # base.Clickonfeature
    base.Loginwithoutcollection

*** Settings ***
Documentation    testdummy
Library     SeleniumLibrary
Variables       ..//Locators//phplocators.py

*** Variables ***
${url}  https://phptravels.com/demo
${Browsername}  chrome

*** Keywords ***
browseropen
        open browser    ${url}      ${Browsername}

MouseHower
        mouse over      ${features}
        Log to console      "mousehower features success"
        mouse over      ${product}
        Log to console      "mousehower product success"
        mouse over      ${company}
        Log to console      "mousehower company success"

Clickonfeature
        mouse over      ${features}
        click element   ${carmodule}
        scroll element into view    ${overview_demo}
        Log to console      "scroll to element success"
        click element   ${overview_demo}
        Log to console      get title
        click element       ${phptravels}
        @{windowhandels1}=   get window handles
        switch window       tittle=
        Log to console      "window is switched"
        Log to console      get title
        switch window       @{windowhandels1}[1]
        Log to console      get title

Login
     set selenium speed     2
     click element       ${loign}
     #@{windowhandels2}=      get window handles
     switch window      tittle=PHPTRAVELS booking script and system for hotels airline flights tours cars online application - PHPTRAVELS
    #switch window      @{windowhandels2}[0]
     sleep      5
     switch window      tittle=Login - PHPTRAVELS
     click element      ${account}
     click element      ${registernewuser}
     input text         ${firstname}        jp
     click element      ${register}
    # switch window      @{windowhandels2}[0]

Loginwithoutcollection
     set selenium speed     2
     click element       ${loign}
     #switch window      tittle=PHPTRAVELS booking script and system for hotels airline flights tours cars online application - PHPTRAVELS
     Log to console        step56
     sleep      5
     ${window}=          get window handles
     switch window       ${window}[1]
     #switch window      tittle=Login - PHPTRAVELS
     Log to console        step59
     click element      ${account}
     Log to console        step61
     click element      ${registernewuser}
     Log to console        step63
     input text         ${firstname}        jp
     click element      ${register}




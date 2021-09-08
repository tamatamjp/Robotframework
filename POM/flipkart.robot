*** Settings ***
Documentation    flipkart
Library     SeleniumLibrary
Variables       ..//Locators//Flipkart.py

*** Variables ***
${url}  https://flipkart.com
${Browsername}  chrome

*** Keywords ***
browseropen
        open browser    ${url}      ${Browsername}
        #maximize browser window

login
        input text      ${loginemail}       abc@gmail.com
        input text      ${loginpassword}        ygag
        #click button        ${loginbutton}
        click button        ${xmark}

Searchforproduct
        input text      ${searchbox}        Macbook
        Sleep       5
        press keys      ${searchbox}        ALT+ARROW_DOWN
        click button        ${searchbutton}

Selectproduct
        click element        ${product}
        ${window}=          get window handles
        switch window       ${window}[1]
        #switch window       tittle=APPLE MacBook Air M1 - (8 GB/256 GB SSD/Mac OS Big Sur) MGN63HN/A Rs.92900  Price in India - Buy APPLE MacBook Air M1 - (8 GB/256 GB SSD/Mac OS Big Sur) MGN63HN/A Space Grey Online - APPLE : Flipkart.com
        Sleep       5
        #${actprice}=          get value       ${productprice}
        #element text should be      ${actprice}     ₹88,990
        input text      ${pincode}      517001
        click element       ${pincodecheck}
        click element       ${buynow}



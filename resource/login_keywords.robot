*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Variables    locators.yaml

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/
${browser}    chrome

*** Keywords ***

Open to website
    [Documentation]    Opens the browser and navigates to the specified website URL, then maximizes the browser window.
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Login to website
    [Documentation]    Logs into the website by entering the username and password, then clicking the login button.
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Enabled    ${username_input}
    Input Text    ${username_input}    ${username}
    Wait Until Element Is Enabled    ${password_input}
    Input Text    ${password_input}    ${password}
    Wait Until Element Is Enabled    ${submit_button}
    Click Element    ${submit_button}

Logout from website
    [Documentation]    Logs out of the website by clicking the logout button after ensuring it is enabled.
    Wait Until Element Is Enabled    ${logout_button}
    Click Element    ${logout_button}


    



    
    
  
    
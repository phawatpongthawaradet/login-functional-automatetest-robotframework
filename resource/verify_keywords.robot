*** Settings ***
Library    Selenium2Library
Library    OperatingSystem
Variables    locators.yaml
Resource    ../resource/login_keywords.robot

*** Keywords ***
Verify new page URL after login success
    [Documentation]    Verifies that the current URL after a successful login matches the expected URL.
    Location Should Be    https://practicetestautomation.com/logged-in-successfully/

Verify new page URL after logout
    [Documentation]    Verifies that the current URL after logging out matches the expected login page URL.
    Location Should Be    https://practicetestautomation.com/practice-test-login/

Verify new page contains expected text after login success
    [Documentation]    Verifies the presence of either 'Congratulations' or 'successfully logged in' text on the page after login.
    ${congrat_text}=    Run Keyword And Ignore Error    Page Should Contain    Congratulations
    ${success_text}=    Run Keyword And Ignore Error    Page Should Contain    successfully logged in

    ${congrat_status}=    Set Variable    ${congrat_text}[0]
    ${success_status}=    Set Variable    ${success_text}[0]

    IF    '${congrat_status}' == 'PASS'
        Log    expected Congratulations text is shown
    ELSE IF    '${success_status}' == 'PASS'
        Log    expected 'successfully logged in' text is shown
    ELSE
        Fail    Neither 'Congratulations' nor 'successfully logged in' was found.
    END

Verify error message text when username incorrect
    [Documentation]    Verifies the error message shown when an invalid username is entered.
    Page Should Contain    Your username is invalid!

Verify error message text when password incorrect
    [Documentation]    Verifies the error message shown when an invalid password is entered.
    Page Should Contain    Your password is invalid!

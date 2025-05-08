*** Settings ***
Resource    ../resource/login_keywords.robot
Resource    ../resource/verify_keywords.robot
Test Setup    Open to website
Test Teardown    Close Browser
*** Test Cases ***

Testcase1_PositiveLoginTest
    [Documentation]    Verify successful login, check expected URL and text, then logout and verify redirected URL.
    [Tags]    PositiveTest
    Given Login to website    student    Password123
    Then Verify new page URL after login success
    And Verify new page contains expected text after login success
    When Logout from website
    Then Verify new page URL after logout

Testcase2_NegativeUsernameTest
    [Documentation]    Attempt login with an incorrect username and verify the appropriate error message.
    [Tags]    NegativeTest
    Given Login to website    incorrectUser    Password123
    Then Verify error message text when username incorrect

Testcase3_NegativePasswordTest
    [Documentation]    Attempt login with an incorrect password and verify the appropriate error message.
    [Tags]    NegativeTest
    Given Login to website    student    incorrectPassword
    Then Verify error message text when password incorrect

    


    

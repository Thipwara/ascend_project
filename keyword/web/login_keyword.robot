*** Settings ***
Resource    ../../resources/web/login_resource.robot

*** Keywords ***
Open Login Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    The Internet

Input Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}

Submit Login Form
    Click Button    ${LOGIN_BUTTON}

Click Logout button
    Wait Until Page Contains Element    ${LOGOUT_BUTTON}    timeout=10s
    Click Element    ${LOGOUT_BUTTON}

Verify Login Success
    Wait Until Element Is Visible    ${SUCCESS_MSG}    timeout=10s
    Element Should Contain    ${SUCCESS_MSG}    You logged into a secure area!

Verify Login Password Failure
    Wait Until Element Is Visible    ${ERROR_MSG}    timeout=10s
    Element Should Contain    ${ERROR_MSG}    Your password is invalid!

Verify Login Username Failure
    Wait Until Element Is Visible    ${ERROR_MSG}    timeout=10s
    Element Should Contain    ${ERROR_MSG}    Your username is invalid!

Verify Logout Success
    Wait Until Element Is Visible    ${SUCCESS_MSG}    timeout=20s
    Element Should Contain    ${SUCCESS_MSG}    You logged out of the secure area!   

Close Browser Session
    Close Browser
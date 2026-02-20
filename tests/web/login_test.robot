*** Settings ***
Documentation     Test suite for login functionality on The Internet Herokuapp
...               URL: http://the-internet.herokuapp.com/login
Resource          ../../resources/web/login_resource.robot
Resource          ../../keyword/web/login_keyword.robot
Suite Setup       Open Login Page
Suite Teardown    Close Browser Session
Test Tags         login    web

*** Test Cases ***
TC01 - Login successfully
    [Documentation]    To verify that a user can login successfully when they put a correct username and password.
    [Tags]    positive
    Input Credentials    ${USERNAME}    ${PASSWORD}
    Submit Login Form
    Verify Login Success
    Click Logout button
    Verify Logout Success

TC02 - Login failed - Password incorrect
    [Documentation]    To verify that a user can login unsuccessfully when they put a correct username but wrong password.
    [Tags]    negative
    Go To    ${BASE_URL}
    Input Credentials    ${USERNAME}    Password!'
    Submit Login Form
    Verify Login Password Failure

TC03 - Login failed - Username not found
    [Documentation]    To verify that a user can login unsuccessfully when they put a username that did not exist.
    [Tags]    negative
    Go To    ${BASE_URL}
    Input Credentials    tomholland   Password!
    Submit Login Form
    Verify Login Username Failure

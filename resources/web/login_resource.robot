*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}        http://the-internet.herokuapp.com/login
${BROWSER}         chrome
${USERNAME}        tomsmith
${PASSWORD}        SuperSecretPassword!
${USERNAME_FIELD}    id=username
${PASSWORD_FIELD}    id=password
${LOGIN_BUTTON}      css=button[type='submit']
${SUCCESS_MSG}       id=flash
${ERROR_MSG}         css=.flash.error
${LOGOUT_BUTTON}     css=a.button.secondary
${CHANGE_PASSWORD_BUTTON}    text=OK




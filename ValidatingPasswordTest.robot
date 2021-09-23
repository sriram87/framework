*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/ValidatingForgotPassword.robot

*** Variables ***
${Browser}  headlesschrome
${url}      https://www.exploretrip.com/search/flight
${Email}    sriramramanujam0@gmail.com

*** Test Cases ***
ValidatingPassword
    open my browser     ${url}  ${Browser}
    click sign_in
    click forgot_password
    Enter Email_id      ${Email}
    set browser implicit wait   5
    Click Submit_button
    close browser
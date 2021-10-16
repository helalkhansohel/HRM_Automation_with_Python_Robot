*** Settings ***
Documentation  Build In Data driven testing:
Library  SeleniumLibrary
Test Template  Data driven LogIn
*** Variables ***
${BROWSER}  chrome
${url}   http://demo.systechpayroll.com/


${txt_UserName}  "name:LoginName"
${txt_Password}  "name:Password"
*** Test Cases ***
Test Name:Build in Data Driven Testing
   ${EMPTY}    ${EMPTY}  My Error Message
   SUSER        232323   My Error Message
   Admin        123456   My Error Message



*** Keywords ***
Data driven LogIn

    [Arguments]  ${USERNAME}    ${PASSWORD}   ${ErrorMessage}


    Open Browser    ${URL}  ${BROWSER}

    Maximize browser window


    Input text  name:LoginName  ${USERNAME}
    Input text  name:Password  ${PASSWORD}
    Click element  xpath://*[@id='loginDiv']/form/div[3]/input
    Sleep  3
    Close Browser


#robot -d Results Resources/DataDrivenApproach/BuiltInDataDriven.robot


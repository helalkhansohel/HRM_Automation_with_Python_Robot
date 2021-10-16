#pip install -U robotframework-datadriver[XLS]
*** Settings ***
Documentation  DataDriven From Excel
Library  SeleniumLibrary

Library  DataDriver   ../../TestData/TestData.xlsx  sheet_name=Sheet1
Test Template  Data driven LogIn
*** Variables ***
${BROWSER}  chrome
${url}   http://demo.systechpayroll.com/
#${URL}   http://120.50.27.34:82/


${txt_UserName}  "name:LoginName"
${txt_Password}  "name:Password"


*** Test Cases ***
LogIn Test using ${username}  ${password}  ${errormessage}


*** Keywords ***
Data driven LogIn

    [Arguments]  ${username}    ${password}    ${errormessage}


    Open Browser    ${URL}  ${BROWSER}

    Maximize browser window


    Input text  name:LoginName  ${username}
    Input text  name:Password  ${password}
    Click element  xpath://*[@id='loginDiv']/form/div[3]/input
    Sleep  3
    Close Browser



#robot -d Results Resources/DataDrivenApproach/DataDrivenXLS.robot


#install robotframe-datadeiven Package
#step-1: Go to Files->Setting->Project:Project Name->Python Interpreter->Select Python Interpreter
#step-2: Click + sing below the page to Add library
#step-3:Search robotframe-datadeiven and install.
# or pip install robotframework-datadriver.

*** Settings ***
Documentation  Data Driven From CVS file
Library  SeleniumLibrary
Library  DataDriver    ../../TestData/TestData.csv

Test Template  Data driven LogIn
*** Variables ***
${BROWSER}  chrome
${url}   http://demo.systechpayroll.com/
#${URL}   http://120.50.27.34:82/


${txt_UserName}  "name:LoginName"
${txt_Password}  "name:Password"

*** Test Cases ***
Test1_1 using ${username} and ${password} and ${errormessage}


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


#robot -d Results Resources/DataDrivenApproach/DataDrivenCSV.robot


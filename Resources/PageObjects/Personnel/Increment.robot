*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#${EmployeeID}  a119
*** Keywords ***


Input Employee
    [Arguments]  ${EmployeeID}

    Click Element  xpath://*[@id="cmbEmployee_chosen"]/a
    Input Text  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  ${EmployeeID}
    Press Keys  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  \ue007

Select Checkbox Is Fixed
    Select checkbox  xpath://*[@id="isFixed"]

Input Fix Amount
    Input Text  xpath://*[@id="txtAmount"]  1000

Input Increment Type

    [Arguments]  ${IncrementType}
    Click Element  xpath://*[@id="cmbIncrementType_chosen"]/a
    Input text  xpath://*[@id="cmbIncrementType_chosen"]/div/div/input  ${IncrementType}
    Press Keys  xpath://*[@id="cmbIncrementType_chosen"]/div/div/input  \ue007   #Press Enter or Press Key location [Return] or \ue007


Select Accounts Buyer
    [Arguments]  ${Type}
    Select From List By Label  IsAccount  ${Type}

Input Effected date
    [Arguments]  ${IncrementEffectedDate}

    Input Text  Id:Date  ${IncrementEffectedDate}
    sleep  1
    Click Element  Id:RefNo      #To hide calander box so that I can click Load button
Click Load
    Click Element  Id:btnLoad

Scroll Down To Bottom
     execute javascript  window.scrollTo(0,document.body.scrollHeight)

Check All Employee
     Select checkbox  Id:selectAllCheckbox

Click Save
    Click Element  Id:btnSave

Click OK To Alert
    Handle alert  accept
*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#${EmployeeID}  a119
*** Keywords ***


Input Employee
    [Arguments]  ${EmployeeID}

    Click Element  xpath://*[@id="cmbEmployee_chosen"]
    Input Text  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  ${EmployeeID}
    Press Keys  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  \ue007

Select Checkbox Is Fixed
    Select checkbox  xpath://*[@id="isFixed"]

Input Fix Amount
    Input Text  xpath://*[@id="txtAmount"]  1000

Select Accounts Buyer
    [Arguments]  ${Type}
    Select From List By Label  IsAccount  ${Type}

Input Effected date
    [Arguments]  ${IncrementEffectedDate}

    Input Text  Id:Date  ${IncrementEffectedDate}
    Click Element  Id:RefNo      #To hide calander box so that I can click Load button

Click Load
    Click Element  Id:btnLoad

Scroll Down To Bottom
     execute javascript  window.scrollTo(0,document.body.scrollHeight)

Check All Employee
    Sleep  1
    Select checkbox  Id:unchkall

Click Save
    Click Element  Id:btnSave

Click OK To Alert
    Handle alert  accept

   Alert should be present    text=Helal   action=Accept
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
   # SeleniumLibrary.Wait Until Element Is Enabled    Id:Date
    Click Element  xpath://*[@id="Date"]
    Input Text  Id:Date  ${IncrementEffectedDate}
    Double Click Element  xpath://body/div[3]/div[1]/div[1]/button[2]

   # Sleep  1

    #Click Element  Id:RefNo      #To hide calander box so that I can click Load button
#Click Ref No

Click Load
    Wait Until Element Is Visible  Id:btnLoad
    Wait Until Element Is Enabled   Id:btnLoad
    Click Element  Id:btnLoad
    #sleep  3

Check All Employee
     Wait Until Page Contains   Total Records:
     Select checkbox  Id:selectAllCheckbox

Scroll Down To Bottom
   Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
   #Scroll Element Into View  xpath://*[@id="btnSave"]
   #Execute Javascript  window.scrollTo(0,100)



Click Save
   # SeleniumLibrary.Wait Until Element Is Enabled  Id:btnSave
    Click Element  Id:btnSave



Click OK To Alert
    #SeleniumLibrary.Wait Until Page Contains  Do you want to proceed?
    Handle Alert  accept

Pass Fail Verification
    Page Should Contain  Successfully saved.
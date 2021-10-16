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
    Wait until Element IS Enabled   Id:btnLoad

    Click Element  Id:btnLoad

    sleep  3
    double Click Element  Id:btnLoad

    #SeleniumLibrary.Wait Until Element Is Visible    xpath://*[@id="1"]/td[3]/input    timeout=5
    #SeleniumLibrary.Wait Until Element Is Enabled    xpath://*[@id="1"]/td[3]/input    timeout=5


Scroll Down To Bottom

     Execute Javascript  window.scrollTo(0,document.body.scrollHeight)




Check All Employee
    Wait Until Element Contains  Id:sp_1_pager  1   60
    Select checkbox  Id:unchkall

Click Save
    Click Element  Id:btnSave

Click OK To Alert
   # Set Selenium Implicit Wait  5s
    Handle alert  accept

Pass Fail Verification
    Page Should Contain  Successfully saved.
  # Alert should be present    text=Helal   action=Accept

Click Ok to Notification
    sleep  1
    Click Element  Id:ui_notifIt_btn
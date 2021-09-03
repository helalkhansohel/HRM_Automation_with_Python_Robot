*** Settings ***
Library  SeleniumLibrary
Variables  ../Payroll/PageObjects/Locators.py
*** Variables ***

*** Keywords ***
Select Year
    [Arguments]  ${YEAR}
    Select From List By Label  cmbYear  ${YEAR}

Select Month
    [Arguments]  ${Month}
    Select From List By Label  cmbMonth  ${Month}

Select Employee
    [Arguments]  ${EmployeeID}
    Click element  xpath://*[@id="cmbEmployee_chosen"]
    input text  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  ${EmployeeID}
    Press Key  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  \ue007



Select Process with attendances calculation
  # Select checkbox  chkPrlProcessWithAttCalculation
   Select checkbox  ${SP_chkAttendanceCalculation}

Click Process
    Click Element  id:btnProcess

Click Ok Notification
     Click Element  xpath://*[@id="ui_notifIt_btn"]
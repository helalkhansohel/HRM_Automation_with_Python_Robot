*** Settings ***
Library  SeleniumLibrary
Variables  ../Leave/PageObjects/Locators.py

*** Variables ***

*** Keywords ***



Select Employee
    [Arguments]  ${EmployeeID}
    Click element  xpath://*[@id="HrmEmployeeId_chosen"]
    input text  xpath://*[@id="HrmEmployeeId_chosen"]/div/div/input  ${EmployeeID}
    Press Keys  xpath://*[@id="HrmEmployeeId_chosen"]/div/div/input  \ue007


Select Leave Type
    [Arguments]  ${Leave_Type}
    Click element  xpath://*[@id="HrmLeaveTypeId_chosen"]
    input text  xpath://*[@id="HrmLeaveTypeId_chosen"]/div/div/input  ${Leave_Type}
    Press Keys  xpath://*[@id="HrmLeaveTypeId_chosen"]/div/div/input  \ue007




Select From Date
    [Arguments]  ${LeaveFromDate}
    #Click Element  Id:DateFrom

    Execute JavaScript    document.getElementById("DateFrom").removeAttribute("readonly")
    sleep  1
    Input text  Id:DateFrom  ${LeaveFromDate}


Select To Date
    [Arguments]  ${LeaveToDate}

    Execute JavaScript    document.getElementById("DateTo").removeAttribute("readonly")
    sleep  1
    Input text  Id:DateTo  ${LeaveToDate}


Select Approved By
    [Arguments]  ${ApprovedBy}
    Click element  xpath://*[@id="ApprovedBy_chosen"]
    Sleep  2
    input text  xpath://*[@id="ApprovedBy_chosen"]/div/div/input  ${ApprovedBy}
    Sleep  1
    Press Keys  xpath://*[@id="ApprovedBy_chosen"]/div/div/input  \ue007


Select Approved Date
    [Arguments]  ${ApprovedDate}
    input text  xpath://*[@id="ApprovedDate"]  ${ApprovedDate}
    Click element  xpath://*[@id="ApprovedText"]
Select Application Date
    [Arguments]  ${ApplicationDate}
    input text  xpath://*[@id="AplicationDate"]   ${ApplicationDate}
    Click element  xpath://*[@id="ApprovedText"]
Click Save
    Click element  xpath://*[@id="btnSave"]

Click Alert
    Sleep  1
    handle alert  accept

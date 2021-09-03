*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#${EmployeeID}  a119
#${YEAR}  2022
#${Month}  january
#${InTime}  9000
*** Keywords ***
Select Employee
    [Arguments]  ${EmployeeID}
    Click element  xpath://*[@id="cmbEmployee_chosen"]
    input text  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  ${EmployeeID}
    Press Key  xpath://*[@id="cmbEmployee_chosen"]/div/div/input  \ue007

Select Year
    [Arguments]  ${YEAR}
    Click element  xpath://*[@id="cmbYear_chosen"]
    input text  xpath://*[@id="cmbYear_chosen"]/div/div/input  ${YEAR}
    Press Key  xpath://*[@id="cmbYear_chosen"]/div/div/input  \ue007

Select Month
    [Arguments]  ${Month}
    Click element  xpath://*[@id="cmbMonth_chosen"]

    input text  xpath://*[@id="cmbMonth_chosen"]/div/div/input  ${Month}

    Press Key  xpath://*[@id="cmbMonth_chosen"]/div/div/input  \ue007

#Select InTime

     #Click element  xpath://*[@id="InTime"]
     #Pressing 4 back space
     #Press Key  xpath://*[@id="InTime"]  \ue003
     #Press Key  xpath://*[@id="InTime"]  \ue003
     #Press Key  xpath://*[@id="InTime"]  \ue003
     #Press Key  xpath://*[@id="InTime"]  \ue003
     #Pressing Time
     #Press Key  xpath://*[@id="InTime"]  \ue01a   #0
     #Press Key  xpath://*[@id="InTime"]  \ue023   #9
     #Press Key  xpath://*[@id="InTime"]  \ue01a   #0
     #Press Key  xpath://*[@id="InTime"]  \ue01a   #0

#Select OutTime
     #Click element  xpath://*[@id="OutTime"]
     #Pressing 4 back space
     #Press Key  xpath://*[@id="OutTime"]  \ue003
     #Press Key  xpath://*[@id="OutTime"]  \ue003
     #Press Key  xpath://*[@id="OutTime"]  \ue003
     #Press Key  xpath://*[@id="OutTime"]  \ue003
     #Pressing Time
     #Press Key  xpath://*[@id="OutTime"]  \ue01b   #1
     #Press Key  xpath://*[@id="OutTime"]  \ue022   #9
     #Press Key  xpath://*[@id="OutTime"]  \ue01a   #0
     #Press Key  xpath://*[@id="OutTime"]  \ue01a   #0

Click Load
    Click Element  xpath://*[@id="btnLoad"]
    Sleep  1
Click Select All Days
    Click Element  xpath://*[@id="unchkall"]

Scroll Down To Buttom
    execute javascript  window.scrollTo(0,document.body.scrollHeight)

Click Save Change
    Click Element  xpath://*[@id="btnSave"]

Click Successful Notification Box
    SeleniumLibrary.Wait Until Element IS Visible    xpath://*[@id="ui_notifIt_btn"]
    SeleniumLibrary.Wait Until Element IS Enabled    xpath://*[@id="ui_notifIt_btn"]
    Click Element  xpath://*[@id="ui_notifIt_btn"]
   # Click Element  xpath://*[@id="ui_notifIt"]/div[2]



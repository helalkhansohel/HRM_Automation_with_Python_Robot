
*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators.py     #for same folder ./

*** Variables ***


*** Keywords ***
Verify LogIn Page
    [Documentation]  Varify  Dashboard page loading
    Page Should Contain  Total Employee


#---------- Personnel ----------------
Click Personnel Left Menu
    [Documentation]  Personnel Left Menu
    Wait Until Page Contains    On Leave (This Month)
    #Click Element  xpath://*[@id="400"]/a  #Click left menu personel
    Click Element  ${Left_Menu_Personnel_Link}    #Click left menu personel

#Top Link
Click Employee Top Menu

    Click Element  ${Top_Menu_Employee_Link}  #Click Top manu Employee
    Wait Until Page Contains    Final Settlement

Click Personal Setting Top Menu
    Click Element  ${Top_Menu_Personal_Sttings_Link}


#Sub Link
Click Employee Information
    Click Element  ${Employee_Information_Link}  #Click top submanu Employee Information
    #Employee Info Page
    Wait Until Page Contains    Reason of Discontinuation


Click Increment
    Click Element   ${Increment_Link}
    Wait Until Page Contains    Increment

Click Promotion
    Click Element   ${Promotion_Link}
    Wait Until Page Contains    Promotion
#------------------ Attendance ------------------------
Click Attendances Left Menu
    [Documentation]  Attendances Left Menu
    Wait Until Page Contains    On Leave (This Month)
    Click Element  ${Left_Menu_Attendances_Link}    #Click left menu Attendance
#Top Links
Click Attendances Top Menu
    Click Element  ${Top_Menu_Attendances_Link}   #Click Top manu Attendance

#Sub Links
Click Monthly Manual Attendance
    Click Element  ${Monthly_Manual_Attendance_Link}


#-------------- Leave --------------------
Click Left Leave Menu
    Click Element  ${Left_Menu_Leave_Link}
#Top Links
Click Top Leave Menu
     Click Element  ${Top_Menu_Leave_Link}
#Sub links
Click Leave App
     Click Element  ${Leave_App_Link}


#-------------- Payroll -----------------------------------
Click Left Payroll Menu
    [Documentation]  Click Left Payroll Menu
    Click Element  ${Left_Menu_Payroll_Link}
#Top Links
Click Top Salary Setting
    Click Element  ${Top_Menu_Salary_Setting_Link}
#Sub Links
Click Salary Process
    #Click Link  link:${Salary_Process_Link}
    Click Element  ${Salary_Process_Link}



*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#${EmployeeID}  a119
*** Keywords ***

Insert Employee Id
    [Arguments]  ${EmployeeID}
    [Documentation]  Varify New Employee ID insert
    #Employee Register Action

    input text  Id:EmployeeId  ${EmployeeID}     #Employee ID

    #if register employee alrady exixts, then this click will close the Employee ID dropdownlist
    Click Element  Id:EmployeeId

Input Employee Name
    input text  Id:Name  Alom  #Employee Name
   # sleep  1

Select Designation
    [Documentation]  Varify Imployee Information page other inputs
    # Selecting designation
    click element  id:HrmDesignationId_chosen
    input text  xpath://*[@id="HrmDesignationId_chosen"]/div/div/input  Manager
    Press Keys  xpath://*[@id="HrmDesignationId_chosen"]/div/div/input  \ue007   #Press Enter or Press Key location [Return] or \ue007

Select Office
    select from list by value  HrmOfficeId  1   #selecting Office
Select Shift
    select from list by value  HrmShiftId  1   #selecting Shift
   # sleep  1
Select Department
    select from list by value  HrmDepartmentId  1   #selecting Department
   # sleep  1
Select Staff or Worker
    select radio button  Employee.StaffWorkerBoth  1   # Staff or worker
Select Salary Type
    select radio button  Employee.SalaryType  1   # Regular or Production
   # sleep  1
Select Joining Date
    Scroll Element Into View  Id:Gross
   # sleep  2
    #click element  id:JoiningDate
    input text  Id:JoiningDate  01/01/2020  #Selecting Joining Date
Select Grade
    select from list by value  HrmGradeId  1  #seleting Grade

Input Gross
    input text  Id:Gross  10000  #Gross
   # sleep  2

    #Scroll Element Into View  xpath://*[@id="btnOfficielInfoSave"]
    #click element  id:btnOfficielInfoSave
    #Focus id=userid
Scroll down to Bottom
    Execute javascript  window.scrollTo(0,document.body.scrollHeight)
  #  sleep  1

Click Save

    Mouse over  xpath://*[@id="btnOfficielInfoSave"]
    #sleep  3
    #Mouse down  xpath://*[@id="btnOfficielInfoSave"]
    #open context menu  xpath://*[@id="btnOfficielInfoSave"]
   # sleep  1
   # Mouse down  xpath://*[@id="btnOfficielInfoSave"]
    click button  xpath://*[@id="btnOfficielInfoSave"]
   # sleep  1
    handle alert  accept


Click Find
    Click Element  id:btnFind
   # Sleep  2

Click Edit

    Mouse over  xpath://*[@id="btnOfficielInfoEdit"]
    #sleep  3
    #Mouse down  xpath://*[@id="btnOfficielInfoSave"]
    #open context menu  xpath://*[@id="btnOfficielInfoSave"]
   # sleep  1
   # Mouse down  xpath://*[@id="btnOfficielInfoSave"]
    click button  xpath://*[@id="btnOfficielInfoEdit"]
   # sleep  1
    handle alert  accept

Pass Fail Verification
    Page Should Contain  Successfully updated.



*** Settings ***
Documentation  Systech HTM End to End Testing
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/PageObjects/Menu.robot
Resource  ../Resources/PageObjects/Personnel/Employee_Information.robot
Resource  ../Resources/PageObjects/Personnel/Increment.robot
Resource  ../Resources/PageObjects/Personnel/Promotion.robot
Resource  ../Resources/PageObjects/Attendance/Monthly_Manual_Attendances.robot
Resource  ../Resources/PageObjects/Payroll/Salary_Process.Robot
Resource  ../Resources/PageObjects/Leave/Leave_App.Robot

Resource  ../Resources/PageObjects/Attendance/Test.robot

Test Setup  CommonFunctionality.Start TestCase Execution  #Run before each test case
Test Teardown  CommonFunctionality.Finish TestCase Execution  #Run after each test case

Suite Setup  log to console  Open Browser at the Begining     #Run one time only before any testcase run
Suite Teardown  log to console  close browser at the Ending   #Run one time only after any testcase run


*** Variables ***

${EmployeeID}  a119
${EmployeeName}

${Previous_YEAR}  2020-2021
${YEAR}  2022

${Month}  January


${Leave_Type}  Casual Leave
${LeaveFromDate}  01/02/2022
${LeaveToDate}  01/02/2022

${ApprovedBy}  00002
${ApprovedDate}  01/02/2020
${ApplicationDate}  01/02/2020

${IncrementType}  Yearly Increment
${AccountsOrBuyer}  B
${IncrementEffectedDate}  02/01/2022
${PromotionEffectedDate}  03/01/2022
*** Test Cases ***

Testcase 1: Varify Prl LogIn Page
    [Documentation]  Veryfy Prl user LogIn
    [Tags]  Functional


    Menu.Verify LogIn Page


Testcase 2: Perform Register New Employee
    [Documentation]  Load Imployee Page and Register new Employees
    [Tags]  Functional
    Menu.Click Personnel Left Menu
    Menu.Click Employee Top Menu
    Menu.Click Employee Information

    Employee_Information.Insert Employee Id  ${EmployeeID}
    Employee_Information.Input Employee Name
    Employee_Information.Select Designation
    Employee_Information.Select Office
    Employee_Information.Select Shift
    Employee_Information.Select Department
    Employee_Information.Select Staff or Worker
    Employee_Information.Select Salary Type
    Employee_Information.Select Joining Date
    Employee_Information.Select Grade
    Employee_Information.Input Gross
    Employee_Information.Scroll down to Bottom
    Employee_Information.Click Save




Testcase 3: Perform Edit New Employee
    [Documentation]  Load Imployee Page and Register new Employees
    [Tags]  Functional
    Menu.Click Personnel Left Menu
    Menu.Click Employee Top Menu
    Menu.Click Employee Information

    Employee_Information.Insert Employee Id  ${EmployeeID}
    Employee_Information.Click Find
    Employee_Information.Input Employee Name
    Employee_Information.Select Designation
    Employee_Information.Select Office
    Employee_Information.Select Shift
    Employee_Information.Select Department
    Employee_Information.Select Staff or Worker
    Employee_Information.Select Salary Type
    Employee_Information.Select Joining Date
    Employee_Information.Select Grade
    Employee_Information.Input Gross
    Employee_Information.Scroll down to Bottom
    Employee_Information.Click Edit
    Employee_Information.Pass Fail Verification


Testcase 4: Perform Increment
    [Documentation]  Load Increment and Give Increment
    [Tags]  Functional
    Menu.Click Personnel Left Menu
    Menu.Click Personal Setting Top Menu
    Menu.Click Increment

  #  Sleep  3
    Increment.Input Employee  ${EmployeeID}
   # Sleep  1
    Increment.Select Checkbox Is Fixed
    Increment.Input Fix Amount
   # sleep  1
    Increment.Input Increment Type  ${IncrementType}
   # Sleep  1
    Increment.Select Accounts Buyer  ${AccountsOrBuyer}
    #Sleep  1
    Increment.Input Effected date  ${IncrementEffectedDate}
    #  Increment.Click Ref No
   # sleep  1
    Increment.Click Load


   # sleep  1
    Increment.Check All Employee

    Increment.Scroll Down To Bottom
    #sleep  3
    Increment.Click Save
    #Sleep  1

    Increment.Click OK To Alert
    Increment.Pass Fail Verification
   # Sleep  3

Testcase 5:Perform Promotion
    [Documentation]  Load Increment and Give Increment
    [Tags]  Functional
    Menu.Click Personnel Left Menu
    Menu.Click Personal Setting Top Menu
    Menu.Click Promotion
  #  Sleep  3

    Promotion.Input Employee  ${EmployeeID}
  #  Sleep  1
    Promotion.Select Checkbox Is Fixed
    Promotion.Input Fix Amount
   # sleep  1
   # Increment.Input Increment Type  ${IncrementType}
    #Sleep  1
    Promotion.Select Accounts Buyer  ${AccountsOrBuyer}
  #  Sleep  1
    Promotion.Input Effected date  ${PromotionEffectedDate}
  #  sleep  1
    Promotion.Click Load
    #sleep  14
    Promotion.Scroll Down To Bottom
    #sleep  1
    Promotion.Check All Employee
   # sleep  1
    Promotion.Click Save

    Promotion.Click OK To Alert

    Promotion.Pass Fail Verification
    Promotion.Click Ok to Notification

Testcase 6:Perform Leave Application
    [Documentation]  Load Leave Open & Open Leave
    [Tags]  Functional
    Menu.Click Left Leave Menu
    Menu.Click Top Leave Menu
    Menu.Click Leave App


   # Sleep  3
    Leave_App.Select Employee  ${EmployeeID}
   # sleep  1
    Leave_App.Select Leave Type  ${Leave_Type}
    #sleep  1
    Leave_App.Select From Date  ${LeaveFromDate}
   # Sleep  1
    Leave_App.Select To Date  ${LeaveToDate}
   # Sleep  2
    Leave_App.Select Approved By  ${ApprovedBy}
  #  Sleep  1
    Leave_App.Select Approved Date  ${ApprovedDate}
   # Sleep  1
    Leave_App.Select Application Date  ${ApplicationDate}
  #  Sleep  1
    Leave_App.Click Save
   # Sleep  1

    Leave_App.Click Alert
    Leave_App.Pass Fail Verification

    #Sleep  3


Testcase 7: Perform Monthly Manual Attendances
    [Documentation]  Load Imployee Page and Register new Employees
    [Tags]  Functional

    Menu.Click Attendances Left Menu
    Menu.Click Attendances Top Menu
    Menu.Click Monthly Manual Attendance


   # sleep  1
    Monthly_Manual_Attendances.Select Employee  ${EmployeeID}
   # sleep  1
    Monthly_Manual_Attendances.Select Year  ${YEAR}
   # sleep  1
    Monthly_Manual_Attendances.Select Month  ${Month}
   # sleep  1
    CommonFunctionality.Select InTime
    #sleep  1
    CommonFunctionality.Select OutTime
   # sleep  1

    Monthly_Manual_Attendances.Click Load
   # sleep  1

    Monthly_Manual_Attendances.Click Select All Days
   # sleep  1

    Monthly_Manual_Attendances.Scroll Down To Buttom
   # sleep  1

    Monthly_Manual_Attendances.Click Save Change
   # sleep  1

    Monthly_Manual_Attendances.Click Alert
   # sleep  1

   # Wait Until Page Contains  Successfully saved.
    Monthly_Manual_Attendances.Pass Fail Verification
    Monthly_Manual_Attendances.Click Successful Notification Box



Testcase 8: Perform Proces Salary
    [Documentation]  Load Payroll Page and Salary Process for single employee
    [Tags]  Functional
    Menu.Click Left Payroll Menu
    Menu.Click Top Salary Setting
    Menu.Click Salary Process


   # sleep  2
    Salary_Process.Select Year  ${YEAR}
   # sleep  3

    Salary_Process.Select Month  ${Month}
   # sleep  1
    Salary_Process.Select Employee  ${EmployeeID}
   # sleep  1
    CommonFunctionality.Scroll Down to the bottom of the page
  #  Sleep  1
    Salary_Process.Select Process with attendances calculation
  #  Sleep  1
    Salary_Process.Click Process
   # Sleep  1
    CommonFunctionality.Accept Alert
    Salary_Process.Pass Fail Verification
   # Sleep  1
    Salary_Process.Click Ok Notification
   # Sleep  3


Testcase 5:Perform Test
    [Documentation]  My Test
    [Tags]  Test
    Menu.Click Personnel Left Menu
    Menu.Click Personal Setting Top Menu
    Menu.Click Increment

  #  Sleep  3
   # Test.Input Employee  ${EmployeeID}
   # Sleep  1
    Test.Select Checkbox Is Fixed
    Test.Input Fix Amount
   # sleep  1
    Test.Input Increment Type  ${IncrementType}
   # Sleep  1
    Test.Select Accounts Buyer  ${AccountsOrBuyer}
    #Sleep  1
    Test.Input Effected date  ${IncrementEffectedDate}
    #Increment.Click Ref No
   # sleep  1
    Test.Click Load


   # sleep  1
    Test.Check All Employee

    Test.Scroll Down To Bottom
    #sleep  3
    #Execute Javascript  window.scrollTo(0, document.getElementsByClassName('dataTables_scrollBody')[0].scrollHeight)
    Execute Javascript  window.scrollTo(0, document.getElementById('iTableElement').scrollHeight)
   # Set Selenium Implicit Wait  60s
    Increment.Click Save
   # Set Selenium Implicit Wait  60s
    sleep  3

   # Increment.Click OK To Alert
   # Increment.Pass Fail Verification




#robot -d Results Tests/TestSuits.robot
#robot  -i Test -d Results Tests/TestSuits.robot
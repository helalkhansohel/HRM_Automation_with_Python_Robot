*** Settings ***
Documentation  Employee Register

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/Menu.robot

Resource  ../../Resources/PageObjects/Personnel/Employee_Information.robot


Test Setup  CommonFunctionality.Start TestCase Execution  #Run before each test case
Test Teardown  CommonFunctionality.Finish TestCase Execution  #Run after each test case
*** Variables ***
${EmployeeID}  a119
*** Test Cases ***


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

#robot -d Results Tests/Personnel/Employee_Info_Update.Robot
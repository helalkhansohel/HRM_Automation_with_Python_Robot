*** Settings ***
Library  SeleniumLibrary
Variables  ../Leave/PageObjects/Locators.py
*** Variables ***

*** Keywords ***
Input Closing Year
    [Arguments]  ${Previous_YEAR}
   Select From List By Label  ${LO_Closing_Year}  ${Previous_YEAR}
Input Opening Year
    [Arguments]  ${YEAR}
   #Select From List By Label  cmbYear  ${YEAR}
Click Leave Process
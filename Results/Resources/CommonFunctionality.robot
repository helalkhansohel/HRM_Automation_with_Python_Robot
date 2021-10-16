
*** Settings ***
Library  SeleniumLibrary
Variables  ./Locators.py
*** Variables ***
${BROWSER}  chrome
${url}   http://demo.systechpayroll.com/
#${URL}   http://120.50.27.34:82/

${USERNAME}  SUSER
${PASSWORD}  232323

${txtInTime}   xpath://*[@id="InTime"]
${txtOutTime}  xpath://*[@id="OutTime"]

${BackSpace}  \ue003

*** Keywords ***
Start TestCase Execution
    SET Selenium Implicit Wait  40s
    Open Browser    ${URL}  ${BROWSER}

    Maximize browser window

    #input text  name:LoginName  ${USERNAME}
    #input text  name:Password  ${PASSWORD}
    #click element  xpath://*[@id="loginDiv"]/form/div[3]/input
    input text  ${txt_UserName}  ${USERNAME}
    input text  ${txt_Password}  ${PASSWORD}
    click element  ${btnLogIn}

Finish TestCase Execution
    #Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    #Click Element   xpath://*[@id="leftMenu-logout"]/a
    Close Browser
    #Close All Browsers

Accept Alert
    Handle alert  accept


Select InTime

     Click element  ${txtInTime}
     #Pressing 4 back space
     Press Key  ${txtInTime}  ${BackSpace}
     Press Key  ${txtInTime}  ${BackSpace}
     Press Key  ${txtInTime}  ${BackSpace}
     Press Key  ${txtInTime}  ${BackSpace}
     #Pressing Time
     Press Key  ${txtInTime}  \ue01a   #0
     Press Key  ${txtInTime}  \ue023   #9
     Press Key  ${txtInTime}  \ue01a   #0
     Press Key  ${txtInTime}  \ue01a   #0

Select OutTime
     Click element  ${txtOutTime}
     #Pressing 4 back space
     Press Key  ${txtOutTime}  ${BackSpace}
     Press Key  ${txtOutTime}  ${BackSpace}
     Press Key  ${txtOutTime}  ${BackSpace}
     Press Key  ${txtOutTime}  ${BackSpace}
     #Pressing Time
     Press Key  ${txtOutTime}  \ue01b   #1
     Press Key  ${txtOutTime}  \ue022   #9
     Press Key  ${txtOutTime}  \ue01a   #0
     Press Key  ${txtOutTime}  \ue01a   #0


Scroll Down to the bottom of the page
    Execute javascript  window.scrollTo(0,document.body.scrollHeight)



#Note: If I use Keys then back space does not work .

*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***

User clicking Login link
    Click link    ${login_Link_PartialLinkText}    

Verify the presence of user details table 
    Page Should Contain Element    ${tableID_ID}
    
Verify the Username value is as expected
    [Arguments]    ${UserName}
    Table Cell Should Contain    ${tableID_ID}    2    2    ${UserName} 

Verify the firstname value is as expected
    [Arguments]    ${FirstName}
    Table Cell Should Contain    ${tableID_ID}    3    2    ${FirstName} 

Verify the lastname value is as expected
    [Arguments]    ${LastName}
    Table Cell Should Contain    ${tableID_ID}    4    2    ${LastName}
    
Verify the phone number as expecetd
    [Arguments]    ${Phone}
    Table Cell Should Contain    ${tableID_ID}    5    2    ${Phone}
    
Click on logout button
    Click link    ${logOut_Link_PartialLinkText} 
          

            

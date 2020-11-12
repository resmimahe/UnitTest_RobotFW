*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/userRegistrationKeyword.robot
Resource    ../Resources/userDetailsKeywords.robot
Resource    ../Resources/validationKeywords.robot
Resource    ../Resources/setupAndTeardownKeyword.robot
Test Setup    Launching the demo app
Test Teardown    Closing demo app browser

*** Variables ***

${Username}   DemoAppUser001
${PWD}    Test@123
${FirstName}    DemoUser
${LastName}    DemoTest    
${FamilyName}    TestDemo    
${Phone}    8908976590

*** Test Cases ***
TC001_New user registartion in Demo app Test
    [Documentation]    : AC1_User is registring through the webportal
    [Tags]    Functional
            
    Verify the home page
    User clicks on registration link
    User verify the registration page
    User enter username    ${Username}
    User enter password    ${PWD}
    User enter firstname    ${FirstName}
    User enter lastname    ${LastName}
    User enter phonenumber    ${Phone}
    User clicks on registor button
    Verify the Registration is successfull
    User enter the UserId    ${Username}
    User enter the pwd    ${PWD}
    User click login button
    Verify user reached user information page
    
TC002_User verifying the details in the main view test
    [Documentation]    : AC2_User is revewing the user details from the main view
    [Tags]    Functional
    
    Verify the home page
    User clicking Login link
    User enter username    ${Username}
    User enter password    ${PWD}
    User click login button
    Verify the presence of user details table
    Verify the Username value is as expected    ${Username}
    Verify the firstname value is as expected   ${FirstName}
    Verify the lastname value is as expected    ${LastName}
    Verify the phone number as expecetd    ${Phone} 
    Click on logout button
    

    
  
  
     
    
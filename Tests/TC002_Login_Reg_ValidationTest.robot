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
${InvalidUsername}   DemoAppUser0
${InvalidPWD}    Test
${FirstName}    Demo
${LastName}    DemoLast   
${FamilyName}    Demofamily    
${Phone}    8908970000

*** Test Cases ***

TC003_Valid user ID with Invalid pwd login
    [Documentation]    : Verifying the behaviour of valid user with invalid pwd
    [Tags]    Functional
    
    Verify the home page
    User clicking Login link
    User enter username    ${Username}
    User enter password    ${InvalidPWD}
    User click login button
    Verify the login error page
    Verify the login error message
    close browser
    
TC004_Invalid userID and password login
    [Documentation]    : Verifying the behaviour of invalid user's login attempt
    [Tags]    Functional
    Verify the home page
    User clicking Login link
    User enter username    ${InvalidUsername}
    User enter password    ${InvalidPWD}
    User click login button
    Verify the login error page
    Verify the login error message
    Close browser
    
TC005_Registration using an existing user ID
    [Documentation]    : Verifying whether using an existing userID, a user can do the registration or not
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
    Verify the error message of existing user registration    ${Username}
    
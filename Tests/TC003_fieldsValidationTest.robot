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

TC006_Registration_Username field validation
    [Documentation]    : Verifying the null validation of username fields
    [Tags]    Sanity
   
    User clicks on registration link 
    User clicks on registor button
    Verify the username field is mandatory
    User enter password    ${PWD}
    User enter firstname    ${FirstName}
    User enter lastname    ${LastName}
    User enter phonenumber    ${Phone}
    User clicks on registor button   
    Verify the username field is mandatory
    
    
 TC007_Registration_password field validation
    [Documentation]    : Verifying the null validation of password fields
    [Tags]    Sanity
   
    
    User clicks on registration link 
    User clicks on registor button
    User enter username    ${Username}
    User enter firstname    ${FirstName}
    User enter lastname    ${LastName}
    User enter phonenumber    ${Phone}
    User clicks on registor button   
    Verify the password field is mandatory
    
      
TC008_Registration_firstname field validation
    [Documentation]    : Verifying the null validation of firstname fields
    [Tags]    Sanity
    
    User clicks on registration link 
    User clicks on registor button
    User enter username    ${Username}
    User enter password    ${PWD}
    User enter lastname    ${LastName}
    User enter phonenumber    ${Phone}
    User clicks on registor button   
    Verify the firstname field is mandatory 
     
    
TC009_Registration_Familyname field validation
    [Documentation]    : Verifying the null validation of famillyname fields
    [Tags]    Sanity
   
        
    User clicks on registration link 
    User clicks on registor button
    User enter username    ${Username}
    User enter password    ${PWD}
    User enter firstname    ${FirstName}
    User enter phonenumber    ${Phone}
    User clicks on registor button   
    Verify the Family Name field is mandatory
    
    
TC010_Registration_Phone field validation 
    [Documentation]    : Verifying the null validation of Phone fields
    [Tags]    Sanity
    
    
    User clicks on registration link 
    User clicks on registor button
    User enter username    ${Username}
    User enter password    ${PWD}
    User enter firstname    ${FirstName}
    User enter lastname    ${LastName}
    User clicks on registor button   
    Verify the phone number field is mandatory
    
    
TC011_Login field validation with no input
    [Documentation]    : Verifying the behaviour with no inputs in username and pwd fields
    [Tags]    Sanity
    
    
    Verify the home page
    User clicking Login link
    User click login button
    Verify the login fields are mandatory
    
    
TC012_Login_userid field validation
    [Documentation]    : Verifying whether the username field of login is mandatory
    [Tags]    Sanity
    
        
    Verify the home page
    User clicking Login link
    User enter password    ${PWD}
    User click login button
    Verify the userID filed is mandatory in login
    
    
TC006_Login_password field validation
    [Documentation]    : Verifying whether the password field of login is mandatory
    [Tags]    Sanity 
    
    
    Verify the home page
    User clicking Login link
    User enter username    ${Username}
    User click login button
    Verify the password field is mandatory in login
    
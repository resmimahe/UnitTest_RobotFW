*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/userRegistrationKeyword.robot
Resource    ../Resources/userDetailsKeywords.robot
Resource    ../Resources/validationKeywords.robot
Resource    ../Resources/setupAndTeardownKeyword.robot
Test Setup    Launching the demo app
Test Teardown    Closing demo app browser
 

*** Variables ***

${Username1}  test101
${Username2}   test102 
${Username3}    test103
${Username4}    test104
${UsernameWith_WhiteSpaceAlone}    ${empty}
${PWD}    Test@123
${PWD_withWhiteSpace}    ${empty}
${PWD_withLessThan4char}    12
${FirstName}    DemoUser
${firstname_withspecialChar}     %$%$%##   
${Firstname_withWhiteSpaceAlone}   ${empty} 
${firstname_withNumbersAlone}    666676
${LastName}    DemoTest
${lastname_withspecialChar}     %$%**##   
${lastname_withWhiteSpaceAlone}   ${empty} 
${lastname_withNumbersAlone}    666676    
${FamilyName}    TestDemo    
${Phone}    8908976590
${phone_withWhiteSpaceAlone}    ${empty}
${phone_withcharAndSpecialChar}    ghgjh&&%
${phone_withMoreThan12digits}    86876879677776555555555555555555555557


*** Test Cases ***

TC014_Registration_Username field validationTest
    
    [Documentation]    This testcase verify whether the user field accept special character,Numbers,White space in the beginning etc
    [Tags]    Functional
    
    User clicks on registration link 
    User clicks on registor button
    Enter invalid input types in username field and move to other field    ${UsernameWith_WhiteSpaceAlone}    ${PWD}    ${FirstName}    ${LastName}    ${Phone}
    User clicks on registor button
    Verify the Registration is unsucceesfull  
    
TC015_Registration Password field validationTest  
    [Documentation]    This testcase verify whether the password field accept White space alone,Pwd with less than 4 char
    [Tags]    Functional
    
    User clicks on registration link 
    User clicks on registor button
    Enter invalid input types in password field and move to other field    ${Username1}    ${PWD_withWhiteSpace}    ${PWD_withLessThan4char}    ${FirstName}    ${LastName}    ${Phone}
    User clicks on registor button
    Verify the Registration is unsucceesfull 
    
TC016_Registration_Firstname field Validation  
    [Documentation]    This testcase verify whether the firstname field accept Invalid inputs like whitespace alone,special characters and numbers
    [Tags]    Functional
    
    User clicks on registration link 
    User clicks on registor button
    Enter invalid input types in firstname field and move to other field    ${Username2}    ${PWD}    ${firstname_withspecialChar}    ${Firstname_withWhiteSpaceAlone}    ${firstname_withNumbersAlone}    ${LastName}    ${Phone}
    User clicks on registor button
    Verify the Registration is unsucceesfull   
    
TC017_Registration_Lastname field Validation  
    [Documentation]    This testcase verify whether the lasttname field accept Invalid inputs like whitespace alone,special characters and numbers
    [Tags]    Functional
    
    User clicks on registration link 
    User clicks on registor button
    Enter invalid input types in lastname field and move to other field    ${Username3}    ${PWD}    ${FirstName}    ${lastname_withspecialChar}    ${lastname_withWhiteSpaceAlone}    ${lastname_withNumbersAlone}    ${Phone}
    User clicks on registor button
    Verify the Registration is unsucceesfull      
    
TC018_Registration_phone field Validation  
    [Documentation]    This testcase verify whether the lasttname field accept Invalid inputs like whitespace alone,special characters and numbers
    [Tags]    Functional
    
    User clicks on registration link 
    User clicks on registor button
    Enter invalid input types in phone field and move to other field    ${Username4}    ${PWD}    ${FirstName}    ${LastName}    ${phone_withWhiteSpaceAlone}    ${phone_withcharAndSpecialChar}    ${phone_withMoreThan12digits}
    User clicks on registor button
    Verify the Registration is unsucceesfull        

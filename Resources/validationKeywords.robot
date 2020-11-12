*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
# This keywords will verify whether the fields are mandatory fields or not

Verify the login error page
    Page Should Contain    Login Failure
    
Verify the login error message
    Page Should Contain    You provided incorrect login details 
    
Verify the error message of existing user registration
    [Arguments]    ${Username} 
     Page Should Contain    User ${Username} is already registered.  
     
Verify the username field is mandatory 
    Element Should Be Enabled    ${userId_textBox_ID}  
    
Verify the password field is mandatory
    Element Should Be Enabled    ${password_textBox_ID}

Verify the firstname field is mandatory
    Element Should Be Enabled    ${firstName_textbox_ID} 
    
Verify the Family Name field is mandatory
     Element Should Be Enabled    ${familyName_textbox_ID}  
     
Verify the phone number field is mandatory
     Element Should Be Enabled    ${phoneNumber_textbox_ID}  
     
Verify the userID filed is mandatory in login
    Element Should Be Enabled    ${userId_textBox_ID}
    
Verify the fileds are mandatory in login
    Element Should Be Enabled    ${userId_textBox_ID}
    
Verify the password field is mandatory in login
    Element Should Be Enabled    ${password_textBox_ID}
    
Verify the login fields are mandatory
    Element Should Be Enabled    ${userId_textBox_ID}
# Below keywords wil check whether the fileds accept invalid type of inputs

Enter invalid input types in username field and move to other field
    
    [Arguments]    ${Username_withWhiteSpacealone}    ${pwd}    ${Firstname}    ${lastName}    ${phone}
    Input Text    ${userId_textBox_ID}    ${Username_withWhiteSpacealone}
    Input Text    ${password_textBox_ID}    ${pwd} 
    Input Text   ${firstName_textbox_ID}    ${Firstname}
    Input Text    ${familyName_textbox_ID}    ${lastName}    
    Input Text    ${phoneNumber_textbox_ID}    ${phone}
    
Enter invalid input types in password field and move to other field
    [Arguments]    ${Username}    ${pwd_withWhiteSpaceAlone}    ${pwd_lessThan4Character}    ${Firstname}    ${lastName}    ${phone}
       
    Input Text    ${userId_textBox_ID}    ${Username}
    Input Text    ${password_textBox_ID}    ${pwd_withWhiteSpaceAlone} 
    Input Text   ${firstName_textbox_ID}    ${Firstname}
    Clear Element Text    ${password_textBox_ID}
    Input Text    ${password_textBox_ID}    ${pwd_lessThan4Character}
    Input Text   ${firstName_textbox_ID}    ${Firstname}
    Input Text    ${familyName_textbox_ID}    ${lastName}    
    Input Text    ${phoneNumber_textbox_ID}    ${phone}
    
Enter invalid input types in firstname field and move to other field
    [Arguments]    ${Username}    ${pwd}    ${firstname_withspecialChar}    ${Firstname_withWhiteSpaceAlone}     ${firstname_withNumbersAlone}    ${lastName}    ${phone}
    Input Text    ${userId_textBox_ID}    ${Username}
    Input Text    ${password_textBox_ID}    ${pwd} 
    Input Text   ${firstName_textBox_ID}    ${firstname_withspecialChar}
    Input Text    ${familyName_textbox_ID}    ${lastName}
    Clear Element Text    ${firstName_textBox_ID}
    Input Text   ${firstName_textBox_ID}    ${Firstname_withWhiteSpaceAlone}
    Input Text    ${phoneNumber_textbox_ID}    ${phone}
    Clear Element Text    ${firstName_textBox_ID}
    Input Text   ${firstName_textBox_ID}    ${firstname_withNumbersAlone}
    
Enter invalid input types in lastname field and move to other field
    [Arguments]    ${Username}    ${pwd}    ${firstname}  ${lastname_withspecialChar}    ${lastname_withWhiteSpaceAlone}     ${lastname_withNumbersAlone}    ${phone}
    Input Text    ${userId_textBox_ID}    ${Username}
    Input Text    ${password_textBox_ID}    ${pwd} 
    Input Text   ${firstName_textBox_ID}    ${firstname}
    Input Text    ${familyName_textbox_ID}    ${lastname_withspecialChar}
    Input Text    ${phoneNumber_textbox_ID}    ${phone}
    Clear Element Text    ${familyName_textbox_ID}
    Input Text   ${familyName_textbox_ID}    ${lastname_withWhiteSpaceAlone}
    Clear Element Text    ${familyName_textbox_ID} 
    Input Text   ${familyName_textbox_ID}    ${lastname_withNumbersAlone}
    
Enter invalid input types in phone field and move to other field
    [Arguments]    ${Username}    ${pwd}    ${firstname}  ${lastname}    ${phone_withWhiteSpaceAlone}     ${phone_withcharAndSpecialChar}    ${phone_withMoreThan12digits}
    Input Text    ${userId_textBox_ID}    ${Username}
    Input Text    ${phoneNumber_textbox_ID}    ${phone_withWhiteSpaceAlone}
    Input Text    ${password_textBox_ID}    ${pwd}
    Clear Element Text    ${phoneNumber_textbox_ID}
    Input Text   ${phoneNumber_textbox_ID}    ${firstname}
    Input Text    ${familyName_textbox_ID}    ${lastname}
    Clear Element Text    ${phoneNumber_textbox_ID}
    Input Text    ${phoneNumber_textbox_ID}    ${phone_withcharAndSpecialChar}
    Clear Element Text    ${phoneNumber_textbox_ID}
    Input Text    ${phoneNumber_textbox_ID}    ${pwd} 
    Input Text   ${firstName_textBox_ID}    ${phone_withMoreThan12digits}
    
    

    
               
      
    


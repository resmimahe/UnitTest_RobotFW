*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
Open demo app
    [Arguments]    ${App url}    ${browser}      
    Open Browser    ${App url}    ${browser}           
    Maximize Browser Window
    Delete All Cookies   
    
Verify the home page
    Page should contain    index page

User clicks on registration link
    Click Link     ${register_Link_PartialLinkText}
    
User verify the registration page
    page should contain    Register 
          
User enter username
    [Arguments]    ${firstname}    
    Input Text    ${userName_textbox_ID}    ${firstname} 
    
User enter password
    [Arguments]    ${password}
    Input Text    ${password_textbox_ID}    ${password}
    
User enter firstname
    [Arguments]    ${lastname}
    Input Text    ${firstName_textbox_ID}    ${lastname} 
    
User enter lastname
    [Arguments]    ${lastname}
    Input Text    ${familyName_textbox_ID}    ${lastname} 
    
User enter phonenumber
    [Arguments]    ${phone}
     Input Text    ${phoneNumber_textbox_ID}    ${phone}   
User clicks on registor button 
    Click element    ${registerBtn_Button_Xpath}  
    
Verify the Registration is successfull
    Title Should Be   Log In - Demo App
    
Verify the Registration is unsucceesfull
    Title Should Be    Register - Demo App     
    
User enter the UserId
    [Arguments]    ${firstname}
    input text    ${userName_textbox_ID}    ${firstname}

User enter the pwd
     [Arguments]    ${password}
     Input Text    ${pwd_textBox_ID}    ${password} 
     
User click login button
    Click Element    ${login_Button_Xpath} 
    
Verify the login page
    Title Should Be    Log In - Demo App
    
Verify user reached user information page
    Page Should Contain    User Information
    

    
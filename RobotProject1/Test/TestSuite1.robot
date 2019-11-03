 *** Settings ***
Library    SeleniumLibrary    
Suite Setup       Log    I am inside Test Suite Setup    
Suite Teardown    Log    I am inside Test Suite Teardown    
Test Setup        Log    I am inside Test Setup    
Test Teardown     Log    I am inside Test Teardown    
Default Tags    sanity

*** Variables ***
${URL}    https://orangehrm-demo-6x.orangehrmlive.com/auth/login
@{CREDENTIALS}    Admin    admin123

*** Keywords ***
Open URL
    Open Browser                 https://google.com    chrome
    Set Browser Implicit Wait    5
    Maximize Browser Window
    

*** Test Cases ***
MyFirstTest
    Log   Hello World...  
    
FirstSeleniumTest
    # Open Browser                 https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Maximize Browser Window
    Open URL
    Input Text                   name=q                harshit lohia  
    Press Keys                   name=q                ENTER
    Sleep                        2    
    #Input Password    name=pass    lohiaster      
    Close Browser
    Log    Test Completed Succesfully...
    

SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser    ${URL}       chrome
    Set Browser Implicit Wait    5
    Input Text         id=txtUsername    @{CREDENTIALS}[0]  
    Sleep    2    
    Input Password     id=txtPassword    @{CREDENTIALS}[1]
    Click Button       id=btnLogin  
    Sleep    2    
    #Click Element    id=dropDownRecruitmentTrigger     
    Click Element    id=user-dropdown 
    Sleep    3      
    Click Element    id=logoutLink  
    Sleep    5      
    Close Browser
    Log    Sign in test complete successfully on %{os} by %{username}      
    
YoutubeSampleTest
    [Documentation]    This is a youtube search test
    Open Browser    https://www.youtube.com    chrome
    Set Browser Implicit Wait    5
    Maximize Browser Window
    Input Text    name=search_query    Robot framework    
    Press Keys    id=search    ENTER
    Close Browser
        
         
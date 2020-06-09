***Settings***
Library    SeleniumLibrary

Suite Setup       Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup        Log    I am inside Test Setup
Test Teardown     Log    I am inside Test Teardown

Default Tags    sanity    
   
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...    
    
MySecondTest
    Log   I am inside 2nd test
    Set Tags    regression1
    Remove Tags    regression1
    
MyThirdtTest
    Log    I am inside 3rd test
    
MyFourthTest
    Log    I am inside 4th test   
  
    
#FirstSeleniumTest
 #Open Browser    https://google.com    chrome
  #Set Browser Implicit Wait    5
   #Input Text    name=q    shitty day
    #Press Keys    name=q    ENTER
   #Click Button    name=btnK   
    #Sleep    5
    #Close Browser
    


#SampeLoginTest
 #   [Documentation]    This is a sample login test
  #  Open Browser                 https://opensource-demo.orangehrmlive.com/    chrome
   # Set Browser Implicit Wait    4
    #LoginKW         
    #Click Element                id=welcome    
    #Click Element                link=Logout  
    #Close Browser  
    #Log                          Test Completed   
    #Log                          Tama testi ajettiin heppulin %{username} toimesta under %{os} 
    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LGOINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LGOINDATA}[password]
    Click Button      id=btnLogin      
       
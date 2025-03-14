*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/config_art.robot
Resource    ../keywords/Tab_basic_data.robot

*** Keywords ***
Click Element with Delay   
    [Arguments]    ${locator}
    Click Element    ${locator}
    Sleep    1.5s

Input Text with Delay   
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}    
    Sleep    1.5s

Press Key with Delay 
    [Arguments]    ${locator}    ${text}
    Press Key    ${locator}    ${text}    
    Sleep    1.5s

Wait And Clear Element Text Ignore Error    #no require     
    [Arguments]    ${locator}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    2x    2s    Clear Element Text    ${locator}

Wait And Click Element Ignore Error    #no require     
    [Arguments]    ${locator}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    2x    2s    Click Element with Delay    ${locator}

Wait And Input Text with Delay Ignore Error     #no require
    [Arguments]    ${locator}    ${text}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    2x    2s    Input Text with Delay    ${locator}    ${text}

Wait And Press Keys Ignore Error    #no require
    [Arguments]    ${locator}    ${keys}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds    2x    2s    Press Key    ${locator}    ${keys}

Conditional Wait And Click element
    [Arguments]    ${condition}    ${locator}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    2x    2s    Click Element with Delay    ${locator}

Conditional Wait And Input text
    [Arguments]    ${condition}    ${locator}    ${text}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    2x    2s    Input Text with Delay    ${locator}    ${text}

Conditional Wait And Press Keys
    [Arguments]    ${condition}    ${locator}    ${keys}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    2x    4s    Press Key    ${locator}    ${keys}

Conditional Wait And Clear Element Text
    [Arguments]    ${condition}    ${locator}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    2x    2s    Clear Element Text    ${locator}

Conditional Wait And Scroll Element Into View
    [Arguments]    ${condition}    ${locator}
    Run Keyword If    ${condition}    Wait Until Keyword Succeeds    2x    2s    Scroll Element Into View    ${locator}

Wait And Scroll Element Into View    #require
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    2.5s    Scroll Element Into View    ${locator}

Wait And Clear Element Text    #require
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    2.5s    Clear Element Text    ${locator}

Wait And Input Text with Delay    #require
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    5x    2.5s    Input Text with Delay    ${locator}    ${text}

Wait And Press Keys    #require
    [Arguments]    ${locator}    ${keys}
    Wait Until Keyword Succeeds    5x    2.5s    Press Key    ${locator}    ${keys}

Wait And Click Element     #require
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    2.5s    Click Element with Delay    ${locator}


Wait And Wait Until Element Is Visible    
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    2.5s    Wait Until Element Is Visible    ${locator}

Wait And Wait Until Element Contains    
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    3x    2.5s    Wait And Wait Until Element Contains    ${locator}    ${text}    


# Open browser web url	#ชื่อที่จะนำไปใช้
#     [Documentation]    
#     [Arguments]    ${url}    ${browserName}    
#     SeleniumLibrary.open browser    ${url}    browser=${browserName}    
#     ...    options=binary_location=r"C:\\chrome-win64\\chrome.exe"  



Login dohome and click web art(Create)
    #Open browser web url    ${url_dohome}    headlesschrome
    Open browser    ${url_dohome}    chrome            
    #Maximize Browser Window 
    # Set Window Position    1920    0
    Maximize Browser Window 
    Set Window Size    1920    1080
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //button[text()='เข้าสู่ระบบ']    เข้าสู่ระบบ      
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[text()='เข้าสู่ระบบ']
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains   //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="username"] 
    Wait until keyword succeeds    5x   2s    Input Text with Delay    //input[@name="username"]     ${user_create}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="password"]
    Wait until keyword succeeds    5x   2s    Input Text with Delay   //input[@name="password"]    ${pass}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[@type="submit"][ text()='เข้าสู่ระบบ']
    #Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //span[text()='ชัชชญา เครือแวงมล(กุ้ง)']     ชัชชญา เครือแวงมล(กุ้ง)
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Wait until keyword succeeds    5x   2s    Switch Window    New
    Maximize Browser Window 
    #Set Window Size    1920    1080    
    Wait until keyword succeeds    5x   2s    Wait Until Element Is Visible    //h3[text()="Article Master"]
    Wait And Click Element                    //p[text()='จัดการสินค้า']
    Wait And Click Element                    //p[text()='จัดการข้อมูลสินค้า']
    # Wait And Wait Until Element Is Visible    //div[@class="dx-datagrid-text-content"][text()='วันที่สร้าง']
    Wait And Wait Until Element Is Visible    //*[text()=' สร้างสินค้าใหม่']/parent::span
    # สร้าง Article
    Click create article
    Sleep    0.5s



Login dohome and click web art(Approve avp)
    Open browser    ${url_dohome}    headlesschrome
    # Open browser web url    ${url_dohome}    chrome             
    Set Window Size    1920    1080
    # Maximize Browser Window
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //button[text()='เข้าสู่ระบบ']    เข้าสู่ระบบ       
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[text()='เข้าสู่ระบบ']
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains   //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="username"] 
    Wait until keyword succeeds    5x   2s    Input Text with Delay    //input[@name="username"]     ${user_avp}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="password"]
    Wait until keyword succeeds    5x   2s    Input Text with Delay   //input[@name="password"]    ${pass}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[@type="submit"][ text()='เข้าสู่ระบบ']
    #Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //span[text()='พงศกร หมาดเส็น']     พงศกร หมาดเส็น
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Wait until keyword succeeds    5x   2s    Switch Window    New
    Set Window Size    1920    1080    
    Wait until keyword succeeds    5x   2s    Wait Until Element Is Visible    //h3[text()="Article Master"]


Login dohome and click web art(Approve dm)
    Open browser    ${url_dohome}    headlesschrome
    # Open browser web url    ${url_dohome}    chrome             
    Set Window Size    1920    1080
    # Maximize Browser Window
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //button[text()='เข้าสู่ระบบ']    เข้าสู่ระบบ       
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[text()='เข้าสู่ระบบ']
    Wait until keyword succeeds    5x   2s    Wait Until Element Contains   //*[@class="text-2xl text-primary font-bold"]     เข้าสู่ระบบ
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="username"] 
    Wait until keyword succeeds    5x   2s    Input Text with Delay    //input[@name="username"]     ${user_dm}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //input[@name="password"]
    Wait until keyword succeeds    5x   2s    Input Text with Delay   //input[@name="password"]    ${pass}
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //button[@type="submit"][ text()='เข้าสู่ระบบ']
    #Wait until keyword succeeds    5x   2s    Wait Until Element Contains    //span[text()='ศักดิ์นฤน สมทรา(กันต์)']     ศักดิ์นฤน สมทรา(กันต์)
    Wait until keyword succeeds    5x   2s    Click Element with Delay    //*[@aria-label="ระบบจัดการข้อมูลสินค้า"]
    Wait until keyword succeeds    5x   2s    Switch Window    New
    Set Window Size    1920    1080    
    Wait until keyword succeeds    5x   2s    Wait Until Element Is Visible    //h3[text()="Article Master"]


Refresh page
    Execute JavaScript    location.reload()

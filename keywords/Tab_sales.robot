*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    DateTime
Library    Collections
Library    OperatingSystem
Variables    ../keywords/Tab_sales.yaml
Resource    ../keywords/common_art.robot

*** Variables ***

*** Keywords ***
Input and Select set_pattern_sales
    [Documentation]    กำหนดรูปแบบการขาย *
    [Arguments]    ${set_pattern_sales}
    Wait And Click Element             ${Tab_sales.mnu_sales}
    Wait And Clear Element Text        ${Tab_sales.ddl_set_pattern_sales}
    Wait And Input Text with Delay     ${Tab_sales.ddl_set_pattern_sales}    ${set_pattern_sales}
    Wait And Press Keys                ${Tab_sales.ddl_set_pattern_sales}    \\13
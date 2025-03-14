*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    String
Library    Collections
Library    DateTime
Library    Process
Library    Dialogs
Library    BuiltIn
Library    CSVLibrary
Variables    ../keywords/Tab_purchasing.yaml   
Resource    ../keywords/common_art.robot

*** Keywords ***
Input lead_time
    [Documentation]    ระยะเวลาการรับสินค้า (Lead time) *
    [Arguments]    ${lead_time}
    Wait And Click Element                    //*[text()="Purchasing"]/..
    Wait And Wait Until Element Is Visible    //*[text()="ข้อมูลของ Vendor"]
    Wait And Clear Element Text               ${Tab_Purchasing.txt_Leadtime}
    Wait And Input Text with Delay            ${Tab_Purchasing.txt_Leadtime}    ${lead_time}
    Wait And Press Keys                       ${Tab_Purchasing.txt_Leadtime}    \\13 

Input and Select return_defective
    [Documentation]    ส่งคืน (RTV) กรณีชำรุด *
    [Arguments]    ${return_defective'}
    Wait And Clear Element Text     ${Tab_Purchasing.ddl_return_defective}
    Input Text with Delay           ${Tab_Purchasing.ddl_return_defective}    ${return_defective'}
    Wait And Press Keys             ${Tab_Purchasing.ddl_return_defective}    \\13

Input and Select tax_code_vendor
    [Documentation]    ประเภทภาษีซื้อ (Tax Code) *
    [Arguments]    ${tax_code_vendor}
    Wait And Clear Element Text    ${Tab_Purchasing.ddl_tax_code_vendor}
    Input Text with Delay          ${Tab_Purchasing.ddl_tax_code_vendor}    ${tax_code_vendor}
    Wait And Press Keys            ${Tab_Purchasing.ddl_tax_code_vendor}    \\13

Input net_cost_price
    [Documentation]    ราคาทุน ไม่รวมภาษี (Net Price) *
    [Arguments]    ${net_cost_price}
    Wait And Clear Element Text   ${Tab_Purchasing.txt_net_cost_price}
    Input Text with Delay         ${Tab_Purchasing.txt_net_cost_price}    ${net_cost_price}
    Wait And Press Keys           ${Tab_Purchasing.txt_net_cost_price}    \\13

Input currency
    [Documentation]    สกุลเงินของต้นทุน *
    [Arguments]    ${currency}
    Wait And Clear Element Text     ${Tab_Purchasing.ddl_currency}
    Input Text with Delay           ${Tab_Purchasing.ddl_currency}    ${currency}
    Wait And Press Keys             ${Tab_Purchasing.ddl_currency}    \\13


  



    


   

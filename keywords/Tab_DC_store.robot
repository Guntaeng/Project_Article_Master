*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    DateTime
Library    Collections
Library    OperatingSystem
Variables    ../keywords/Tab_DC_store.yaml
Resource    ../keywords/common_art.robot

*** Variables ***

*** Keywords ***
Request approval
    [Documentation]    ขออนุมัติสินค้า
    Wait And Click Element                    ${Tab_DC_store.mnu_DC_store}
    Wait And Click Element                    ${Tab_DC_store.btn_approve}
    Wait And Click Element                    ${Tab_DC_store.btn_confirm}
    Wait And Wait Until Element Is Visible    //*[text()="ขออนุมัติสินค้าเรียบร้อยแล้ว"]
    Wait And Wait Until Element Is Visible    //*[text()=' สร้างสินค้าใหม่']/parent::span
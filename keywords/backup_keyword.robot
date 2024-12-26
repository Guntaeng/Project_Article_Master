*** Keywords ***

Upload Picture
    [Arguments]    ${path_pic}    ${path_pic_1}    ${path_pic_2}    ${path_pic_3}    ${path_pic_4}    ${path_pic_5}    ${path_pic_6}    ${path_pic_7}    ${path_pic_8}    ${path_pic_9}    ${path_pic_10}
    ...    ${path_pic_11}    ${path_pic_12}    ${path_pic_13}    ${path_pic_14}    ${path_pic_15}    ${path_pic_16}    ${path_pic_17}    ${path_pic_18}    ${path_pic_19}    ${path_pic_20}
    ...    ${path_pic_21}    ${path_pic_22}    ${path_pic_23}    ${path_pic_24}    ${path_pic_25}    ${path_pic_26}    ${path_pic_27}    ${path_pic_28}    ${path_pic_29}    ${path_pic_30}
    ...    ${path_pic_31}    ${path_pic_32}    ${path_pic_33}    ${path_pic_34}    ${path_pic_35}    ${path_pic_36}    ${path_pic_37}    ${path_pic_38}    ${path_pic_39}    ${path_pic_40}
    ...    ${path_pic_41}    ${path_pic_42}    ${path_pic_43}    ${path_pic_44}    ${path_pic_45}    ${path_pic_46}    ${path_pic_47}    ${path_pic_48}    ${path_pic_49}    ${path_pic_50}       

    Wait And Scroll Element Into View    //span[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='18. โลโก้สินค้า']
    ${paths} =    Create List    ${path_pic_1}    ${path_pic_2}    ${path_pic_3}    ${path_pic_4}    ${path_pic_5}    ${path_pic_6}    ${path_pic_7}    ${path_pic_8}    ${path_pic_9}    ${path_pic_10}
    ...    ${path_pic_11}    ${path_pic_12}    ${path_pic_13}    ${path_pic_14}    ${path_pic_15}    ${path_pic_16}    ${path_pic_17}    ${path_pic_18}    ${path_pic_19}    ${path_pic_20}
    ...    ${path_pic_21}    ${path_pic_22}    ${path_pic_23}    ${path_pic_24}    ${path_pic_25}    ${path_pic_26}    ${path_pic_27}    ${path_pic_28}    ${path_pic_29}    ${path_pic_30}
    ...    ${path_pic_31}    ${path_pic_32}    ${path_pic_33}    ${path_pic_34}    ${path_pic_35}    ${path_pic_36}    ${path_pic_37}    ${path_pic_38}    ${path_pic_39}    ${path_pic_40}
    ...    ${path_pic_41}    ${path_pic_42}    ${path_pic_43}    ${path_pic_44}    ${path_pic_45}    ${path_pic_46}    ${path_pic_47}    ${path_pic_48}    ${path_pic_49}    ${path_pic_50}       

    ${length}=    Get Length    ${paths}
    FOR    ${index}    IN RANGE    ${length}
        ${joined_paths}=    Evaluate    '\\n'.join(${paths}[:${index + 1}])
        Set Global Variable    ${tot_pic_${index + 1}}    ${joined_paths}
    END

    FOR    ${i}    IN RANGE    1    51
        IF    '${path_pic}' == '${i}'
            Set Global Variable    ${file_path}    ${tot_pic_${i}}
            Log   ${tot_pic_${i}}
            Log   ${file_path}
            Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${file_path}
            Wait Until Keyword Succeeds    5x    2s    Click Element with Delay    //*[text()='17. รูปภาพสินค้า']/ancestor::div[2]/following-sibling::div//input[@type="radio"]
        END
    END



Upload Picture v2
    [Arguments]    ${path_pic}    @{paths}    
    Wait And Scroll Element Into View    //span[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='18. โลโก้สินค้า']
    
    ${length}=    Get Length    ${paths}
    FOR    ${index}    IN RANGE    ${length}
        ${joined_paths}=    Evaluate    '\\n'.join(${paths}[:${index + 1}])
        Set Global Variable    ${tot_pic_${index + 1}}    ${joined_paths}
    END

    FOR    ${i}    IN RANGE    1    51
        IF    '${path_pic}' == '${i}'
            Set Global Variable    ${file_path}    ${tot_pic_${i}}
            Log   ${tot_pic_${i}}
            Log   ${file_path}
            Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${file_path}
            Wait Until Keyword Succeeds    5x    2s    Click Element with Delay    //*[text()='17. รูปภาพสินค้า']/ancestor::div[2]/following-sibling::div//input[@type="radio"]
        END
    END
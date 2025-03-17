*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    DateTime
Library    Collections
Library    OperatingSystem
Variables    ../keywords/Tab_basic_data.yaml
Resource    ../keywords/common_art.robot

*** Variables ***

*** Keywords ***
#กดปุ่มสร้าง Article
Click create article
    Wait And Wait Until Element Is Visible    //*[text()=' สร้างสินค้าใหม่']/parent::span
    Wait And Click Element                    //*[text()=' สร้างสินค้าใหม่']/parent::span
    Wait And Wait Until Element Is Visible    //span[@class="MuiTab-wrapper"][text()="Basic data"]
    Wait And Wait Until Element Is Visible    //input[@name="vendor_no"]/following-sibling::div/div/input

#SECTION 1
Input data vendor
    [Documentation]    ข้อมูล Vendor*
    [Arguments]    ${vendor_no}
    Wait And Wait Until Element Is Visible    locator=${Header_information.ddl_vendor_no}
    Wait And Click Element                    locator=${Header_information.ddl_vendor_no}
    Wait And Input Text with Delay            locator=${Header_information.ddl_vendor_no}    text=${vendor_no}
    Wait And Press Keys                       locator=${Header_information.ddl_vendor_no}    keys=\\13
    
Input name Thai Article
    [Documentation]    ชื่อสินค้าภาษาไทย (Thai Name) *
    [Arguments]    ${new_name_th}  
    Wait And Click Element             locator=${Header_information.txt_name_th}
    Wait And Input Text with Delay     locator=${Header_information.txt_name_th}    text=${new_name_th}
    

Input name ENG Article
    [Documentation]    ชื่อสินค้า Commercial (ภาษาอังกฤษ) *
    [Arguments]    ${new_name_en}    
    Wait And Click Element             locator=${Header_information.txt_name_en}
    Wait And Input Text with Delay     locator=${Header_information.txt_name_en}    text=${new_name_en}

Input and Select article category
    [Documentation]    หมวดหมู่สินค้า (Article category) *
    [Arguments]    ${article_category}
    Wait And Click Element             locator=${Tab_basic_data.ddl_article_category}    
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_article_category}    text=${article_category}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_article_category}    keys=\\13

Input and Select merchandise category 2
    [Documentation]    MC level 2 *
    [Arguments]    ${merchandise_category2}
    Wait And Click Element             locator=${Tab_basic_data.ddl_mc_level_2}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_mc_level_2}     text=${merchandise_category2}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_mc_level_2}     keys=\\13   

Input and Select merchandise category
    [Documentation]    กลุ่ม MC Level 5 (mdse category) *
    [Arguments]    ${merchandise_category}
    Wait And Click Element             locator=${Tab_basic_data.ddl_mc_level_5}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_mc_level_5}    text=${merchandise_category}    
    Wait And Press Keys                locator=${Tab_basic_data.ddl_mc_level_5}    keys=\\13
      
Input and Select division type
    [Documentation]    Division *
    [Arguments]    ${division_type}
    Wait And Click Element             locator=${Tab_basic_data.ddl_division}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_division}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_division}    text=${division_type}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_division}    keys=\\13

Input and Select artl_statistics_grp
    [Documentation]    ผังการลงบัญชีสินค้า *
    [Arguments]    ${artl_statistics_grp}
    Wait And Click Element             locator=${Tab_basic_data.ddl_artl_statistics_grp}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_artl_statistics_grp}    text=${artl_statistics_grp}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_artl_statistics_grp}    keys=\\13

Input and Select astmt_list_type
    [Documentation]    Astmt List Type *
    [Arguments]    ${astmt_list_type}
    Wait And Click Element             locator=${Tab_basic_data.ddl_astmt_List_Type}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_astmt_List_Type}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_astmt_List_Type}    text=${astmt_list_type}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_astmt_List_Type}    keys=\\13

Input and Select material_type
    [Documentation]    ประเภทสินค้า (Material Type) *
    [Arguments]    ${material_type}
    Wait And Click Element             locator=${Tab_basic_data.ddl_material_Type}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_material_Type}    text=${material_type}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_material_Type}    keys=\\13

Channal CH_1
    Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C1
    Wait And Click Element    locator=${Tab_basic_data.chk_Channel_1}
    Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}

Channal CH_2
    Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C2
    Wait And Click Element    locator=${Tab_basic_data.chk_Channel_2}
    Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}

Channal CH_3
    Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C3
    Wait And Click Element    locator=${Tab_basic_data.chk_Channel_3}
    Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}

Channal CH_4
    Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C4
    Wait And Click Element    locator=${Tab_basic_data.chk_Channel_4}
    Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}

Channal CH_5
    Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C5
    Wait And Click Element    locator=${Tab_basic_data.chk_Channel_5}
    Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}

Select distr_ch C1/C2/C3/C4/C5
    [Documentation]    ช่องทางที่ต้องการขาย (Distr. Ch) *
    [Arguments]    ${row['CH_1']}    ${row['CH_2']}    ${row['CH_3']}    ${row['CH_4']}    ${row['CH_5']}
    
    Run Keyword If    '${row['CH_1']}' == 'x'    Channal CH_1
    Run Keyword If    '${row['CH_2']}' == 'x'    Channal CH_2
    Run Keyword If    '${row['CH_3']}' == 'x'    Channal CH_3
    Run Keyword If    '${row['CH_4']}' == 'x'    Channal CH_4
    Run Keyword If    '${row['CH_5']}' == 'x'    Channal CH_5
    
    # IF    '${CH_2}' == 'x'
    #     Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C2
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_2}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}
    # ELSE IF    '${CH_3}' == 'x'
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C3
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_3}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}
    # ELSE IF    '${CH_4}' == 'x'
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C4
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_4}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}
    # ELSE IF    '${CH5}' == 'x'
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C5
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_5}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}        
    # END
    
    
    # IF    '${CH_3}' == 'x'
    #     Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_3}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}
    # ELSE IF    '${CH_4}' == 'x'
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C4
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_4}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}
    # ELSE IF    '${CH5}' == 'x'
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C5
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_5}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}        
    # END
    
    # IF    '${CH_4}' == 'x'
    #     Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    #      Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C4
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_4}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}
    # ELSE IF    '${CH5}' == 'x'
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C5
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_5}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}        
    # END
    
    # IF    '${CH_5}' == 'x'
    #     Wait And Click Element    locator=${Tab_basic_data.ddl_distr_Channel}
    #     Wait And Input Text with Delay    locator=${Tab_basic_data.ddl_distr_Channel}    text=C5
    #     Wait And Click Element    locator=${Tab_basic_data.chk_Channel_5}
    #     Wait And Click Element    locator=${Tab_basic_data.btn_Channel_button}       
    # END
    
Input and Select valuation_class
    [Documentation]    ประเภทสินค้าทางบัญชี (Valuation Class) *
    [Arguments]    ${valuation_class}
    Wait And Scroll Element Into View    //*[@class="dx-field-item-label-text"][text()='ประเภทสินค้าทางบัญชี (valuation class)']
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='2. ข้อมูลเกี่ยวกับสินค้ามีอายุ']
    Wait And Click Element               locator=${Tab_basic_data.ddl_valuation_class}
    # Wait And Clear Element Text          locator=${Tab_basic_data.ddl_valuation_class}
    Wait And Input Text with Delay       locator=${Tab_basic_data.ddl_valuation_class}    text=${valuation_class}
    Wait And Press Keys                  locator=${Tab_basic_data.ddl_valuation_class}    keys=\\13

Input e_comm_name_th
    [Documentation]    ชื่อสินค้า Commercial (ภาษาไทย) *
    [Arguments]    ${e_comm_name_th}
    Wait And Clear Element Text       locator=${Tab_basic_data.txt_e_comm_name_th}
    Wait And Input Text with Delay    locator=${Tab_basic_data.txt_e_comm_name_th}    text=${e_comm_name_th}
    Wait And Press Keys               locator=${Tab_basic_data.txt_e_comm_name_th}    keys=\\13

Input search_word
    [Documentation]    ชื่อค้นหาสินค้า (Search Name) *
    [Arguments]    ${search_word}
    Wait And Clear Element Text        locator=${Tab_basic_data.txt_search_name}
    Wait And Input Text with Delay     locator=${Tab_basic_data.txt_search_name}   text=${search_word}
    Wait And Press Keys                locator=${Tab_basic_data.txt_search_name}   keys=\\13

Input search_remark
    [Documentation]    หมายเหตุการขาย *
    [Arguments]    ${search_remark}
    Wait And Clear Element Text        locator=${Tab_basic_data.txt_search_remark}
    Wait And Input Text with Delay     locator=${Tab_basic_data.txt_search_remark}    text=${search_remark}
    Wait And Press Keys                locator=${Tab_basic_data.txt_search_remark}    keys=\\13

Input product_model
    [Documentation]    รุ่นของสินค้า *
    [Arguments]    ${product_model}
    Wait And Clear Element Text        locator=${Tab_basic_data.txt_product_model}
    Wait And Input Text with Delay     locator=${Tab_basic_data.txt_product_model}    text=${product_model}
    Wait And Press Keys                locator=${Tab_basic_data.txt_product_model}    keys=\\13

Input and Select brand_id
    [Documentation]    ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand) *  
    [Arguments]    ${brand_id}
    Wait And Click Element             locator=${Tab_basic_data.ddl_brand_id}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_brand_id}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_brand_id}    text=${brand_id}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_brand_id}    keys=\\13


Input old_article
    [Documentation]    รหัสสินค้าเดิมที่ยกเลิกขาย
    [Arguments]    ${old_article}
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.txt_old_article}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.txt_old_article}    text=${old_article}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.txt_old_article}    keys=\\13

Input and Select repack
    [Documentation]    สินค้าต้องrepack/ติดบาร์โค๊ด (repack)
    [Arguments]    ${repack}
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.ddl_repack}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.ddl_repack}    text=${repack}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.ddl_repack}    keys=\\13

Input and Select product_transform
    [Documentation]    สินค้าต้องแปรสภาพ *
    [Arguments]    ${product_transform}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_product_transform}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_product_transform}    text=${product_transform}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_product_transform}    keys=\\13

Input and Select country_of_region
    [Documentation]    ประเทศต้นทางนำเข้า (Ctry of origin) *
    [Arguments]    ${country_of_region}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_country_of_region}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_country_of_region}    text=${country_of_region}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_country_of_region}    keys=\\13

Input and Select hb_nonhb    
    [Documentation]    HB/Non HB *
    [Arguments]    ${hb_nonhb}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_hb_nonhb}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_hb_nonhb}    text=${hb_nonhb}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_hb_nonhb}    keys=\\13
    
Input and Select production    
    [Documentation]    HB ในประเทศ/ต่างประเทศ (Production) *
    [Arguments]    ${production}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_production}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_production}    text=${production}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_production}    keys=\\13

Input and Select tradmark
    [Documentation]    เครื่องหมายการค้า (Tradmark) *
    [Arguments]    ${tradmark}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_tradmark}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_tradmark}    text=${tradmark}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_tradmark}    keys=\\13

Input and Select brand_type
    [Documentation]    ประเภทแบรนด์
    [Arguments]    ${brand_type}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_brand_type}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_brand_type}    text=${brand_type}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_brand_type}    keys=\\13

Input and Select color_id
    [Documentation]    โทนสี *
    [Arguments]    ${color_id}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_color_id}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_color_id}    text=${color_id}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_color_id}    keys=\\13

#SECTION 2    
Input tot_shelf_life
    [Documentation]    อายุสินค้าทั้งหมด (total shelf life)
    [Arguments]    ${tot_shelf_life}
    Wait And Scroll Element Into View               //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='3. ข้อมูลเกี่ยวกับ Indicator สินค้า']
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.txt_tot_shelf_life}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.txt_tot_shelf_life}    text=${tot_shelf_life}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.txt_tot_shelf_life}    keys=\\13

Input rem_shelf_life
    [Documentation]    อายุสินค้าที่รับสินค้าได้ (remaining shelf life)
    [Arguments]    ${rem_shelf_life}
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.txt_rem_shelf_life}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.txt_rem_shelf_life}    text=${rem_shelf_life}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.txt_rem_shelf_life}    keys=\\13

#SECTION 3
Input and Select product_status
    [Documentation]    สถานะสินค้า Active / Inactive
    [Arguments]    ${product_status}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='4. ข้อมูลเกี่ยวกับกลุ่มจัดซื้อและผู้ดูแลการสั่งซื้อ']
    Wait And Clear Element Text          locator=${Tab_basic_data.ddl_product_status}
    Wait And Input Text with Delay       locator=${Tab_basic_data.ddl_product_status}    text=${product_status}
    Wait And Press Keys                  locator=${Tab_basic_data.ddl_product_status}    keys=\\13

Input and Select abc_indicator
    [Documentation]    การจัดกลุ่มสินค้า (Item indicator) *
    [Arguments]    ${abc_indicator}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_abc_indicator}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_abc_indicator}    text=${abc_indicator}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_abc_indicator}    keys=\\13
    
Input and Select product_role    
    [Documentation]    กลุ่มสินค้า (Product Role) *กลุ่มสินค้า Core หลัก /เสริม (Product Role) *      
    [Arguments]    ${product_role}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_product_role}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_product_role}    text=${product_role}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_product_role}    keys=\\13
    
 Input and Select product_sub_role  
    [Documentation]    กลุ่มย่อยของ Product Role *
    [Arguments]    ${product_sub_role}     
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_product_sub_role}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_product_sub_role}    text=${product_sub_role}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_product_sub_role}    keys=\\13
    
Input and Select product_trend   
    [Documentation]    Product trends *
    [Arguments]    ${product_trend} 
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_product_trend}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_product_trend}    text=${product_trend}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_product_trend}    keys=\\13

#SECTION 4
Input and Select head_purchaser_group_no
    [Documentation]    หัวหน้าทีมจัดซื้อในประเทศ *
    [Arguments]    ${head_purchaser_group_no}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='5. ข้อมูลการจัดหาสต็อกสินค้าภาพรวม']
    Wait And Clear Element Text          locator=${Tab_basic_data.ddl_head_purchaser_group_no}
    Wait And Input Text with Delay       locator=${Tab_basic_data.ddl_head_purchaser_group_no}    text=${head_purchaser_group_no}
    Wait And Press Keys                  locator=${Tab_basic_data.ddl_head_purchaser_group_no}    keys=\\13
    
    
Input and Select head_im
    [Documentation]    หัวหน้าทีม IM
    [Arguments]    ${head_im}
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.ddl_head_im}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.ddl_head_im}    text=${head_im}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.ddl_head_im}    keys=\\13
    
Input and Select purchaser_group_no   
    [Documentation]    กลุ่มจัดซื้อในประเทศ (Purch. Group) *
    [Arguments]    ${purchaser_group_no} 
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_purchaser_group_no}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_purchaser_group_no}    text=${purchaser_group_no}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_purchaser_group_no}    keys=\\13

Input and Select import_purchase
    [Documentation]    กลุ่มจัดซื้อต่างประเทศ
    [Arguments]    ${import_purchase}
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.ddl_import_purchase}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.ddl_import_purchase}    text=${import_purchase}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.ddl_import_purchase}    keys=\\13

Input and Select im_group
    [Documentation]    กลุ่ม IM
    [Arguments]    ${im_group}
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.ddl_im_group}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.ddl_im_group}    text=${im_group}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.ddl_im_group}    keys=\\13

#SECTION 5
Input and Select avail_check
    [Documentation]    การตรวจสอบความพอเพียง (Avail. Check) *
    [Arguments]    ${avail_check}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_avail_check}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_avail_check}    text=${avail_check}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_avail_check}    keys=\\13

Click checkbox Negative_stock
    [Documentation]    สินค้าที่สามารถขายได้เมื่อสต็อกติดลบ
    [Arguments]    ${Negative_stock}
    Conditional Wait And Click element    '${Negative_stock}' == 'X'    locator=${Tab_basic_data.chk_negative_stocks}
    
Input and Select gen_item_cat_grp
    [Documentation]    กลุ่มวัสดุ-ลงบัญชีขาย (Gen. item cat. grp) *
    [Arguments]    ${gen_item_cat_grp}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_gen_item_cat_grp}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_gen_item_cat_grp}    text=${gen_item_cat_grp}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_gen_item_cat_grp}    keys=\\13
    
Input and Select tax_class
    [Documentation]   ประเภทภาษีขาย (Tax class.) *
    [Arguments]    ${tax_class}    
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_tax_class}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_tax_class}    text=${tax_class}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_tax_class}    keys=\\13

Input and Select serial_number_profile
    [Documentation]    สินค้าที่ต้องระบุ serial (Serial Number Profile) 
    [Arguments]    ${serial_number_profile}
    Wait And Clear Element Text Ignore Error        locator=${Tab_basic_data.ddl_serial_number_profile}
    Wait And Input Text with Delay Ignore Error     locator=${Tab_basic_data.ddl_serial_number_profile}    text=${serial_number_profile}
    Wait And Press Keys Ignore Error                locator=${Tab_basic_data.ddl_serial_number_profile}    keys=\\13
    
Input and Select stor_condition
    [Documentation]    ที่จัดจ่ายสินค้า Basic (Stor.conditions) *
    [Arguments]    ${stor_condition}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_stor_condition}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_stor_condition}    text=${stor_condition}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_stor_condition}    keys=\\13
    
Input and Select loading_group    
    [Documentation]    คลังจัดเก็บ (Loading Group) *
    [Arguments]    ${loading_group}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_loading_group}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_loading_group}    text=${loading_group}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_loading_group}    keys=\\13
    
Click checkbox batch    
    [Documentation]    สินค้าที่ต้องระบุ batch (Batch management )
    [Arguments]    ${mark_batch}
    Wait And Scroll Element Into View                                   //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${mark_batch}' == 'X'        locator=${Tab_basic_data.chk_flag_batch_management}    

#SECTION 6
Add unit 1
    [Documentation]    หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง (require)
    [Arguments]    ${units_id_s6_u1}    ${rate_unit_base_s6_u1}    ${rate_unit_code_s6_u1}    ${barcode_no_s6_u1}    ${width_base_s6_u1}    ${long_base_s6_u1}    ${high_base_s6_u1}    ${weight_base_s6_u1}
    Wait And Scroll Element Into View             //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Wait And Clear Element Text                   locator=${Tab_basic_data.ddl_units_id_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.ddl_units_id_section_6_unit_1}          text=${units_id_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.ddl_units_id_section_6_unit_1}          keys=\\13
    Wait And Clear Element Text                   locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_1}    text=${rate_unit_base_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_1}    keys=\\13
    Wait And Clear Element Text                   locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_1}    text=${rate_unit_code_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_1}    keys=\\13
    Wait And Clear Element Text                   locator=${Tab_basic_data.txt_barcode_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.txt_barcode_section_6_unit_1}           text=${barcode_no_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.txt_barcode_section_6_unit_1}           keys=\\13
    Wait And Clear Element Text                   locator=${Tab_basic_data.txt_width_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.txt_width_section_6_unit_1}             text=${width_base_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.txt_width_section_6_unit_1}             keys=\\13 
    Wait And Clear Element Text                   locator=${Tab_basic_data.txt_long_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.txt_long_section_6_unit_1}              text=${long_base_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.txt_long_section_6_unit_1}              keys=\\13  
    Wait And Clear Element Text                   locator=${Tab_basic_data.txt_high_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.txt_high_section_6_unit_1}              text=${high_base_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.txt_high_section_6_unit_1}              keys=\\13
    Wait And Clear Element Text                   locator=${Tab_basic_data.txt_weight_section_6_unit_1}
    Wait And Input Text with Delay                locator=${Tab_basic_data.txt_weight_section_6_unit_1}            text=${weight_base_s6_u1}
    Wait And Press Keys                           locator=${Tab_basic_data.txt_weight_section_6_unit_1}            keys=\\13
    
Click checkbox Oun and Sun
    [Documentation]    Oun หน่วยบรรจุในการสั่งซื้อ/เปิด PO และ Sun หน่วยที่สามารถขายได้ = เบสยูนิต    
    Wait And Click Element    locator=${Tab_basic_data.chk_Oun_open_PO}    
    Wait And Click Element    locator=${Tab_basic_data.chk_Sun_base_unit}    
    
Add unit 2 (not require)
    [Arguments]    ${add_unit2}    ${rate_unit_base_s6_u2}    ${units_sale_id_s6_u2}    ${rate_unit_code_s6_u2}    ${barcode_no_s6_u2}    ${width_base_s6_u2}    ${long_base_s6_u2}    ${high_base_s6_u2}    ${weight_base_s6_u2}
    IF    '${add_unit2}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_2}    text=${rate_unit_base_s6_u2}   
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_2}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_2}     text=${units_sale_id_s6_u2}    
        Wait And Press Keys                       locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_2}     keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_2}    text=${rate_unit_code_s6_u2}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_2}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_barcode_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_barcode_section_6_unit_2}           text=${barcode_no_s6_u2}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_barcode_section_6_unit_2}           keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_width_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_width_section_6_unit_2}             text=${width_base_s6_u2}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_width_section_6_unit_2}             keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_long_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_long_section_6_unit_2}              text=${long_base_s6_u2}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_long_section_6_unit_2}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_high_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_high_section_6_unit_2}              text=${high_base_s6_u2}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_high_section_6_unit_2}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_weight_section_6_unit_2}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_weight_section_6_unit_2}            text=${weight_base_s6_u2}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_weight_section_6_unit_2}            keys=\\13
    END


Add unit 3 (not require)
    [Arguments]    ${add_unit3}    ${rate_unit_base_s6_u3}    ${units_sale_id_s6_u3}    ${rate_unit_code_s6_u3}    ${barcode_no_s6_u3}    ${width_base_s6_u3}    ${long_base_s6_u3}    ${high_base_s6_u3}    ${weight_base_s6_u3}
    IF    '${add_unit3}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_3}    text=${rate_unit_base_s6_u3}   
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_3}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_3}     text=${units_sale_id_s6_u3}    
        Wait And Press Keys                       locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_3}     keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_3}    text=${rate_unit_code_s6_u3}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_3}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_barcode_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_barcode_section_6_unit_3}           text=${barcode_no_s6_u3}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_barcode_section_6_unit_3}           keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_width_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_width_section_6_unit_3}             text=${width_base_s6_u3}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_width_section_6_unit_3}             keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_long_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_long_section_6_unit_3}              text=${long_base_s6_u3}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_long_section_6_unit_3}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_high_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_high_section_6_unit_3}              text=${high_base_s6_u3}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_high_section_6_unit_3}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_weight_section_6_unit_3}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_weight_section_6_unit_3}            text=${weight_base_s6_u3}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_weight_section_6_unit_3}            keys=\\13
    END


Add unit 4 (not require)
    [Arguments]    ${add_unit4}    ${rate_unit_base_s6_u4}    ${units_sale_id_s6_u4}    ${rate_unit_code_s6_u4}    ${barcode_no_s6_u4}    ${width_base_s6_u4}    ${long_base_s6_u4}    ${high_base_s6_u4}    ${weight_base_s6_u4}
    IF    '${add_unit4}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_4}    text=${rate_unit_base_s6_u4}   
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_4}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_4}     text=${units_sale_id_s6_u4}    
        Wait And Press Keys                       locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_4}     keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_4}    text=${rate_unit_code_s6_u4}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_4}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_barcode_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_barcode_section_6_unit_4}           text=${barcode_no_s6_u4}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_barcode_section_6_unit_4}           keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_width_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_width_section_6_unit_4}             text=${width_base_s6_u4}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_width_section_6_unit_4}             keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_long_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_long_section_6_unit_4}              text=${long_base_s6_u4}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_long_section_6_unit_4}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_high_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_high_section_6_unit_4}              text=${high_base_s6_u4}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_high_section_6_unit_4}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_weight_section_6_unit_4}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_weight_section_6_unit_4}            text=${weight_base_s6_u4}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_weight_section_6_unit_4}            keys=\\13
    END

Add unit 5 (not require)
    [Arguments]    ${add_unit5}    ${rate_unit_base_s6_u5}    ${units_sale_id_s6_u5}    ${rate_unit_code_s6_u5}    ${barcode_no_s6_u5}    ${width_base_s6_u5}    ${long_base_s6_u5}    ${high_base_s6_u5}    ${weight_base_s6_u5}
    IF    '${add_unit5}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_5}    text=${rate_unit_base_s6_u5}   
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_base_section_6_unit_5}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_5}     text=${units_sale_id_s6_u5}    
        Wait And Press Keys                       locator=${Tab_basic_data.ddl_units_sale_id_section_6_unit_5}     keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_5}    text=${rate_unit_code_s6_u5}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_rate_unit_code_section_6_unit_5}    keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_barcode_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_barcode_section_6_unit_5}           text=${barcode_no_s6_u5}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_barcode_section_6_unit_5}           keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_width_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_width_section_6_unit_5}             text=${width_base_s6_u5}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_width_section_6_unit_5}             keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_long_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_long_section_6_unit_5}              text=${long_base_s6_u5}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_long_section_6_unit_5}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_high_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_high_section_6_unit_5}              text=${high_base_s6_u5}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_high_section_6_unit_5}              keys=\\13
        Wait And Clear Element Text               locator=${Tab_basic_data.txt_weight_section_6_unit_5}
        Wait And Input Text with Delay            locator=${Tab_basic_data.txt_weight_section_6_unit_5}            text=${weight_base_s6_u5}
        Wait And Press Keys                       locator=${Tab_basic_data.txt_weight_section_6_unit_5}            keys=\\13
    END

#SECTION 7
Add unit 1 (sec.7)
    [Arguments]    ${width_base_s7_u1}    ${long_base_s7_u1}    ${high_base_s7_u1}    ${weight_base_s7_u1}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Wait And Clear Element Text          locator=${Tab_basic_data.txt_width_section_7_unit_1}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txt_width_section_7_unit_1}     text=${width_base_s7_u1}
    Wait And Press Keys                  locator=${Tab_basic_data.txt_width_section_7_unit_1}     keys=\\13 
    Wait And Clear Element Text          locator=${Tab_basic_data.txt_long_section_7_unit_1}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txt_long_section_7_unit_1}      text=${long_base_s7_u1}
    Wait And Press Keys                  locator=${Tab_basic_data.txt_long_section_7_unit_1}      keys=\\13  
    Wait And Clear Element Text          locator=${Tab_basic_data.txt_high_section_7_unit_1}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txt_high_section_7_unit_1}      text=${high_base_s7_u1}
    Wait And Press Keys                  locator=${Tab_basic_data.txt_high_section_7_unit_1}      keys=\\13
    Wait And Clear Element Text          locator=${Tab_basic_data.txt_weight_section_7_unit_1}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txt_weight_section_7_unit_1}    text=${weight_base_s7_u1}
    Wait And Press Keys                  locator=${Tab_basic_data.txt_weight_section_7_unit_1}    keys=\\13
    
Add unit 2 (sec.7)
    [Arguments]    ${add_unit2}    ${width_base_s7_u2}    ${long_base_s7_u2}    ${high_base_s7_u2}    ${weight_base_s7_u2}
    IF    '${add_unit2}' == 'X'
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_width_section_7_unit_2}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_width_section_7_unit_2}     text=${width_base_s7_u2}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_width_section_7_unit_2}     keys=\\13 
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_long_section_7_unit_2}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_long_section_7_unit_2}      text=${long_base_s7_u2}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_long_section_7_unit_2}      keys=\\13  
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_high_section_7_unit_2}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_high_section_7_unit_2}      text=${high_base_s7_u2}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_high_section_7_unit_2}      keys=\\13
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_weight_section_7_unit_2}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_weight_section_7_unit_2}    text=${weight_base_s7_u2}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_weight_section_7_unit_2}    keys=\\13
    END


Add unit 3 (sec.7)
    [Arguments]    ${add_unit3}    ${width_base_s7_u3}    ${long_base_s7_u3}    ${high_base_s7_u3}    ${weight_base_s7_u3}
    IF    '${add_unit3}' == 'X'
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_width_section_7_unit_3}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_width_section_7_unit_3}     text=${width_base_s7_u3}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_width_section_7_unit_3}     keys=\\13 
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_long_section_7_unit_3}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_long_section_7_unit_3}      text=${long_base_s7_u3}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_long_section_7_unit_3}      keys=\\13  
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_high_section_7_unit_3}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_high_section_7_unit_3}      text=${high_base_s7_u3}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_high_section_7_unit_3}      keys=\\13
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_weight_section_7_unit_3}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_weight_section_7_unit_3}    text=${weight_base_s7_u3}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_weight_section_7_unit_3}    keys=\\13
    END

Add unit 4 (sec.7)
    [Arguments]    ${add_unit4}    ${width_base_s7_u4}    ${long_base_s7_u4}    ${high_base_s7_u4}    ${weight_base_s7_u4}
    IF    '${add_unit4}' == 'X'
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_width_section_7_unit_4}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_width_section_7_unit_4}     text=${width_base_s7_u4}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_width_section_7_unit_4}     keys=\\13 
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_long_section_7_unit_4}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_long_section_7_unit_4}      text=${long_base_s7_u4}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_long_section_7_unit_4}      keys=\\13  
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_high_section_7_unit_4}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_high_section_7_unit_4}      text=${high_base_s7_u4}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_high_section_7_unit_4}      keys=\\13
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_weight_section_7_unit_4}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_weight_section_7_unit_4}    text=${weight_base_s7_u4}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_weight_section_7_unit_4}    keys=\\13
    END

Add unit 5 (sec.7)
    [Arguments]    ${add_unit5}    ${width_base_s7_u5}    ${long_base_s7_u5}    ${high_base_s7_u5}    ${weight_base_s7_u5}
    IF    '${add_unit5}' == 'X'
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_width_section_7_unit_5}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_width_section_7_unit_5}     text=${width_base_s7_u5}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_width_section_7_unit_5}     keys=\\13 
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_long_section_7_unit_5}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_long_section_7_unit_5}      text=${long_base_s7_u5}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_long_section_7_unit_5}      keys=\\13  
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_high_section_7_unit_5}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_high_section_7_unit_5}      text=${high_base_s7_u5}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_high_section_7_unit_5}      keys=\\13
        Wait And Clear Element Text          locator=${Tab_basic_data.txt_weight_section_7_unit_5}
        Wait And Input Text with Delay       locator=${Tab_basic_data.txt_weight_section_7_unit_5}    text=${weight_base_s7_u5}
        Wait And Press Keys                  locator=${Tab_basic_data.txt_weight_section_7_unit_5}    keys=\\13
    END

#SECTION 12
Input first_sale_date
    [Documentation]    วันที่ต้องการที่จะขาย (First Sale Date) *
    [Arguments]    ${first_sale_date}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='12. สถานะสินค้า ใน Tab Basic Data']
    Wait And Clear Element Text          locator=${Tab_basic_data.dtp_first_sale_date}
    Wait And Input Text with Delay       locator=${Tab_basic_data.dtp_first_sale_date}    text=${first_sale_date}
    Wait And Press Keys                  locator=${Tab_basic_data.dtp_first_sale_date}    keys=\\13

#SECTION 13
Input and Select att_color
    [Documentation]    สี เครื่องเขียน (SA) *
    [Arguments]    ${att_color}
    Wait And Clear Element Text        locator=${Tab_basic_data.ddl_color_stationery_SA}
    Wait And Input Text with Delay     locator=${Tab_basic_data.ddl_color_stationery_SA}    text=${att_color}
    Wait And Press Keys                locator=${Tab_basic_data.ddl_color_stationery_SA}    keys=\\13

Input text highlight_sell_point
    [Documentation]    จุดเด่นจุดขาย *
    [Arguments]    ${highlight_sell_point}
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='การบำรุงรักษา']
    Wait And Click Element               locator=${Tab_basic_data.txa_selling_point}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txa_selling_point}    text=${highlight_sell_point}
     
Input text product_features
    [Documentation]    คุณสมบัติสินค้า *
    [Arguments]    ${product_features}
    Wait And Click Element            locator=${Tab_basic_data.txa_product_features}
    Wait And Input Text with Delay    locator=${Tab_basic_data.txa_product_features}    text=${product_features} 
    
Input text maintenance
    [Documentation]    การบำรุงรักษา *
    [Arguments]    ${maintenance}
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='เงื่อนไขการรับประกัน']
    Wait And Click Element               locator=${Tab_basic_data.txa_maintenance}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txa_maintenance}    text=${maintenance}  
    
Input text warranty_conditions
    [Documentation]    เงื่อนไขการรับประกัน *
    [Arguments]    ${warranty_conditions}   
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='ประเภทของการรับประกัน'] 
    Wait And Click Element               locator=${Tab_basic_data.txa_warranty_terms}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txa_warranty_terms}    text=${warranty_conditions}
    
Input text method_of_use
    [Documentation]    การใช้งาน *
    [Arguments]    ${usage} 
    Wait And Click Element               locator=${Tab_basic_data.txa_method_of_use}
    Wait And Input Text with Delay       locator=${Tab_basic_data.txa_method_of_use}    text=${usage} 
    
Input text caution
    [Documentation]    ข้อควรระวัง *
    [Arguments]    ${precautions}
    Wait And Click Element            locator=${Tab_basic_data.txa_caution}
    Wait And Input Text with Delay    locator=${Tab_basic_data.txa_caution}    text=${precautions}

#SECTION 17
Upload Picture
    [Arguments]    ${path_pic}    @{paths}
    Wait And Scroll Element Into View    //span[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='18. โลโก้สินค้า']

    # สร้าง path รวมเก็บใน list
    ${joined_paths_list}=    Create List
    ${length}=    Get Length    ${paths}
    FOR    ${index}    IN RANGE    ${length}
        ${joined_paths}=    Evaluate    '\\n'.join(${paths}[:${index + 1}])
        Append To List    ${joined_paths_list}    ${joined_paths}
        log    ${joined_paths_list} 
    END

    # แปลง ${path_pic} เป็นตัวเลขและลดค่า
    ${path_pic_index}=    Convert To Integer    ${path_pic}
    ${path_pic_index}=    Evaluate    ${path_pic_index} - 1

    # เข้าถึง path ที่ต้องการ
    ${file_path}=    Get From List    ${joined_paths_list}    ${path_pic_index}
    Log    ${file_path}

    Wait Until Keyword Succeeds    5x    2s    Choose File    locator=${Tab_basic_data.btn_upload_file}    file_path=${file_path}
    Wait Until Keyword Succeeds    5x    2s    Click Element with Delay    locator=${Tab_basic_data.chk_select_main_pic}
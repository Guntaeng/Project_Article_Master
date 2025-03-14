*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    Collections
Resource    ../keywords/common_art.robot



*** Keywords ***
Enter the menu Create Article
    Wait And Click Element                    //p[text()='จัดการสินค้า']
    Wait And Click Element                    //p[text()='จัดการข้อมูลสินค้า']
    Wait And Wait Until Element Is Visible    //div[@class="dx-datagrid-text-content"][text()='วันที่สร้าง']
    Wait And Click Element                    //*[text()=' สร้างสินค้าใหม่']/parent::span
    Wait And Wait Until Element Is Visible    //span[@class="MuiTab-wrapper"][text()="Basic data"]

Input vendor
    [Documentation]    ข้อมูล vendor *
    [Arguments]    ${vendor_no}  
    Wait And Click Element             //input[@name="vendor_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="vendor_no"]/following-sibling::div/div/input    ${vendor_no}
    Wait And Press Keys                //input[@name="vendor_no"]/following-sibling::div/div/input    \\13 

Input name Thai Article
    [Documentation]    ชื่อสินค้าภาษาไทย (Thai Name) *
    [Arguments]    ${new_name_th}  
    Wait And Click Element             //input[@name="name_th"]
    Wait And Input Text with Delay     //input[@name="name_th"]    ${new_name_th}
    

Input name ENG Article
    [Documentation]    ชื่อสินค้า Commercial (ภาษาอังกฤษ) *
    [Arguments]    ${new_name_en}    
    Wait And Click Element             //input[@name="name_en"]
    Wait And Input Text with Delay     //input[@name="name_en"]    ${new_name_en}

Input and Select article category
    [Documentation]    หมวดหมู่สินค้า (Article category) *
    [Arguments]    ${article_category}
    Wait And Click Element             //input[@name="article_category"]/following-sibling::div/div/input    
    Wait And Input Text with Delay     //input[@name="article_category"]/following-sibling::div/div/input    ${article_category}
    Wait And Press Keys                //input[@name="article_category"]/following-sibling::div/div/input    \\13

Input and Select merchandise category 2
    [Documentation]    MC level 2 *
    [Arguments]    ${merchandise_category2}
    Wait And Click Element             //input[@name="merchandise_category2"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="merchandise_category2"]/following-sibling::div/div/input     ${merchandise_category2}
    Wait And Press Keys                //input[@name="merchandise_category2"]/following-sibling::div/div/input    \\13   

Input and Select merchandise category
    [Documentation]    กลุ่ม MC Level 5 (mdse category) *
    [Arguments]    ${merchandise_category}
    Wait And Click Element             //input[@name="merchandise_category"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="merchandise_category"]/following-sibling::div/div/input    ${merchandise_category}    
    Wait And Press Keys                //input[@name="merchandise_category"]/following-sibling::div/div/input    \\13
      
Input and Select division type
    [Documentation]    Division *
    [Arguments]    ${division_type}
    Wait And Click Element             //input[@name="division"]/following-sibling::div/div/input
    Wait And Clear Element Text        //input[@name="division"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="division"]/following-sibling::div/div/input    ${division_type}
    Wait And Press Keys                //input[@name="division"]/following-sibling::div/div/input    \\13

Input and Select artl_statistics_grp
    [Documentation]    ผังการลงบัญชีสินค้า *
    [Arguments]    ${artl_statistics_grp}
    Wait And Click Element             //input[@name="artl_statistics_grp"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="artl_statistics_grp"]/following-sibling::div/div/input    ${artl_statistics_grp}
    Wait And Press Keys                //input[@name="artl_statistics_grp"]/following-sibling::div/div/input    \\13

Input and Select astmt_list_type
    [Documentation]    Astmt List Type *
    [Arguments]    ${astmt_list_type}
    Wait And Click Element             //input[@name="astmt_list_type"]/following-sibling::div/div/input
    Wait And Clear Element Text        //input[@name="astmt_list_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="astmt_list_type"]/following-sibling::div/div/input    ${astmt_list_type}
    Wait And Press Keys                //input[@name="astmt_list_type"]/following-sibling::div/div/input    \\13

Input and Select material_type
    [Documentation]    ประเภทสินค้า (Material Type) *
    [Arguments]    ${material_type}
    Wait And Click Element             //input[@name="material_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="material_type"]/following-sibling::div/div/input    ${material_type}
    Wait And Press Keys                //input[@name="material_type"]/following-sibling::div/div/input    \\13

Select distr_ch C1/C2/C3
    [Documentation]    ช่องทางที่ต้องการขาย (Distr. Ch) *
    Wait And Click Element                  //select[@name="distr_ch"]/following-sibling::div/div/input
    Wait And Click Element Ignore Error     //*[text()='C1: DoHome/Retail']/preceding-sibling::div/div/div
    Wait And Click Element Ignore Error     //*[text()='C2: DoHome/E-Commerce']/preceding-sibling::div/div/div
    Wait And Click Element Ignore Error     //*[text()='C3: DoHome/Event']/preceding-sibling::div/div/div
    Wait And Click Element                  //body/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/span[1]

Input and Select valuation_class
    [Documentation]    ประเภทสินค้าทางบัญชี (Valuation Class) *
    [Arguments]    ${valuation_class}
    Wait And Scroll Element Into View    //*[@class="dx-field-item-label-text"][text()='ประเภทสินค้าทางบัญชี (valuation class)']
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='2. ข้อมูลเกี่ยวกับสินค้ามีอายุ']
    Wait And Clear Element Text          //input[@name="valuation_class"]/following-sibling::div/div/input
    Wait And Input Text with Delay       //input[@name="valuation_class"]/following-sibling::div/div/input    ${valuation_class}
    Wait And Press Keys                  //input[@name="valuation_class"]/following-sibling::div/div/input    \\13

Input e_comm_name_th
    [Documentation]    ชื่อสินค้า Commercial (ภาษาไทย) *
    [Arguments]    ${e_comm_name_th}
    Wait And Clear Element Text       //input[@name="e_comm_name_th"]
    Wait And Input Text with Delay    //input[@name="e_comm_name_th"]    ${e_comm_name_th}
    Wait And Press Keys               //input[@name="e_comm_name_th"]    \\13

Input search_word
    [Documentation]    ชื่อค้นหาสินค้า (Search Name) *
    [Arguments]    ${search_word}
    Wait And Clear Element Text        //input[@name="search_word"]
    Wait And Input Text with Delay     //input[@name="search_word"]   ${search_word}
    Wait And Press Keys                //input[@name="search_word"]    \\13

Input search_remark
    [Documentation]    หมายเหตุการขาย *
    [Arguments]    ${search_remark}
    Wait And Clear Element Text        //input[@name="search_remark"]
    Wait And Input Text with Delay     //input[@name="search_remark"]     ${search_remark}
    Wait And Press Keys                //input[@name="search_remark"]    \\13

Input product_model
    [Documentation]    รุ่นของสินค้า *
    [Arguments]    ${product_model}
    Wait And Clear Element Text        //input[@name="product_model"]
    Wait And Input Text with Delay     //input[@name="product_model"]    ${product_model}
    Wait And Press Keys                //input[@name="product_model"]    \\13

Input and Select brand_id
    [Documentation]    ชื่อแบรนด์สินค้า(ยี่ห้อ) (Brand) *  
    [Arguments]    ${brand_id}
    Wait And Clear Element Text        //input[@name="brand_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="brand_id"]/following-sibling::div/div/input    ${brand_id}
    Wait And Press Keys                //input[@name="brand_id"]/following-sibling::div/div/input    \\13


Input old_article
    [Documentation]    รหัสสินค้าเดิมที่ยกเลิกขาย
    [Arguments]    ${old_article}
    Wait And Clear Element Text Ignore Error        //input[@name="old_article"]
    Wait And Input Text with Delay Ignore Error     //input[@name="old_article"]    old_article
    Wait And Press Keys Ignore Error                //input[@name="old_article"]    \\13

Input and Select repack
    [Documentation]    สินค้าต้องrepack/ติดบาร์โค๊ด (repack)
    [Arguments]    ${repack}
    Wait And Clear Element Text Ignore Error        //input[@name="repack"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="repack"]/following-sibling::div/div/input    ${repack}
    Wait And Press Keys Ignore Error                //input[@name="repack"]/following-sibling::div/div/input    \\13

Input and Select product_transform
    [Documentation]    สินค้าต้องแปรสภาพ *
    [Arguments]    ${product_transform}
    Wait And Clear Element Text        //input[@name="product_transform"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_transform"]/following-sibling::div/div/input    ${product_transform}
    Wait And Press Keys                //input[@name="product_transform"]/following-sibling::div/div/input    \\13

Input and Select country_of_region
    [Documentation]    ประเทศต้นทางนำเข้า (Ctry of origin) *
    [Arguments]    ${country_of_region}
    Wait And Clear Element Text        //input[@name="country_of_region"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="country_of_region"]/following-sibling::div/div/input     ${country_of_region}
    Wait And Press Keys                //input[@name="country_of_region"]/following-sibling::div/div/input    \\13

Input and Select hb_nonhb    
    [Documentation]    HB/Non HB *
    [Arguments]    ${hb_nonhb}
    Wait And Clear Element Text        //input[@name="hb_nonhb"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="hb_nonhb"]/following-sibling::div/div/input    ${hb_nonhb}
    Wait And Press Keys                //input[@name="hb_nonhb"]/following-sibling::div/div/input    \\13
    
Input and Select production    
    [Documentation]    HB ในประเทศ/ต่างประเทศ (Production) *
    [Arguments]    ${production}
    Wait And Clear Element Text        //input[@name="production"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="production"]/following-sibling::div/div/input    ${production}
    Wait And Press Keys                //input[@name="production"]/following-sibling::div/div/input    \\13

Input and Select tradmark
    [Documentation]    เครื่องหมายการค้า (Tradmark) *
    [Arguments]    ${tradmark}
    Wait And Clear Element Text        //input[@name="tradmark"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="tradmark"]/following-sibling::div/div/input    ${tradmark}
    Wait And Press Keys                //input[@name="tradmark"]/following-sibling::div/div/input    \\13

Input and Select brand_type
    [Documentation]    ประเภทแบรนด์
    [Arguments]    ${brand_type}
    Wait And Clear Element Text        //input[@name="brand_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="brand_type"]/following-sibling::div/div/input    ${brand_type}
    Wait And Press Keys                //input[@name="brand_type"]/following-sibling::div/div/input    \\13

Input and Select color_id
    [Documentation]    โทนสี *
    [Arguments]    ${color_id}
    Wait And Clear Element Text        //input[@name="color_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="color_id"]/following-sibling::div/div/input    ${color_id}
    Wait And Press Keys                //input[@name="color_id"]/following-sibling::div/div/input    \\13
    
Input tot_shelf_life
    [Documentation]    อายุสินค้าทั้งหมด (total shelf life)
    [Arguments]    ${tot_shelf_life}
    Wait And Scroll Element Into View               //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='3. ข้อมูลเกี่ยวกับ Indicator สินค้า']
    Wait And Clear Element Text Ignore Error        //input[@name="tot_shelf_life"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="tot_shelf_life"]/following-sibling::div/div/input    ${tot_shelf_life}
    Wait And Press Keys Ignore Error                //input[@name="tot_shelf_life"]/following-sibling::div/div/input    \\13

Input rem_shelf_life
    [Documentation]    อายุสินค้าที่รับสินค้าได้ (remaining shelf life)
    [Arguments]    ${rem_shelf_life}
    Wait And Clear Element Text Ignore Error        //input[@name="rem_shelf_life"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="rem_shelf_life"]/following-sibling::div/div/input    ${rem_shelf_life}
    Wait And Press Keys Ignore Error                //input[@name="rem_shelf_life"]/following-sibling::div/div/input    \\13
    
Input and Select product_status
    [Documentation]    สถานะสินค้า Active / Inactive
    [Arguments]    ${product_status}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='4. ข้อมูลเกี่ยวกับกลุ่มจัดซื้อและผู้ดูแลการสั่งซื้อ']
    Wait And Clear Element Text          //input[@name="product_status"]/following-sibling::div/div/input
    Wait And Input Text with Delay       //input[@name="product_status"]/following-sibling::div/div/input    ${product_status}
    Wait And Press Keys                  //input[@name="product_status"]/following-sibling::div/div/input    \\13

Input and Select abc_indicator
    [Documentation]    การจัดกลุ่มสินค้า (Item indicator) *
    [Arguments]    ${abc_indicator}
    Wait And Clear Element Text        //input[@name="abc_indicator"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="abc_indicator"]/following-sibling::div/div/input    ${abc_indicator}
    Wait And Press Keys                //input[@name="abc_indicator"]/following-sibling::div/div/input    \\13
    
Input and Select product_role    
    [Documentation]    กลุ่มสินค้า (Product Role) *กลุ่มสินค้า Core หลัก /เสริม (Product Role) *      
    [Arguments]    ${product_role}
    Wait And Clear Element Text        //input[@name="product_role"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_role"]/following-sibling::div/div/input    ${product_role}
    Wait And Press Keys                //input[@name="product_role"]/following-sibling::div/div/input    \\13
    
 Input and Select product_sub_role  
    [Documentation]    กลุ่มย่อยของ Product Role *
    [Arguments]    ${product_sub_role}     
    Wait And Clear Element Text        //input[@name="product_sub_role"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_sub_role"]/following-sibling::div/div/input     ${product_sub_role}
    Wait And Press Keys                //input[@name="product_sub_role"]/following-sibling::div/div/input    \\13
    
Input and Select product_trend   
    [Documentation]    Product trends *
    [Arguments]    ${product_trend} 
    Wait And Clear Element Text        //input[@name="product_trend"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_trend"]/following-sibling::div/div/input   ${product_trend}
    Wait And Press Keys                //input[@name="product_trend"]/following-sibling::div/div/input    \\13

Input and Select head_purchaser_group_no
    [Documentation]    หัวหน้าทีมจัดซื้อในประเทศ *
    [Arguments]    ${head_purchaser_group_no}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='5. ข้อมูลการจัดหาสต็อกสินค้าภาพรวม']
    Wait And Clear Element Text          //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay       //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input    ${head_purchaser_group_no}
    Wait And Press Keys                  //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input    \\13
    
    
Input and Select head_im
    [Documentation]    หัวหน้าทีม IM
    [Arguments]    ${head_im}
    Wait And Clear Element Text Ignore Error        //input[@name="head_im"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="head_im"]/following-sibling::div/div/input    ${head_im}
    Wait And Press Keys Ignore Error                //input[@name="head_im"]/following-sibling::div/div/input    \\13
    
Input and Select purchaser_group_no   
    [Documentation]    กลุ่มจัดซื้อในประเทศ (Purch. Group) *
    [Arguments]    ${purchaser_group_no} 
    Wait And Clear Element Text        //input[@name="purchaser_group_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="purchaser_group_no"]/following-sibling::div/div/input    ${purchaser_group_no}
    Wait And Press Keys                //input[@name="purchaser_group_no"]/following-sibling::div/div/input    \\13

Input and Select import_purchase
    [Documentation]    กลุ่มจัดซื้อต่างประเทศ
    [Arguments]    ${import_purchase}
    Wait And Clear Element Text Ignore Error        //input[@name="import_purchase"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="import_purchase"]/following-sibling::div/div/input    ${import_purchase}
    Wait And Press Keys Ignore Error                //input[@name="import_purchase"]/following-sibling::div/div/input    \\13

Input and Select im_group
    [Documentation]    กลุ่ม IM
    [Arguments]    ${im_group}
    Wait And Clear Element Text Ignore Error        //input[@name="im_group"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="im_group"]/following-sibling::div/div/input    ${im_group}
    Wait And Press Keys Ignore Error                //input[@name="im_group"]/following-sibling::div/div/input    \\13

Input and Select avail_check
    [Documentation]    การตรวจสอบความพอเพียง (Avail. Check) *
    [Arguments]    ${avail_check}
    Wait And Clear Element Text        //input[@name="avail_check"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="avail_check"]/following-sibling::div/div/input    ${avail_check}
    Wait And Press Keys                //input[@name="avail_check"]/following-sibling::div/div/input    \\13

Click checkbox Negative_stock
    [Documentation]    สินค้าที่สามารถขายได้เมื่อสต็อกติดลบ
    [Arguments]    ${Negative_stock}
    Conditional Wait And Click element    '${Negative_stock}' == 'X'    //*[text()="สินค้าที่สามารถขายได้เมื่อสต็อกติดลบ"]/preceding-sibling::span
    
Input and Select gen_item_cat_grp
    [Documentation]    กลุ่มวัสดุ-ลงบัญชีขาย (Gen. item cat. grp) *
    [Arguments]    ${gen_item_cat_grp}
    Wait And Clear Element Text        //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input    ${gen_item_cat_grp}
    Wait And Press Keys                //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input    \\13
    
Input and Select tax_class
    [Documentation]   ประเภทภาษีขาย (Tax class.) *
    [Arguments]    ${tax_class}    
    Wait And Clear Element Text        //input[@name="tax_class"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="tax_class"]/following-sibling::div/div/input    ${tax_class}
    Wait And Press Keys                //input[@name="tax_class"]/following-sibling::div/div/input    \\13

Input and Select serial_number_profile
    [Documentation]    สินค้าที่ต้องระบุ serial (Serial Number Profile) 
    [Arguments]    ${serial_number_profile}
    Wait And Clear Element Text Ignore Error        //input[@name="serial_number_profile"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="serial_number_profile"]/following-sibling::div/div/input    ${serial_number_profile}
    Wait And Press Keys Ignore Error                //input[@name="serial_number_profile"]/following-sibling::div/div/input    \\13
    
Input and Select stor_condition
    [Documentation]    ที่จัดจ่ายสินค้า Basic (Stor.conditions) *
    [Arguments]    ${stor_condition}
    Wait And Clear Element Text        //input[@name="stor_condition"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="stor_condition"]/following-sibling::div/div/input    ${stor_condition}
    Wait And Press Keys                //input[@name="stor_condition"]/following-sibling::div/div/input    \\13
    
Input and Select loading_group    
    [Documentation]    คลังจัดเก็บ (Loading Group) *
    [Arguments]    ${loading_group}
    Wait And Clear Element Text        //input[@name="loading_group"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="loading_group"]/following-sibling::div/div/input    ${loading_group}
    Wait And Press Keys                //input[@name="loading_group"]/following-sibling::div/div/input    \\13
    
Click checkbox batch    
    [Documentation]    สินค้าที่ต้องระบุ batch (Batch management )
    [Arguments]    ${mark_batch}
    Wait And Scroll Element Into View                                   //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${mark_batch}' == 'X'        //*[text()="สินค้าที่ต้องระบุ batch (Batch management )"]/preceding-sibling::span    
    
Add unit 1
    [Documentation]    หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง (require)
    [Arguments]    ${units_id_s6_u1}    ${rate_unit_base_s6_u1}    ${rate_unit_code_s6_u1}    ${barcode_no_s6_u1}    ${width_base_s6_u1}    ${long_base_s6_u1}    ${high_base_s6_u1}    ${weight_base_s6_u1}
    Wait And Scroll Element Into View             //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Wait And Clear Element Text                   //input[@name="units_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="units_id"]/following-sibling::div/div/input          ${units_id_s6_u1}
    Wait And Press Keys                           //input[@name="units_id"]/following-sibling::div/div/input          \\13
    Wait And Clear Element Text                   //input[@name="rate_unit_base"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="rate_unit_base"]/following-sibling::div/div/input    ${rate_unit_base_s6_u1}
    Wait And Press Keys                           //input[@name="rate_unit_base"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text                   //input[@name="rate_unit_code"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="rate_unit_code"]/following-sibling::div/div/input    ${rate_unit_code_s6_u1}
    Wait And Press Keys                           //input[@name="rate_unit_code"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text                   //input[@name="barcode_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="barcode_no"]/following-sibling::div/div/input        ${barcode_no_s6_u1}
    Wait And Press Keys                           //input[@name="barcode_no"]/following-sibling::div/div/input        \\13
    Wait And Clear Element Text                   //input[@name="width"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="width"]/following-sibling::div/div/input             ${width_base_s6_u1}
    Wait And Press Keys                           //input[@name="width"]/following-sibling::div/div/input             \\13 
    Wait And Clear Element Text                   //input[@name="long"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="long"]/following-sibling::div/div/input              ${long_base_s6_u1}
    Wait And Press Keys                           //input[@name="long"]/following-sibling::div/div/input              \\13  
    Wait And Clear Element Text                   //input[@name="high"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="high"]/following-sibling::div/div/input              ${high_base_s6_u1}
    Wait And Press Keys                           //input[@name="high"]/following-sibling::div/div/input              \\13
    Wait And Clear Element Text                   //input[@name="weight"]/following-sibling::div/div/input
    Wait And Input Text with Delay                //input[@name="weight"]/following-sibling::div/div/input            ${weight_base_s6_u1}
    Wait And Press Keys                           //input[@name="weight"]/following-sibling::div/div/input            \\13
    
Click checkbox Oun and Sun
    [Documentation]    Oun หน่วยบรรจุในการสั่งซื้อ/เปิด PO และ Sun หน่วยที่สามารถขายได้ = เบสยูนิต    
    Wait And Click Element    //span[@class="dx-checkbox-text"][text()='Oun (หน่วยบรรจุในการสั่งซื้อ/เปิด PO)']/preceding-sibling::span    
    Wait And Click Element    //span[@class="dx-checkbox-text"][text()='Sun (หน่วยที่สามารถขายได้ = เบสยูนิต)']/preceding-sibling::span    
    
Add unit 2 (not require)
    [Arguments]    ${add_unit2}    ${rate_unit_base_s6_u2}    ${units_sale_id_s6_u2}    ${rate_unit_code_s6_u2}    ${barcode_no_s6_u2}    ${width_base_s6_u2}    ${long_base_s6_u2}    ${high_base_s6_u2}    ${weight_base_s6_u2}
    IF    '${add_unit2}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_s6_u2}   
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     ${units_sale_id_s6_u2}    
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_s6_u2}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        ${barcode_no_s6_u2}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             ${width_base_s6_u2}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              ${long_base_s6_u2}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              ${high_base_s6_u2}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            ${weight_base_s6_u2}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            \\13
    END


Add unit 3 (not require)
    [Arguments]    ${add_unit3}    ${rate_unit_base_s6_u3}    ${units_sale_id_s6_u3}    ${rate_unit_code_s6_u3}    ${barcode_no_s6_u3}    ${width_base_s6_u3}    ${long_base_s6_u3}    ${high_base_s6_u3}    ${weight_base_s6_u3}
    IF    '${add_unit3}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_s6_u3}   
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     ${units_sale_id_s6_u3}    
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_s6_u3}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        ${barcode_no_s6_u3}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             ${width_base_s6_u3}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              ${long_base_s6_u3}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              ${high_base_s6_u3}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            ${weight_base_s6_u3}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            \\13
    END


Add unit 4 (not require)
    [Arguments]    ${add_unit4}    ${rate_unit_base_s6_u4}    ${units_sale_id_s6_u4}    ${rate_unit_code_s6_u4}    ${barcode_no_s6_u4}    ${width_base_s6_u4}    ${long_base_s6_u4}    ${high_base_s6_u4}    ${weight_base_s6_u4}
    IF    '${add_unit4}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_s6_u4}   
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     ${units_sale_id_s6_u4}    
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_s6_u4}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        ${barcode_no_s6_u4}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             ${width_base_s6_u4}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              ${long_base_s6_u4}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              ${high_base_s6_u4}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            ${weight_base_s6_u4}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            \\13
    END


Add unit 5 (not require)
    [Arguments]    ${add_unit5}    ${rate_unit_base_s6_u5}    ${units_sale_id_s6_u5}    ${rate_unit_code_s6_u5}    ${barcode_no_s6_u5}    ${width_base_s6_u5}    ${long_base_s6_u5}    ${high_base_s6_u5}    ${weight_base_s6_u5}
    IF    '${add_unit5}' == 'X' 
        Wait And Click Element                    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
        Wait And Scroll Element Into View         //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${rate_unit_base_s6_u5}   
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     ${units_sale_id_s6_u5}    
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input     \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${rate_unit_code_s6_u5}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        ${barcode_no_s6_u5}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input        \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             ${width_base_s6_u5}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input             \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              ${long_base_s6_u5}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              ${high_base_s6_u5}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input              \\13
        Wait And Clear Element Text               //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay            //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            ${weight_base_s6_u5}
        Wait And Press Keys                       //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input            \\13
    END
    
Add unit 1 (sec.7)
    [Arguments]    ${width_base_s7_u1}    ${long_base_s7_u1}    ${high_base_s7_u1}    ${weight_base_s7_u1}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Wait And Clear Element Text          //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Wait And Input Text with Delay       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input     ${width_base_s7_u1}
    Wait And Press Keys                  //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input     \\13 
    Wait And Clear Element Text          //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input
    Wait And Input Text with Delay       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input      ${long_base_s7_u1}
    Wait And Press Keys                  //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input      \\13  
    Wait And Clear Element Text          //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input
    Wait And Input Text with Delay       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input      ${high_base_s7_u1}
    Wait And Press Keys                  //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input      \\13
    Wait And Clear Element Text          //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input
    Wait And Input Text with Delay       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input    ${weight_base_s7_u1}
    Wait And Press Keys                  //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input    \\13
    
Add unit 2 (sec.7)
    [Arguments]    ${add_unit2}    ${width_base_s7_u2}    ${long_base_s7_u2}    ${high_base_s7_u2}    ${weight_base_s7_u2}
    IF    '${add_unit2}' == 'X'
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input     ${width_base_s7_u2}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input     \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input      ${long_base_s7_u2}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input      ${high_base_s7_u2}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_base_s7_u2}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    END

Add unit 3 (sec.7)
    [Arguments]    ${add_unit3}    ${width_base_s7_u3}    ${long_base_s7_u3}    ${high_base_s7_u3}    ${weight_base_s7_u3}
    IF    '${add_unit3}' == 'X'
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input     ${width_base_s7_u3}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input     \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input      ${long_base_s7_u3}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input      ${high_base_s7_u3}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_base_s7_u3}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    END

Add unit 4 (sec.7)
    [Arguments]    ${add_unit4}    ${width_base_s7_u4}    ${long_base_s7_u4}    ${high_base_s7_u4}    ${weight_base_s7_u4}
    IF    '${add_unit4}' == 'X'
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input     ${width_base_s7_u4}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input     \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input      ${long_base_s7_u4}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input      ${high_base_s7_u4}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_base_s7_u4}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    END

Add unit 5 (sec.7)
    [Arguments]    ${add_unit5}    ${width_base_s7_u5}    ${long_base_s7_u5}    ${high_base_s7_u5}    ${weight_base_s7_u5}
    IF    '${add_unit5}' == 'X'
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input     ${width_base_s7_u5}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input     \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input      ${long_base_s7_u5}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input      ${high_base_s7_u5}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input      \\13
        Wait And Clear Element Text       //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input
        Wait And Input Text with Delay    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input    ${weight_base_s7_u5}
        Wait And Press Keys               //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    END

    
Input first_sale_date
    [Documentation]    วันที่ต้องการที่จะขาย (First Sale Date) *
    [Arguments]    ${first_sale_date}
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='12. สถานะสินค้า ใน Tab Basic Data']
    Wait And Clear Element Text          //input[@name="first_sale_date"]/following-sibling::div/div/input
    Wait And Input Text with Delay       //input[@name="first_sale_date"]/following-sibling::div/div/input    ${first_sale_date}
    Wait And Press Keys                  //input[@name="first_sale_date"]/following-sibling::div/div/input    \\13

Input and Select att_color
    [Documentation]    สี เครื่องเขียน (SA) *
    [Arguments]    ${att_color}
    Wait And Clear Element Text        //input[@name="d5aadb9a-3aba-4fea-83a1-1c522dcce4d9"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="d5aadb9a-3aba-4fea-83a1-1c522dcce4d9"]/following-sibling::div/div/input    ${att_color}
    Wait And Press Keys                //input[@name="d5aadb9a-3aba-4fea-83a1-1c522dcce4d9"]/following-sibling::div/div/input    \\13

Input text highlight_sell_point
    [Documentation]    จุดเด่นจุดขาย *
    [Arguments]    ${highlight_sell_point}
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='การบำรุงรักษา']
    Wait And Click Element               //*[@name="selling_point"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay       //*[@name="selling_point"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${highlight_sell_point}
     
Input text product_features
    [Documentation]    คุณสมบัติสินค้า *
    [Arguments]    ${product_features}
    Wait And Click Element            //*[@name="product_features"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="product_features"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${product_features} 
    
Input text maintenance
    [Documentation]    การบำรุงรักษา *
    [Arguments]    ${maintenance}
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='เงื่อนไขการรับประกัน']
    Wait And Click Element               //*[@name="maintenance"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay       //*[@name="maintenance"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${maintenance}  
    
Input text warranty_conditions
    [Documentation]    เงื่อนไขการรับประกัน *
    [Arguments]    ${warranty_conditions}   
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='ประเภทของการรับประกัน'] 
    Wait And Click Element               //*[@name="warranty_terms"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay       //*[@name="warranty_terms"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${warranty_conditions}
    
Input text method_of_use
    [Documentation]    การใช้งาน *
    [Arguments]    ${usage} 
    Wait And Click Element               //*[@name="method_of_use"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay       //*[@name="method_of_use"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${usage} 
    
Input text caution
    [Documentation]    ข้อควรระวัง *
    [Arguments]    ${precautions}
    Wait And Click Element            //*[@name="caution"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="caution"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${precautions}
    
Input lead_time
    [Documentation]    ระยะเวลาการรับสินค้า (Lead time) *
    [Arguments]    ${lead_time}
    Wait And Click Element                    //*[text()="Purchasing"]/..
    Wait And Wait Until Element Is Visible    //*[text()="ข้อมูลของ Vendor"]
    Wait And Clear Element Text               //input[@name="lead_time"]/following-sibling::div/div/input
    Wait And Input Text with Delay            //input[@name="lead_time"]/following-sibling::div/div/input    ${lead_time}
    Wait And Press Keys                       //input[@name="lead_time"]/following-sibling::div/div/input    \\13
        
Input and Select return_defective
    [Documentation]    ส่งคืน (RTV) กรณีชำรุด *
    [Arguments]    ${return_defective}
    Wait And Clear Element Text        //input[@name="return_defective"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="return_defective"]/following-sibling::div/div/input    ${return_defective}
    Wait And Press Keys                //input[@name="return_defective"]/following-sibling::div/div/input    \\13

Input and Select tax_code_vendor
    [Documentation]    ประเภทภาษีซื้อ (Tax Code) *
    [Arguments]    ${tax_code_vendor}
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()="หน่วยของราคาทุน (Base Unit)."]
    Wait And Clear Element Text         //input[@name="tax_code_vendor"]/following-sibling::div/div/input
    Wait And Input Text with Delay      //input[@name="tax_code_vendor"]/following-sibling::div/div/input    ${tax_code_vendor}    
    Wait And Press Keys                 //input[@name="tax_code_vendor"]/following-sibling::div/div/input    \\13
        
Input net_cost_price
    [Documentation]    ราคาทุน ไม่รวมภาษี (Net Price) *
    [Arguments]    ${net_cost_price}
    Wait And Clear Element Text        //input[@name="net_cost_price"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="net_cost_price"]/following-sibling::div/div/input    ${net_cost_price}
    Wait And Press Keys                //input[@name="net_cost_price"]/following-sibling::div/div/input    \\13

Input currency
    [Documentation]    สกุลเงินของต้นทุน *
    [Arguments]    ${currency}
    Wait And Clear Element Text        //input[@name="currency"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="currency"]/following-sibling::div/div/input    ${currency}
    Wait And Press Keys                //input[@name="currency"]/following-sibling::div/div/input    \\13
    Sleep    3s  

Input and Select set_pattern_sales
    [Documentation]    กำหนดรูปแบบการขาย *
    [Arguments]    ${set_pattern_sales}
    Wait And Click Element             //*[text()="Sales"]/..
    Wait And Clear Element Text        //input[@name="set_pattern_sales"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="set_pattern_sales"]/following-sibling::div/div/input    ${set_pattern_sales}
    Wait And Press Keys                //input[@name="set_pattern_sales"]/following-sibling::div/div/input    \\13

Request approval
    [Documentation]    ขออนุมัติสินค้า
    Wait And Click Element                    //*[text()="DC & store"]/..
    Wait And Click Element                    //*[text()="ขออนุมัติ"]/..
    Wait And Click Element                    //*[text()="ยืนยัน"]/..
    Wait And Wait Until Element Is Visible    //*[text()="ขออนุมัติสินค้าเรียบร้อยแล้ว"]
    Wait And Wait Until Element Is Visible    //*[text()="จัดการข้อมูลสินค้า"]/..
    Wait And Wait Until Element Is Visible    //*[text()=' สร้างสินค้าใหม่']/parent::span
    
    
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

    Wait Until Keyword Succeeds    5x    2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${file_path}
    Wait Until Keyword Succeeds    5x    2s    Click Element with Delay    //*[text()='17. รูปภาพสินค้า']/ancestor::div[2]/following-sibling::div//input[@type="radio"]
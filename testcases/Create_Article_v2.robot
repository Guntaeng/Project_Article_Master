*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Suite Setup    Login dohome and click web art(Create)
Test Template        Create Article 
Library    DataDriver    file=../resources/data_Create_Article.csv  dialect=excel    encoding=utf-8
Resource    ../keywords/common_art.robot
# Resource    ../keywords/func_key_menu_create.robot
Resource    ../keywords/Tab_basic_data.robot
Resource    ../keywords/Tab_sales.robot
Resource    ../keywords/Tab_purchasing.robot
Resource    ../keywords/Tab_DC_store.robot
Test Teardown    Refresh page

*** Test Cases ***
Create Article Good Return    ${Negative_stock}    ${mark_batch}    ${add_unit2}    ${add_unit3}    ${add_unit4}    ${add_unit5}
    ...    ${vendor_no}    ${new_name_th}    ${row['name_en']}    ${row['article_category']}    ${row['merc_category_MC2']}    ${new_MC5}    ${row['division_type']}    ${row['artl_statistics_grp']}    ${row['astmt_list_type']}    ${row['CH_1']}    ${row['CH_2']}    ${row['CH_3']}
    ...    ${row['CH_4']}    ${row['CH_5']}    ${row['material_type']}    ${row['valuation_class']}    ${row['e_comm_name_th']}    ${row['search_word']}    ${row['search_remark']}    ${row['product_model']}    ${row['brand_id']}    ${row['old_article']}    ${row['repack']}
    ...    ${row['product_transform']}    ${row['country_of_region']}    ${row['hb_nonhb']}    ${row['production']}    ${row['tradmark']}    ${row['brand_type']}    ${row['color_id']}    ${row['tot_shelf_life']}    ${row['rem_shelf_life']}    ${row['product_status']}
    ...    ${row['abc_indicator']}    ${row['product_role']}    ${row['product_sub_role']}    ${row['product_trend']}    ${row['head_purchaser_group_no']}    ${row['purchaser_group_no']}
    ...    ${row['avail_check']}    ${row['gen_item_cat_grp']}    ${row['tax_class']}    ${row['serial_number_profile']}    ${row['stor_condition']}    ${row['loading_group']}
    ...    ${row['units_id_s6_u1']}    ${row['rate_unit_base_s6_u1']}    ${row['rate_unit_code_s6_u1']}    ${row['barcode_no_s6_u1']}    ${row['width_base_s6_u1']}    ${row['long_base_s6_u1']}    ${row['high_base_s6_u1']}    ${row['weight_base_s6_u1']}
    ...    ${row['units_sale_id_s6_u2']}    ${row['rate_unit_base_s6_u2']}    ${row['rate_unit_code_s6_u2']}    ${row['barcode_no_s6_u2']}    ${row['width_base_s6_u2']}    ${row['long_base_s6_u2']}    ${row['high_base_s6_u2']}    ${row['weight_base_s6_u2']}
    ...    ${row['units_sale_id_s6_u3']}    ${row['rate_unit_base_s6_u3']}    ${row['rate_unit_code_s6_u3']}    ${row['barcode_no_s6_u3']}    ${row['width_base_s6_u3']}    ${row['long_base_s6_u3']}    ${row['high_base_s6_u3']}    ${row['weight_base_s6_u3']}
    ...    ${row['units_sale_id_s6_u4']}    ${row['rate_unit_base_s6_u4']}    ${row['rate_unit_code_s6_u4']}    ${row['barcode_no_s6_u4']}    ${row['width_base_s6_u4']}    ${row['long_base_s6_u4']}    ${row['high_base_s6_u4']}    ${row['weight_base_s6_u4']}
    ...    ${row['units_sale_id_s6_u5']}    ${row['rate_unit_base_s6_u5']}    ${row['rate_unit_code_s6_u5']}    ${row['barcode_no_s6_u5']}    ${row['width_base_s6_u5']}    ${row['long_base_s6_u5']}    ${row['high_base_s6_u5']}    ${row['weight_base_s6_u5']}
    ...    ${row['width_base_s7_u1']}    ${row['long_base_s7_u1']}    ${row['high_base_s7_u1']}    ${row['weight_base_s7_u1']}
    ...    ${row['width_base_s7_u2']}    ${row['long_base_s7_u2']}    ${row['high_base_s7_u2']}    ${row['weight_base_s7_u2']}
    ...    ${row['width_base_s7_u3']}    ${row['long_base_s7_u3']}    ${row['high_base_s7_u3']}    ${row['weight_base_s7_u3']}
    ...    ${row['width_base_s7_u4']}    ${row['long_base_s7_u4']}    ${row['high_base_s7_u4']}    ${row['weight_base_s7_u4']}
    ...    ${row['width_base_s7_u5']}    ${row['long_base_s7_u5']}    ${row['high_base_s7_u5']}    ${row['weight_base_s7_u5']}
    ...    ${row['first_sale_date']}     ${row['att_color']}   ${row['highlight_sell_point']}    ${row['product_features']}    ${row['maintenance']}    ${row['warranty_conditions']}    ${row['usage']}    ${row['precautions']}    ${row['lead_time']}    ${row['return_defective']}
    ...    ${path_pic}    ${path_pic_1}    ${path_pic_2}    ${path_pic_3}    ${path_pic_4}    ${path_pic_5}    ${path_pic_6}    ${path_pic_7}    ${path_pic_8}    ${path_pic_9}    ${path_pic_10}
    ...    ${path_pic_11}    ${path_pic_12}    ${path_pic_13}    ${path_pic_14}    ${path_pic_15}    ${path_pic_16}    ${path_pic_17}    ${path_pic_18}    ${path_pic_19}    ${path_pic_20}
    ...    ${path_pic_21}    ${path_pic_22}    ${path_pic_23}    ${path_pic_24}    ${path_pic_25}    ${path_pic_26}    ${path_pic_27}    ${path_pic_28}    ${path_pic_29}    ${path_pic_30}
    ...    ${path_pic_31}    ${path_pic_32}    ${path_pic_33}    ${path_pic_34}    ${path_pic_35}    ${path_pic_36}    ${path_pic_37}    ${path_pic_38}    ${path_pic_39}    ${path_pic_40}
    ...    ${path_pic_41}    ${path_pic_42}    ${path_pic_43}    ${path_pic_44}    ${path_pic_45}    ${path_pic_46}    ${path_pic_47}    ${path_pic_48}    ${path_pic_49}    ${path_pic_50}       
    ...    ${row['net_cost_price']}    ${row['currency']}    ${row['tax_code_vendor']}      ${row['set_pattern_sales']}


*** Keywords ***
Create Article
    [Arguments]    ${Negative_stock}    ${mark_batch}    ${add_unit2}    ${add_unit3}    ${add_unit4}    ${add_unit5}
    ...    ${vendor_no}    ${new_name_th}    ${row['name_en']}    ${row['article_category']}    ${row['merc_category_MC2']}    ${new_MC5}    ${row['division_type']}    ${row['artl_statistics_grp']}    ${row['astmt_list_type']}    ${row['CH_1']}    ${row['CH_2']}    ${row['CH_3']}
    ...    ${row['CH_4']}    ${row['CH_5']}    ${row['material_type']}    ${row['valuation_class']}    ${row['e_comm_name_th']}    ${row['search_word']}    ${row['search_remark']}    ${row['product_model']}    ${row['brand_id']}    ${row['old_article']}    ${row['repack']}
    ...    ${row['product_transform']}    ${row['country_of_region']}    ${row['hb_nonhb']}    ${row['production']}    ${row['tradmark']}    ${row['brand_type']}    ${row['color_id']}    ${row['tot_shelf_life']}    ${row['rem_shelf_life']}    ${row['product_status']}
    ...    ${row['abc_indicator']}    ${row['product_role']}    ${row['product_sub_role']}    ${row['product_trend']}    ${row['head_purchaser_group_no']}    ${row['purchaser_group_no']}
    ...    ${row['avail_check']}    ${row['gen_item_cat_grp']}    ${row['tax_class']}    ${row['serial_number_profile']}    ${row['stor_condition']}    ${row['loading_group']}
    ...    ${row['units_id_s6_u1']}    ${row['rate_unit_base_s6_u1']}    ${row['rate_unit_code_s6_u1']}    ${row['barcode_no_s6_u1']}    ${row['width_base_s6_u1']}    ${row['long_base_s6_u1']}    ${row['high_base_s6_u1']}    ${row['weight_base_s6_u1']}
    ...    ${row['units_sale_id_s6_u2']}    ${row['rate_unit_base_s6_u2']}    ${row['rate_unit_code_s6_u2']}    ${row['barcode_no_s6_u2']}    ${row['width_base_s6_u2']}    ${row['long_base_s6_u2']}    ${row['high_base_s6_u2']}    ${row['weight_base_s6_u2']}
    ...    ${row['units_sale_id_s6_u3']}    ${row['rate_unit_base_s6_u3']}    ${row['rate_unit_code_s6_u3']}    ${row['barcode_no_s6_u3']}    ${row['width_base_s6_u3']}    ${row['long_base_s6_u3']}    ${row['high_base_s6_u3']}    ${row['weight_base_s6_u3']}
    ...    ${row['units_sale_id_s6_u4']}    ${row['rate_unit_base_s6_u4']}    ${row['rate_unit_code_s6_u4']}    ${row['barcode_no_s6_u4']}    ${row['width_base_s6_u4']}    ${row['long_base_s6_u4']}    ${row['high_base_s6_u4']}    ${row['weight_base_s6_u4']}
    ...    ${row['units_sale_id_s6_u5']}    ${row['rate_unit_base_s6_u5']}    ${row['rate_unit_code_s6_u5']}    ${row['barcode_no_s6_u5']}    ${row['width_base_s6_u5']}    ${row['long_base_s6_u5']}    ${row['high_base_s6_u5']}    ${row['weight_base_s6_u5']}
    ...    ${row['width_base_s7_u1']}    ${row['long_base_s7_u1']}    ${row['high_base_s7_u1']}    ${row['weight_base_s7_u1']}
    ...    ${row['width_base_s7_u2']}    ${row['long_base_s7_u2']}    ${row['high_base_s7_u2']}    ${row['weight_base_s7_u2']}
    ...    ${row['width_base_s7_u3']}    ${row['long_base_s7_u3']}    ${row['high_base_s7_u3']}    ${row['weight_base_s7_u3']}
    ...    ${row['width_base_s7_u4']}    ${row['long_base_s7_u4']}    ${row['high_base_s7_u4']}    ${row['weight_base_s7_u4']}
    ...    ${row['width_base_s7_u5']}    ${row['long_base_s7_u5']}    ${row['high_base_s7_u5']}    ${row['weight_base_s7_u5']}
    ...    ${row['first_sale_date']}     ${row['att_color']}   ${row['highlight_sell_point']}    ${row['product_features']}    ${row['maintenance']}    ${row['warranty_conditions']}    ${row['usage']}    ${row['precautions']}    ${row['lead_time']}    ${row['return_defective']}
    ...    ${path_pic}    ${path_pic_1}    ${path_pic_2}    ${path_pic_3}    ${path_pic_4}    ${path_pic_5}    ${path_pic_6}    ${path_pic_7}    ${path_pic_8}    ${path_pic_9}    ${path_pic_10}
    ...    ${path_pic_11}    ${path_pic_12}    ${path_pic_13}    ${path_pic_14}    ${path_pic_15}    ${path_pic_16}    ${path_pic_17}    ${path_pic_18}    ${path_pic_19}    ${path_pic_20}
    ...    ${path_pic_21}    ${path_pic_22}    ${path_pic_23}    ${path_pic_24}    ${path_pic_25}    ${path_pic_26}    ${path_pic_27}    ${path_pic_28}    ${path_pic_29}    ${path_pic_30}
    ...    ${path_pic_31}    ${path_pic_32}    ${path_pic_33}    ${path_pic_34}    ${path_pic_35}    ${path_pic_36}    ${path_pic_37}    ${path_pic_38}    ${path_pic_39}    ${path_pic_40}
    ...    ${path_pic_41}    ${path_pic_42}    ${path_pic_43}    ${path_pic_44}    ${path_pic_45}    ${path_pic_46}    ${path_pic_47}    ${path_pic_48}    ${path_pic_49}    ${path_pic_50}       
    ...    ${row['net_cost_price']}    ${row['currency']}    ${row['tax_code_vendor']}      ${row['set_pattern_sales']}

# Header
    Input data vendor                                  ${vendor_no}
    Input name Thai Article                            ${new_name_th}
    Input name ENG Article                             ${row['name_en']}
       
# Tab Basic
# 1. รายละเอียดเกี่ยวกับตัวสินค้า
    Input and Select article category                  ${row['article_category']}
    Input and Select merchandise category 2            ${row['merc_category_MC2']}
    Input and Select merchandise category              ${new_MC5}
    Input and Select division type                     ${row['division_type']}    
    Input and Select artl_statistics_grp               ${row['artl_statistics_grp']}
    Input and Select astmt_list_type                   ${row['astmt_list_type']}
    Input and Select material_type                     ${row['material_type']}
    Select distr_ch C1/C2/C3/C4/C5                     ${row['CH_1']}    ${row['CH_2']}    ${row['CH_3']}    ${row['CH_4']}    ${row['CH_5']}
    Input and Select valuation_class                   ${row['valuation_class']}
    Input e_comm_name_th                               ${row['e_comm_name_th']}
    Input search_word                                  ${row['search_word']}
    Input search_remark                                ${row['search_remark']}
    Input product_model                                ${row['product_model']}
    Input and Select brand_id                          ${row['brand_id']}  
    Input old_article                                  ${row['old_article']}
    Input and Select repack                            ${row['repack']}
    Input and Select product_transform                 ${row['product_transform']}
    Input and Select country_of_region                 ${row['country_of_region']}
    Input and Select hb_nonhb                          ${row['hb_nonhb']}
    Input and Select production                        ${row['production']}
    Input and Select tradmark                          ${row['tradmark']}
    Input and Select brand_type                        ${row['brand_type']}
    Input and Select color_id                          ${row['color_id']}

# 2. ข้อมูลเกี่ยวกับสินค้ามีอายุ    #no required
    Input tot_shelf_life                               ${row['tot_shelf_life']}
    Input rem_shelf_life                               ${row['rem_shelf_life']}

# 3. ข้อมูลเกี่ยวกับ Indicator สินค้า
    Input and Select product_status                    ${row['product_status']}
    Input and Select abc_indicator                     ${row['abc_indicator']}
    Input and Select product_role                      ${row['product_role']}
    Input and Select product_sub_role                  ${row['product_sub_role']}
    Input and Select product_trend                     ${row['product_trend']}

    
# 4. ข้อมูลเกี่ยวกับกลุ่มจัดซื้อและผู้ดูแลการสั่งซื้อ
    Input and Select head_purchaser_group_no           ${row['head_purchaser_group_no']}
    #Input and Select head_im                           ${row['head_im']}
    Input and Select purchaser_group_no                ${row['purchaser_group_no']}
    #Input and Select import_purchase                   ${row['import_purchase']}
    #Input and Select im_group                          ${row['im_group']}
    
# 5. ข้อมูลการจัดหาสต็อกสินค้าภาพรวม
    Input and Select avail_check                       ${row['avail_check']}
    Click checkbox Negative_stock                      ${Negative_stock}
    Input and Select gen_item_cat_grp                  ${row['gen_item_cat_grp']}
    Input and Select tax_class                         ${row['tax_class']}
    Input and Select serial_number_profile             ${row['serial_number_profile']}
    Input and Select stor_condition                    ${row['stor_condition']}
    Input and Select loading_group                     ${row['loading_group']}
    Click checkbox batch                               ${mark_batch}
    
    
# 6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง
    Add unit 1                                         ${row['units_id_s6_u1']}          ${row['rate_unit_base_s6_u1']}     ${row['rate_unit_code_s6_u1']}    
    ...                                                ${row['barcode_no_s6_u1']}        ${row['width_base_s6_u1']}         ${row['long_base_s6_u1']}    
    ...                                                ${row['high_base_s6_u1']}         ${row['weight_base_s6_u1']}
    Click checkbox Oun and Sun    
    
    Add unit 2 (not require)                           ${add_unit2}                      ${row['rate_unit_base_s6_u2']}     ${row['units_sale_id_s6_u2']}    
    ...                                                ${row['rate_unit_code_s6_u2']}    ${row['barcode_no_s6_u2']}         ${row['width_base_s6_u2']}    
    ...                                                ${row['long_base_s6_u2']}         ${row['high_base_s6_u2']}          ${row['weight_base_s6_u2']}    
    
    Add unit 3 (not require)                           ${add_unit3}                      ${row['rate_unit_base_s6_u3']}     ${row['units_sale_id_s6_u3']}    
    ...                                                ${row['rate_unit_code_s6_u3']}    ${row['barcode_no_s6_u3']}         ${row['width_base_s6_u3']}    
    ...                                                ${row['long_base_s6_u3']}         ${row['high_base_s6_u3']}          ${row['weight_base_s6_u3']}    
    
    Add unit 4 (not require)                           ${add_unit4}                      ${row['rate_unit_base_s6_u4']}     ${row['units_sale_id_s6_u4']}    
    ...                                                ${row['rate_unit_code_s6_u4']}    ${row['barcode_no_s6_u4']}         ${row['width_base_s6_u4']}    
    ...                                                ${row['long_base_s6_u4']}         ${row['high_base_s6_u4']}          ${row['weight_base_s6_u4']}    
    
    Add unit 5 (not require)                           ${add_unit5}                      ${row['rate_unit_base_s6_u5']}     ${row['units_sale_id_s6_u5']}    
    ...                                                ${row['rate_unit_code_s6_u5']}    ${row['barcode_no_s6_u5']}         ${row['width_base_s6_u5']}    
    ...                                                ${row['long_base_s6_u5']}         ${row['high_base_s6_u5']}          ${row['weight_base_s6_u5']}    

    
# 7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง
    Add unit 1 (sec.7)                                 ${row['width_base_s7_u1']}        ${row['long_base_s7_u1']}          ${row['high_base_s7_u1']}    ${row['weight_base_s7_u1']}
    
    Add unit 2 (sec.7)                                 ${add_unit2}                      ${row['width_base_s7_u2']}         ${row['long_base_s7_u2']}          
    ...                                                ${row['high_base_s7_u2']}         ${row['weight_base_s7_u2']}
    
    Add unit 3 (sec.7)                                 ${add_unit3}                      ${row['width_base_s7_u3']}         ${row['long_base_s7_u3']}          
    ...                                                ${row['high_base_s7_u3']}         ${row['weight_base_s7_u3']}

    Add unit 4 (sec.7)                                 ${add_unit4}                      ${row['width_base_s7_u4']}         ${row['long_base_s7_u4']}          
    ...                                                ${row['high_base_s7_u4']}         ${row['weight_base_s7_u4']}

    Add unit 5 (sec.7)                                 ${add_unit5}                      ${row['width_base_s7_u5']}         ${row['long_base_s7_u5']}          
    ...                                                ${row['high_base_s7_u5']}         ${row['weight_base_s7_u5']}

# 8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)
# 9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง
# 10. ข้อมูลสินค้าหน่วยคู่ขนาน
# 11.1 ข้อมูล มาตรฐานผลิตภัณฑ์อุตสาหกรรม (มอก.)
# 11.2 เครื่องหมายการค้า ลิขสิทธิ์ สิทธิบัตร
# 12. สถานะสินค้า ใน Tab Basic Data
    Input first_sale_date                              ${row['first_sale_date']}    
    
# 13. Attribute หลัก
    Input and Select att_color                         ${row['att_color']}
    
# 14. คุณสมบัติการรับประกัน บำรุงรักษา
    Input text highlight_sell_point                    ${row['highlight_sell_point']}
    Input text product_features                        ${row['product_features']}
    Input text maintenance                             ${row['maintenance']}
    Input text warranty_conditions                     ${row['warranty_conditions']}
    Input text method_of_use                           ${row['usage']}
    Input text caution                                 ${row['precautions']}
# 15. สินค้าภายในกล่อง
# 16. จำนวนรายการสินค้าต่อชุด (Multi Pack)

# 17. รูปภาพสินค้า
    Upload Picture           ${path_pic}       ${path_pic_1}     ${path_pic_2}     ${path_pic_3}     ${path_pic_4}     ${path_pic_5}     ${path_pic_6}     ${path_pic_7}     ${path_pic_8}    ${path_pic_9}    ${path_pic_10}
    ...    ${path_pic_11}    ${path_pic_12}    ${path_pic_13}    ${path_pic_14}    ${path_pic_15}    ${path_pic_16}    ${path_pic_17}    ${path_pic_18}    ${path_pic_19}    ${path_pic_20}
    ...    ${path_pic_21}    ${path_pic_22}    ${path_pic_23}    ${path_pic_24}    ${path_pic_25}    ${path_pic_26}    ${path_pic_27}    ${path_pic_28}    ${path_pic_29}    ${path_pic_30}
    ...    ${path_pic_31}    ${path_pic_32}    ${path_pic_33}    ${path_pic_34}    ${path_pic_35}    ${path_pic_36}    ${path_pic_37}    ${path_pic_38}    ${path_pic_39}    ${path_pic_40}
    ...    ${path_pic_41}    ${path_pic_42}    ${path_pic_43}    ${path_pic_44}    ${path_pic_45}    ${path_pic_46}    ${path_pic_47}    ${path_pic_48}    ${path_pic_49}    ${path_pic_50}       


# Tab Purchasing
# ข้อมูลของ Vendor
    Input lead_time                                    ${row['lead_time']}
    Input and Select return_defective                  ${row['return_defective']}
    Input and Select tax_code_vendor                   ${row['tax_code_vendor']}

# ข้อมูลต้นทุนสินค้า
    Input net_cost_price                               ${row['net_cost_price']}
    Input currency                                     ${row['currency']}
    
# Tab Sale
    Input and Select set_pattern_sales                 ${row['set_pattern_sales']}
    
# Tab DC & Store
    Request approval
    Pass Execution    End Test
    
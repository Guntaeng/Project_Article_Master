*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Suite Setup    Login dohome and click web art(Create)
Test Template        Create Article 
Library    DataDriver    file=../resources/data_Create_Article.csv  dialect=excel    encoding=utf-8
Resource    ../keywords/common_art.robot
Test Teardown    Refresh page

*** Test Cases ***
Create Article Good Return    

*** Keywords ***
Create Article
    [Arguments]    ${Negative_stock}    ${mark_batch}    ${add_unit2}    ${add_unit3}    ${add_unit4}    ${add_unit5}
    ...    ${vendor_no}    ${new_name_th}    ${row['name_en']}    ${row['article_category']}    ${row['merc_category_MC2']}    ${new_MC5}    ${row['division_type']}    ${row['artl_statistics_grp']}    ${row['astmt_list_type']}
    ...    ${row['material_type']}    ${row['valuation_class']}    ${row['e_comm_name_th']}    ${row['search_word']}    ${row['search_remark']}    ${row['product_model']}    ${row['brand_id']}    ${row['old_article']}    ${row['repack']}
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

    # Set ตัวแปรใหม่ ในการ upload รูปภาพมากกว่า 10 รูป (section 17)    
    ${tot_pic_11}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}    
    ${tot_pic_12}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}
    ${tot_pic_13}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}
    ${tot_pic_14}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}
    ${tot_pic_15}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}
    ${tot_pic_16}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}
    ${tot_pic_17}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}
    ${tot_pic_18}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}
    ${tot_pic_19}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}
    ${tot_pic_20}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_21_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_21_2}    Set Variable    ${path_pic_21}
    ${tot_pic_21}    Set Variable    ${tot_pic_21_1}\n${tot_pic_21_2}
    ${tot_pic_22_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_22_2}    Set Variable    ${path_pic_21}\n${path_pic_22}
    ${tot_pic_22}    Set Variable    ${tot_pic_22_1}\n${tot_pic_22_2}
    ${tot_pic_23_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_23_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}
    ${tot_pic_23}    Set Variable    ${tot_pic_23_1}\n${tot_pic_23_2}
    ${tot_pic_24_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_24_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}
    ${tot_pic_24}    Set Variable    ${tot_pic_24_1}\n${tot_pic_24_2}
    ${tot_pic_25_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_25_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}
    ${tot_pic_25}    Set Variable    ${tot_pic_25_1}\n${tot_pic_25_2}
    ${tot_pic_26_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_26_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}
    ${tot_pic_26}    Set Variable    ${tot_pic_26_1}\n${tot_pic_26_2}
    ${tot_pic_27_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_27_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}
    ${tot_pic_27}    Set Variable    ${tot_pic_27_1}\n${tot_pic_27_2}
    ${tot_pic_28_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_28_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}
    ${tot_pic_28}    Set Variable    ${tot_pic_28_1}\n${tot_pic_28_2}
    ${tot_pic_29_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_29_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}
    ${tot_pic_29}    Set Variable    ${tot_pic_29_1}\n${tot_pic_29_2}
    ${tot_pic_30_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_30_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}
    ${tot_pic_30}    Set Variable    ${tot_pic_30_1}\n${tot_pic_30_2}
    ${tot_pic_31_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_31_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}
    ${tot_pic_31}    Set Variable    ${tot_pic_31_1}\n${tot_pic_31_2}
    ${tot_pic_32_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_32_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}
    ${tot_pic_32}    Set Variable    ${tot_pic_32_1}\n${tot_pic_32_2}
    ${tot_pic_33_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_33_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}
    ${tot_pic_33}    Set Variable    ${tot_pic_33_1}\n${tot_pic_33_2}
    ${tot_pic_34_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_34_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}
    ${tot_pic_34}    Set Variable    ${tot_pic_34_1}\n${tot_pic_34_2}
    ${tot_pic_35_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_35_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}
    ${tot_pic_35}    Set Variable    ${tot_pic_35_1}\n${tot_pic_35_2}
    ${tot_pic_36_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_36_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}
    ${tot_pic_36}    Set Variable    ${tot_pic_36_1}\n${tot_pic_36_2}
    ${tot_pic_37_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_37_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}
    ${tot_pic_37}    Set Variable    ${tot_pic_37_1}\n${tot_pic_37_2}
    ${tot_pic_38_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_38_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}
    ${tot_pic_38}    Set Variable    ${tot_pic_38_1}\n${tot_pic_38_2}
    ${tot_pic_39_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_39_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}
    ${tot_pic_39}    Set Variable    ${tot_pic_39_1}\n${tot_pic_39_2}
    ${tot_pic_40_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_40_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_40}    Set Variable    ${tot_pic_40_1}\n${tot_pic_40_2}
    ${tot_pic_41_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_41_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_41_3}    Set Variable    ${path_pic_41}
    ${tot_pic_41}    Set Variable    ${tot_pic_41_1}\n${tot_pic_41_2}\n${tot_pic_41_3}
    ${tot_pic_42_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_42_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_42_3}    Set Variable    ${path_pic_41}\n${path_pic_42}
    ${tot_pic_42}    Set Variable    ${tot_pic_42_1}\n${tot_pic_42_2}\n${tot_pic_42_3}
    ${tot_pic_43_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_43_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_43_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}
    ${tot_pic_43}    Set Variable    ${tot_pic_43_1}\n${tot_pic_43_2}\n${tot_pic_43_3}
    ${tot_pic_44_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_44_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_44_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}\n${path_pic_44}
    ${tot_pic_44}    Set Variable    ${tot_pic_44_1}\n${tot_pic_44_2}\n${tot_pic_44_3}
    ${tot_pic_45_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_45_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_45_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}\n${path_pic_44}\n${path_pic_45}
    ${tot_pic_45}    Set Variable    ${tot_pic_45_1}\n${tot_pic_45_2}\n${tot_pic_45_3}
    ${tot_pic_46_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_46_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_46_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}\n${path_pic_44}\n${path_pic_45}\n${path_pic_46}
    ${tot_pic_46}    Set Variable    ${tot_pic_46_1}\n${tot_pic_46_2}\n${tot_pic_46_3}
    ${tot_pic_47_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_47_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_47_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}\n${path_pic_44}\n${path_pic_45}\n${path_pic_46}\n${path_pic_47}
    ${tot_pic_47}    Set Variable    ${tot_pic_47_1}\n${tot_pic_47_2}\n${tot_pic_47_3}
    ${tot_pic_48_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_48_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_48_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}\n${path_pic_44}\n${path_pic_45}\n${path_pic_46}\n${path_pic_47}\n${path_pic_48}
    ${tot_pic_48}    Set Variable    ${tot_pic_48_1}\n${tot_pic_48_2}\n${tot_pic_48_3}
    ${tot_pic_49_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_49_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_49_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}\n${path_pic_44}\n${path_pic_45}\n${path_pic_46}\n${path_pic_47}\n${path_pic_48}\n${path_pic_49}
    ${tot_pic_49}    Set Variable    ${tot_pic_49_1}\n${tot_pic_49_2}\n${tot_pic_49_3}
    ${tot_pic_50_1}    Set Variable    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}\n${path_pic_11}\n${path_pic_12}\n${path_pic_13}\n${path_pic_14}\n${path_pic_15}\n${path_pic_16}\n${path_pic_17}\n${path_pic_18}\n${path_pic_19}\n${path_pic_20}
    ${tot_pic_50_2}    Set Variable    ${path_pic_21}\n${path_pic_22}\n${path_pic_23}\n${path_pic_24}\n${path_pic_25}\n${path_pic_26}\n${path_pic_27}\n${path_pic_28}\n${path_pic_29}\n${path_pic_30}\n${path_pic_31}\n${path_pic_32}\n${path_pic_33}\n${path_pic_34}\n${path_pic_35}\n${path_pic_36}\n${path_pic_37}\n${path_pic_38}\n${path_pic_39}\n${path_pic_40}
    ${tot_pic_50_3}    Set Variable    ${path_pic_41}\n${path_pic_42}\n${path_pic_43}\n${path_pic_44}\n${path_pic_45}\n${path_pic_46}\n${path_pic_47}\n${path_pic_48}\n${path_pic_49}\n${path_pic_50}
    ${tot_pic_50}    Set Variable    ${tot_pic_50_1}\n${tot_pic_50_2}\n${tot_pic_50_3}

    Wait And Click Element    //p[text()='จัดการสินค้า']
    Wait And Click Element    //p[text()='จัดการข้อมูลสินค้า']
    Wait Until Keyword Succeeds    5x    4s    Wait Until Element Is Visible    //div[@class="dx-datagrid-text-content"][text()='วันที่สร้าง']
    Wait And Click Element    //*[text()=' สร้างสินค้าใหม่']/parent::span
    Wait And Wait Until Element Is Visible    //span[@class="MuiTab-wrapper"][text()="Basic data"]
    Wait And Click Element    //input[@name="vendor_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="vendor_no"]/following-sibling::div/div/input    ${vendor_no}
    Wait And Press Keys    //input[@name="vendor_no"]/following-sibling::div/div/input    \\13 
    Wait And Click Element    //input[@name="name_th"]
    Wait And Input Text with Delay     //input[@name="name_th"]    ${new_name_th}
    Wait And Click Element    //input[@name="name_en"]
    Wait And Input Text with Delay     //input[@name="name_en"]    ${row['name_en']}
    #Tab Basic
    #1. รายละเอียดเกี่ยวกับตัวสินค้า
    Wait And Click Element    //input[@name="article_category"]/following-sibling::div/div/input    #api error 500
    Wait And Input Text with Delay     //input[@name="article_category"]/following-sibling::div/div/input    ${row['article_category']}
    Wait And Press Keys    //input[@name="article_category"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="merchandise_category2"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="merchandise_category2"]/following-sibling::div/div/input    ${row['merc_category_MC2']}
    Wait And Press Keys    //input[@name="merchandise_category2"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="merchandise_category"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="merchandise_category"]/following-sibling::div/div/input    ${new_MC5}    
    Wait And Press Keys    //input[@name="merchandise_category"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="division"]/following-sibling::div/div/input
    Wait And Clear Element Text    //input[@name="division"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="division"]/following-sibling::div/div/input    ${row['division_type']}
    Wait And Press Keys    //input[@name="division"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="artl_statistics_grp"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="artl_statistics_grp"]/following-sibling::div/div/input    ${row['artl_statistics_grp']}
    Wait And Press Keys    //input[@name="artl_statistics_grp"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="astmt_list_type"]/following-sibling::div/div/input
    Wait And Clear Element Text    //input[@name="astmt_list_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="astmt_list_type"]/following-sibling::div/div/input    ${row['astmt_list_type']}
    Wait And Press Keys    //input[@name="astmt_list_type"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //input[@name="material_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="material_type"]/following-sibling::div/div/input    ${row['material_type']}
    Wait And Press Keys    //input[@name="material_type"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //select[@name="distr_ch"]/following-sibling::div/div/input
    #เพิ่ม 18/7/67 // 02/09/2024 => แก้แทนตัว value ในแปล ${distr_ch_C1},${distr_ch_C2},${distr_ch_C3} 
    Wait And Click Element Ignore Error     //*[text()='C1: DoHome/Retail']/preceding-sibling::div/div/div
    Wait And Click Element Ignore Error     //*[text()='C2: DoHome/E-Commerce']/preceding-sibling::div/div/div
    Wait And Click Element Ignore Error     //*[text()='C3: DoHome/Event']/preceding-sibling::div/div/div
    Wait And Click Element    //body/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/span[1]
    Wait And Scroll Element Into View    //*[@class="dx-field-item-label-text"][text()='ประเภทสินค้าทางบัญชี (valuation class)']
    # Wait And Click Element    //*[text()="ทั้งหมด"]/preceding-sibling::span 
    # Conditional Wait And Click element    '${branch_dc}' == 'X'    //*[text()="ศูนย์กระจายสินค้า DC"]/preceding-sibling::span
    # Conditional Wait And Click element    '${branch_hq}' == 'X'    //*[text()="สำนักงานใหญ่"]/preceding-sibling::span    
    # Conditional Wait And Click element    '${branch_xl}' == 'X'    //*[text()="XL"]/preceding-sibling::span    
    # Conditional Wait And Click element    '${branch_togo}' == 'X'    //*[text()="TO GO"]/preceding-sibling::span    
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='2. ข้อมูลเกี่ยวกับสินค้ามีอายุ']
    Wait And Clear Element Text    //input[@name="valuation_class"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="valuation_class"]/following-sibling::div/div/input    ${row['valuation_class']}
    Wait And Press Keys    //input[@name="valuation_class"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="e_comm_name_th"]
    Wait And Input Text with Delay    //input[@name="e_comm_name_th"]    ${row['e_comm_name_th']}
    Wait And Press Keys    //input[@name="e_comm_name_th"]    \\13
    Wait And Clear Element Text    //input[@name="search_word"]
    Wait And Input Text with Delay     //input[@name="search_word"]   ${row['search_word']}
    Wait And Press Keys    //input[@name="search_word"]    \\13
    Wait And Clear Element Text    //input[@name="search_remark"]
    Wait And Input Text with Delay     //input[@name="search_remark"]    ${row['search_remark']}
    Wait And Press Keys    //input[@name="search_remark"]    \\13
    Wait And Clear Element Text    //input[@name="product_model"]
    Wait And Input Text with Delay     //input[@name="product_model"]    ${row['product_model']}
    Wait And Press Keys    //input[@name="product_model"]    \\13
    Wait And Clear Element Text    //input[@name="brand_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="brand_id"]/following-sibling::div/div/input    ${row['brand_id']}
    Wait And Press Keys    //input[@name="brand_id"]/following-sibling::div/div/input    \\13
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="old_article"]
    Wait And Input Text with Delay Ignore Error     //input[@name="old_article"]    ${row['old_article']}
    Wait And Press Keys Ignore Error    //input[@name="old_article"]    \\13
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="repack"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="repack"]/following-sibling::div/div/input    ${row['repack']}
    Wait And Press Keys Ignore Error    //input[@name="repack"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="product_transform"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_transform"]/following-sibling::div/div/input    ${row['product_transform']}
    Wait And Press Keys    //input[@name="product_transform"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="country_of_region"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="country_of_region"]/following-sibling::div/div/input    ${row['country_of_region']}
    Wait And Press Keys    //input[@name="country_of_region"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="hb_nonhb"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="hb_nonhb"]/following-sibling::div/div/input    ${row['hb_nonhb']}
    Wait And Press Keys    //input[@name="hb_nonhb"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="production"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="production"]/following-sibling::div/div/input    ${row['production']}
    Wait And Press Keys    //input[@name="production"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="tradmark"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="tradmark"]/following-sibling::div/div/input    ${row['tradmark']}
    Wait And Press Keys    //input[@name="tradmark"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="brand_type"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="brand_type"]/following-sibling::div/div/input    ${row['brand_type']}
    Wait And Press Keys    //input[@name="brand_type"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="color_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="color_id"]/following-sibling::div/div/input    ${row['color_id']}
    Wait And Press Keys    //input[@name="color_id"]/following-sibling::div/div/input    \\13
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='3. ข้อมูลเกี่ยวกับ Indicator สินค้า']
    
    #2. ข้อมูลเกี่ยวกับสินค้ามีอายุ
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="tot_shelf_life"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="tot_shelf_life"]/following-sibling::div/div/input    ${row['tot_shelf_life']}
    Wait And Press Keys Ignore Error    //input[@name="tot_shelf_life"]/following-sibling::div/div/input    \\13
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="rem_shelf_life"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="rem_shelf_life"]/following-sibling::div/div/input    ${row['rem_shelf_life']}
    Wait And Press Keys Ignore Error    //input[@name="rem_shelf_life"]/following-sibling::div/div/input    \\13
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='4. ข้อมูลเกี่ยวกับกลุ่มจัดซื้อและผู้ดูแลการสั่งซื้อ']
    #3. ข้อมูลเกี่ยวกับ Indicator สินค้า
    Wait And Clear Element Text    //input[@name="product_status"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_status"]/following-sibling::div/div/input    ${row['product_status']}
    Wait And Press Keys    //input[@name="product_status"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="abc_indicator"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="abc_indicator"]/following-sibling::div/div/input    ${row['abc_indicator']}
    Wait And Press Keys    //input[@name="abc_indicator"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="product_role"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_role"]/following-sibling::div/div/input    ${row['product_role']}
    Wait And Press Keys    //input[@name="product_role"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="product_sub_role"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_sub_role"]/following-sibling::div/div/input    ${row['product_sub_role']}
    Wait And Press Keys    //input[@name="product_sub_role"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="product_trend"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="product_trend"]/following-sibling::div/div/input    ${row['product_trend']}
    Wait And Press Keys    //input[@name="product_trend"]/following-sibling::div/div/input    \\13
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='5. ข้อมูลการจัดหาสต็อกสินค้าภาพรวม']
    #4. ข้อมูลเกี่ยวกับกลุ่มจัดซื้อและผู้ดูแลการสั่งซื้อ
    Wait And Clear Element Text    //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input    ${row['head_purchaser_group_no']}
    Wait And Press Keys    //input[@name="head_purchaser_group_no"]/following-sibling::div/div/input    \\13
    #เพิ่มใหม่ // 02/09/2024 เอาออก
    # Wait And Clear Element Text Ignore Error    //input[@name="head_im"]/following-sibling::div/div/input
    # Wait And Input Text with Delay Ignore Error     //input[@name="head_im"]/following-sibling::div/div/input    ${row['head_im']}
    # Wait And Press Keys Ignore Error    //input[@name="head_im"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="purchaser_group_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="purchaser_group_no"]/following-sibling::div/div/input    ${row['purchaser_group_no']}
    Wait And Press Keys    //input[@name="purchaser_group_no"]/following-sibling::div/div/input    \\13
    #เพิ่มใหม่ // 02/09/2024 เอาออก
    # Wait And Clear Element Text Ignore Error    //input[@name="import_purchase"]/following-sibling::div/div/input
    # Wait And Input Text with Delay Ignore Error     //input[@name="import_purchase"]/following-sibling::div/div/input    ${row['import_purchase']}
    # Wait And Press Keys Ignore Error    //input[@name="import_purchase"]/following-sibling::div/div/input    \\13
    #เพิ่มใหม่ // 02/09/2024 เอาออก
    # Wait And Clear Element Text Ignore Error    //input[@name="im_group"]/following-sibling::div/div/input
    # Wait And Input Text with Delay Ignore Error     //input[@name="im_group"]/following-sibling::div/div/input    ${row['im_group']}
    # Wait And Press Keys Ignore Error    //input[@name="im_group"]/following-sibling::div/div/input    \\13
    # Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']
    #5. ข้อมูลการจัดหาสต็อกสินค้าภาพรวม
    Wait And Clear Element Text    //input[@name="avail_check"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="avail_check"]/following-sibling::div/div/input    ${row['avail_check']}
    Wait And Press Keys    //input[@name="avail_check"]/following-sibling::div/div/input    \\13
    # 02/09/2024 ข้ามไม่ต้องตรวจ ${Negative_stock}
    Conditional Wait And Click element    '${Negative_stock}' == 'X'    //*[text()="สินค้าที่สามารถขายได้เมื่อสต็อกติดลบ"]/preceding-sibling::span
    Wait And Clear Element Text    //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input    ${row['gen_item_cat_grp']}
    Wait And Press Keys    //input[@name="gen_item_cat_grp"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="tax_class"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="tax_class"]/following-sibling::div/div/input    ${row['tax_class']}
    Wait And Press Keys    //input[@name="tax_class"]/following-sibling::div/div/input    \\13
    #เพิ่มใหม่
    Wait And Clear Element Text Ignore Error    //input[@name="serial_number_profile"]/following-sibling::div/div/input
    Wait And Input Text with Delay Ignore Error     //input[@name="serial_number_profile"]/following-sibling::div/div/input    ${row['serial_number_profile']}
    Wait And Press Keys Ignore Error    //input[@name="serial_number_profile"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="stor_condition"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="stor_condition"]/following-sibling::div/div/input    ${row['stor_condition']}
    Wait And Press Keys    //input[@name="stor_condition"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="loading_group"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="loading_group"]/following-sibling::div/div/input    ${row['loading_group']}
    Wait And Press Keys    //input[@name="loading_group"]/following-sibling::div/div/input    \\13
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${mark_batch}' == 'X'        //*[text()="สินค้าที่ต้องระบุ batch (Batch management )"]/preceding-sibling::span    #batch
    #6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง
    Wait And Scroll Element Into View     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Wait And Clear Element Text    //input[@name="units_id"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="units_id"]/following-sibling::div/div/input    ${row['units_id_s6_u1']}
    Wait And Press Keys    //input[@name="units_id"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="rate_unit_base"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="rate_unit_base"]/following-sibling::div/div/input    ${row['rate_unit_base_s6_u1']}
    Wait And Press Keys    //input[@name="rate_unit_base"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="rate_unit_code"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="rate_unit_code"]/following-sibling::div/div/input    ${row['rate_unit_code_s6_u1']}
    Wait And Press Keys    //input[@name="rate_unit_code"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="barcode_no"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="barcode_no"]/following-sibling::div/div/input    ${row['barcode_no_s6_u1']}
    Wait And Press Keys    //input[@name="barcode_no"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="width"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="width"]/following-sibling::div/div/input    ${row['width_base_s6_u1']}
    Wait And Press Keys    //input[@name="width"]/following-sibling::div/div/input    \\13 
    Wait And Clear Element Text    //input[@name="long"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="long"]/following-sibling::div/div/input    ${row['long_base_s6_u1']}
    Wait And Press Keys    //input[@name="long"]/following-sibling::div/div/input    \\13  
    Wait And Clear Element Text    //input[@name="high"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="high"]/following-sibling::div/div/input    ${row['high_base_s6_u1']}
    Wait And Press Keys    //input[@name="high"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="weight"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="weight"]/following-sibling::div/div/input    ${row['weight_base_s6_u1']}
    Wait And Press Keys    //input[@name="weight"]/following-sibling::div/div/input    \\13
    Wait And Click Element    //span[@class="dx-checkbox-text"][text()='Oun (หน่วยบรรจุในการสั่งซื้อ/เปิด PO)']/preceding-sibling::span    
    Wait And Click Element    //span[@class="dx-checkbox-text"][text()='Sun (หน่วยที่สามารถขายได้ = เบสยูนิต)']/preceding-sibling::span    
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit2}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button
    Conditional Wait And Scroll Element Into View    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${row['rate_unit_base_s6_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${row['units_sale_id_s6_u2']}    #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${row['rate_unit_code_s6_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${row['barcode_no_s6_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s6_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s6_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${row['high_base_s6_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'     //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s6_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='หน่วยที่ ' and text()='2']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    \\13
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit3}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button 
    Conditional Wait And Scroll Element Into View    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${row['rate_unit_base_s6_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${row['units_sale_id_s6_u3']}    #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${row['rate_unit_code_s6_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${row['barcode_no_s6_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s6_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s6_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${row['high_base_s6_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'     //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s6_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='หน่วยที่ ' and text()='3']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    \\13
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit4}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button 
    Conditional Wait And Scroll Element Into View    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${row['rate_unit_base_s6_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${row['units_sale_id_s6_u4']}   #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${row['rate_unit_code_s6_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${row['barcode_no_s6_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s6_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s6_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${row['high_base_s6_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'     //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s6_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='หน่วยที่ ' and text()='4']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    \\13
    #Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    Conditional Wait And Click element    '${add_unit5}' == 'X'    //*[text()='6. หน่วยสินค้า , ขนาด,บาร์โค๊ด รวมแพคกิ้ง']/ancestor::div[2]/following-sibling::div/div//*[text()='เพิ่มหน่วย']/parent::button 
    Conditional Wait And Scroll Element Into View    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    ${row['rate_unit_base_s6_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_base"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    ${row['units_sale_id_s6_u5']}    #เพิ่มหน่วยใหม่
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="units_sale_id"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    ${row['rate_unit_code_s6_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="rate_unit_code"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    ${row['barcode_no_s6_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="barcode_no"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s6_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="width"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s6_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="long"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    ${row['high_base_s6_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'     //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s6_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='หน่วยที่ ' and text()='5']/parent::div/following-sibling::div//input[@name="weight"]/following-sibling::div//input    \\13
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']
    #7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    ${row['width_base_s7_u1']}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='width']/following-sibling::div//div//input    \\13 
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input    ${row['long_base_s7_u1']}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='long']/following-sibling::div//div//input    \\13  
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input   ${row['high_base_s7_u1']}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='high']/following-sibling::div//div//input    \\13
    Wait And Clear Element Text    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input
    Wait And Input Text with Delay     //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input    ${row['weight_base_s7_u1']}
    Wait And Press Keys    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//input[@name='weight']/following-sibling::div//div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s7_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="width"]/following-sibling::div//input    \\13 
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s7_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="long"]/following-sibling::div//input    \\13  
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input   ${row['high_base_s7_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s7_u2']}
    Conditional Wait And Press Keys    '${add_unit2}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='2']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s7_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="width"]/following-sibling::div//input    \\13 
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s7_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="long"]/following-sibling::div//input    \\13  
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input   ${row['high_base_s7_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s7_u3']}
    Conditional Wait And Press Keys    '${add_unit3}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='3']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s7_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="width"]/following-sibling::div//input    \\13 
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s7_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="long"]/following-sibling::div//input    \\13  
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input   ${row['high_base_s7_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s7_u4']}
    Conditional Wait And Press Keys    '${add_unit4}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='4']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input    ${row['width_base_s7_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="width"]/following-sibling::div//input    \\13 
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input    ${row['long_base_s7_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="long"]/following-sibling::div//input    \\13  
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input   ${row['high_base_s7_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="high"]/following-sibling::div//input    \\13
    Conditional Wait And Clear Element Text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input
    Conditional Wait And Input text    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input    ${row['weight_base_s7_u5']}
    Conditional Wait And Press Keys    '${add_unit5}' == 'X'    //*[text()='7. หน่วยสินค้า , ขนาด,บาร์โค๊ด ไม่รวมแพคกิ้ง']/following::div//*[text()='หน่วยที่ ' and text()='5']/parent::div//input[@name="weight"]/following-sibling::div//input    \\13
    #8. ขนาดสินค้าที่ประกอบเสร็จ (เฉพาะสินค้าที่ต้องประกอบ)
    #9. รูปแบบการจัดเรียงและหน่วยที่ต้องการจัดเรียง
    #10. ข้อมูลสินค้าหน่วยคู่ขนาน
    #11.1 ข้อมูล มาตรฐานผลิตภัณฑ์อุตสาหกรรม (มอก.)
    #11.2 เครื่องหมายการค้า ลิขสิทธิ์ สิทธิบัตร
    Wait And Scroll Element Into View    //*[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='12. สถานะสินค้า ใน Tab Basic Data']
    #12. สถานะสินค้า ใน Tab Basic Data
    Wait And Clear Element Text    //input[@name="first_sale_date"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="first_sale_date"]/following-sibling::div/div/input    ${row['first_sale_date']}
    Wait And Press Keys    //input[@name="first_sale_date"]/following-sibling::div/div/input    \\13
    #13. Attribute หลัก
    Wait And Clear Element Text    //input[@name="d5aadb9a-3aba-4fea-83a1-1c522dcce4d9"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="d5aadb9a-3aba-4fea-83a1-1c522dcce4d9"]/following-sibling::div/div/input    ${row['att_color']}
    Wait And Press Keys    //input[@name="d5aadb9a-3aba-4fea-83a1-1c522dcce4d9"]/following-sibling::div/div/input    \\13

    #14. คุณสมบัติการรับประกัน บำรุงรักษา
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='การบำรุงรักษา']
    Wait And Click Element   //*[@name="selling_point"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="selling_point"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${row['highlight_sell_point']}
    Wait And Click Element   //*[@name="product_features"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="product_features"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${row['product_features']} 
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='เงื่อนไขการรับประกัน']
    Wait And Click Element   //*[@name="maintenance"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="maintenance"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${row['maintenance']}  
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()='ประเภทของการรับประกัน'] 
    Wait And Click Element   //*[@name="warranty_terms"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="warranty_terms"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${row['warranty_conditions']}
    Wait And Click Element   //*[@name="method_of_use"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay       //*[@name="method_of_use"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${row['usage']} 
    Wait And Click Element   //*[@name="caution"]/preceding-sibling::div[@class="dx-quill-container ql-container"]
    Wait And Input Text with Delay    //*[@name="caution"]/preceding-sibling::div[@class="dx-quill-container ql-container"]/div    ${row['precautions']}
    #15. สินค้าภายในกล่อง
    #16. จำนวนรายการสินค้าต่อชุด (Multi Pack)
    #17. รูปภาพสินค้า
    Wait And Scroll Element Into View    //span[@class="MuiTypography-root MuiCardHeader-title MuiTypography-h5 MuiTypography-displayBlock"][text()='18. โลโก้สินค้า']  
    IF    '${path_pic}' == '1'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}
    ELSE IF    '${path_pic}' == '2'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}
    ELSE IF    '${path_pic}' == '3'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}
    ELSE IF    '${path_pic}' == '4'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}
    ELSE IF    '${path_pic}' == '5'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}
    ELSE IF    '${path_pic}' == '6'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}
    ELSE IF    '${path_pic}' == '7'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}
    ELSE IF    '${path_pic}' == '8'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}
    ELSE IF    '${path_pic}' == '9'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}
    ELSE IF    '${path_pic}' == '10'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${path_pic_1}\n${path_pic_2}\n${path_pic_3}\n${path_pic_4}\n${path_pic_5}\n${path_pic_6}\n${path_pic_7}\n${path_pic_8}\n${path_pic_9}\n${path_pic_10}
    ELSE IF    '${path_pic}' == '11'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_11}
    ELSE IF    '${path_pic}' == '12'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_12}
    ELSE IF    '${path_pic}' == '13'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_13}
    ELSE IF    '${path_pic}' == '14'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_14}
    ELSE IF    '${path_pic}' == '15'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_15}
    ELSE IF    '${path_pic}' == '16'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_16}
    ELSE IF    '${path_pic}' == '17'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_17}
    ELSE IF    '${path_pic}' == '18'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_18}
    ELSE IF    '${path_pic}' == '19'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_19}
    ELSE IF    '${path_pic}' == '20'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_20}
    ELSE IF    '${path_pic}' == '21'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_21}    
    ELSE IF    '${path_pic}' == '22'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_22}
    ELSE IF    '${path_pic}' == '23'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_23}
    ELSE IF    '${path_pic}' == '24'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_24}
    ELSE IF    '${path_pic}' == '25'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_25}
    ELSE IF    '${path_pic}' == '26'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_26}
    ELSE IF    '${path_pic}' == '27'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_27}
    ELSE IF    '${path_pic}' == '28'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_28}
    ELSE IF    '${path_pic}' == '29'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_29}
    ELSE IF    '${path_pic}' == '30'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_30}
    ELSE IF    '${path_pic}' == '31'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_31}    
    ELSE IF    '${path_pic}' == '32'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_32}
    ELSE IF    '${path_pic}' == '33'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_33}
    ELSE IF    '${path_pic}' == '34'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_34}
    ELSE IF    '${path_pic}' == '35'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_35}
    ELSE IF    '${path_pic}' == '36'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_36}
    ELSE IF    '${path_pic}' == '37'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_37}
    ELSE IF    '${path_pic}' == '38'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_38}
    ELSE IF    '${path_pic}' == '39'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_39}
    ELSE IF    '${path_pic}' == '40'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_40}
    ELSE IF    '${path_pic}' == '41'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_41}
    ELSE IF    '${path_pic}' == '42'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_42}    
    ELSE IF    '${path_pic}' == '43'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_43}
    ELSE IF    '${path_pic}' == '44'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_44}
    ELSE IF    '${path_pic}' == '45'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_45}
    ELSE IF    '${path_pic}' == '46'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_46}
    ELSE IF    '${path_pic}' == '47'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_47}
    ELSE IF    '${path_pic}' == '48'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_48}
    ELSE IF    '${path_pic}' == '49'
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_49}
    ELSE
        Wait Until Keyword Succeeds    5x   2s    Choose File    //*[@id="img-product"]/following-sibling::div//input    ${tot_pic_50}    #maximun 50 รูป
    END
    Wait Until Keyword Succeeds    5x    2s    Click Element with Delay    //*[text()='17. รูปภาพสินค้า']/ancestor::div[2]/following-sibling::div//input[@type="radio"]
    #Tab Purchasing
    #ข้อมูลของ Vendor
    Wait And Click Element    //*[text()="Purchasing"]/..
    Wait And Wait Until Element Is Visible    //*[text()="ข้อมูลของ Vendor"]
    Wait And Clear Element Text    //input[@name="lead_time"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="lead_time"]/following-sibling::div/div/input    ${row['lead_time']}
    Wait And Press Keys    //input[@name="lead_time"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="return_defective"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="return_defective"]/following-sibling::div/div/input    ${row['return_defective']}
    Wait And Press Keys    //input[@name="return_defective"]/following-sibling::div/div/input    \\13
    Wait And Scroll Element Into View    //span[@class="dx-field-item-label-text"][text()="หน่วยของราคาทุน (Base Unit)."]
    Wait And Clear Element Text    //input[@name="tax_code_vendor"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="tax_code_vendor"]/following-sibling::div/div/input    ${row['tax_code_vendor']}    #เพิ่มใหม่ 18/10/24
    Wait And Press Keys    //input[@name="tax_code_vendor"]/following-sibling::div/div/input    \\13
    #ข้อมูลต้นทุนสินค้า
    Wait And Clear Element Text    //input[@name="net_cost_price"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="net_cost_price"]/following-sibling::div/div/input    ${row['net_cost_price']}
    Wait And Press Keys    //input[@name="net_cost_price"]/following-sibling::div/div/input    \\13
    Wait And Clear Element Text    //input[@name="currency"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="currency"]/following-sibling::div/div/input    ${row['currency']}
    Wait And Press Keys    //input[@name="currency"]/following-sibling::div/div/input    \\13
    Sleep    3s  
    #Tab Sale
    Wait And Click Element    //*[text()="Sales"]/..
    Wait And Clear Element Text    //input[@name="set_pattern_sales"]/following-sibling::div/div/input
    Wait And Input Text with Delay     //input[@name="set_pattern_sales"]/following-sibling::div/div/input    ${row['set_pattern_sales']}
    Wait And Press Keys    //input[@name="set_pattern_sales"]/following-sibling::div/div/input    \\13

    #Tab DC & Store
    Wait And Click Element    //*[text()="DC & store"]/..
    Wait And Click Element    //*[text()="ขออนุมัติ"]/..
    Wait And Click Element    //*[text()="ยืนยัน"]/..
    Wait And Wait Until Element Is Visible    //*[text()="ขออนุมัติสินค้าเรียบร้อยแล้ว"]
    Wait And Wait Until Element Is Visible    //*[text()="จัดการข้อมูลสินค้า"]/..
    Wait And Wait Until Element Is Visible    //*[text()=' สร้างสินค้าใหม่']/parent::span
    Pass Execution    End Test
    
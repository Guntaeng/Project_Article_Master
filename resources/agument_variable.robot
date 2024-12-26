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

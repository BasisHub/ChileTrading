//#charset: windows-1252

VERSION "4.0"

CHILD-WINDOW 100 0 0 500 840
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    HSCROLLBAR
    KEYBOARDNAVIGATION
    NAME "Customer"
    VSCROLLBAR

    STATICTEXT 100, "CUST_NUM:", 10, 38, 130, 20
        BEGIN
            NAME "CUST_NUM.label"
        END

    INPUTE 101, "", 150, 35, 78, 20
        BEGIN
            MASK "XXXXXX"
            NAME "CUST_NUM"
            PADCHARACTER 32
        END

    STATICTEXT 102, "FIRST_NAME:", 10, 68, 130, 20
        BEGIN
            NAME "FIRST_NAME.label"
        END

    INPUTE 103, "", 150, 65, 260, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXX"
            NAME "FIRST_NAME"
            PADCHARACTER 32
        END

    STATICTEXT 104, "LAST_NAME:", 10, 98, 130, 20
        BEGIN
            NAME "LAST_NAME.label"
        END

    INPUTE 105, "", 150, 95, 390, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "LAST_NAME"
            PADCHARACTER 32
        END

    STATICTEXT 106, "COMPANY:", 10, 128, 130, 20
        BEGIN
            NAME "COMPANY.label"
        END

    INPUTE 107, "", 150, 125, 390, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "COMPANY"
            PADCHARACTER 32
        END

    STATICTEXT 108, "BILL_ADDR1:", 10, 158, 130, 20
        BEGIN
            NAME "BILL_ADDR1.label"
        END

    INPUTE 109, "", 150, 155, 390, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "BILL_ADDR1"
            PADCHARACTER 32
        END

    STATICTEXT 110, "BILL_ADDR2:", 10, 188, 130, 20
        BEGIN
            NAME "BILL_ADDR2.label"
        END

    INPUTE 111, "", 150, 185, 390, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "BILL_ADDR2"
            PADCHARACTER 32
        END

    STATICTEXT 112, "CITY:", 10, 218, 130, 20
        BEGIN
            NAME "CITY.label"
        END

    INPUTE 113, "", 150, 215, 260, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXX"
            NAME "CITY"
            PADCHARACTER 32
        END

    STATICTEXT 114, "STATE:", 10, 248, 130, 20
        BEGIN
            NAME "STATE.label"
        END

    INPUTE 115, "", 150, 245, 30, 20
        BEGIN
            MASK "XX"
            NAME "STATE"
            PADCHARACTER 32
        END

    STATICTEXT 116, "COUNTRY:", 10, 278, 130, 20
        BEGIN
            NAME "COUNTRY.label"
        END

    INPUTE 117, "", 150, 275, 260, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXX"
            NAME "COUNTRY"
            PADCHARACTER 32
        END

    STATICTEXT 118, "POST_CODE:", 10, 308, 130, 20
        BEGIN
            NAME "POST_CODE.label"
        END

    INPUTE 119, "", 150, 305, 156, 20
        BEGIN
            MASK "XXXXXXXXXXXX"
            NAME "POST_CODE"
            PADCHARACTER 32
        END

    STATICTEXT 120, "PHONE:", 10, 338, 130, 20
        BEGIN
            NAME "PHONE.label"
        END

    INPUTE 121, "", 150, 335, 195, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXX"
            NAME "PHONE"
            PADCHARACTER 32
        END

    STATICTEXT 122, "FAX:", 10, 368, 130, 20
        BEGIN
            NAME "FAX.label"
        END

    INPUTE 123, "", 150, 365, 195, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXX"
            NAME "FAX"
            PADCHARACTER 32
        END

    STATICTEXT 124, "SALESPERSON:", 10, 398, 130, 20
        BEGIN
            NAME "SALESPERSON.label"
        END

    INPUTE 125, "", 150, 395, 39, 20
        BEGIN
            MASK "XXX"
            NAME "SALESPERSON"
            PADCHARACTER 32
        END

    STATICTEXT 126, "SHIP_ZONE:", 10, 428, 130, 20
        BEGIN
            NAME "SHIP_ZONE.label"
        END

    INPUTE 127, "", 150, 425, 30, 20
        BEGIN
            MASK "XX"
            NAME "SHIP_ZONE"
            PADCHARACTER 32
        END

    STATICTEXT 128, "SHIP_METHOD:", 10, 458, 130, 20
        BEGIN
            NAME "SHIP_METHOD.label"
        END

    INPUTE 129, "", 150, 455, 65, 20
        BEGIN
            MASK "XXXXX"
            NAME "SHIP_METHOD"
            PADCHARACTER 32
        END

    STATICTEXT 130, "CURRENT_BAL:", 10, 488, 130, 20
        BEGIN
            NAME "CURRENT_BAL.label"
        END

    INPUTN 131, "", 150, 485, 286, 20
        BEGIN
            NAME "CURRENT_BAL"
        END

    STATICTEXT 132, "OVER_30:", 10, 518, 130, 20
        BEGIN
            NAME "OVER_30.label"
        END

    INPUTN 133, "", 150, 515, 286, 20
        BEGIN
            NAME "OVER_30"
        END

    STATICTEXT 134, "OVER_60:", 10, 548, 130, 20
        BEGIN
            NAME "OVER_60.label"
        END

    INPUTN 135, "", 150, 545, 286, 20
        BEGIN
            NAME "OVER_60"
        END

    STATICTEXT 136, "OVER_90:", 10, 578, 130, 20
        BEGIN
            NAME "OVER_90.label"
        END

    INPUTN 137, "", 150, 575, 286, 20
        BEGIN
            NAME "OVER_90"
        END

    STATICTEXT 138, "OVER_120:", 10, 608, 130, 20
        BEGIN
            NAME "OVER_120.label"
        END

    INPUTN 139, "", 150, 605, 286, 20
        BEGIN
            NAME "OVER_120"
        END

    STATICTEXT 140, "SALES_MTD:", 10, 638, 130, 20
        BEGIN
            NAME "SALES_MTD.label"
        END

    INPUTN 141, "", 150, 635, 286, 20
        BEGIN
            NAME "SALES_MTD"
        END

    STATICTEXT 142, "SALES_YTD:", 10, 668, 130, 20
        BEGIN
            NAME "SALES_YTD.label"
        END

    INPUTN 143, "", 150, 665, 286, 20
        BEGIN
            NAME "SALES_YTD"
        END

    STATICTEXT 144, "SALES_LY:", 10, 698, 130, 20
        BEGIN
            NAME "SALES_LY.label"
        END

    INPUTN 145, "", 150, 695, 286, 20
        BEGIN
            NAME "SALES_LY"
        END

    STATICTEXT 146, "LAST_PURCH_DATE:", 10, 728, 130, 20
        BEGIN
            NAME "LAST_PURCH_DATE.label"
        END

    INPUTD 147, "", 150, 725, 100, 20
        BEGIN
            NAME "LAST_PURCH_DATE"
        END

    STATICTEXT 148, "LAST_PAY_DATE:", 10, 758, 130, 20
        BEGIN
            NAME "LAST_PAY_DATE.label"
        END

    INPUTD 149, "", 150, 755, 100, 20
        BEGIN
            NAME "LAST_PAY_DATE"
        END

    STATICTEXT 150, "CREDIT_CODE:", 10, 788, 130, 20
        BEGIN
            NAME "CREDIT_CODE.label"
        END

    INPUTE 151, "", 150, 785, 30, 20
        BEGIN
            MASK "XX"
            NAME "CREDIT_CODE"
            PADCHARACTER 32
        END

END

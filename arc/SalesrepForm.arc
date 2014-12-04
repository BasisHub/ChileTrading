//#charset: windows-1252

VERSION "4.0"

CHILD-WINDOW 100 0 0 500 360
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    HSCROLLBAR
    KEYBOARDNAVIGATION
    NAME "Salesrep"
    VSCROLLBAR

    STATICTEXT 100, "SALESPERSON:", 10, 38, 130, 20
        BEGIN
            NAME "SALESPERSON.label"
        END

    INPUTE 101, "", 150, 35, 39, 20
        BEGIN
            MASK "XXX"
            NAME "SALESPERSON"
            PADCHARACTER 32
        END

    STATICTEXT 102, "NAME:", 10, 68, 130, 20
        BEGIN
            NAME "NAME.label"
        END

    INPUTE 103, "", 150, 65, 390, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "NAME"
            PADCHARACTER 32
        END

    STATICTEXT 104, "ADDRESS:", 10, 98, 130, 20
        BEGIN
            NAME "ADDRESS.label"
        END

    INPUTE 105, "", 150, 95, 390, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "ADDRESS"
            PADCHARACTER 32
        END

    STATICTEXT 106, "ADDRESS2:", 10, 128, 130, 20
        BEGIN
            NAME "ADDRESS2.label"
        END

    INPUTE 107, "", 150, 125, 390, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "ADDRESS2"
            PADCHARACTER 32
        END

    STATICTEXT 108, "CITY:", 10, 158, 130, 20
        BEGIN
            NAME "CITY.label"
        END

    INPUTE 109, "", 150, 155, 260, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXX"
            NAME "CITY"
            PADCHARACTER 32
        END

    STATICTEXT 110, "STATE:", 10, 188, 130, 20
        BEGIN
            NAME "STATE.label"
        END

    INPUTE 111, "", 150, 185, 30, 20
        BEGIN
            MASK "XX"
            NAME "STATE"
            PADCHARACTER 32
        END

    STATICTEXT 112, "ZIP:", 10, 218, 130, 20
        BEGIN
            NAME "ZIP.label"
        END

    INPUTE 113, "", 150, 215, 130, 20
        BEGIN
            MASK "XXXXXXXXXX"
            NAME "ZIP"
            PADCHARACTER 32
        END

    STATICTEXT 114, "PHONE:", 10, 248, 130, 20
        BEGIN
            NAME "PHONE.label"
        END

    INPUTE 115, "", 150, 245, 195, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXX"
            NAME "PHONE"
            PADCHARACTER 32
        END

    STATICTEXT 116, "COMM_RATE:", 10, 278, 130, 20
        BEGIN
            NAME "COMM_RATE.label"
        END

    INPUTN 117, "", 150, 275, 169, 20
        BEGIN
            NAME "COMM_RATE"
        END

    STATICTEXT 118, "COMM_TYPE:", 10, 308, 130, 20
        BEGIN
            NAME "COMM_TYPE.label"
        END

    INPUTE 119, "", 150, 305, 30, 20
        BEGIN
            MASK "X"
            NAME "COMM_TYPE"
            PADCHARACTER 32
        END

END

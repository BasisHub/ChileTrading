//#charset: windows-1252

VERSION "4.0"

CHILD-WINDOW 100 0 0 500 120
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    HSCROLLBAR
    KEYBOARDNAVIGATION
    NAME "ShipZone"
    VSCROLLBAR

    STATICTEXT 100, "Code:", 10, 38, 130, 20
        BEGIN
            NAME "CODE.label"
        END

    INPUTE 101, "", 150, 35, 30, 20
        BEGIN
            MASK "XX"
            NAME "CODE"
            PADCHARACTER 32
        END

    STATICTEXT 102, "DESC:", 10, 68, 130, 20
        BEGIN
            NAME "DESC.label"
        END

    INPUTE 103, "", 150, 65, 325, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "DESC"
            PADCHARACTER 32
        END

END

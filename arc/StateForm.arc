//#charset: windows-1252

VERSION "4.0"

CHILD-WINDOW 100 0 0 500 120
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    HSCROLLBAR
    KEYBOARDNAVIGATION
    NAME "State"
    VSCROLLBAR

    STATICTEXT 100, "State ID:", 10, 38, 130, 20
        BEGIN
            NAME "CODE.label"
        END

    INPUTE 101, "", 150, 35, 30, 20
        BEGIN
            MASK "XX"
            NAME "CODE"
            PADCHARACTER 32
        END

    STATICTEXT 102, "State Name:", 10, 68, 130, 20
        BEGIN
            NAME "NAME.label"
        END

    INPUTE 103, "", 150, 65, 195, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXX"
            NAME "NAME"
            PADCHARACTER 32
        END

END

//#charset: windows-1252

VERSION "4.0"

CHILD-WINDOW 100 0 0 500 120
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    HSCROLLBAR
    KEYBOARDNAVIGATION
    NAME "Country"
    VSCROLLBAR

    STATICTEXT 100, "ID:", 10, 38, 130, 20
        BEGIN
            NAME "ID.label"
        END

    INPUTE 101, "", 150, 35, 30, 20
        BEGIN
            MASK "XX"
            NAME "ID"
            PADCHARACTER 32
        END

    STATICTEXT 102, "Name:", 10, 68, 130, 20
        BEGIN
            NAME "NAME.label"
        END

    INPUTE 103, "", 150, 65, 400, 20
        BEGIN
            MASK "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
            NAME "NAME"
            PADCHARACTER 32
        END

END

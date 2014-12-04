//#charset: ISO-8859-15

VERSION "4.0"

WINDOW 100 "Login" 500 250 307 138
BEGIN
    BACKGROUNDCOLOR RGB(255,255,255)
    DEFAULTFONT "Arial" 10
    ENTERASTAB
    EVENTMASK 0
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MAXIMIZABLE
    NOT MINIMIZABLE
    NAME "LOGIN"
    NOT SIZABLE
    STATICTEXT 100, "User:", 10, 28, 56, 17
    BEGIN
        FONT "Arial" 10
        NAME "TxtUser"
        NOT OPAQUE
    END

    EDIT 101, "", 69, 25, 117, 20
    BEGIN
        CLIENTEDGE
        FONT "Arial" 10
        NAME "EbxUser"
    END

    STATICTEXT 102, "Password:", 8, 51, 58, 17
    BEGIN
        FONT "Arial" 10
        NAME "TxtPassword"
        NOT OPAQUE
    END

    EDIT 103, "", 69, 48, 117, 20
    BEGIN
        CLIENTEDGE
        FONT "Arial" 10
        NAME "EbpPassword"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    BUTTON 104, "Login", 96, 80, 90, 25
    BEGIN
        BACKGROUNDCOLOR RGB(255,255,255)
        FONT "Arial" 10
        NAME "BtnCon"
    END

    STATICTEXT 105, "", 11, 110, 198, 20
    BEGIN
        NAME "TxtMsg"
        NOT OPAQUE
    END

END


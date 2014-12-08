//#charset: US-ASCII

VERSION "4.0"

WINDOW 100 "Login" 500 250 307 190
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
    STATICTEXT 100, "User:", 20, 77, 80, 22
    BEGIN
        FONT "Arial" 10
        NAME "TxtUser"
        NOT OPAQUE
    END

    EDIT 101, "", 109, 75, 150, 22
    BEGIN
        CLIENTEDGE
        FONT "Arial" 10
        NAME "EbxUser"
    END

    STATICTEXT 102, "Password:", 20, 102, 80, 22
    BEGIN
        FONT "Arial" 10
        NAME "TxtPassword"
        NOT OPAQUE
    END

    EDIT 103, "", 109, 100, 150, 22
    BEGIN
        CLIENTEDGE
        FONT "Arial" 10
        NAME "EbpPassword"
        PASSWORDENTRY
        NOT DRAGENABLED
    END

    BUTTON 104, "Login", 109, 130, 90, 30
    BEGIN
        FONT "Arial" 10
        NAME "BtnCon"
    END

    STATICTEXT 105, "", 20, 160, 270, 20
    BEGIN
        NAME "TxtMsg"
        NOT OPAQUE
    END

END


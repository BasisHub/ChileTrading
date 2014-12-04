REM Default, auto-generated stored procedure skeleton.
SETERR ERROR_ROUTINE

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
k$ = sp!.getParameter("CUST_NUM")


REM Define the templates and open up the data file
dim rec$:"CUST_NUM:C(6),FIRST_NAME:C(20),LAST_NAME:C(30),COMPANY:C(30),BILL_ADDR1:C(30),BILL_ADDR2:C(30),CITY:C(20),STATE:C(2),COUNTRY:C(20),POST_CODE:C(12),PHONE:C(15),FAX:C(15),SALESPERSON:C(3),SHIP_ZONE:C(2),SHIP_METHOD:C(5),CURRENT_BAL:N(12),OVER_30:N(12),OVER_60:N(12),OVER_90:N(12),OVER_120:N(12),SALES_MTD:N(12),SALES_YTD:N(12),SALES_LY:N(12),LAST_PURCH_DATE:N(7),LAST_PAY_DATE:N(7),CREDIT_CODE:C(2)"

rs! = BBJAPI().createMemoryRecordSet("CUST_NUM:C(6),NAME:C(50),COMPANY:C(30),BILL_ADDR1:C(30),BILL_ADDR2:C(30),CITY:C(20),STATE:C(2),COUNTRY:C(20),POST_CODE:C(12)")
dataFile$ = "..\data\CUSTOMER"
chan = unt
open(chan) dataFile$

    readrecord(chan,knum=0,key=k$,err=DONE) rec$
    data! = rs!.getEmptyRecordData()
    data!.setFieldValue("CUST_NUM", rec.CUST_NUM$)
    data!.setFieldValue("NAME", cvs(str(rec.FIRST_NAME$),2)+" "+cvs(str(rec.LAST_NAME$),2))
    data!.setFieldValue("COMPANY", cvs(str(rec.COMPANY$),2))
    data!.setFieldValue("BILL_ADDR1", cvs(str(rec.BILL_ADDR1$),2))
    data!.setFieldValue("BILL_ADDR2", cvs(str(rec.BILL_ADDR2$),2))
    data!.setFieldValue("CITY", cvs(str(rec.CITY$),2))
    data!.setFieldValue("STATE", cvs(str(rec.STATE$),2))
    data!.setFieldValue("COUNTRY", cvs(str(rec.COUNTRY$),2))
    data!.setFieldValue("POST_CODE", cvs(str(rec.POST_CODE$),2))
    rs!.insert(data!)

DONE:
close (chan)
sp!.setRecordSet(rs!)
end

REM Error routine
ERROR_ROUTINE:
    SETERR DONE
    msg$ = "Error #" + str(err) + " occured in " + pgm(-1) + " at line " + str(tcb(5))
    if err = 77 then msg$ = msg$ + $0d0a$ + "SQL Err: " + sqlerr(chan)
    java.lang.System.out.println(msg$)
    if tcb(13) then exit else end
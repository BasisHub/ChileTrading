
REM Default, auto-generated stored procedure skeleton.
SETERR ERROR_ROUTINE

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
value$=sp!.getParameter("MONTH")
MONTH=num(value$,err=*next)

rem MONTH = num(sp!.getParameter("MONTH"))

REM Define the templates and open up the data file
dim rec$:"ORDER_NUM:B,CUST_NUM:C(6),ORDER_DATE:N(7),SHIP_DATE:N(7),SHIP_ZONE:C(2),SHIP_METHOD:C(5),COMMENT:C(30),SALESPERSON:C(3)"
rs! = BBJAPI().createMemoryRecordSet("ORDER_NUM:B,CUST_NUM:C(6),ORDER_DATE:C(8),SHIP_DATE:C(8),SHIP_ZONE:C(2),SHIP_METHOD:C(5),COMMENT:C(30),SALESPERSON:C(3)")

if (MONTH > 0 and MONTH < 13)
    dataFile$ = "..\data\ORD_HED"
    chan = unt
    open(chan) dataFile$

    REM Determine the date range to report on given the month
    StartDate = jul(1993,MONTH,01)
    if MONTH < 12 then
        EndDate = jul(1993,MONTH+1,01)
    else
        EndDate = jul(1994,01,01)
    endif
    k$ = str(StartDate)

    REM Attempt to read the first order on the first day
    REM If it's not there, read on further in the file for the next orders
    readrecord(chan,knum=2,key=k$,err=CHECK_NEXT) rec$
    data! = rs!.getEmptyRecordData()
    data!.setFieldValue("ORDER_NUM", str(rec.ORDER_NUM))
    data!.setFieldValue("CUST_NUM", rec.CUST_NUM$)
    data!.setFieldValue("ORDER_DATE", str(date(num(rec.ORDER_DATE$):"%Mz/%Dz/%Yz")))
    data!.setFieldValue("SHIP_DATE", str(date(num(rec.SHIP_DATE$):"%Mz/%Dz/%Yz")))
    data!.setFieldValue("SHIP_ZONE", rec.SHIP_ZONE$)
    data!.setFieldValue("SHIP_METHOD", rec.SHIP_METHOD$)
    data!.setFieldValue("COMMENT", rec.COMMENT$)
    data!.setFieldValue("SALESPERSON", rec.SALESPERSON$)
    rs!.insert(data!)


    REM Keep reading through the files until the order_date exceeds the ending date
    CHECK_NEXT:
    while 1

        readrecord(chan,err=*BREAK) rec$
        if (num(rec.ORDER_DATE$) < EndDate) then
            data! = rs!.getEmptyRecordData()
            data!.setFieldValue("ORDER_NUM", str(rec.ORDER_NUM))
            data!.setFieldValue("CUST_NUM", rec.CUST_NUM$)
            data!.setFieldValue("ORDER_DATE", str(date(num(rec.ORDER_DATE$):"%Mz/%Dz/%Yz")))
            data!.setFieldValue("SHIP_DATE", str(date(num(rec.SHIP_DATE$):"%Mz/%Dz/%Yz")))
            data!.setFieldValue("SHIP_ZONE", rec.SHIP_ZONE$)
            data!.setFieldValue("SHIP_METHOD", rec.SHIP_METHOD$)
            data!.setFieldValue("COMMENT", rec.COMMENT$)
            data!.setFieldValue("SALESPERSON", rec.SALESPERSON$)
            rs!.insert(data!)
        else
            break
        endif

    wend
    close (chan)
endif

DONE:
sp!.setRecordSet(rs!)
end


REM Error routine
ERROR_ROUTINE:
    SETERR DONE
    msg$ = "Error #" + str(err) + " occured in " + pgm(-1) + " at line " + str(tcb(5))
    if err = 77 then msg$ = msg$ + $0d0a$ + "SQL Err: " + sqlerr(chan)
    java.lang.System.out.println(msg$)
    if tcb(13) then exit else end
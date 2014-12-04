
REM Default, auto-generated stored procedure skeleton.
rem SETERR ERROR_ROUTINE

use java.util.HashMap
use java.util.Iterator

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
MONTH = num(sp!.getParameter("MONTH"),err=*next)


salesTotal!= new HashMap()

REM Define the templates and open up the data file
dim rec$:"ORDER_NUM:B,CUST_NUM:C(6),ORDER_DATE:N(7),SHIP_DATE:N(7),SHIP_ZONE:C(2),SHIP_METHOD:C(5),COMMENT:C(30),SALESPERSON:C(3),MDSE_TOTAL:N(12),TAX_TOTAL:N(12),FRGHT_TOTAL:N(12)"
rs! = BBJAPI().createMemoryRecordSet("SALESPERSON:C(3),SALESTOTAL:N(18)")

if (MONTH > 0 and MONTH < 13)
    REM Open ORD_HED for reading
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
    gosub ADD_TOTALS

    REM Keep reading through the files until the order_date exceeds the ending date
    CHECK_NEXT:
    while 1

        readrecord(chan,err=*BREAK) rec$
        if (num(rec.ORDER_DATE$) < EndDate) then
            gosub ADD_TOTALS
        else
            break
        endif

    wend

    DONE:
    data! = rs!.getEmptyRecordData()
    keys!=salesTotal!.keySet()
    i!=keys!.iterator()

    while(i!.hasNext())
        key$=i!.next()
        data!.setFieldValue("SALESPERSON", key$)
        data!.setFieldValue("SALESTOTAL",cvs(str(num(salesTotal!.get(key$)):"#,###,###.00"),3))
        rs!.insert(data!)
    wend

    close (chan)
endif

sp!.setRecordSet(rs!)
end

REM add the sales total for each salesperson in a hashmap
ADD_TOTALS:
    if salesTotal!.get(rec.SALESPERSON$)=null() then
        salesTotal!.put(rec.SALESPERSON$,0.00)
    fi

    cs=num(rec.MDSE_TOTAL$)
    ts = cs + salesTotal!.get(rec.SALESPERSON$)
    salesTotal!.put(rec.SALESPERSON$,ts)
return

REM Error routine
ERROR_ROUTINE:

    SETERR DONE
    msg$ = "Error #" + str(err) + " occured in " + pgm(-1) + " at line " + str(tcb(5))
    if err = 77 then msg$ = msg$ + $0d0a$ + "SQL Err: " + sqlerr(chan)
    msg$=msg$+$0D0A$+errmes(-1)
    java.lang.System.out.println(msg$)
    if tcb(13) then exit else end
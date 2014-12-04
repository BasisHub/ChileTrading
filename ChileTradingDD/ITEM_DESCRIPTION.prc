REM Default, auto-generated stored procedure skeleton.
SETERR ERROR_ROUTINE

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
k$ = sp!.getParameter("ITEM_NUM")

REM Define the templates and open up the data file
dim rec$:"ITEM_NUM:C(6),DESCRIPTION:C(30),PROD_CAT:C(2),STOCK_UOM:C(3),COST:N(12),WEIGHT:N(12),WT_UNIT:C(2),PRICE:N(12)"

rs! = BBJAPI().createMemoryRecordSet("ITEM_NUM:C(6),DESCRIPTION:C(30)")
dataFile$ = "..\data\ITEM"
chan = unt
open(chan) dataFile$

readrecord(chan,knum=0,key=k$,err=DONE) rec$
data! = rs!.getEmptyRecordData()
data!.setFieldValue("ITEM_NUM", rec.ITEM_NUM$)
data!.setFieldValue("DESCRIPTION", rec.DESCRIPTION$)
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
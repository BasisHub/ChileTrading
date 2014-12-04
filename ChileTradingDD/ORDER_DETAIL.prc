REM Default, auto-generated stored procedure skeleton.
SETERR ERROR_ROUTINE

REM Declare some variables ahead of time
declare BBjStoredProcedureData sp!
declare BBjRecordSet rs!
declare BBjRecordData data!

REM Get the infomation object for the Stored Procedure
sp! = BBjAPI().getFileSystem().getStoredProcedureData()

REM Get the IN and IN/OUT parameters used by the procedure
x = sp!.getParameter("ORDER_NUMBER")

REM Define the templates and open up the data file
dim rec$:"ORDER_NUM:B,LINE_NUM:B,ITEM_NUM:C(6),QTY_ORDERED:N(4),QTY_SHIPPED:N(4),PRICE:N(12),DISC_PCT:N(3),DISC_AMOUNT:N(12),LINE_WEIGHT:N(5)"

rec.ORDER_NUM=x
k$=rec.ORDER_NUM$
rs! = BBJAPI().createMemoryRecordSet("ORDER_NUM:B,LINE_NUM:B,ITEM_NUM:C(6),QTY_ORDERED:N(4),QTY_SHIPPED:N(4),PRICE:N(12),DISC_PCT:N(3),DISC_AMOUNT:N(12),LINE_WEIGHT:N(5)")
dataFile$ = "..\data\ORD_LIN"
chan = unt
open(chan) dataFile$

    readrecord(chan,knum=1,key=k$,err=DONE) rec$
    data! = rs!.getEmptyRecordData()
    data!.setFieldValue("ORDER_NUM", str(rec.ORDER_NUM))
    data!.setFieldValue("LINE_NUM", str(rec.LINE_NUM))
    data!.setFieldValue("ITEM_NUM", rec.ITEM_NUM$)
    data!.setFieldValue("QTY_ORDERED", str(rec.QTY_ORDERED))
    data!.setFieldValue("QTY_SHIPPED", str(rec.QTY_SHIPPED))
    data!.setFieldValue("PRICE", str(rec.PRICE))
    data!.setFieldValue("DISC_PCT", str(rec.DISC_PCT))
    data!.setFieldValue("DISC_AMOUNT", str(rec.DISC_AMOUNT))
    data!.setFieldValue("LINE_WEIGHT", str(rec.LINE_WEIGHT))
    rs!.insert(data!)

while 1
    readrecord(chan,err=*BREAK) rec$
    if rec.order_num = x then
        data! = rs!.getEmptyRecordData()
        data!.setFieldValue("ORDER_NUM", str(rec.ORDER_NUM))
        data!.setFieldValue("LINE_NUM", str(rec.LINE_NUM))
        data!.setFieldValue("ITEM_NUM", rec.ITEM_NUM$)
        data!.setFieldValue("QTY_ORDERED", str(rec.QTY_ORDERED))
        data!.setFieldValue("QTY_SHIPPED", str(rec.QTY_SHIPPED))
        data!.setFieldValue("PRICE", str(rec.PRICE))
        data!.setFieldValue("DISC_PCT", str(rec.DISC_PCT))
        data!.setFieldValue("DISC_AMOUNT", str(rec.DISC_AMOUNT))
        data!.setFieldValue("LINE_WEIGHT", str(rec.LINE_WEIGHT))
        rs!.insert(data!)
    else
        break
    endif
wend

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
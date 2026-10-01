-- Report ID : RPT_409
-- Report    : PO Issued Daily
-- Module    : Orders
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select      oh.order_no,     oh.status, \tol.location,     ol.LOC_TYPE,     oh.supplier,     oh.DEPT, \toh.written_date,     oh.CREATE_DATETIME,     oh.not_before_date,     oh.not_after_date, \toh.earliest_ship_date,     oh.latest_ship_date, \toh.close_date \t from     MFCS_RDS.RDS_WV_ordhead oh, \tMFCS_RDS.RDS_WV_ordloc ol where oh.order_no=ol.order_no  and oh.status IN ('A','C') and oh.CREATE_DATETIME = (select trunc(vdate) from MFCS_RDS.RDS_WV_PERIOD) ORDER BY      oh.CREATE_DATETIME
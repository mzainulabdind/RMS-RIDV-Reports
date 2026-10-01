-- Report ID : RPT_004
-- Report    : PO Auto Close Change Order Confirmation
-- Module    : Orders
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select      oh.order_no,     oh.status,     ol.item,     oh.supplier,     oh.DEPT,     ol.location,     ol.LOC_TYPE,     ol.qty_ordered,     ol.qty_received,     ol.QTY_CANCELLED,     ol.CANCEL_DATE,     oh.CREATE_DATETIME,     oh.written_date,     oh.not_after_date,     oh.CLOSE_DATE from     MFCS_RDS.RDS_WV_ordhead oh, \tMFCS_RDS.RDS_WV_ordloc ol where oh.order_no=ol.order_no  and oh.status='C' ORDER BY      oh.written_date
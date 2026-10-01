-- Report ID : RPT_146
-- Report    : Inventory 146
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select      oh.order_no,     oh.status,     ol.item,     oh.loc_type,     oh.location,     ol.qty_ordered,     ol.qty_received,     ol.QTY_CANCELLED,     oh.written_date     from     MFCS_RDS.RDS_WV_ordhead oh, \tMFCS_RDS.RDS_WV_ordloc ol where oh.order_no=ol.order_no  and oh.status='A'
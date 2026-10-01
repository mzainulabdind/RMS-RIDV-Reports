-- Report ID : RPT_401
-- Report    : PO Manual Unit Cost Update
-- Module    : Orders
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     oh.order_no,     oh.status,     oh.supplier,     ol.item,     oh.dept,     ol.location,     ol.loc_type,     ol.unit_cost AS overridden_unit_cost,     ol.unit_cost_init AS initial_unit_cost,     ol.cost_source FROM MFCS_RDS.RDS_WV_ordloc ol, MFCS_RDS.RDS_WV_ordhead oh WHERE ol.cost_source = 'MANL' and ol.order_no = oh.order_no ORDER BY ol.order_no, ol.item, ol.location
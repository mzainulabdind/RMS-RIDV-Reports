-- Report ID : RPT_019
-- Report    : RPT_019
-- Module    : Other
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT      o.ORDER_NO,     O.status,     im.ITEM,     im.ITEM_DESC,     s.SUPPLIER,     s.SUP_NAME,     ol.LOCATION,     ol.LOC_TYPE,     (o.NOT_AFTER_DATE - o.CREATE_DATETIME) AS ACTUAL_LEAD_TIME,     isl.PICKUP_LEAD_TIME AS ITEM_LEAD_TIME,     s.DEFAULT_ITEM_LEAD_TIME AS SUPPLIER_LEAD_TIME,     ((o.NOT_AFTER_DATE - o.CREATE_DATETIME) - isl.PICKUP_LEAD_TIME) AS ITEM_LEAD_TIME_DIFFERENCE,     ((o.NOT_AFTER_DATE - o.CREATE_DATETIME) - s.DEFAULT_ITEM_LEAD_TIME) AS SUPPLIER_LEAD_TIME_DIFFERENCE FROM      mfcs_rds_custom.RDS_WV_ORDHEAD o,      mfcs_rds_custom.RDS_WV_ITEM_MASTER im,      mfcs_rds_custom.RDS_WV_SUPS s,      mfcs_rds_custom.RDS_WV_ORDLOC ol,      mfcs_rds_custom.RDS_WV_ITEM_SUPP_COUNTRY_LOC isl WHERE ol.ITEM = im.ITEM     AND o.SUPPLIER = s.SUPPLIER     AND o.ORDER_NO = ol.ORDER_NO     AND ol.ITEM = isl.ITEM     AND OL.location=isl.loc     AND o.SUPPLIER = isl.SUPPLIER
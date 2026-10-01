-- Report ID : RPT_308
-- Report    : Drop Ship Customer Detail
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     oh.ORDER_NO AS PO_NUMBER,     oh.STATUS AS PO_STATUS,     oh.ORIG_IND AS ORIGIN_INDICATOR,     oh.SUPPLIER AS SUPPLIER_ID,     s.SUP_NAME AS SUPPLIER_NAME,     oh.LOCATION AS CUSTOMER_LOCATION,     oh.LOC_TYPE AS LOCATION_TYPE,     oh.DEPT AS DEPARTMENT,     d.DEPT_NAME AS DEPARTMENT_NAME,     ol.ITEM AS ITEM_ID,     im.ITEM_DESC AS ITEM_DESCRIPTION,     ol.QTY_ORDERED AS QTY_ORDERED,     ol.QTY_RECEIVED AS QTY_RECEIVED,     oh.WRITTEN_DATE AS WRITTEN_DATE,     oh.NOT_BEFORE_DATE AS NOT_BEFORE_DATE,     oh.NOT_AFTER_DATE AS NOT_AFTER_DATE,     oh.ORDER_TYPE AS ORDER_TYPE,     oh.PURCHASE_TYPE AS PURCHASE_TYPE FROM rds_wv_ordhead oh INNER JOIN rds_wv_ordloc ol ON oh.ORDER_NO = ol.ORDER_NO INNER JOIN rds_wv_item_master im ON ol.ITEM = im.ITEM INNER JOIN rds_wv_sups s ON oh.SUPPLIER = s.SUPPLIER LEFT JOIN rds_wv_deps d ON oh.DEPT = d.DEPT WHERE oh.ORIG_IND = 6 AND oh.STATUS IN ('A', 'W')
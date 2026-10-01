-- Report ID : RPT_082
-- Report    : Zero Cost PO
-- Module    : Orders
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT oh.ORDER_NO, oh.STATUS, oh.WRITTEN_DATE, oh.NOT_BEFORE_DATE, oh.NOT_AFTER_DATE,     oh.SUPPLIER, s.SUP_NAME, ol.LOCATION, ol.LOC_TYPE, oh.DEPT, d.DEPT_NAME,     ol.ITEM, im.ITEM_DESC, ol.QTY_ORDERED, ol.QTY_RECEIVED, ol.UNIT_COST,     (ol.QTY_ORDERED * ol.UNIT_COST) AS order_value, oh.CURRENCY_CODE FROM MFCS_RDS.RDS_WV_ORDHEAD oh     JOIN MFCS_RDS.RDS_WV_ORDLOC ol ON oh.ORDER_NO = ol.ORDER_NO     JOIN MFCS_RDS.RDS_WV_ITEM_MASTER im ON ol.ITEM = im.ITEM     JOIN MFCS_RDS.RDS_WV_SUPS s ON oh.SUPPLIER = s.SUPPLIER     LEFT JOIN MFCS_RDS.RDS_WV_DEPS d ON oh.DEPT = d.DEPT WHERE oh.STATUS IN ('A','W') and (ol.QTY_ORDERED * ol.UNIT_COST)=0 ORDER BY oh.WRITTEN_DATE DESC, oh.ORDER_NO, ol.ITEM
-- Report ID : RPT_067
-- Report    : POs Pallet Exceeds Threshold
-- Module    : Orders
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT oh.ORDER_NO, oh.STATUS, oh.SUPPLIER, s.SUP_NAME,     oh.LOCATION, oh.DEPT, d.DEPT_NAME, COUNT(DISTINCT ol.ITEM) AS item_count,     SUM(ol.QTY_ORDERED) AS total_qty,     ROUND(SUM(ol.QTY_ORDERED)/NULLIF(SUM(isc.TI * isc.HI),0),2) AS estimated_pallets FROM MFCS_RDS.RDS_WV_ORDHEAD oh     JOIN MFCS_RDS.RDS_WV_ORDLOC ol ON oh.ORDER_NO = ol.ORDER_NO     JOIN MFCS_RDS.RDS_WV_ITEM_SUPP_COUNTRY isc ON ol.ITEM = isc.ITEM AND oh.SUPPLIER = isc.SUPPLIER     JOIN MFCS_RDS.RDS_WV_SUPS s ON oh.SUPPLIER = s.SUPPLIER     LEFT JOIN MFCS_RDS.RDS_WV_DEPS d ON oh.DEPT = d.DEPT WHERE oh.STATUS IN ('A','W') GROUP BY oh.ORDER_NO, oh.STATUS, oh.SUPPLIER, s.SUP_NAME, oh.LOCATION, oh.DEPT, d.DEPT_NAME HAVING ROUND(SUM(ol.QTY_ORDERED)/NULLIF(SUM(isc.TI*isc.HI),0),2) > 100 ORDER BY estimated_pallets DESC
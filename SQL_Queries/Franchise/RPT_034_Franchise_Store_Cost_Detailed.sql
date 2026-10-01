-- Report ID : RPT_034
-- Report    : Franchise Store Cost Detailed
-- Module    : Franchise
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     isc.ITEM,     im.ITEM_DESC,     im.DEPT,     d.DEPT_NAME,     im.CLASS,     im.SUBCLASS,     isc.SUPPLIER,     s.SUP_NAME,     isc.ORIGIN_COUNTRY_ID,     isc.UNIT_COST,     isc.BASE_COST,     isc.LEAD_TIME,     isc.PRIMARY_SUPP_IND,     il.LOC,     il.LOC_TYPE,     st.STORE_NAME,     st.STORE_TYPE,     il.UNIT_RETAIL,     il.REGULAR_UNIT_RETAIL,     il.STATUS AS ITEM_LOC_STATUS,     il.UNIT_RETAIL - isc.UNIT_COST AS UPCHARGE_AMT,     ROUND((il.UNIT_RETAIL - isc.UNIT_COST) / NULLIF(il.UNIT_RETAIL, 0) * 100, 2) AS UPCHARGE_PCT FROM rds_wv_item_supp_country isc INNER JOIN rds_wv_item_master im ON isc.ITEM = im.ITEM INNER JOIN rds_wv_sups s ON isc.SUPPLIER = s.SUPPLIER INNER JOIN rds_wv_item_loc il ON isc.ITEM = il.ITEM AND il.LOC_TYPE = 'S' INNER JOIN rds_wv_store st ON il.LOC = st.STORE LEFT JOIN rds_wv_deps d ON im.DEPT = d.DEPT WHERE im.STATUS = 'A' AND isc.PRIMARY_SUPP_IND = 'Y' AND st.STORE_TYPE = 'F'
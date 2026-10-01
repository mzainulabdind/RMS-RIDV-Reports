-- Report ID : RPT_027
-- Report    : Gross Profit Margin
-- Module    : Finance
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     isc.ITEM,     im.ITEM_DESC,     im.DEPT,     d.DEPT_NAME,     im.CLASS,     im.SUBCLASS,     isc.SUPPLIER,     s.SUP_NAME,     isc.ORIGIN_COUNTRY_ID,     isc.UNIT_COST,     isc.BASE_COST,     isc.LEAD_TIME,     isc.PRIMARY_SUPP_IND,     il.UNIT_RETAIL,     il.REGULAR_UNIT_RETAIL,     il.LOC,     il.LOC_TYPE,     il.STATUS AS ITEM_LOC_STATUS,     il.UNIT_RETAIL - isc.UNIT_COST AS GROSS_MARGIN_AMT,     ROUND((il.UNIT_RETAIL - isc.UNIT_COST) / NULLIF(il.UNIT_RETAIL, 0) * 100, 2) AS GROSS_MARGIN_PCT,     CASE         WHEN ROUND((il.UNIT_RETAIL - isc.UNIT_COST) / NULLIF(il.UNIT_RETAIL, 0) * 100, 2) >= 40 THEN 'High'         WHEN ROUND((il.UNIT_RETAIL - isc.UNIT_COST) / NULLIF(il.UNIT_RETAIL, 0) * 100, 2) >= 20 THEN 'Medium'         ELSE 'Low'     END AS MARGIN_CATEGORY FROM rds_wv_item_supp_country isc INNER JOIN rds_wv_item_master im ON isc.ITEM = im.ITEM INNER JOIN rds_wv_sups s ON s.SUPPLIER = isc.SUPPLIER INNER JOIN rds_wv_item_loc il ON il.ITEM = isc.ITEM AND il.PRIMARY_SUPP = isc.SUPPLIER LEFT JOIN rds_wv_deps d ON im.DEPT = d.DEPT WHERE im.STATUS = 'A' AND isc.PRIMARY_SUPP_IND = 'Y'
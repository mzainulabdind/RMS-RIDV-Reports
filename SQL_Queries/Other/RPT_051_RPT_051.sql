-- Report ID : RPT_051
-- Report    : RPT_051
-- Module    : Other
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT soh.LOC, soh.LOC_TYPE,     CASE soh.LOC_TYPE WHEN 'S' THEN st.STORE_NAME WHEN 'W' THEN wh.WH_NAME END AS location_name,     soh.ITEM, im.ITEM_DESC, im.DEPT, d.DEPT_NAME, im.CLASS, im.SUBCLASS,     soh.AV_COST AS current_wac, soh.UNIT_COST,     (soh.AV_COST - soh.UNIT_COST) AS wac_variance,     ROUND(((soh.AV_COST - soh.UNIT_COST)/NULLIF(soh.UNIT_COST,0))*100, 4) AS variance_pct,     soh.STOCK_ON_HAND,     ROUND(soh.STOCK_ON_HAND * soh.AV_COST, 2) AS soh_wac_value,     soh.SOH_UPDATE_DATETIME FROM MFCS_RDS.RDS_WV_ITEM_LOC_SOH soh     JOIN MFCS_RDS.RDS_WV_ITEM_MASTER im ON soh.ITEM = im.ITEM     LEFT JOIN MFCS_RDS.RDS_WV_DEPS d ON im.DEPT = d.DEPT     LEFT JOIN MFCS_RDS.RDS_WV_STORE st ON soh.LOC = st.STORE AND soh.LOC_TYPE = 'S'     LEFT JOIN MFCS_RDS.RDS_WV_WH wh ON soh.LOC = wh.WH AND soh.LOC_TYPE = 'W' WHERE soh.STOCK_ON_HAND != 0 AND   ABS(soh.AV_COST - soh.UNIT_COST) > 0.01 ORDER BY ABS(soh.AV_COST - soh.UNIT_COST) DESC
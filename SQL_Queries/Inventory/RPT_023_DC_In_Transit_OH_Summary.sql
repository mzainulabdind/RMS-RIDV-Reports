-- Report ID : RPT_023
-- Report    : DC In Transit OH Summary
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     soh.LOC,     soh.LOC_TYPE,     CASE soh.LOC_TYPE WHEN 'S' THEN st.STORE_NAME WHEN 'W' THEN wh.WH_NAME END AS LOCATION_NAME,     soh.ITEM,     im.ITEM_DESC,     im.DEPT,     d.DEPT_NAME,     im.CLASS,     im.SUBCLASS,     soh.STOCK_ON_HAND,     soh.IN_TRANSIT_QTY,     soh.TSF_EXPECTED_QTY,     soh.STOCK_ON_HAND + soh.IN_TRANSIT_QTY AS TOTAL_AVAILABLE,     soh.AV_COST,     soh.LAST_RECEIVED FROM rds_wv_item_loc_soh soh INNER JOIN rds_wv_item_master im ON soh.ITEM = im.ITEM LEFT JOIN rds_wv_deps d ON im.DEPT = d.DEPT LEFT JOIN rds_wv_store st ON soh.LOC = st.STORE AND soh.LOC_TYPE = 'S' LEFT JOIN rds_wv_wh wh ON soh.LOC = wh.WH AND soh.LOC_TYPE = 'W' WHERE soh.IN_TRANSIT_QTY > 0
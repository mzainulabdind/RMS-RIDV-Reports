-- Report ID : RPT_066
-- Report    : Items Not on Repl with Stock On Hand
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     soh.ITEM,     im.ITEM_DESC,     im.DEPT,     d.DEPT_NAME,     soh.LOC,     soh.LOC_TYPE,     CASE soh.LOC_TYPE WHEN 'S' THEN st.STORE_NAME WHEN 'W' THEN wh.WH_NAME END AS LOCATION_NAME,     soh.STOCK_ON_HAND,     soh.IN_TRANSIT_QTY,     soh.LAST_SOLD FROM rds_wv_item_loc_soh soh INNER JOIN rds_wv_item_master im ON soh.ITEM = im.ITEM LEFT JOIN rds_wv_deps d ON im.DEPT = d.DEPT LEFT JOIN rds_wv_store st ON soh.LOC = st.STORE AND soh.LOC_TYPE = 'S' LEFT JOIN rds_wv_wh wh ON soh.LOC = wh.WH AND soh.LOC_TYPE = 'W' WHERE soh.STOCK_ON_HAND > 0 AND NOT EXISTS (     SELECT 1 FROM rds_wv_repl_item_loc ril     WHERE ril.ITEM = soh.ITEM     AND ril.LOCATION = soh.LOC     AND ril.STATUS = 'A' )
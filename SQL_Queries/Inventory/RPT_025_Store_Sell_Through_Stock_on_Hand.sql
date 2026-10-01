-- Report ID : RPT_025
-- Report    : Store Sell Through Stock on Hand
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     soh.LOC,     st.STORE_NAME,     soh.ITEM,     im.ITEM_DESC,     im.DEPT,     d.DEPT_NAME,     im.CLASS,     im.SUBCLASS,     soh.STOCK_ON_HAND,     soh.QTY_SOLD,     soh.QTY_RECEIVED,     ROUND(soh.QTY_SOLD / NULLIF(soh.QTY_RECEIVED, 0) * 100, 2) AS SELL_THROUGH_PCT,     soh.LAST_SOLD FROM rds_wv_item_loc_soh soh INNER JOIN rds_wv_item_master im ON soh.ITEM = im.ITEM LEFT JOIN rds_wv_deps d ON im.DEPT = d.DEPT LEFT JOIN rds_wv_store st ON soh.LOC = st.STORE WHERE soh.LOC_TYPE = 'S' AND soh.QTY_RECEIVED > 0
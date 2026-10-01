-- Report ID : RPT_065
-- Report    : Scratch Quantity Previous Day
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     ia.ADJ_DATE,     ia.LOCATION,     ia.LOC_TYPE,     CASE ia.LOC_TYPE WHEN 'S' THEN st.STORE_NAME WHEN 'W' THEN wh.WH_NAME END AS LOCATION_NAME,     ia.ITEM,     im.ITEM_DESC,     im.DEPT,     d.DEPT_NAME,     im.CLASS,     im.SUBCLASS,     ia.REASON AS REASON_CODE,     rt.REASON_DESC,     ia.PREV_QTY,     ia.ADJ_QTY,     ia.PREV_QTY + ia.ADJ_QTY AS QTY_AFTER,     ia.USER_ID,     ia.CREATE_DATETIME,     ia.COMMENTS FROM rds_wv_inv_adj ia INNER JOIN rds_wv_item_master im ON ia.ITEM = im.ITEM LEFT JOIN rds_wv_deps d ON im.DEPT = d.DEPT LEFT JOIN rds_wv_inv_adj_reason_tl rt ON ia.REASON = rt.REASON AND rt.LANG = 1 LEFT JOIN rds_wv_store st ON ia.LOCATION = st.STORE AND ia.LOC_TYPE = 'S' LEFT JOIN rds_wv_wh wh ON ia.LOCATION = wh.WH AND ia.LOC_TYPE = 'W' WHERE ia.ADJ_DATE >= ADD_MONTHS(SYSDATE, -1)
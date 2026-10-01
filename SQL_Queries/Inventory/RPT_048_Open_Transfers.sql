-- Report ID : RPT_048
-- Report    : Open Transfers
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     th.TSF_NO,     th.STATUS,     th.TSF_TYPE,     th.FROM_LOC,     th.FROM_LOC_TYPE,     CASE th.FROM_LOC_TYPE WHEN 'S' THEN stf.STORE_NAME WHEN 'W' THEN whf.WH_NAME END AS FROM_LOC_NAME,     th.TO_LOC,     th.TO_LOC_TYPE,     CASE th.TO_LOC_TYPE WHEN 'S' THEN stt.STORE_NAME WHEN 'W' THEN wht.WH_NAME END AS TO_LOC_NAME,     th.CREATE_DATE,     th.APPROVAL_DATE,     th.EXP_DC_DATE,     th.DELIVERY_DATE,     td.ITEM,     im.ITEM_DESC,     im.DEPT,     d.DEPT_NAME,     td.TSF_QTY,     td.SHIP_QTY,     td.RECEIVED_QTY,     td.SHIP_QTY - td.RECEIVED_QTY AS OUTSTANDING_QTY,     td.TSF_COST FROM rds_wv_tsfhead th INNER JOIN rds_wv_tsfdetail td ON th.TSF_NO = td.TSF_NO INNER JOIN rds_wv_item_master im ON td.ITEM = im.ITEM LEFT JOIN rds_wv_deps d ON im.DEPT = d.DEPT LEFT JOIN rds_wv_store stf ON th.FROM_LOC = stf.STORE AND th.FROM_LOC_TYPE = 'S' LEFT JOIN rds_wv_wh whf ON th.FROM_LOC = whf.WH AND th.FROM_LOC_TYPE = 'W' LEFT JOIN rds_wv_store stt ON th.TO_LOC = stt.STORE AND th.TO_LOC_TYPE = 'S' LEFT JOIN rds_wv_wh wht ON th.TO_LOC = wht.WH AND th.TO_LOC_TYPE = 'W' WHERE th.STATUS NOT IN ('C', 'D')
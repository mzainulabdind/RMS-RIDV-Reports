-- Report ID : RPT_041
-- Report    : Deactivated Item Loc Status
-- Module    : Items
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     il.ITEM,     im.ITEM_DESC,     il.LOC,     il.LOC_TYPE,     il.STATUS,     ils.STOCK_ON_HAND,     il.PRIMARY_SUPP,     il.STATUS_UPDATE_DATE,     il.LAST_UPDATE_DATETIME AS deactivated_date,     il.LAST_UPDATE_ID FROM MFCS_RDS.RDS_WV_ITEM_LOC il JOIN MFCS_RDS.RDS_WV_ITEM_MASTER im     ON il.ITEM = im.ITEM JOIN MFCS_RDS.RDS_WV_ITEM_LOC_SOH ils     ON ils.ITEM = il.ITEM    AND ils.LOC = il.LOC WHERE il.STATUS IN ('I', 'D') ORDER BY il.LAST_UPDATE_DATETIME DESC
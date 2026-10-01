-- Report ID : RPT_540
-- Report    : Future Cost Change
-- Module    : Price
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     fc.ITEM,     im.ITEM_DESC,     im.STATUS AS ITEM_STATUS,     fc.DEPT,     fc.CLASS,     fc.SUBCLASS,     fc.SUPPLIER,     s.SUP_NAME AS SUPPLIER_NAME,     fc.ORIGIN_COUNTRY_ID,     fc.LOCATION,     fc.LOC_TYPE,     fc.CURRENCY_CODE,     fc.ACTIVE_DATE,     fc.CALC_DATE,     fc.BASE_COST,     fc.NET_COST,     fc.NET_NET_COST,     fc.DEAD_NET_NET_COST,     fc.PRICING_COST,     fc.ELC_AMT,     fc.NEGOTIATED_ITEM_COST,     fc.EXTENDED_BASE_COST,     fc.COST_CHANGE,     fc.START_IND,     fc.SIMPLE_PACK_IND,     fc.PRIMARY_COST_PACK,     fc.PRIMARY_COST_PACK_QTY,     fc.PASSTHRU_PCT,     fc.PRIMARY_SUPP_COUNTRY_IND,     CASE         WHEN fc.COST_CHANGE > 0 THEN 'Cost Increase'         WHEN fc.COST_CHANGE < 0 THEN 'Cost Decrease'         WHEN fc.COST_CHANGE = 0 THEN 'No Change'         ELSE 'Unknown'     END AS COST_CHANGE_DIRECTION FROM rds_wv_future_cost fc INNER JOIN rds_wv_item_master im ON im.ITEM = fc.ITEM INNER JOIN rds_wv_sups s ON s.SUPPLIER = fc.SUPPLIER WHERE fc.ACTIVE_DATE >= SYSDATE
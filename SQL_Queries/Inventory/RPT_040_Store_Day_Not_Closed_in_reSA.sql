-- Report ID : RPT_040
-- Report    : Store Day Not Closed in reSA
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     sd.STORE,     st.STORE_NAME,     sd.BUSINESS_DATE,     sd.STORE_STATUS,     sd.DATA_STATUS,     sd.AUDIT_STATUS,     sd.AUTO_CLOSED,     sd.TRANSACTIONS_LOADED,     sd.STORE_CLOSED_DATETIME FROM rds_wv_sa_store_day sd INNER JOIN rds_wv_store st ON sd.STORE = st.STORE WHERE sd.BUSINESS_DATE = TRUNC(SYSDATE - 1) AND sd.STORE_STATUS != 'C'
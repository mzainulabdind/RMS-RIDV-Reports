-- Report ID : RPT_071
-- Report    : POs Received Daily
-- Module    : Orders
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select count(sh.order_no),sk.item,tdh.tran_date from rds_wv_shipment sh, rds_wv_shipsku sk, rds_wv_tran_data_history tdh where sh.shipment=sk.shipment and sh.shipment=tdh.ref_no_2 and sh.order_no is not null and sk.item= nvl(tdh.ref_pack_no,tdh.item) and tdh.tran_code=20 group by sk.item,tdh.tran_date
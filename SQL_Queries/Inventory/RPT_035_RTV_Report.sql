-- Report ID : RPT_035
-- Report    : RTV Report
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select rh.rtv_order_no,rh.supplier,rh.store,rh.status_ind,rh.wh,rv.item,rv.qty_requested, rv.qty_returned,rv.qty_cancelled from rds_wv_rtv_head rh, rds_wv_rtv_detail rv where rh.rtv_order_no=rv.rtv_order_no and rh.status_ind < 15
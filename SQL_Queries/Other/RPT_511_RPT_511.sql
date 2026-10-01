-- Report ID : RPT_511
-- Report    : RPT_511
-- Module    : Other
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select sum(units),nvl(ref_pack_no,item),location,loc_type,tran_date from rds_wv_tran_data_history where tran_code =1 group by nvl(ref_pack_no,item),location,loc_type,tran_date
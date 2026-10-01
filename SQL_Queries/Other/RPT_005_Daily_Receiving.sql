-- Report ID : RPT_005
-- Report    : Daily Receiving
-- Module    : Other
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select nvl(ref_pack_no,item),location,loc_type,units,total_cost,ref_no_1 from rds_wv_tran_data_history  where tran_code=20
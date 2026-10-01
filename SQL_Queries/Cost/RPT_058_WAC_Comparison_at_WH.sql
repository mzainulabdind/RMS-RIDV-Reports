-- Report ID : RPT_058
-- Report    : WAC Comparison at WH
-- Module    : Cost
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select  * from MFCS_RDS.RDS_WV_item_loc_soh ils where  av_cost>0 and  loc in (SELECT distinct wh.wh FROM MFCS_RDS.RDS_WV_wh wh join MFCS_RDS.RDS_WV_wh_cfa_ext whc  on wh.physical_wh = whc.wh join MFCS_RDS.RDS_WV_cfa_attrib att on att.group_id = whc.group_id AND wh.primary_vwh is null)
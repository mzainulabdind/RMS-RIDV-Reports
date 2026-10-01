-- Report ID : RPT_506
-- Report    : Item Master Listing
-- Module    : Foundation
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select im.item, im. item_parent, im.item_grandparent,im.item_desc,d.dept,d.dept_name,c.class,c.class_name  ,sc.subclass, sc.sub_name,isc.supplier,isc.unit_cost  from rds_wv_item_master im ,rds_wv_deps d ,rds_wv_class c ,rds_wv_subclass Sc ,rds_wv_item_supp_country isc where im.dept=d.dept and im.class=c.class and im.dept=c.dept and im.subclass=sc.subclass and im.dept=sc.dept and im.class=sc.class and im.item_level=im.tran_level and im.item=isc.item and isc.primary_supp_ind='Y'
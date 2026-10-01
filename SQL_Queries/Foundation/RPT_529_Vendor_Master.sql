-- Report ID : RPT_529
-- Report    : Vendor Master
-- Module    : Foundation
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select s1.supplier,s1.sup_name,s2.sup_name as supplier_site_name, s2.supplier as supplier_site,s2.contact_name,s2.contact_phone,s2.terms,s2.freight_terms,s2.ship_method ,s2.duns_number,ad.addr_type,ad.add_1,ad.city,ad.state,ad.country_id,sm.sup_trait,(select st.description from rds_wv_sup_traits st where st.sup_trait=sm.sup_trait) from rds_wv_sups s1, rds_wv_sups s2, rds_wv_addr ad,rds_wv_sup_traits_matrix sm where s1.supplier=s2.supplier_parent and s2.supplier=ad.key_value_1 and ad.module='SUPP' and ADDR_TYPE='04' and s2.supplier=sm.supplier(+)
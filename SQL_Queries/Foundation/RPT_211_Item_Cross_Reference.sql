-- Report ID : RPT_211
-- Report    : Item Cross Reference
-- Module    : Foundation
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     imc.ITEM AS CASE_GTIN,     imc.ITEM_DESC AS CASE_GTIN_DESCRIPTION,     im1.ITEM AS CONSUMER_GTIN,     im1.ITEM_DESC AS CONSUMER_GTIN_DESCRIPTION,     pki.PACK_NO AS RMS_PACK,     im_pack.ITEM_DESC AS RMS_PACK_DESCRIPTION,     NULL AS SHIPPER_FLAG,     SUM(pki.PACK_QTY) OVER (PARTITION BY pki.PACK_NO) AS TOTAL_COMPONENT_QTY_FOR_PACK,     im.ITEM AS RMS_COMPONENT,     im.ITEM_DESC AS RMS_COMPONENT_DESCRIPTION,     pki.PACK_QTY AS COMPONENT_QTY FROM rds_wv_packitem pki INNER JOIN rds_wv_item_master im ON im.ITEM = pki.ITEM INNER JOIN rds_wv_item_master im_pack ON im_pack.ITEM = pki.PACK_NO INNER JOIN rds_wv_item_master im1 ON im1.ITEM_PARENT = im.ITEM AND im1.PRIMARY_REF_ITEM_IND = 'Y' INNER JOIN rds_wv_item_master imc ON imc.ITEM_PARENT = pki.PACK_NO AND imc.PRIMARY_REF_ITEM_IND = 'Y'
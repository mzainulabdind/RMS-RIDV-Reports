-- Report ID : RPT_158
-- Report    : View Line Items on Receipts
-- Module    : Finance
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

select sh.shipment,sk.item, Nvl(sh.order_no,sk.distro_no) as order_transfer_no, (select item_desc from rds_wv_item_master im where im.item=sk.item) as item_desc,sk.unit_cost,(sk.unit_cost*sk.qty_received) as total_cost, sk.qty_received, sk.qty_expected from rds_wv_shipsku sk,rds_wv_shipment sh where sh.shipment=sk.shipment
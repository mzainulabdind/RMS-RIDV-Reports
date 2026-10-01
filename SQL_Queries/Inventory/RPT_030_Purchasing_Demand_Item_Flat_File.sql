-- Report ID : RPT_030
-- Report    : Purchasing Demand Item Flat File
-- Module    : Inventory
-- Source    : Oracle RMS / MFCS RDS Views
-- Generated : Extracted from DVA file
--------------------------------------------------------------------------------

SELECT     im.ITEM,     im.ITEM_DESC,     im.STATUS,     im.DEPT,     d.DEPT_NAME,     im.CLASS,     c.CLASS_NAME,     im.SUBCLASS,     sc.SUB_NAME,     im.PACK_IND,     im.STANDARD_UOM,     im.CREATE_DATETIME,     im.LAST_UPDATE_DATETIME FROM rds_wv_item_master im INNER JOIN rds_wv_deps d ON im.DEPT = d.DEPT INNER JOIN rds_wv_class c ON im.DEPT = c.DEPT AND im.CLASS = c.CLASS INNER JOIN rds_wv_subclass sc ON im.DEPT = sc.DEPT AND im.CLASS = sc.CLASS AND im.SUBCLASS = sc.SUBCLASS WHERE im.STATUS = 'A'
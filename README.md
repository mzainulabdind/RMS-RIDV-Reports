# RMS RIDV Reports — Oracle Retail Data Visualisation

This repository contains Oracle RMS report assets for the RMS RIDV Program.
Each report has a **DVA file** (OAC workbook) and, where available, the extracted **SQL query**.

## Folder Structure

```
SQL_Queries/
  <Module>/
    RPT_XXX_Report_Name.sql   ← Ready-to-run SQL query

DVA_Files/
  <Module>/
    RPT_XXX_Report_Name.dva   ← OAC Data Visualisation workbook
```

## Modules

| Module | DVA Files | SQL Files |
|--------|-----------|-----------|
| Cost | 1 | 1 |
| Deal | 2 | 2 |
| Finance | 7 | 7 |
| Foundation | 6 | 5 |
| Franchise | 1 | 1 |
| Inventory | 15 | 14 |
| Items | 2 | 2 |
| Orders | 13 | 7 |
| Price | 2 | 2 |
| Replenishment | 13 | 12 |

**Total:** 76 DVA files · 65 SQL queries

## How to Use

### Download a SQL file
1. Browse to `SQL_Queries/<Module>/`
2. Click the `.sql` file
3. Click **Download** (top right) or copy the contents
4. Paste into your SQL editor (Toad, DBeaver, SQL Developer, etc.) and run

### Download a DVA file
1. Browse to `DVA_Files/<Module>/`
2. Click the `.dva` file
3. Click **Download**
4. Import into Oracle Analytics Cloud (OAC) via **Import Workbook**

## Contact
Maintained by the RMS RIDV Delivery Team · Deloitte
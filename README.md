# RMS RIDV Reports — Oracle Retail Data Visualisation

Oracle Retail Merchandising System (RMS) report assets for the RIDV Program — includes OAC Data Visualisation workbooks (.dva) and extracted SQL queries, organised by functional module (Foundation, Orders, Finance, Replenishment, etc.)

---

## Repository Structure

```
RMS-RIDV-Reports/
│
├── README.md
│
├── SQL_Queries/                        (65 SQL files total)
│   ├── Finance/                        (7  .sql files)
│   ├── Inventory/                      (14 .sql files)
│   ├── Replenishment/                  (12 .sql files)
│   ├── Orders/                         (7  .sql files)
│   ├── Foundation/                     (5  .sql files)
│   ├── Items/                          (2  .sql files)
│   ├── Deal/                           (2  .sql files)
│   ├── Price/                          (2  .sql files)
│   ├── Cost/                           (1  .sql file)
│   ├── Franchise/                      (1  .sql file)
│   └── Other/                          (12 .sql files)
│
└── DVA_Files/                          (76 DVA files total)
    ├── Inventory/                      (15 .dva files)
    ├── Orders/                         (13 .dva files)
    ├── Replenishment/                  (13 .dva files)
    ├── Finance/                        (7  .dva files)
    ├── Foundation/                     (6  .dva files)
    ├── Deal/                           (2  .dva files)
    ├── Items/                          (2  .dva files)
    ├── Price/                          (2  .dva files)
    ├── Cost/                           (1  .dva file)
    ├── Franchise/                      (1  .dva file)
    └── Other/                          (14 .dva files)
```

---

## Module Summary

| Module        | DVA Files | SQL Files |
|---------------|:---------:|:---------:|
| Inventory     | 15        | 14        |
| Orders        | 13        | 7         |
| Replenishment | 13        | 12        |
| Finance       | 7         | 7         |
| Foundation    | 6         | 5         |
| Other         | 14        | 12        |
| Deal          | 2         | 2         |
| Items         | 2         | 2         |
| Price         | 2         | 2         |
| Cost          | 1         | 1         |
| Franchise     | 1         | 1         |
| **Total**     | **76**    | **65**    |

---

## How to Use

### Download and run a SQL file
1. Browse to `SQL_Queries/<Module>/`
2. Click the `.sql` file you need
3. Click **Download** (top right) or copy the contents directly
4. Paste into your SQL editor (Toad, DBeaver, SQL Developer, etc.) and run

> Each SQL file includes a header comment with the Report ID, report name, module, and data source for quick reference.

### Download a DVA file (OAC workbook)
1. Browse to `DVA_Files/<Module>/`
2. Click the `.dva` file
3. Click **Download**
4. In Oracle Analytics Cloud, go to **Navigator → Import Workbook** and select the file

---

## File Naming Convention

All files follow the pattern:

```
RPT_XXX_Report_Name.sql
RPT_XXX_Report_Name.dva
```

Where `RPT_XXX` is the unique Report ID used across the RMS RIDV program documentation.

---

## Contact

Maintained by the RMS RIDV Delivery Team · Deloitte

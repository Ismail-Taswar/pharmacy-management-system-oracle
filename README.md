# Pharmacy Management System (Oracle Forms & Reports)

A pharmacy management system built as a university course project.
Manages medicines (category/type/unit), customers, sales
representatives, expenses, employees, and role-based users.

## Tech Stack

- **Oracle Forms Builder** (10g/11g) — data-entry modules (`.fmb` sources + `.fmx` runtime)
- **Oracle Database** — schema via SQL table scripts (no Reports modules were built for this project)

## Modules

| Area | Forms |
|------|-------|
| Medicines | MEDICINE_CATEGORY, MEDICINE_TYPE, MEDICINE_UNIT |
| Sales | SALES_MD, CUSTOMER, REPRESENTIVE |
| Finance | EXPENSE_MD, EXPENSE_TYPE |
| HR | DEPARTMENT, DESIGNATION, EMPLOYEE |
| System | LOGIN, HOMPAGE, USERNAME, USER_TYPE, USER_STATUS |

## Repository Layout

```
Forms/             .fmb sources + .fmx runtime modules
Menu/              Forms menu (.mmb/.mmx)
Object_Libraries/  shared Forms object library (.olb)
Documents/         ERD (xlsx), pharmacy + common table scripts
```

## How to Run

1. Create a schema in Oracle DB and run `Documents/table_script_pharmacy.sql`
   (complete schema), then `Documents/Table_Script_ph.sql`
   (sample business data). `Documents/Table_script_Common_table_Ph.sql`
   is an older subset kept for reference.
2. Run `Documents/seed_default_user.sql` to create the first login user
   (default `admin` / `admin`) — the table scripts contain no users.
3. Open `.fmb` files in Oracle Forms Builder, connect to the schema, compile,
   and run through the Forms runtime.

## Author

Ismail Taswar ([@Ismail-Taswar](https://github.com/Ismail-Taswar)) — educational project.

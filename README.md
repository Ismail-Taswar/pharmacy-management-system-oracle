# Pharmacy Management System (Oracle Forms & Reports)

A pharmacy management system built as a university course project.
Manages medicines (category/type/unit), customers, sales
representatives, expenses, employees, and role-based users.

## Tech Stack

- **Oracle Forms Builder** (10g/11g) — data-entry modules (`.fmb` sources + `.fmx` runtime)
- **Oracle Reports Builder** — printable reports
- **Oracle Database** — schema via SQL table scripts

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

1. Create a schema in Oracle DB and run the table scripts under `Documents/`.
2. Open `.fmb` files in Oracle Forms Builder, connect to the schema, compile,
   and run through the Forms runtime.

## Author

Ismail Taswar ([@Ismail-Taswar](https://github.com/Ismail-Taswar)) — educational project.

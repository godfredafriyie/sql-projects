# sql-projects
Oracle SQL portfolio showcasing database design, data governance, and access control for enterprise project environments.

# SQL Projects for Technical Project Management

This repository demonstrates how I apply **Oracle SQL** to build, secure, and manage enterprise-grade data systems that support project governance, reporting, and compliance.

Each script aligns with real-world project management needs — from creating structured data models to implementing row-level security and separation-of-duty policies.

---

## Projects Overview

| File | Focus | PM Relevance | SQL Concepts |
|------|--------|--------------|---------------|
| `student_accounts.sql` | Student records management | Demonstrates structured data creation, updates, and controlled modifications | `CREATE TABLE`, `INSERT`, `UPDATE`, `SELECT` |
| `enterprise_employees.sql` | Enterprise employee data system | Models HR and IT data for reporting and role-based access | `PRIMARY KEY`, `FOREIGN KEY`, `GRANT`, `ROLE` |
| `separated_employees_view.sql` | Employee separation tracking | Enables stakeholder visibility into workforce exits for audits | `CREATE VIEW`, `WHERE`, `GRANT` |
| `vpd_policy_demo.sql` | Virtual Private Database (VPD) policy example | Implements data privacy rules for multi-department environments | `DBMS_RLS`, `CONTEXT`, `TRIGGER`, `FUNCTION` |

---

## Technical Focus
- Oracle Database Design (DDL & DML)
- Role-based Access Control (RBAC)
- Views for secure reporting
- Row-Level Security (VPD)
- Policy enforcement for compliance

---

## PM Takeaway
These SQL projects show how I bridge **data governance** with **project delivery** — ensuring systems are secure, auditable, and adaptable to organizational policies.  
This reflects the mindset of a **Technical Project Manager** who not only leads teams but also understands how underlying data models support project success.

---

## How to Run
Each file can be executed in Oracle SQL Developer, SQL*Plus, or Autonomous Database using:
```sql
@filename.sql

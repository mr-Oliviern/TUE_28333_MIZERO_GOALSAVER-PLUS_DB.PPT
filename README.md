# TUE_28333_MIZERO_GOALSAVER-PLUS_DB.PPT
 ## 📌 Project Overview

GoalSaver Plus is a Savings & Loan Management Information System (MIS) built using Oracle Database + PL/SQL.
It supports member savings accounts, loan applications, repayments, transaction monitoring, and business intelligence analytics.

This project follows 8 structured phases, covering full system development from problem definition to BI dashboards and final documentation.

 ## 🎯 Problem Summary

Many savings groups and cooperative financial institutions manually track savings, loans, and repayments, causing errors, delays, and lack of transparency.
GoalSaver Plus solves this by providing a centralized, reliable, audit-ready PL/SQL system with BI capabilities.

## 📌 Project Overview
GoalSaver Plus is a database-driven savings and loan management system designed to help members
save money over time and access loans to achieve future financial goals.  
The system enforces strong business rules, auditing, and compliance using **Oracle SQL and PL/SQL**
and provides **Business Intelligence (BI)** capabilities for decision-making.

---

## 🎯 Project Objectives
- Enable secure member savings and loan management
- Enforce business rules using PL/SQL triggers
- Maintain a complete and immutable audit trail
- Support management decisions using BI dashboards and KPIs
- Ensure compliance with operational and security policies

## 🏗️ System Architecture
The system follows a layered architecture:
- **Database Layer**: Oracle SQL & PL/SQL
- **Business Logic Layer**: Triggers, constraints, procedures
- **Audit & Security Layer**: Central audit logging and restrictions
- **BI Layer**: KPIs, reports, and dashboards

---

---

## 🧩 Core Database Components

### Key Tables
- `MEMBER` – Stores member details
- `ACCOUNT` – Manages savings accounts
- `ACCOUNT_TRANSACTION` – Deposits and withdrawals
- `LOAN` – Loan requests and approvals
- `PUBLIC_HOLIDAYS` – Restricted operation dates
- `AUDIT_LOG` – Central audit trail

### 📷 ER Diagram 

![ER-DIAGRAM](https://github.com/user-attachments/assets/cdcd7795-5abc-4fc0-85db-63a6320a8ec7)


---

## ⚙️ Advanced Programming (Phase VII)

Phase VII focuses on **Advanced PL/SQL Programming and Auditing**.

### Implemented Features:
- Loan validation trigger (minimum savings rule)
- Transaction restriction on weekdays and public holidays
- Automatic account balance updates
- Prevention of negative balances
- Centralized audit logging for all operations
- Logging of both **successful and failed** actions
- Protection of audit data from modification

###  Trigger Flow Diagram 


<img width="1919" height="1079" alt="Screenshot 2025-12-21 113648" src="https://github.com/user-attachments/assets/08157036-4367-4a45-b314-77c210c53acf" />


---

## 🔐 Auditing & Security
The system maintains a **central, immutable audit log** that records:
- Database user (`USER_ID`)
- Action type (INSERT / UPDATE / DELETE)
- Affected table and record
- Timestamp
- Operation status (SUCCESS / FAILED)

Audit records **cannot be updated or deleted**, ensuring full accountability.

### 📷 Audit Log 

<img width="957" height="539" alt="image" src="https://github.com/user-attachments/assets/b30771d6-8afe-49a3-bed9-f92377dc1035" />


---

## 📊 Business Intelligence (BI)

The BI layer transforms operational data into insights for management and auditors.

### BI Capabilities:
- Savings trends and growth analysis
- Loan performance and risk evaluation
- Compliance and audit monitoring
- User activity analysis

### Key Dashboards:
1. Savings Overview Dashboard  
2. Loan Management Dashboard  
3. Compliance & Audit Dashboard  
4. Executive Summary Dashboard  

### 📷 BI Dashboard Screenshots 

<img width="1280" height="672" alt="EXECUTIVE_SUMMARY" 
src="https://github.com/user-attachments/assets/7e974065-4c12-4d44-b1ee-84319ed77a5b" />


<img width="1280" height="672" alt="audit_log" src="https://github.com/user-attachments/assets/82bb2cd5-cd3b-4fa6-a60f-90ba2ff7fa0f" />


<img width="1280" height="672" alt="performance KPI" src="https://github.com/user-attachments/assets/0886888f-c33d-4974-a52c-b38e1f5340cc" />






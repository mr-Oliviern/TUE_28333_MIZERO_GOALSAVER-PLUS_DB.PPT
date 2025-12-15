# 📘 PHASE II — Business Process Modeling  
## Project: GoalSaver Plus

---

## 1. Scope Definition

### Business Process Modeled
**Savings Deposit, Validation, Interest Application & Loan Eligibility Recommendation**

### Scope Description
This business process represents how GoalSaver Plus handles customer savings transactions—from the deposit request, validation, recording, and balance update, to the automated interest calculation and loan eligibility recommendation generation.

### MIS Relevance
This process supports financial data management, automated decision-making, transaction accuracy, and BI-driven insights, which are core MIS components.

### Objectives
- Accurately record validated savings deposits  
- Automate interest calculation based on saving duration  
- Provide consistent and transparent eligibility recommendations  
- Ensure proper financial reporting and decision support  

### Expected Outcomes
- Updated savings ledger and balance  
- Interest applied periodically  
- Eligibility recommendation generated  
- BI insights available for the Finance Manager  

---

## 2. Key Entities & Roles

| Entity / User | Role & Responsibility |
|--------------|----------------------|
| **Customer** | Initiates savings deposit |
| **Automated PL/SQL System** | Validates transactions, updates ledger and balance, calculates interest, evaluates eligibility |
| **System Administrator** | Maintains system rules, interest rates, and eligibility configurations; reviews system logs |
| **Finance Manager** | Reviews BI reports, monitors interest payouts, and analyzes eligibility patterns |

### Systems & Data Sources
- Customer Accounts Table  
- Savings Ledger  
- Interest Calculation Scheduler / Trigger  
- Loan Eligibility Rules Engine  
- BI Reporting Module  

---

## 3. Swimlane BPMN Process Description

### Lane 1 — Customer
1. **Start Event:** Customer initiates savings deposit  
2. Submit deposit request  

---

### Lane 2 — Automated PL/SQL System
3. Receive deposit data  
4. **Decision Gateway:** Validate deposit  
   - If **invalid** → Notify “Deposit Rejected” → **End**  
   - If **valid** → Continue  
5. Record deposit in savings ledger  
6. Update account balance  
7. Scheduled interest calculation process runs  
8. Apply interest based on saving duration rules  
9. Recalculate updated balance  
10. Evaluate customer loan eligibility using rules engine  
11. Generate recommendation report  

---

### Lane 3 — System Administrator
12. Monitor system logs and status  
13. Update interest rates, saving rules, and eligibility formulas  
14. Approve or modify system configuration updates  

---

### Lane 4 — Finance Manager
15. Review system-generated recommendations  
16. Analyze BI reports on savings and interest trends  
17. **End Event:** Financial summary completed  

---

## 4. Logical Flow & Decision Points
- Customer triggers the process → System validates deposit → Decision: valid or invalid  
- Valid deposits update the ledger and customer balance  
- Interest calculation depends on:  
  - saving duration  
  - system-defined interest rules  
- Loan eligibility depends on:  
  - savings amount  
  - saving consistency  
  - interest growth  
- Output is forwarded to the Finance Manager for BI review  

---

## 5. One-Page Explanation (Summary)

**GoalSaver Plus – Phase II: Business Process Modeling**

This phase models the savings deposit and interest workflow within GoalSaver Plus. The process begins when a customer submits a deposit, which is validated by the Automated PL/SQL System. Valid deposits are recorded in the savings ledger and used to update the customer’s balance. A scheduled process applies interest based on saving duration and predefined system rules. After interest posting, the system automatically evaluates the customer’s loan eligibility.

The System Administrator manages configurations such as interest rates and eligibility rules, while the Finance Manager reviews BI dashboards showing interest payouts, saving patterns, and eligibility insights. This business process supports MIS functions including automation, accuracy, decision support, and analytics. It also provides BI opportunities such as trend analysis, customer segmentation, performance evaluation, and financial policy optimization.

---

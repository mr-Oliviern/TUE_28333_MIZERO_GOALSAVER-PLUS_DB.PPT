# PHASE III – Logical Model Design 
 # GoalSaver Plus – Savings & Loan Management System
## 📌 1. Entity-Relationship Model (Logical 3NF)

This ER model represents the core business processes: member management, savings, loans, transactions, repayments, and goals.

 ## 1.1 Entities & Attributes (with Data Types, PKs, FKs)
 ### 1. MEMBER


| Field      | Type          | Constraint                              |
| ---------- | ------------- | --------------------------------------- |
| MEMBER_ID  | NUMBER(10)    | **PK**                                  |
| MEMBER_NO  | VARCHAR2(20)  | UNIQUE, NOT NULL                        |
| FIRST_NAME | VARCHAR2(100) | NOT NULL                                |
| LAST_NAME  | VARCHAR2(100) | NOT NULL                                |
| DOB        | DATE          | -                                       |
| GENDER     | VARCHAR2(10)  | CHECK (‘M’, ‘F’)               |
| PHONE      | VARCHAR2(20)  | -                                       |
| EMAIL      | VARCHAR2(150) | -                                       |
| JOIN_DATE  | DATE          | DEFAULT SYSDATE                         |
| BRANCH_ID  | NUMBER(6)     | **FK → BRANCH.BRANCH_ID**               |
| STATUS     | VARCHAR2(20)  | CHECK (‘ACTIVE’, ‘SUSPENDED’, ‘CLOSED’) |



2. BRANCH



| Field       | Type          | Constraint |
| ----------- | ------------- | ---------- |
| BRANCH_ID   | NUMBER(6)     | **PK**     |
| BRANCH_CODE | VARCHAR2(20)  | UNIQUE     |
| NAME        | VARCHAR2(150) | NOT NULL   |
| ADDRESS     | VARCHAR2(250) | -          |
| PHONE       | VARCHAR2(20)  | -          |



3. EMPLOYEE



| Field       | Type          | Constraint       |
| ----------- | ------------- | ---------------- |
| EMPLOYEE_ID | NUMBER(8)     | **PK**           |
| EMP_NO      | VARCHAR2(20)  | UNIQUE           |
| FIRST_NAME  | VARCHAR2(100) | NOT NULL         |
| LAST_NAME   | VARCHAR2(100) | NOT NULL         |
| ROLE        | VARCHAR2(50)  | NOT NULL         |
| BRANCH_ID   | NUMBER(6)     | **FK → BRANCH**  |
| HIRE_DATE   | DATE          | -                |
| STATUS      | VARCHAR2(20)  | DEFAULT 'ACTIVE' |



4. ACCOUNT



| Field        | Type         | Constraint                         |
| ------------ | ------------ | ---------------------------------- |
| ACCOUNT_ID   | NUMBER(12)   | **PK**                             |
| ACCOUNT_NO   | VARCHAR2(30) | UNIQUE, NOT NULL                   |
| MEMBER_ID    | NUMBER(10)   | **FK → MEMBER**                    |
| ACCOUNT_TYPE | VARCHAR2(30) | CHECK (‘SAVINGS’, ‘GOAL’, ‘FIXED’) |
| OPEN_DATE    | DATE         | DEFAULT SYSDATE                    |
| CLOSE_DATE   | DATE         | -                                  |
| CURRENCY     | VARCHAR2(3)  | DEFAULT 'RWF'                      |
| STATUS       | VARCHAR2(20) | DEFAULT 'OPEN'                     |



5. TRANSACTION




| Field          | Type           | Constraint                                         |
| -------------- | -------------- | -------------------------------------------------- |
| TRANSACTION_ID | NUMBER(14)     | **PK**                                             |
| TRANSACTION_NO | VARCHAR2(30)   | UNIQUE                                             |
| ACCOUNT_ID     | NUMBER(12)     | **FK → ACCOUNT**                                   |
| TRAN_DATE      | TIMESTAMP      | DEFAULT SYSTIMESTAMP                               |
| TXN_TYPE       | VARCHAR2(30)   | CHECK (‘DEPOSIT’, ‘WITHDRAWAL’, ‘INTEREST’, ‘FEE’) |
| AMOUNT         | NUMBER(15,2)   | NOT NULL                                           |
| BALANCE_AFTER  | NUMBER(15,2)   | -                                                  |
| CREATED_BY     | NUMBER(8)      | **FK → EMPLOYEE**                                  |
| NOTE           | VARCHAR2(4000) | -                                          



7. LOAN_PAYMENT


| Field               | Type         | Constraint        |
| ------------------- | ------------ | ----------------- |
| PAYMENT_ID          | NUMBER(14)   | **PK**            |
| LOAN_ID             | NUMBER(12)   | **FK → LOAN**     |
| PAYMENT_DATE        | DATE         | NOT NULL          |
| AMOUNT              | NUMBER(15,2) | NOT NULL          |
| PRINCIPAL_COMPONENT | NUMBER(15,2) | -                 |
| INTEREST_COMPONENT  | NUMBER(15,2) | -                 |
| BALANCE_AFTER       | NUMBER(15,2) | -                 |
| COLLECTED_BY        | NUMBER(8)    | **FK → EMPLOYEE** |



8. GOAL



| Field          | Type          | Constraint                                |
| -------------- | ------------- | ----------------------------------------- |
| GOAL_ID        | NUMBER(10)    | **PK**                                    |
| MEMBER_ID      | NUMBER(10)    | **FK → MEMBER**                           |
| GOAL_NAME      | VARCHAR2(200) | NOT NULL                                  |
| TARGET_AMOUNT  | NUMBER(15,2)  | NOT NULL                                  |
| CURRENT_AMOUNT | NUMBER(15,2)  | DEFAULT 0                                 |
| TARGET_DATE    | DATE          | -                                         |
| STATUS         | VARCHAR2(20)  | CHECK (‘ACTIVE’, ‘ACHIEVED’, ‘CANCELLED’) |

## 📌 2. Cardinalities


| Relationship          | Cardinality |
| --------------------- | ----------- |
| MEMBER → ACCOUNT      | 1 to Many   |
| MEMBER → LOAN         | 1 to Many   |
| ACCOUNT → TRANSACTION | 1 to Many   |
| LOAN → LOAN_PAYMENT   | 1 to Many   |
| MEMBER → GOAL         | 1 to Many   |
| BRANCH → MEMBER       | 1 to Many   |
| BRANCH → EMPLOYEE     | 1 to Many   |

📌 3. Constraints Summary
Primary Keys
⦁	 MEMBER_ID, ACCOUNT_ID, LOAN_ID, TRANSACTION_ID, PAYMENT_ID, GOAL_ID, BRANCH_ID, EMPLOYEE_ID

Foreign Keys
⦁	MEMBER.BRANCH_ID → BRANCH
	
⦁	ACCOUNT.MEMBER_ID → MEMBER
	
⦁	TRANSACTION.ACCOUNT_ID → ACCOUNT

⦁	LOAN.MEMBER_ID → MEMBER

⦁	LOAN_PAYMENT.LOAN_ID → LOAN

⦁	EMPLOYEE.BRANCH_ID → BRANCH

**Unique**

⦁	MEMBER_NO

⦁	ACCOUNT_NO

⦁	LOAN_NO

⦁	TRANSACTION_NO

⦁	EMP_NO

**Check Constraints**

⦁	Gender values

⦁	Account type

⦁	Loan status

⦁	Goal status

⦁	Transaction types

## 📌 4. Normalization (1NF → 3NF)

1NF – Removing repeating groups

⦁	All attributes atomic (no multiple phone numbers in same field).

⦁	Each table has a primary key.

**2NF – Removing partial dependencies**

⦁	All tables use single-column surrogate keys, avoiding composite keys.

⦁	Non-key attributes depend fully on the PK.


**3NF – Removing transitive dependencies**

⦁	No non-key attribute depends on another non-key attribute.

⦁	Example: BRANCH_NAME is not stored in MEMBER table.

**Justification**
This structure:

⦁	Reduces redundancy

⦁	Avoids insert/update/delete anomalies

⦁	Supports scalability

⦁	Ensures reliable joins for BI fact tables

## 📌 5. Data Dictionary


It describes:

⦁	Tables

⦁	Columns

⦁	Data types

⦁	Constraints

⦁	Purpose

⦁	Business rules

 ## 📌 6. BI Considerations 
Fact Tables

⦁	FactTransactions

⦁	FactLoans

⦁	FactLoanRepayments

⦁	FactAccountBalances

**Dimension Tables**

⦁	DimMember

⦁	DimAccount

⦁	DimBranch

⦁	DimDate

⦁	DimEmployee

⦁	DimLoanType

Slowly Changing Dimensions (SCDs)

⦁	DimMember → SCD Type 2 (track changes in address/email/status)

⦁	DimAccount → SCD Type 2

Aggregation Levels

⦁	Daily savings per account

⦁	Monthly total contributions per branch

⦁	Loan disbursement volume
⦁	Loan aging and delinquency metrics

Audit Design

⦁	AUDIT_LOG table

⦁	Trigger-supported logging

⦁	Capture: user, timestamp, operation, before/after state

## 📌 7. ER Diagram Description (for Lucidchart/Draw.io)

<img width="2974" height="3818" alt="Untitled diagram-2025-12-04-160754" src="https://github.com/user-attachments/assets/51bfc7e0-defc-48f4-b3fd-23daef516563" />




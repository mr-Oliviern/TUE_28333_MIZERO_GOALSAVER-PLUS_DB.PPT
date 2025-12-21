# Key Performance Indicator (KPI) Definitions – GoalSaver Plus

## 1. Savings KPIs

### Total Savings Balance
- Description: Total amount of money saved by all members
- Formula: SUM(ACCOUNT.ACCOUNT_AMOUNT)
- Purpose: Measures overall financial strength

### Average Savings per Member
- Description: Average savings held by a member
- Formula: AVG(ACCOUNT.ACCOUNT_AMOUNT)
- Purpose: Evaluates member engagement

### Monthly Savings Growth
- Description: Change in total savings month-over-month
- Formula: Current Month Savings – Previous Month Savings
- Purpose: Tracks growth trends

---

## 2. Loan KPIs

### Total Loans Disbursed
- Description: Total value of approved loans
- Formula: SUM(LOAN.LOAN_AMOUNT WHERE STATUS = 'APPROVED')
- Purpose: Measures lending activity

### Loan Approval Rate
- Description: Percentage of approved loan requests
- Formula: (Approved Loans / Total Loan Requests) * 100
- Purpose: Evaluates lending policy effectiveness

### Outstanding Loan Balance
- Description: Total unpaid loan amount
- Purpose: Measures financial exposure

---

## 3. Compliance & Audit KPIs

### Failed Transaction Count
- Description: Number of failed operations
- Source: AUDIT_LOG WHERE STATUS = 'FAILED'
- Purpose: Detects rule violations

### Restricted-Day Attempts
- Description: Transactions attempted on weekdays or holidays
- Purpose: Measures policy enforcement effectiveness

### Audit Events per User
- Description: Number of actions performed by each user
- Purpose: Accountability and monitoring

---

## 4. System Usage KPIs

### Total Transactions
- Description: Number of account transactions processed
- Purpose: Measures system activity

### Active Members
- Description: Members with at least one transaction
- Purpose: Engagement measurement

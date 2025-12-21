-- 1. Accounts below minimum savings
SELECT account_id, member_id, account_amount
FROM account
WHERE account_amount < 1000;


-- 2. Loan requests pending approval
SELECT loan_id,
       account_id,
       principal_amount,
       start_date
FROM loan
WHERE status = 'PENDING';

-- 3. Total deposits per account
SELECT account_id,
       SUM(amount) AS total_deposit
FROM account_transaction
WHERE txn_type = 'DEPOSIT'
GROUP BY account_id;


-- 4. Number of failed transactions per day
SELECT TRUNC(action_date) AS txn_date,
       COUNT(*) AS failed_count
FROM audit_log
WHERE status = 'FAILED'
GROUP BY TRUNC(action_date)
ORDER BY txn_date;



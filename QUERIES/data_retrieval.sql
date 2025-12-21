-- 1. Get member account details
SELECT a.account_id, a.account_no, a.account_type, a.account_amount, m.member_id, m.full_name
FROM account a
JOIN member m ON a.member_id = m.member_id;

-- 2. Transaction history for a given account
SELECT transaction_id, transaction_type, amount, transaction_date
FROM account_transaction
WHERE account_id = :p_account_id
ORDER BY transaction_date DESC;

-- 3. Loan details per account
SELECT loan_id, loan_amount, loan_date, loan_status
FROM loan
WHERE account_id = :p_account_id;

-- 4. Public holidays list
SELECT * FROM public_holidays
ORDER BY holiday_date;


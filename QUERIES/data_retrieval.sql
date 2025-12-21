--1 Loan details per account
SELECT loan_id, loan_amount, loan_date, loan_status
FROM loan
WHERE account_id = :p_account_id;

-- 2. Public holidays list
SELECT * FROM public_holidays
ORDER BY holiday_date;


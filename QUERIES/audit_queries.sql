-- 1. All audit log entries
SELECT * FROM audit_log
ORDER BY action_date DESC;

-- 2. Loan validation audit
SELECT *
FROM audit_log
WHERE table_name = 'LOAN'
AND action_type = 'INSERT'
ORDER BY action_date DESC;


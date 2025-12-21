-- 1. All audit log entries
SELECT * FROM audit_log
ORDER BY action_date DESC;

-- 2. Failed actions only
SELECT user_name, table_name, action_type, record_id, error_message, action_date
FROM audit_log
WHERE status = 'FAILED'
ORDER BY action_date DESC;

-- 3. Successful actions only
SELECT user_name, table_name, action_type, record_id, action_date
FROM audit_log
WHERE status = 'SUCCESS'
ORDER BY action_date DESC;

-- 4. Loan validation audit
SELECT *
FROM audit_log
WHERE table_name = 'LOAN'
AND action_type = 'INSERT'
ORDER BY action_date DESC;


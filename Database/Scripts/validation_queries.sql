SELECT * FROM project.loan WHERE status = 'ACTIVE';
SELECT * FROM project.member;
SELECT
    m.member_id,
    m.first_name,
    a.account_no,
    t.transaction_no,
    t.amount
FROM member m
JOIN account a
    ON m.member_id = a.member_id
JOIN account_transaction t
    ON a.account_id = t.account_id
ORDER BY m.member_id;

SELECT * FROM audit_log ORDER BY  audit_id;

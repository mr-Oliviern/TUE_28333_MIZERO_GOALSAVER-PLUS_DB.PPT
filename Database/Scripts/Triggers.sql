create or replace TRIGGER trg_loan_status_log
AFTER UPDATE OF status ON loan
FOR EACH ROW
BEGIN
  INSERT INTO transactions (
    transaction_id,
    transaction_no,
    account_id,
    tran_date,
    txn_type,
    amount,
    note
  )
  VALUES (
    txn_seq.NEXTVAL,
    'LOAN-' || :OLD.loan_id,
    NULL,
    SYSDATE,
    'LOAN_STATUS_CHANGE',
    0,
    'Loan status changed from ' || :OLD.status || ' to ' || :NEW.status
  );
END;

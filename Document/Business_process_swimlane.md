##  Swimlane BPMN Process Description

### Lane 1 — Customer/ Members
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

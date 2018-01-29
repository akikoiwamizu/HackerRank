SELECT cm.company_code, cm.founder, 
       (SELECT COUNT(lead_manager_code) FROM Lead_Manager WHERE company_code = cm.company_code),
       (SELECT COUNT(senior_manager_code) FROM Senior_Manager WHERE company_code = cm.company_code),                              (SELECT COUNT(manager_code) FROM Manager WHERE company_code = cm.company_code),
       (SELECT COUNT(employee_code) FROM Employee WHERE company_code = cm.company_code)
FROM Company AS cm
ORDER BY cm.company_code;
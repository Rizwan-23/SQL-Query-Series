-- -------------[HackerRank-SQL(Intermediate)-New Companies.sql]-----

SELECT C.company_code,
       C.founder,
       COUNT(DISTINCT L.lead_manager_code  ),
       COUNT(DISTINCT S.senior_manager_code),
       COUNT(DISTINCT M.manager_code),
       COUNT(DISTINCT E.employee_code)
FROM company c
JOIN lead_manager l  
ON c.company_code=l.company_code
JOIN senior_manager s
ON s.company_code=l.company_code
JOIN manager m
ON m.company_code=s.company_code
JOIN employee e
ON e.company_code=m.company_code
GROUP BY c.company_code, c.founder
ORDER BY company_code, 
         CASE 
             WHEN c.company_code REGEXP '^C_[0-9]+$' THEN CAST(SUBSTR(c.company_code, 3) AS UNSIGNED) 
             ELSE NULL 
         END;

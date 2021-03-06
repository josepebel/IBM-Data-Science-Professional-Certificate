-- Query 1
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL';

-- Query 2
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE B_DATE LIKE '197%';

-- Query 3
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE SALARY BETWEEN 60000 AND 70000;

-- Query 4a
SELECT F_NAME, L_NAME FROM EMPLOYEES ORDER BY DEP_ID;

-- Query 4b
SELECT F_NAME, L_NAME FROM EMPLOYEES ORDER BY DEP_ID, L_NAME DESC;

-- Query 5a
SELECT DEP_ID, COUNT(F_NAME), AVG(SALARY) FROM EMPLOYEES GROUP BY DEP_ID;

-- Query 5b
SELECT DEP_ID, COUNT(F_NAME) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES GROUP BY DEP_ID;

-- Query 5c
SELECT DEP_ID, COUNT(F_NAME) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES GROUP BY DEP_ID ORDER BY 3 ASC;

-- Query 5d
SELECT DEP_ID, COUNT(F_NAME) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES GROUP BY DEP_ID  HAVING COUNT(F_NAME) < 4 ORDER BY 3 ASC;

-- Query 6
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME FROM EMPLOYEES  E, DEPARTMENTS D WHERE E.DEP_ID = D.DEPT_ID_DEP ORDER BY D.DEP_NAME, E.L_NAME DESC ;
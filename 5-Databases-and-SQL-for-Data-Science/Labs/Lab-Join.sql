
-- Query1A ---
select E.F_NAME,E.L_NAME, JH.START_DATE 
	from EMPLOYEES E 
	INNER JOIN JOB_HISTORY JH on E.EMP_ID=JH.EMPL_ID 
	where E.DEP_ID ='5'
;	
-- Query1B ---	
select E.F_NAME,E.L_NAME, JH.START_DATE, J.JOB_TITLE 
	from EMPLOYEES E 
	INNER JOIN JOB_HISTORY JH on E.EMP_ID=JH.EMPL_ID 
	INNER JOIN JOBS J on E.JOB_ID=J.JOB_IDENT
	where E.DEP_ID ='5'
;
-- Query 2A ---
select E.EMP_ID,E.L_NAME,E.DEP_ID,D.DEP_NAME
	from EMPLOYEES E 
	LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP
;	
-- Query 2B ---
select E.EMP_ID,E.L_NAME,E.DEP_ID,D.DEP_NAME
	from EMPLOYEES E 
	LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP 
	where YEAR(E.B_DATE) < 1980
;
-- alt Query 2B ---
select E.EMP_ID,E.L_NAME,E.DEP_ID,D.DEP_NAME
	from EMPLOYEES E 
	INNER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP 
	where YEAR(E.B_DATE) < 1980
;
-- Query 2C ---
select E.EMP_ID,E.L_NAME,E.DEP_ID,D.DEP_NAME
	from EMPLOYEES E 
	LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP 
	AND YEAR(E.B_DATE) < 1980
;
-- Query 3A ---
select E.F_NAME,E.L_NAME,D.DEP_NAME
	from EMPLOYEES E 
    FULL OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP
;
-- Query 3B ---
select E.F_NAME,E.L_NAME,D.DEPT_ID_DEP, D.DEP_NAME
	from EMPLOYEES E 
	FULL OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP AND E.SEX = 'M'
;

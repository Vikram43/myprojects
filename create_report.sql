
PROMPT Creating report or csv file of all employee who has salary greater than or equal to 50000

SET PAGESIZE 0
SET LINESIZE 50
SET HEADING OFF

SPOOL D:\emp_report.csv

SELECT '"Id","Name","Date of joining","Salary"'
  FROM dual
UNION ALL
SELECT emp_id ||','||emp_name||','||TO_CHAR(date_join,'DD/MM/YYYY') ||','||sal
  FROM (SELECT emp_id,emp_name,date_join,sal
          FROM emp
         WHERE sal >= 50000
      ORDER BY emp_id);
  
SPOOL OFF 


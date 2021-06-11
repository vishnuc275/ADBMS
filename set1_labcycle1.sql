CREATE TABLE EMP (empno int(15),ename varchar(25),job varchar(25),salary int(50),commission int(50),deptno int(25));
DESCRIBE EMP;
INSERT INTO EMP (empno,ename,job,salary,deptno) VALUES (7369,'SMITH','CLERK',800,20);
INSERT INTO EMP(empno,ename,job,salary,commission,deptno) VALUES(7499,'ALLEN','SALESMAN',1600,300,30),(7521,'WARD','SALESMAN',1250,500,30),(7654,'MARTIN','SALESMAN',1250,1400,30);
INSERT INTO EMP(empno,ename,job,salary,deptno) VALUES(7566,'JONES','MANAGER',2975,20),(7698 ,'BLAKE','MANAGER',2850,30),(7782,'CLARK','MANAGER',2450,10),(7788 ,'SCOTT','ANALYST',3000,20),(7839,'KING','PRESIDENT',5000,10),(7844,'TURNER','SALESMAN',1500,30),(7876,'ADAMS','CLERK',1100,20),(7900 ,'JAMES','NULL',950,30),(7902,'FORD','ANALYST',3000,20),(7934,'MILLER','CLERK',1300,10);
update emp set job ='clerk' where job ='null';
alter table emp add date_join date;
update emp set date_join ='80-12-17' where empno=7369;
update emp set date_join ='81-02-20' where empno=7499;
update emp set date_join ='81-02-22' where empno=7521;
update emp set date_join ='81-04-02' where empno=7566;
update emp set date_join ='81-09-28' where empno=7654;
update emp set date_join ='81-05-01' where empno=7698;
update emp set date_join ='81-06-09' where empno=7782;
update emp set date_join ='87-04-19' where empno=7788;
update emp set date_join ='81-11-17' where empno=7839;
update emp set date_join ='81-09-08' where empno=7844;
update emp set date_join ='87-05-23' where empno=7876;
update emp set date_join ='81-12-03' where empno=7900;
update emp set date_join ='81-12-03' where empno=7902;
update emp set date_join ='82-01-23' where empno=7934;
select * from emp;
select * from emp;
select distinct job from emp;
SELECT ename,deptno FROM EMP WHERE deptno IN (20,30);
SELECT ename,sum(salary + commission) FROM EMP GROUP BY ENAME;
SELECT ENAME,SALARY*12 FROM EMP GROUP BY ENAME;
SELECT ENAME FROM EMP WHERE DATE_JOIN='1981-12-03';
SELECT  ENAME,SUM(SALARY + COMMISSION) FROM EMP WHERE ename='MILLER';
DELETE FROM EMP WHERE ename='MILLER';
SELECT ename, deptno FROM EMP;
ALTER TABLE EMP ADD COLUMN total_salary numeric;
UPDATE EMP SET total_salary=(salary+ IFNULL(commission,0));
ALTER TABLE EMP DROP COLUMN commission;
SELECT E.empno,E.salary FROM EMP E INNER JOIN EMP B ON E.salary AND E.empno<>B.empno;
SELECT ename AS name,empno AS emp_id FROM EMP;
RENAME TABLE EMP to EMPLOYEE;
CREATE TABLE EMP_TAB AS SELECT * FROM EMPLOYEE;
SELECT * FROM EMP_TAB,EMPLOYEE;
TRUNCATE TABLE EMPLOYEE;
DROP TABLE EMPLOYEE;















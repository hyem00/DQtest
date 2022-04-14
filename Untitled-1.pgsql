select *
from emp;

select *
from dept;


select empno ,ename ,job ,sal
from emp
where job in (select job
           from emp
           where job='SALESMAN');



select empno,ename,job,sal
from emp
where (deptno,job) in (select deptno , job
                    from emp 
                    where empno =7499);



SELECT ename,
       (SELECT dname FROM dept d WHERE d.deptno = e.deptno) deptno
FROM emp e
WHERE job ='MANAGER';

SELECT d.deptno, d.dname,
       (SELECT MAX(sal) 
          FROM emp
         WHERE deptno = d.deptno) sal
  FROM dept d;
 

hghghghghgh
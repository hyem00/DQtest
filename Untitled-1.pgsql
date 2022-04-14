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



create table t
as
select '오잉' a , 1 b
union all select '히히' , 2
union all select '된다고?' ,3
;

select *
from x ;

create table x
as
select 'a' 영어 ,1 숫자
union all select 'b',2
UNION all select 'c',3;


select ename 
from emp 
where dept >=20
and sal <=2000 ;

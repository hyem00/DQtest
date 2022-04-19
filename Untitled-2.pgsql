select *
from emp;\

select ename , sal , case when sal>=2000 then 1000
                          when sal>=1000 then 500
                          else 0
                    end as 보너스
from emp;

select ename,sal,case when sal>=2000 then 1000
                      else ( case when sal>=1000 then 500
                              else 0
                              end)
                end as 보너스
from emp;


select ename ,comm, sal, case when comm is not null then comm
                              when sal is not null then sal
                              else null
                        end as COAL
from emp;


select ename,comm,sal, case when comm is not null then comm
                            else ( case when sal is not null then sal
                                         else null
                                         end) 
                            
                              end as COAL
from emp;
                                    
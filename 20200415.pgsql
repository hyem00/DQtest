create table product
as
select 1 id ,'chair' pname , 245 pcost , 2017 pyear , 'chicago' city
union all select 2, 'armchair',500,2018,'Chicago'
union all select 3, 'desk',900,	2019,'Los Angeles'
union all select 4, 'lamp',	85 ,2017,'Cleveland'
union all select 5, 'bench',2000,2018,'Seattle'
union all select 6, 'armchair',500,2018,'Chicago'
union all select 7,	'tv table',	2000,2020,'Austin'
;

create table sale
as
select 1 id ,2 product_id , 2000 price , 2020 syear , 'chicago' city
union all select 2, 2 , 590,	2020,	'New York'
union all select 3,2, 790,	2020,	'Cleveland'
union all select 4,3, 800,	2019,	'Cleveland'
union all select 5,4, 100,	2020,	'Detroit'
union all select 6,5, 2300,	2019,	'Seattle'
union all select 7,7, 2000,	2020,	'New York'
;

select *
from sale;
select *
from product;

select pname,pcost
from product 
where id in(select product_id
          from sale
          where price=2000)
;
SELECT pname,pcost
FROM product
WHERE id =
( SELECT product_id
   FROM sale
   WHERE price = 2000
        AND product_id = product.id );

select p.pname , p.pcost
from product p , sale s
where p.id= s.product_id
and s.price=2000;

SELECT
 p.pname,
 p.pcost
FROM product AS p
JOIN sale AS s
  ON p.id = s.product_id
WHERE s.price = 2000;

SELECT
 pname,
 pcost,
 city
FROM product
WHERE NOT EXISTS
 ( SELECT id 
   FROM sale 
   WHERE syear = 2020 AND product_id = product.id );

   SELECT 
 p.pname,
 p.pcost,
 p.city
FROM product AS p
LEFT JOIN sale AS s
  ON p.id = s.product_id
WHERE s.syear != 2020 OR s.syear IS NULL;
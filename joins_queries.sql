select * from sales ;
select * from people ;

select s.saledate, s.amount, p.salesperson, s.spid, p.spid
from sales s
join people p on p.spid = s.spid;

select s.saledate, s.amount, p.salesperson, s.spid, p.spid
from sales s
join people p on p.spid = s.spid
where amount > 10000
order by amount desc;

select s.saledate, s.amount, p.salesperson, s.spid, p.spid
from sales s
join people p on p.spid = s.spid
where year(saledate) = 2022 and salesperson like 'B%'
order by amount desc;

select * from products;

select s.saledate, s.amount, pr.Product
from sales s
left join products pr on pr.pid = s.pid;

select s.saledate, s.amount, p.salesperson, p.Team, pr.Product
from sales s
join people p on p.spid = s.spid
left join products pr on pr.pid = s.pid;

SELECT 
    s.saledate, s.amount, p.salesperson, p.Team, pr.Product
FROM
    sales s
        JOIN
    people p ON p.spid = s.spid
        LEFT JOIN
    products pr ON pr.pid = s.pid
WHERE
    s.amount >= 500 AND p.team = 'delish';

select s.saledate, s.amount, p.salesperson, p.Team, pr.Product
from sales s
join people p on p.spid = s.spid
left join products pr on pr.pid = s.pid
where s.amount >= 500 and p.team ='';

select * from geo ;

select s.saledate, s.amount, p.salesperson, p.Team, pr.Product, g.geo
from sales s
join people p on p.spid = s.spid
left join products pr on pr.pid = s.pid
left join geo g on g.geoid = s.geoid
where s.amount >= 500 
and p.team =''
and g.geo in ('India','USA','New Zealand')
and year(saledate) = 2022
and month(saledate) = 3
order by saledate;

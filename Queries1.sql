show tables;
select * from sales;
select SaleDate, Amount, Boxes, Amount/Boxes as 'Amount per Box' from sales;
select SaleDate, Amount, Customers from sales;
select SaleDate, Customers, Boxes from sales;

select * from sales
where amount > 10000
order by amount desc;

select * from sales
where geoid = 'g4'
order by pid, amount desc; 

select * from sales
where amount > 12000 and saledate >= '2022-03-01';

select SaleDate, Amount from sales
where amount > 10000 and year(SaleDate) = 2022
order by amount desc;

select * from sales
where boxes > 0 and boxes <= 50
order by boxes;

select * from sales
where boxes between 0 and 50
order by boxes;

select saledate, amount, boxes, weekday(saledate) as 'Day of Week'  from sales
where weekday(saledate) = 4 and  boxes between 0 and 50
order by boxes;

select * from people
where team = 'yummies' or team = 'delish';

select * from people
where team in ('delish', 'jucies')
order by salesperson;

select * from people
where salesperson like 'B%';

select * from people
where salesperson like '%B%';

select * from sales;

select saledate, amount,
		case when amount < 1000 then 'Under 1k'
             when amount < 5000 then 'Under 5k'
			 when amount < 10000 then 'Under 10k'
			 else '10k or more'
         end as 'Amount Category'
from sales;

        
        
        

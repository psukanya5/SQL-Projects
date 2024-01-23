-- Read Data --
select * 
from car_data;

-- Total Cars - Count of total records --
select count(*)
from car_data;

-- Cars available in 2023 --
select count(*)
from car_data
where year = 2023;

-- Cars available in 2020,2021,2022 --
select count(*)
from car_data
where year in (2020,2021,2022)
group by year;

-- Total cars by year --
select year, count(*)
from car_data
group by year;

-- Total diesel cars in 2020 --
select count(*)
from car_data
where year = 2020 and fuel = 'Diesel';

-- Total petrol cars in 2020 --
select count(*)
from car_data
where year = 2020 and fuel = 'Petrol';

-- Print of all fuel (Petrol, Diesel, CNG) cars by year --
select year, count(*) 
from car_data
where fuel = 'Petrol'
group by year; 

select year, count(*) 
from car_data
where fuel = 'Diesel'
group by year; 

select year, count(*) 
from car_data
where fuel = 'CNG'
group by year;

-- Year that had more than 100 cars --
select year, count(*)
from car_data
group by year having count(*) > 100;


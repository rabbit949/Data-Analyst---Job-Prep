-- JOINS -- # Joins are used to combine tables with similar columns meaning, the data within the columns is somewhat similar
-- Inner Joins, Outter Joins and Self Joins --
-- Inner Joins --
-- so by default joins are inner joins meaning it will populate all the rows in both tables wrt to joining column with only similar values

select * from parks_and_recreation.employee_demographics;
select * from parks_and_recreation.employee_salary;

select * from parks_and_recreation.employee_demographics
inner join parks_and_recreation.employee_salary
	on employee_id = employee_id ; # this statement will give us error saying employee_id is ambigous meaning SQL deos not know where the employee_id is coming from so we have to specifiy where the column is coming from and notice both the columns have similar data id from 1-12;
    
select * from parks_and_recreation.employee_demographics AS dem
inner join parks_and_recreation.employee_salary AS sal
	on dem.employee_id = sal.employee_id ; #here employee_id 2 is not being populated because table dem does not have employee_id 2 w.r.t to table sal

-- Outer Joins --
-- Left Join --
select * from parks_and_recreation.employee_demographics as dem
left join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id ;  #left join basically takes everything and joins it to right table whereas in right table, it will populate all the row and if the rows doesn't match it will populate null

-- Right -- 
select * from parks_and_recreation.employee_demographics as dem
right join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id ;  # the result will show table with null values in table 1 on row 2
    
    
-- Self Join --
# self joins are basically used to tide 1 tab;e with it self, e.g a secret santa game lets have a look
select * 
from parks_and_recreation.employee_salary AS sal1
join parks_and_recreation.employee_salary AS sal2
	on sal1.employee_id = sal2.employee_id;
# lets do some more changings and specify them as well.
select * 
from parks_and_recreation.employee_salary AS sal1
join parks_and_recreation.employee_salary AS sal2
	on sal1.employee_id +1 = sal2.employee_id;
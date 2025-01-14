-- JOINS -- # Joins are used to combine tables with similar columns meaning, the data within the columns is somewhat similar
-- Inner Joins, Outter Joins and Self Joins --
-- Inner Joins --
-- so by default joins are inner joins meaning it will populate all the rows in both tables wrt to joining column with only similar values

select * from parks_and_recreation.employee_demographics;
select * from parks_and_recreation.employee_salary;

select * from parks_and_recreation.employee_demographics
join parks_and_recreation.employee_salary
	on employee_id = employee_id ; # this statement will give us error saying employee_id is ambigous meaning SQL deos not know where the employee_id is coming from so we have to specifiy where the column is coming from and notice both the columns have similar data id from 1-12;
    
select * from parks_and_recreation.employee_demographics AS dem
join parks_and_recreation.employee_salary AS sal
	on dem.employee_id = sal.employee_id ; #here employee_id 2 is not being populated because table dem does not have employee_id 2 w.r.t to table sal


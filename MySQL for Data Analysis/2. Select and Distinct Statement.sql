Select * from parks_and_recreation.employee_demographics;
Select * from parks_and_recreation.employee_salary;
Select * from parks_and_recreation.parks_departments;

#Select a single or multiple colums
Select first_name from parks_and_recreation.employee_demographics;


# Multiple Columns
select first_name,
last_name,
birth_date
from parks_and_recreation.employee_demographics;

# You can also do calculations in the columns but the calculation will follow the rule of PEMDAS
Select age,
age + 5
from parks_and_recreation.employee_demographics;

Select first_name,
last_name,
birth_date,
gender
from parks_and_recreation.employee_demographics;

#you can also select unique entries in the table columns e.g
# we have a column gender in the table with the only two possible entries in the table Male and Female, repeated multiple times 
# so we can selet them and return them once, it will only retunr the unique values in the column.

Select distinct gender from parks_and_recreation.employee_demographics;

# we can also try the combination of distinct function if it exsits in the table 
Select  distinct
gender, first_name
from parks_and_recreation.employee_demographics;

# if the unique combination doesn't exsit it will show the default multi select


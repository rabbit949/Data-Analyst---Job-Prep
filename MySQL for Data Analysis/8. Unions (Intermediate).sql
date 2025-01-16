-- Unions --
# Unions allow you to combine rows together,not like columns like we were doing with Joins.
# Lets see how we can do this,

Select *
from parks_and_recreation.employee_demographics
union
Select *
from parks_and_recreation.employee_salary
;
# Notice this merges both the columns based off of the data, the data we have in our tables is bad so it doesn't make any sense lets refine it and keep to relevant data so we can basically see the results in action

Select first_name, last_name
from parks_and_recreation.employee_demographics
union
Select first_name, last_name
from parks_and_recreation.employee_salary; 
# Now the output is more refined and notice we have an entry named RON SWANSON which we don't have in our demographics table so basically this is what union does, it include the data from multiple tables and merges into the rows like it did in this case,
# NOTE: by default union is distinct, meaning it will remove all the duplicates from the output. But we can change that.
Select first_name, last_name
from parks_and_recreation.employee_demographics
union
Select first_name, last_name
from parks_and_recreation.employee_salary; # Now its showing all the data under first and last name columns in both of our tables and make it single table.

# Lets see a real life use case of union, lets say the company wants to cut their budget down by removing high paying and of above certain age employees, we can find the results simply by using union, lets see how
Select first_name, last_name, 'OLD Male' as Label
from parks_and_recreation.employee_demographics
where age > 40
union
Select first_name, last_name, 'Highly Paid' as Label
from parks_and_recreation.employee_salary
where salary > 70000
order by first_name, last_name; 

#here's how we can find the result and secure our job, we are using mutliple select statements, where clause, order by and ofcourse unions.

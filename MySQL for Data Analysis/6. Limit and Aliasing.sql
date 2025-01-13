# LIMIT and ALISAING 
# Limit specifies how many row we want in the output, 
Select * from parks_and_recreation.employee_demographics; 
# lets limit the number of rows to only 1st 3;

Select * from parks_and_recreation.employee_demographics Limit 3; #its pretty straight forward but if we couple it with order by we can solve really complex problems, e.g lets find the oldest 3 employees in our table

Select *
from parks_and_recreation.employee_demographics
order by age desc
limit 3; # this will get us the oldest 3 emplyees
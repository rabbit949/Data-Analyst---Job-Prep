-- LIMIT and ALISAING --
# Limit specifies how many row we want in the output, 
Select * from parks_and_recreation.employee_demographics; 
# lets limit the number of rows to only 1st 3;
-- LIMIT --
Select * from parks_and_recreation.employee_demographics Limit 3; #its pretty straight forward but if we couple it with order by we can solve really complex problems, e.g lets find the oldest 3 employees in our table

Select *
from parks_and_recreation.employee_demographics
order by age desc
limit 3; # this will get us the oldest 3 emplyees

# there is also an additional parameter in limit which will specify the starting and number of row we want to select. e.g limit 2(excluded), 1
# lets select only the last one in the above example,
Select *
from parks_and_recreation.employee_demographics
order by age desc
limit 2, 1;  # this will only give back the last row of the oldest employee table we generated.


-- ALIASING--
# ALIASING is just a way to change the name of the column

Select gender, avg(age)
from parks_and_recreation.employee_demographics
group by gender
having avg(age) > 40; # this will create a column with the name of aggregate function and we don't want to show the funcation name, hence aliasing comes into play, we will be using it a lot more when we start using the joins on intermediate level.

Select gender, avg(age) AS avg_age 
from parks_and_recreation.employee_demographics
group by gender
having avg_age > 40;
# this will change the name of the column from avg(age) to avg_age, we can name it whatever we want except for the reserved keywords, its like nameing a variable in programming language.
# we don't actually need AS keyword, if we remove it. The qurey will work perfectly fine.
Select gender, avg(age) avg_age 
from parks_and_recreation.employee_demographics
group by gender
having avg_age > 40;

-- NOTE: I like to use AS keyword for Aliasing becasue it help to keep track of name plus it is more readable this way.
Select gender, avg(age) AS avg_age 
from parks_and_recreation.employee_demographics
group by gender
having avg_age > 40;


-- End of Begineer Series -- \
-- Tomorrow I will start Intermediate SQL --
 

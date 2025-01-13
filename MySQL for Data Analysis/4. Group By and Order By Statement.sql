# Group By and Order By statements

Select * from parks_and_recreation.employee_demographics;
 -- Group By
 # here we are grouping row by gender and performing calculations based off of age in gender rows.
 SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender; 

# if there is no aggregate functions involved, the select and group by has to match like below;
SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender; 
# aggregate functions (reffered as calculations) are AVG(), MIN(), MAX(), COUNT() etc.
# Lets see what it means 
SELECT gender, AVG(age), MIN(age), MAX(age), count(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender; 

-- We can also group multiple columns as well e.ge
SELECT *
FROM parks_and_recreation.employee_salary;

SELECT occupation
FROM parks_and_recreation.employee_salary
GROUP BY occupation;
# if there are multiple entries in the column it will only show one, like we saw in gender column (male, female)
# But if we group multiple columns, we'll get all the rows if there values are unique, e.g
# in the above query we had only one office manager row, but if we group multiple columns we will have two rows for office manager because they have unique/different salries
SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;


#Lets now See what ORDER BY does.
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name; 

# here we are ordering rows / sort the results based off of gender either assending or descending order, by default the flow is from lowest to highest meaning assecnding but we can also change that !
SELECT *
FROM parks_and_recreation.employee_demographics
order by first_name DESC; 

# lets take an other example with multiple columns

SELECT *
FROM parks_and_recreation.employee_demographics
order by gender, age;  # here we are ordering by gender as well as age, the output will show a asc order for the age, low to high
# lets change the order of age to DESC
SELECT *
FROM parks_and_recreation.employee_demographics
order by gender, age DESC;  # the output will be inverted for age, but the gender column remains the same female first

# NOTE: For orderby statement the column on which you are sorting is very important, if we change the column the output will be different and not as much efficient as it should be,


SELECT *
FROM parks_and_recreation.employee_demographics
order by age, gender;  #here the only the age is sorted and the gender column does not take effect. so selecting a column for sorting is really importing.

# we can also use column positions instead of column names for short hand, but it is not recommended and best practice.

SELECT *
FROM parks_and_recreation.employee_demographics
order by 5, 4; 

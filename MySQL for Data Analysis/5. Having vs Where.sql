# Having vs Where
# so the main difference is, having clause is used to filter aggregate function level and where clause is use to row level, e.

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT occupation, avg(salary)
FROM parks_and_recreation.employee_salary
Group by occupation; 

SELECT occupation, avg(salary)
FROM parks_and_recreation.employee_salary
where avg(salary) > 75000
Group by occupation; # this will give us an error saying invalid use of group by statement, because the avg(salary) hasn't been created yet, so they created having clause to filter out the results
# Lets see how we can use them
SELECT occupation, avg(salary)
FROM parks_and_recreation.employee_salary
where occupation LIKE '%manager%'
Group by occupation
having avg(salary) > 75000; # notice we get ocupation city manager with avg salary 90000

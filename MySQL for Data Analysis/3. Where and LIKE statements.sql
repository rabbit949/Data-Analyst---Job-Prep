# Where statement and logical operators with Where

Select * from parks_and_recreation.employee_demographics;
Select * from parks_and_recreation.employee_demographics Where gender = 'female';
# the above statement will only return the entries where gender is female;
# we can also add different complexities by adding logical operators AND, OR and NOT in the mix
Select * from parks_and_recreation.employee_demographics Where 
gender = 'female' and age >= 44;

# the logical operators mix also follows the PEMDAS
Select * from parks_and_recreation.employee_salary
Where 
(employee_id > 4 and salary >= 50000) # we call this isolated conditional statement
and
dept_id >= 3;
# the whole point of this is checking what we have if the certain conditions are met. but the above statements will only return results if they are exact match.
# what if we don't have an excat match the we can use LIKE statement

-- LiKE statement
-- special characters we can use are % and _
-- % means anything and the _ means a specific value

Select * from parks_and_recreation.employee_demographics 
where
first_name Like "Jer%";

Select * from parks_and_recreation.employee_demographics 
where
first_name Like "a%";

Select * from parks_and_recreation.employee_demographics 
where
first_name Like "a__"; # we have to specifiy how many charcters we are looking for with the number of _ 

Select * from parks_and_recreation.employee_demographics 
where
first_name Like "a__%";
-- LIKE statement looks for a specific sequence in a column we search for, It doesn't have to be an exact match as long as there is a specific sequence in there.
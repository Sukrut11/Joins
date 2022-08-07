# SQL Joins
/*
Inner Join
Left Join
Right Join
Full Join
Natural Join
Cross Join
*/

show databases;
use jio;
show tables;
select * from freshers;
select * from department;
insert into freshers
values(5, "Ram", "Raghav", 20);

# Inner Join -  Whichever records have matching records in the other table they will be returnded
select freshers.emp_id, freshers.first_name, freshers.last_name, freshers.age, department.department_name
from freshers inner join department
on freshers.emp_id = department.emp_id;

# Left Join -- Priority to the left table
# It returns all the values in the left table, even if they have no matching columns in the right table
# Null value will be represented in the place of right table attributes
select freshers.emp_id, freshers.first_name, freshers.last_name, freshers.age, department.department_name
from freshers left join department
on freshers.emp_id = department.emp_id;

# Right Join
select freshers.emp_id, freshers.first_name, freshers.last_name, freshers.age, department.department_name
from freshers right join department
on freshers.emp_id = department.emp_id;

# Full outer join
select freshers.emp_id, freshers.first_name, freshers.last_name, freshers.age, department.department_name
from freshers left join department
on freshers.emp_id = department.emp_id

union

select freshers.emp_id, freshers.first_name, freshers.last_name, freshers.age, department.department_name
from freshers right join department
on freshers.emp_id = department.emp_id;

# Cross Join - It enters all the possible combinations of every row
select freshers.emp_id, freshers.first_name, freshers.last_name, freshers.age, department.department_name
from freshers cross join department;

# Natural Join - It enters all the possible combinations of every row
select freshers.emp_id, freshers.first_name, freshers.last_name, freshers.age, department.department_name
from freshers natural join department;
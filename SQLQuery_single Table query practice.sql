select *
from employee e
where e.dept_no in ('D1', 'D2')
AND e.emp_no < 15002


select * 
from project p
where p.budget >= 100000

select * 
from project p
where p.budget between 90000 and 303750 -- ALternative> p.budget >= 90000 and p.budget <= 303750 


select p.project_name
from project p
where p.budget < 100000 or p.budget > 150000 --not between 100000 and 150000\\


select 
min(budget) as smallest_b, avg(budget) as average_b, max(budget) as largest_b
from project;

select distinct e.[emp_lname]
from employee e

SELECT [dept_no], count(*) as count_of_employee
from employee
group by dept_no

SELECT [dept_no], count(*) as count_of_employee
from employee
group by dept_no
having count(*) >= 3

select emp_no, project_no
from works_on w 
WHERE w.project_no = 'P2'
and job is Null


select e.emp_fname, emp_lname, emp_no 
from employee e
where e.emp_fname like '_a%'


select d.dept_name, d.location, d.dept_no
from department d
where d.location like '[C-Z]%'

select  distinct e.emp_fname, e.emp_lname
from employee e
order by 1 asc, 2 desc


select p.project_name, p.project_no, p.budget+p.budget
from project p 
where p.budget*0.50 > 50000


select e.emp_fname, e.emp_lname, w.job, w.project_no
from employee e LEFT JOIN works_on w on e.emp_no = w.emp_no;



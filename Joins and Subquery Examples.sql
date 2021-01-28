go
use sample
go

select e.emp_fname, e.emp_lname, p.project_name, p.budget
from 
employee e JOIN works_on w ON e.emp_no = w.emp_no
join project p on w.project_no = p.project_no
where p.budget > 140000



select e.emp_fname, e.emp_lname, p.project_name, p.budget
from 
employee e LEFT JOIN works_on w ON e.emp_no = w.emp_no
LEFT join project p on w.project_no = p.project_no
WHERE e.dept_no = 'D2';


SELECT e.emp_fname, e.emp_lname, sum(p.budget) as TotalBudget
from employee e LEFT JOIN works_on w ON e.emp_no = w.emp_no
LEFT join project p on w.project_no = p.project_no
group by e.emp_fname, e.emp_lname
having sum(p.budget) < 200000



select e.emp_fname, e.emp_lname
from employee e 
where e.emp_no in 
(
select w.emp_no
from works_on w
)

select e.emp_fname, e.emp_lname
from employee e right join works_on w on e.emp_no = w.emp_no

select e.emp_fname, e.emp_lname
from employee e
where exists
(
select w.emp_no
from works_on w
where w.emp_no = e.emp_no
)

INSERT INTO works_on values ( 15000, 'p2', 'SQL Developer', '2019-02-01') 

select * from works_on

select e.emp_fname, e.emp_lname
from employee e 
where e.emp_no in
(
select w.emp_no --count(*)
from works_on w
group by w.emp_no
having count(*) >= 2
)


select e.emp_fname, e.emp_lname
from employee e 
where exists
(
select * -- w.emp_no --count(*)
from works_on w
where e.emp_no = w.emp_no
group by w.emp_no
having count(*) >= 2
)


select e.emp_fname, e.emp_lname
from employee e 

select *
from employee e left join works_on w on e.emp_no = w.emp_no
left join project p on p.project_no = w.project_no


select e.emp_fname, e.emp_lname
from employee e 
where e.emp_no not in
(
select w.emp_no --count(*)
from works_on w
group by w.emp_no

)

select e.emp_fname, e.emp_lname, 'No work' as Status
from employee e 
where not exists
(
select * -- w.emp_no --count(*)
from works_on w
where e.emp_no = w.emp_no
group by w.emp_no
)
union
select e.emp_fname, e.emp_lname, 'More than 1 job' as Status
from employee e 
where e.emp_no in
(
select w.emp_no --count(*)
from works_on w
group by w.emp_no
having count(*) > 1
)


----CONDITIONAL EXPRESSIONS IN SQL------

SELECT *,
CASE WHEN location = 'Dallas' THEN 'TX'
	WHEN location = 'Seattle' THEN 'WA'
	WHEN location = 'Boston' THEN 'MA'
	WHEN location = 'New York' THEN 'NY'
ELSE 'N/A'
END AS State, 
CASE WHEN location = 'London' THEN 'England'
ELSE 'USA'
END AS Country
FROM department


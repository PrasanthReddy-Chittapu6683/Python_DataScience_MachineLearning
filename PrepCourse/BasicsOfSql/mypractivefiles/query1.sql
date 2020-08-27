select * from companydb.employee;
select fname as "First Name", lname as "Last Name" from companydb.employee;
select * from companydb.employee where Sex='M' and salary>=30000;
select * from companydb.employee where Sex='F' or salary>=30000;

select * from companydb.dependent where essn=333445555;
select essn, hours from companydb.works_on where hours between 25 and 30;
select dname,year(mgr_start_date)
from companydb.department;

select * from companydb.employee
where fname like 'j%';
select essn, hours from companydb.works_on where hours between 25 and 35;

select * from companydb.dept_locations where dlocation in ('Houston','Stafford');




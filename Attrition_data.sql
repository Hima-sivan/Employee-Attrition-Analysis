create database employee_attirtion;
use employee_attirtion;
select * from employee_attirtion_new;
select count(*) from employee_attirtion_new;
show columns from employee_attirtion_new;

describe employee_attirtion_new;
alter table employee_attirtion_new drop column `?`;
show columns from employee_attirtion_new;
alter table employee_attirtion_new add column age_category varchar (100);
select min(age) from employee_attirtion_new;
show tables from employee_attirtion;
set sql_safe_updates=0;
update employee_attirtion_new set age_category=case when age>=18 and age<=36 then 'Young adult'
when age between 31 and 45 then 'Adults'
else 'Old age' end;
select age_category,count(age_category) from employee_attirtion_new group by age_category;
select age_category , count(*) from employee_attirtion_new group by age_category order by age_category;
select age_category,count(*) from employee_attirtion_new where attrition='no' group by age_category;
select educationfield,count(*) from employee_attirtion_new where attrition='yes' group by educationfield;
select avg(age) from employee_attirtion_new;
select count(*)  from employee_attirtion_new where distancefromhome >20 order by distancefromhome desc;


select gender,count(*) from employee_attirtion_new where attrition='No' group by gender;
select distancefromhome ,count(*) from employee_attirtion_new where attrition='Yes' group by distancefromhome order by distancefromhome,count(*) ;
select monthlyincome from employee_attirtion_new where attrition='Yes';


select count(*) from employee_attirtion_new where gender='Male' ;
select count(*) from employee_attirtion_new where gender='female';
select jobrole,avg(monthlyincome) from employee_attirtion_new where attrition='yes' group by jobrole order by avg(monthlyincome) desc;
select count(*) from employee_attirtion_new;
select age_category,count(*) from employee_attirtion_new where attrition='YES' group by age_category; 
select distancefromhome,count(*) from employee_attirtion_new where attrition='yes' group by distancefromhome order by distancefromhome desc limit 1 ;
select maritalstatus,count(*) from employee_attirtion_new where attrition='yes' group by maritalstatus;
select count(*) from employee_attirtion_new where attrition='no';


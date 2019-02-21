/*
	Christopher Martinez
	
	CS 325 - Fall 2018

	Date Modified: 12/1/2018
*/

spool 325query-results.txt; 

prompt Query 1: This query projects the owner of each dog 
------------------------------------------------------------	
select owner_fname || ' ' || owner_lname as OWNER ,  dog_nickname as Dog
from Dog d 
join Owner o
on o.dog_id = d.dog_id;  

prompt Query 2: This query shows the different breeds that a dog can be
-------------------------------------------------------------------------
select distinct dog_nickname, dog_breed
from Dog 
join Dog_Background 
on Dog.dog_id = Dog_Background.dog_id ;  


prompt Query 3: This query projects what skills an employee has 
----------------------------------------------------------------

select employee_fname || ' ' || employee_lname as EMPLOYEE, employee_skill
from Employee e
join Employee_Experience ee 
on e.employee_id = ee.employee_id;  

prompt Query 4: This query shows how many skills employees have  
---------------------------------------------------------------------
select employee_fname, employee_lname, count(*)
from Employee e, Employee_Experience ee
where e.employee_id = ee.employee_id  
group by employee_fname,employee_lname
order by count(*), employee_fname;  

prompt Query 5: This query shows the nickname of every dog and their medical conditions
----------------------------------------------------------------------------------------
select distinct dog_nickname, dog_medical_background
from Dog
join Dog_Medical_Background
on Dog.dog_id = Dog_Medical_Background.dog_id;



prompt Query 6: This query projects what Service_Instance provides
prompt           a day_care service and a grooming service 
--------------------------------------------------------------------------------------  
select service_id, service_date 
from Service_Instance 
where service_id in (select service_id 
		     from Service_Type
		     where is_day_care = 'Y'
		     and 
		     is_grooming = 'Y');
----------------------------------------------------------------------------
drop view total_price_4_day_care; 

create view total_price_4_day_care as 
select service_id,total_hours, total_hours * rate_per_hr  as total_price
from Day_Care; 

prompt Query 7: This query uses a view to show us the total price of 
prompt          each service_instance's day_care service_portion 
----------------------------------------------------------------------------
select * 
from total_price_4_day_care; 


-----------------------------------------------------------------------------
drop view total_price_4_grooming; 

create view total_price_4_grooming as
select service_id, groom_level * 1.00 as TOTAL_HOURS, (groom_level * 1.25) + 60  as TOTAL_PRICE
from Grooming;

prompt Query 8: This query uses a view to show us 
prompt the total price of each grooming service provided  
----------------------------------------------------------------------------- 
select * 
from total_price_4_grooming; 


prompt Query 9: This query projects any nutritional info of foods
prompt or chemicals that the dog my be allergic to 
----------------------------------------------------------------------------
select dog_nickname, nutrition_info 
from Dog;  

spool off


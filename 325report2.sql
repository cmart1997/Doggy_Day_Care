/*
  	Christopher Martinez

        CS 325 - Fall 2018

        Date Modified: 12/6/2018
*/

spool report2-results.txt; 

/*
	The purpose of this report is to allow employees to quickly give the customers
	the total price of a specefic day care or grroming service that they were provided, 
	AND to show employees what service instance included both services of day care and grooming 
*/ 


ttitle center 'Report for ' - 
center 'Services that had BOTH Grooming and Day Care Services'

col service_id format a10
col service_date format a12 
col total_hours format a20
----------------------------------------------
select service_id as ID, service_date as "Date Of Service"
from Service_Instance
where service_id in (select service_id
                     from Service_Type
                     where is_day_care = 'Y'
                     and
                     is_grooming = 'Y');




ttitle center 'Report for ' - 
center 'Total Price of Day Care Services'  
-------------------------------------------------------------------
select  service_id as ID, total_hours as "Hours At Day Care", total_price as "Final Price"
from total_price_4_Day_care; 

ttitle center 'Report for ' - 
center 'Total Price of Grooming Service'
break on "Hours Needed To Groom" skip page 
------------------------------------------------------------------
select  service_id as ID, total_hours as "Hours Needed To Groom", total_price as "Final Price"
from total_price_4_grooming; 

spool off

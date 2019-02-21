/*
	Christopher Martinez

	CS 325 - Fall 2018

	Date Modified: 12/6/18
*/


spool report1-results.txt; 

/*
	The purpose of this report is for the Employees to be able to quickly 
	be able to define the owner of ANY dog by simply looking at this report
*/ 
ttitle center 'Report for ' -
center 'Dogs and their  Owners... '

------------------------------------------------------------
select owner_fname || ' ' || owner_lname as OWNER ,  dog_nickname as Dog
from Dog d
join Owner o
on o.dog_id = d.dog_id;

spool off



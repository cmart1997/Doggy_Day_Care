/*
  	Christopher Martinez

        CS 325 - Fall 2018

        Date Modified: 12/6/2018
*/

spool report3-results.txt;

/*
	The purpose of this report is to allow employees to see the dogs nutritional information
	as well as any medical conditions that they MIGHT have. Also they will so what breed(s) the 
	dogs are. 

	THIS INFORMATION IS VERY USEFUL BECAUSE IT ALLOWS EMPLOYEES TO KNOW WHAT IS OKAY TO FEED THE DOGS 
	DURING DAY CARE, 
	AND 
	IT ALLOWS THEM TO KNOW WHAT CLEANING PRODUCTS ARE OKAY TO USE ON THE DOG WHEN/IF IT GETS GROOMED 
*/

ttitle center 'Report for ' -
center 'Dog Nutritional Information (Allergies)'
column dog_nickname format a12

select dog_nickname as DOG_NAME, nutrition_info
from Dog;


ttitle center 'Report for ' -
center 'Dog Breeds'
--------------------------------------------------
select distinct dog_nickname, dog_breed
from Dog
join Dog_Background 
on Dog.dog_id = Dog_Background.dog_id ;

ttitle center 'Report for ' -
center 'Dog Medical Background'
--------------------------------------------------
select distinct dog_nickname, dog_medical_background
from Dog
join Dog_Medical_Background
on Dog.dog_id = Dog_Medical_Background.dog_id;


spool off

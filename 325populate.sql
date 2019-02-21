/* 
	christopher martinez
	
	CS 325 - Fall 2018

	Date Modified: 11/24/18

*/

delete from Day_Care; 

delete from Grooming; 

delete from Training; 

delete from Service_Type;

delete from Service_Instance;

delete from Employee_Experience;

delete from Employee;
 
delete Dog_Medical_Background; 

delete from Dog_Background; 

delete from Dog;

delete from Owner ; 

--inserting the Service instances 
insert into Service_Instance 
values 
(20001, '07-JUN-2017' ,1); 

insert into Service_Instance
values
(11112, '11-JUL-2017', 1);  

insert into Service_Instance
values
(22213, '02-AUG-2017', 2); 

insert into Service_Instance 
values 
(77777, '17-SEP-2018', 1); 

insert into Service_Instance
values
(32432, '09-JAN-2018', 1); 

insert into Service_Instance
values
(37382, '27-SEP-2017', 1); 

insert into Service_Instance
values
(20002, '19-JAN-2018', 1); 

insert into Service_Instance 
values 
(20003, '02-AUG-2018', 2); 

insert into Service_Instance 
values 
(20004, '05-DEC-2017', 1);

insert into Service_Instance 
values 
(20005, '04-MAR-2018', 1); 

insert into Service_Instance 
values 
(20006, '18-SEP-2018', 1);
 
--inserting service_type tables
 
insert into Service_type 
values 
(20001, 'Y', 'N', 'N'); 

insert into Day_Care 
values 
(20001, 5.25, 8.45, 1.10, 7.77); 

insert into Service_type
values 
(11112, 'N', 'Y', 'N'); 

insert into Grooming 
values 
(11112, 1); 

insert into Service_type 
values 
(22213, 'Y', 'Y', 'N'); 

insert into Grooming 
values 
(22213, 3); 

insert into Day_Care 
values 
(22213, 8.0, 7.00, 3.00, 7.77); 

insert into Service_type 
values 
(77777, 'N', 'Y', 'N'); 

insert into Grooming 
values 
(77777, 2); 

insert into Service_type
values 
(32432, 'Y', 'N', 'N'); 

insert into Day_Care 
values 
(32432, 4.00, 11.00, 3.00, 7.77); 

insert into Service_type 
values 
(37382, 'Y','N', 'Y'); 

insert into Day_Care 
values 
(37382, 7.00, 8.00, 3.00, 7.77); 

insert into Training 
values
(37382, 02, 19.99); 

insert into Service_type
values
(20002, 'Y', 'N', 'N'); 

insert into Day_Care 
values 
(20002, 8.00, 8.00, 4.00, 7.77); 

insert into Service_type
values
(20003, 'Y', 'Y', 'N'); 

insert into Grooming 
values 
(20003, 3); 

insert into Day_Care 
values 
(20003, 4.35, 12.30, 5.05, 7.77); 

insert into Service_type 
values
(20004, 'N', 'Y', 'N'); 

insert into Grooming 
values 
(20004, 1); 

insert into Service_type
values 
(20005, 'Y', 'Y', 'Y'); 

insert into Day_Care 
values 
(20005, 2.00, 9.00, 11.00, 7.77); 

insert into Grooming 
values 
(20005, 2); 

insert into Training
values 
(20005, 07, 24.99); 

insert into Service_type 
values 
(20006, 'Y', 'N', 'N');

insert into Day_Care
values 
(20006, 9.00, 7.00, 4.00, 7.77); 

--inserting Employee info 
insert into Employee
values 
(121, 'Ed','Chan', 12.0, '19-FEB-2018'); 

insert into Employee
values 
(150, 'Samantha','Myers', 15.50, '11-JUL-2016');

insert into Employee
values 
(777, 'Christian', 'Martinez', 17.0, '19-JUN-2015');

insert into Employee
values 
(174, 'Juan', 'Gonzalez', 27.5, '15-SEP-2014') ;

insert into Employee
values 
(134, 'Maria', 'Salas', 33.25, '07-APR-2012');

insert into Employee 
values 
(231, 'Scarlet', 'Ash',  14.0, '29-JAN-2017');

insert into Employee
values
(444, 'Jose', 'Valasquez', 17.5, '23-NOV-2016');

insert into Employee 
values 
(724, 'Jesus','Lopez',  21.25, '11-JUL-2015');

insert into Employee
values 
(876, 'Jermaine', 'Williams', 28.25, '28-MAY-2016'); 

insert into Employee 
values 
(739, 'Miley', 'Butler', 12.0 , '15-FEB-2018'); 

--inserting the employees experience 
insert into Employee_Experience 
values 
(134, 'Manager');

insert into Employee_Experience	
values
(134, 'Day Care Supervisor');

insert into Employee_Experience	
values
(174, 'Manager'); 

insert into Employee_Experience	
values
(777, 'Groomer'); 

insert into Employee_Experience
values
(777, 'Receptionist');

insert into Employee_Experience	
values
(150, 'Groomer'); 

insert into Employee_Experience	
values
(121, 'Receptionist'); 

insert into Employee_Experience
values
(231, 'Receptionist'); 

insert into Employee_Experience
values
(444, 'Day Care Supervisor');

insert into Employee_Experience
values
(724, 'Groomer'); 

insert into Employee_Experience 
values 
(876, 'Trainer'); 

insert into Employee_Experience
values 
(876, 'Day Care Supervisor'); 

--now inserting into the dogs table
insert into Dog 
values 
(0123, 'Max', 'M', 'Allergic to peanuts ', 3);

insert into Dog
values
(1111, 'T-Bone', 'M', 'Allergic to Pork', 1); 

insert into Dog
values
(3333, 'Kali', 'F', 'Allergic to Chicken  ', 2); 

insert into Dog
values
(2121, 'Tammy', 'F', 'Lavender Allergy', 3); 

insert into Dog
values
(7777, 'Lucky', 'M', 'Allergic to Sodium benzoate', 1);

insert into Dog
values
(5678, 'Ani', 'F', 'Chicken Allergy', 4); 

insert into Dog
values
(9999, 'Kayo', 'M', 'Beef Allergy', 5); 

insert into Dog
values
(6464, 'June', 'F', 'Allergic to Artificial Colors ', 1); 

insert into Dog
values
(1212, 'Kobe', 'M', 'Allergic to peanuts ', 2); 

insert into Dog
values
(3232, 'Foxy', 'F', 'Milk Allergy', 3); 

--now entering the dogs background 
insert into Dog_Background
values
(3232, 'Siberian Husky'); 

insert into Dog_Background 
values
(1212, 'German Shepherd'); 

insert into Dog_Background 
values
(1212, 'Golden Retriever'); 

insert into Dog_Background 
values
(6464, 'Labrodor'); 

insert into Dog_Background 
values
(6464, 'Golden Retriever');

insert into Dog_Background 
values
(9999, 'Bull mastiff'); 

insert into Dog_Background
values
(5678, 'Golden Retriever'); 

insert into Dog_Background
values
(7777, 'Chow'); 

insert into Dog_Background
values
(7777, 'Golden Retriever');

insert into Dog_Background
values
(2121, 'Pitbull'); 

insert into Dog_Background
values
(3333, 'Husky'); 

insert into Dog_Background
values
(3333, 'German Shepherd'); 

insert into Dog_Background
values
(1111, 'Chow'); 

insert into Dog_Background
values
(0123, 'German Shepherd');


--inserting Dog medical background 

insert into Dog_Medical_Background
values 
(3333, 'Tape Worms'); 

insert into Dog_Medical_Background
values 
(2121, 'Flea Infestation'); 

insert into Dog_Medical_Background
values 
(9999, 'Overweight'); 


--inserting info about owners 

insert into Owner
values 
(9999, 'Bob', 'Lowe', 1); 

insert into Owner
values
(0123, 'Alan', 'Peters', 0);

insert into Owner
values
(1111, 'Stephanie', 'Maxwell', 0); 

insert into Owner 
values 
(3333, 'Floyd', 'Jackson', 1); 

insert into Owner
values
(2121, 'Tommy', 'Brady', 1); 

insert into Owner
values
(7777, 'Hulk', 'Hogan', 0); 

insert into Owner
values
(5678, 'Jennifer', 'Marquez', 1); 

insert into Owner
values
(3232, 'Bill', 'Montana', 1); 

insert into Owner
values
(6464, 'Super', 'Mario', 1); 

insert into Owner
values
(1212, 'Ronnie', 'Drake', 0); 

 

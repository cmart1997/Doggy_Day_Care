/*
	Christopher Martinez 

	Date modified: 11/11/18 

	CS325-FALL2018
*/ 

--Service instance entity class to represent the event of a service provided 
drop table Service_Instance cascade constraints; 

create table Service_Instance
(SERVICE_ID char(5), 
service_date date, 
number_of_services smallint,
primary key (service_id)
);  

--service type entity class that represents the type of service provided in service instance 
--also can be the supertype of one of many services (grooming, day care, and training)  
drop table Service_type cascade constraints;

create table Service_type
(SERVICE_ID char(5),
is_day_care char(1) check(is_day_care in ('Y', 'y', 'N', 'n')) not null,
is_grooming char(1) check(is_grooming in ('Y', 'y', 'N', 'n')) not null, 
is_training char(1) check(is_training in ('Y', 'y', 'N', 'n')) not null,
foreign key (service_id) references Service_Instance); 
  
--day care subtype that reprensents the day care service type 
drop table Day_Care cascade constraints; 

create table Day_Care 
(SERVICE_ID char(5),
total_hours decimal(4,2), -- (hours.minutes) 
time_in decimal(4,2), 
time_out decimal(4,2),
rate_per_hr decimal(5,2), 
foreign key (service_id) references Service_Instance); 

--day care subtype that reprensents the grooming  service type 
drop table Grooming cascade constraints; 

create table Grooming 
(SERVICE_ID char(5), 
groom_level smallint check(groom_level in (1, 2, 3)), 
foreign key (service_id) references Service_Instance); 

--day care subtype that	reprensents the	training service type 

drop table Training cascade constraints ; 

create table Training 
(SERVICE_ID char(5), 
training_course_id char(2), 
course_price decimal(4,2),
foreign key (service_id) references Service_Instance) ; 


--the entity class that represents the Employee 
--the Employee entity is who provides the Service instance class
drop table Employee cascade constraints ; 

create table Employee 
(EMPLOYEE_ID char(3) not null,
employee_fname varchar2(10),
employee_lname varchar2(21),  
employee_wage decimal(5,2), 
employee_start_date date, 
primary key (employee_id)); 

--represents the Employee_Experience that the employee has 
drop table Employee_Experience cascade constraints; 

create table Employee_Experience
(EMPLOYEE_ID char(3) not null, 
employee_skill varchar2(22),  
foreign key (employee_id) references Employee);

--the dog entity class represents the Dog who the Service instance is provided for 
--the dog is also is owned by the owner entity class 
drop table Dog cascade constraints; 

create table Dog 
(DOG_ID char(4), 
dog_nickname varchar2(10), 
dog_gender char(1), 
nutrition_info varchar2(45), 
behavior_level smallint, --1 is extremely well behaved and 5 is extremely untamed 
primary key (dog_id));

--the dog background entity repesents the dog_background that is associated with the dog 
drop table Dog_Background; 

create table Dog_Background
(DOG_ID char(4), 
dog_breed varchar2(28), 
foreign key (dog_id) references Dog); 

--the dog medical background represents any condition that the dog has 
--that we should know of when providing our services 
drop table Dog_Medical_Background; 

create table Dog_Medical_Background
(DOG_ID char(4), 
dog_medical_background varchar2(30), 
foreign key (dog_id) references Dog);

--the owner entity class represent who the dog belongs to 
--this is also who pays for the service that is provided 
--for their furry friends 
drop table Owner; 

create table Owner
(DOG_ID char(4), 
owner_fname varchar2(17), 
owner_lname varchar2(22),
membership_level char(1), 
foreign key (dog_id) references Dog); 



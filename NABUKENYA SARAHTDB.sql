CREATE DATABASE  TrainingCentreDB1;
Create table Traines(
    trainee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    course VARCHAR(50),
    age INT,
    fees DECIMAL(10,2)
);

Insert into Traines (trainee_id, first_name,last_name,course, age, fees) VALUES
(100, 'Sarah', 'Nabukenya', 'BSIT', 23, 3500000.00),
(101, 'Vicky', 'Lubega', 'BBA', 21, 2500000.00),
(102, 'Esther', 'Mirembe', 'DIT', 25, 1600000.00),
(103, 'Emma', 'Bukenya', 'BJMC', 20, 3000000.00),
(104, 'Jenny', 'Miranda', 'BSIT', 19, 1000000.00),
(105, 'Angel', 'Kirabo','BVAD', 24, 3200000.00);

##Add COLUMN
ALTER table Traines ADD email VARCHAR(100);

## Increas first_name to 100 characters
ALTER Table Traines MODIFY first_name VARCHAR(100);

##rename email to email_address
alter table Traines RENAME column email to email_address;

##Add phone after last_name
alter Table Traines ADD phone VARCHAR(15) after last_name;

DESCRIBE Traines;

#task2 primary 
alter table Traines add primary key (trainee_id);

DESCRIBE Trainees;

##Task3 DML updating and deleting
update Traines set course = 'BSIT' where trainee_id = 102;

##increase fees by 100000 for one course

update Traines set fees= fees+100000 where course =  'BVAD';

##delete one traine 
delete from Traines where trainee_id = 104;

##total number of Traines
select count(*) as total_traines from Traines;

#total fees paid
select sum(fees) as total_fees from Traines;

##Average fees
select avg(fees) as average_fees from Traines;

#highest fees
select max(fees) as highest_fees from Traines;

#Lowest fees
select min(fees) as lowest_fees from Traines;

#highest to lowest fees
select* from Traines order by fees Desc;

#alphabetical by first last_name
select * from Traines order by first_name;

#Challenge question
select*from Traines order by course ASC, fees DESC;

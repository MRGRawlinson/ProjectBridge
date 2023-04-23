Create Database Bridge2;

Use Bridge2;

Create table Organization
(
Program_ID Int Not Null AUTO_INCREMENT,
Program_Name char(40), 
Organization_Name char(50), 
Organization_Type char(25), 
Organization_ID int Not Null ,
Primary Key (Program_ID)
);

insert into Organization
values (1, 'Program1', 'Organization1', 'Type1', 1),
		(2, 'Program2', 'Organization1', 'Type2', 2),
		(3, 'Program1', 'Organization2', 'Type1', 3),
		(4, 'Program2', 'Organization2', 'Type2', 4),
		(5, 'Program1', 'Organization3', 'Type1', 5),
		(6, 'Program2', 'Organization3', 'Type2', 6),
		(7, 'Program1', 'Organization4', 'Type1', 7),
		(8, 'Program2', 'Organization4', 'Type2', 8),
		(9, 'Program1', 'Organization5', 'Type1', 9),
        (10, 'Program2', 'Organization5', 'Type2', 10);
        
	

Create table Program
(
Program int Not Null, 
Program_ID int not null,
Program_Name char(40), 
Days_Operation char(75), 
Time_Available char(75),
Website varchar(512),
Phone_Number char(13),
Address char(60),
Email varchar(40),
Primary Key (Program),
Foreign key (Program_ID) references Organization(Program_ID)

);



insert into Program
values ( 1, 1, 'Program1', 'Monday-Friday', '8am -5pm', 'Website1','123-456-7890','address1','email1'),
	   ( 2, 2, 'Program2', 'Saturday', '12-4pm', 'Website2','123-456-7890','address2','email2'),
	   ( 3, 3, 'Program1', 'Monday-Friday', '8am -5pm', 'Website3','123-456-7890','address3','email3'),
       ( 4, 4, 'Program2', 'Monday-Friday', '8am -5pm', 'Website4','123-456-7890','address4','email4'),
       ( 5, 5, 'Program1', 'Monday-Friday', '9am-4pm', 'Website5','123-456-7890','address5','email5'),
       ( 6, 6, 'Program2', 'Monday-Friday', '8am -5pm', 'Website6','123-456-7890','address6','email6'),
       ( 7, 7, 'Program1', 'Tuesday & Thursday', '3pm-7pm', 'Website7','123-456-7890','address7','email7'),
       ( 8, 8, 'Program2', 'Wendesday-Friday', '8am -5pm', 'Website8','123-456-7890','address8','email8'),
       ( 9, 9, 'Program1', 'Monday-Friday', '8am -5pm', 'Website9','123-456-7890','address9','email9'),
       ( 10, 10,'Program2', 'Monday-Friday', '8am -5pm', 'Website10','123-456-7890','address10','email10');
       

Create Table Internet(
Internet_ID int not null auto_increment,
Program_ID int,
Program_Name char(40),
Service_Type char(40),
Internet_Cost Decimal(10,2),
Max_Speed char(5),
Internet_Eligibility char(40),
Primary Key (Internet_ID),
foreign key (Program_ID) references Organization(Program_ID)


);
insert into Internet
values ( 1, 1, 'Program1', 'BroadBand1', '50.00', '50mbs','Eligibility1'),
	   ( 2, 2, 'Program2', 'Free Wifi', '0.00', '1Gbs','Eligibility2'),
	   ( 3, 3, 'Program1', 'Device Rental', '0.00', '50mbs','Eligibility3'),
       ( 4, 4, 'Program2', 'Discount Device', '0.00', '25mbs','Eligbility4'),
       ( 5, 5, 'Program1', 'Device Turn in', '0.00', '1Gbs','Eligibility5'),
       ( 6, 6, 'Program1', 'BroadBand1', '50.00', '50mbs','Eligibility1'),
	   ( 7, 7, 'Program2', 'Free Wifi', '0.00', '1Gbs','Eligibility2'),
	   ( 8, 8, 'Program1', 'Device Rental', '0.00', '50mbs','Eligibility3'),
       ( 9, 9, 'Program2', 'Discount Device', '0.00', '25mbs','Eligbility4'),
       ( 10, 10, 'Program1', 'Device Turn in', '0.00', '1Gbs','Eligibility5');
      

Create Table Device(
Device_ID int not null auto_increment,
Program_ID int, 
Program_Name char(40),
Device_Type char(40),
Device_Cost Decimal(10,2),
Device_Eligibility char(40),
Primary Key (Device_ID),
foreign key (Program_ID) references Organization(Program_ID)

);

insert into Device
values (1, '1', 'Program1', 'Device1', 50.00,'Eligibility1'),
		(2, '2', 'Progam2', 'Device2', 25.00,'Eligibility2'),
		(3, '3', 'Program1', 'Device1', 50.00,'Eligibility3'),
		(4, '4', 'Program2', 'Device2', 25.00,'Eligibility4'),
		(5, '5', 'Program1', 'Device1', 50.00,'Eligibility5'),
		(6, '6', 'Program2', 'Device2', 25.00,'Eligibility6'),
		(7, '7', 'Program1', 'Device1', 50.00,'Eligibility7'),
		(8, '8', 'Program2', 'Device2', 25.00,'Eligibility8'),
		(9, '9', 'Program1', 'Device1', 50.00,'Eligibility9'),
        (10,'10', 'Program2', 'Device2', 25.00,'Eligibility10');

Create table SkillSupport(
Skill_ID int not null auto_increment,
Program_ID int, 
Program_Name char(40),
Training_Format char(40),
Instruction_Type char(20),
Skill_Cost decimal(10,2),
Skill_Eligibility char(40),
Skill_Level char(15),
Primary Key (Skill_ID),
foreign key (Program_ID) references Organization(Program_ID)

);

insert into SkillSupport
values (1, 1,'Program1','Training1','On-Site',50.00,'Skill1','Beginner'),
	   (2, 2,'Program2','Training2','Virtual',50.00,'Skill2','Beginner'),
       (3, 3,'Program1','Training3','On-Site',50.00,'Skill3','Intermediate'),
       (4, 4,'Program2','Training4','On-Site',72.00,'Skill4','Beginner'),
       (5, 5,'Program1','Training5','On-Site',50.00,'Skill5','Beginner'),
       (6, 6,'Program2','Training6','On-Site',60.00,'Skill6','Beginner'),
       (7, 7,'Program1','Training7','Virtual',50.00,'Skill7','Intermediate'),
       (8, 8,'Program2','Training8','On-Site',60.00,'Skill8','Beginner'),
       (9, 9,'Program1','Training9','On-Site',75.00,'Skill9','Beginner'),
       (10, 10,'Program2','Training10','On-Site',00.00,'Skill10','Beginner');
	


Create Table PublicDeviceAccess(
DeviceAccess_ID int not null auto_increment,
Program_ID int, 
Program_Name char(40),
Technology_Available char(25),
PublicDevice_Cost Decimal(10,2),
Terms_of_Use char(50),
Tech_Support Boolean,
Primary Key (DeviceAccess_ID),
foreign key (Program_ID) references Organization(Program_ID)
);

insert into PublicDeviceAccess
values  (1,1, 'Program1','Device','100.00','Terms1','1'),
		(2,2, 'Program2','HotSpot','10.00','Terms2','1'),
        (3,3, 'Program1','Device','100.00','Terms3','1'),
        (4,4, 'Program2','HotSpot','10.00','Terms4','0'),
        (5,5, 'Program2','HotSpot','100.00','Terms6','1'),
        (7,7, 'Program1','Device','75.00','Terms7','1'),
        (8,8, 'Program2','Device','100.00','Terms8','0'),
        (9,9, 'Program1','Tablet','25.00','Terms9','1'),
        (10,10,'Program2','Device','100.00','Terms10','1');
        







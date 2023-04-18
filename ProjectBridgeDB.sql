Create Database Bridge;


Create table Organization
(
Program_ID Int Not Null AUTO_INCREMENT,
Program_Name char(40), 
Organization_Name char(50), 
Organization_Type char(25), 
Organization_ID int Not Null auto_increment,
Primary Key (Program_ID)
);

Create table Program
(
Program int Not Null, 
Program_ID int not null,
Program_Name char(40), 
Days_Operation char(75), 
Time_Available char(75),
Website varchar(512),
Phone_Number char(10),
Address char(60),
Email varchar(40),
Primary Key (Program),
foreign key (Program_ID) references Organization(Program_ID),
Foreign Key (Program_Name) references Organization(Program_Name)
);

Create Table Internet(
Internet_ID int not null auto_increment,
Program_ID int,
Program_Name char(40),
Service_Type char(40),
Internet_Cost Decimal(10,2),
Max_Speed char(5),
Internet_Eligibity char(40),
Primary Key (Internet_ID),
foreign key (Program_ID) references Organization(Program_ID),
foreign key (Program_Name) references Organization(Program_Name)

);

Create Table Devices(
Device_ID int not null auto_increment,
Program_ID int, 
Program_Name char(40),
Device_Type char(40),
Device_Cost Decimal(10,2),
Device_Eligibity char(40),
Primary Key (Device_ID),
foreign key (Program_ID) references Organization(Program_ID),
foreign key (Program_Name) references Organization(Program_Name)
);

Create table SkillSupport(
Skill_ID int not null auto_increment,
Program_ID int, 
Program_Name char(40),
Training_Format char(40),
Instruction_Type char(20),
Skill_Cost decimal(10,2),
Skill_Eligibity char(40),
Skill_Level char(15),
Primary Key (Skill_ID),
foreign key (Program_ID) references Organization(Program_ID),
foreign key (Program_Name) references Organization(Program_Name)

);

Create Table PublicDeviceAccess(
DeviceAccess_ID int not null auto_increment,
Program_ID int, 
Program_Name char(40),
Technology_Available char(25),
Access_Type char(20),
PublicDevice_Cost Decimal(10,2),
Terms_of_Use char(50),
Tech_Support Boolean,
Primary Key (DeviceAccess_ID),
foreign key (Program_ID) references Organization(Program_ID),
foreign key (Program_Name) references Organization(Program_Name)
);





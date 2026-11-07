
conn sys as sysdba

drop user ph_ddd56 cascade;

create user ph_ddd56
identified by 123
quota unlimited on users;

grant create session, create table, create sequence,
      create synonym, create view, create procedure,
      create trigger
to    ph_ddd56 ;

grant dba to ph_ddd56 identified by 123;

conn ph_ddd56/123

--===============
--Table User_type
--===============

drop table user_type cascade constraint;
 
create table user_type
(
 user_type_id           number,
 user_type_name         varchar2(100) constraint user_type_user_type_name_nn not null
                                     constraint user_type_user_type_name_uk unique,
 user_type_description  varchar2(250),
 action_user            varchar2(100) default user,
 action_date_time       date         default sysdate
);

alter table user_type
add         constraint user_type_user_type_id_pk primary key(user_type_id);


--===============
--Table User_Status
--===============

drop table user_Status cascade constraint;
 
create table user_Status
(
 user_Status_id          number,
 user_Status_name        varchar2(100) constraint user_Status_user_Status_name_nn not null
                                    constraint user_Status_user_Status_name_uk unique,
 user_Status_description varchar2(150),
 action_user             varchar2(100) default user,
 action_date_time        date         default sysdate
);

alter table user_Status
add         constraint user_Status_user_Status_id_pk primary key(user_Status_id);


--=============== 
--Table Branch
--===============

drop table Branch cascade constraint;

create table Branch
(
 Branch_id             number,
 Branch_Name           varchar2(100) constraint Branch_id_nn not null,
 Cell_Number           varchar2(100) constraint Branch_Cell_Number_uk  unique,
 Branch_Address        varchar2(250),
 Email                 varchar2(150) constraint Branch_Email_Uk Unique,
 action_User           varchar2(100) default user,
 action_date           date          default sysdate
);

alter table Branch
add         constraint Branch_Branch_id_pk primary key(Branch_id);

--=============== 
--Table User_Info
--===============

drop table User_Info cascade constraint;

create table User_Info
(
 User_Info_id             number,
 User_type_id             number,
 User_Status_id           number,
 Employee_ID              number,
 Branch_ID                number,
 Username                 varchar2(100)  constraint User_Info_user_Username_nn not null
                                        constraint User_Info_user_Username_uk unique,
 password                 varchar2(100) constraint User_Info_user_password_nn not null, 
 user_image               blob,
 action_User              varchar2(100)  default user,
 action_date              date          default sysdate
);

alter table User_Info
add         constraint User_Info_User_Info_id_pk primary key(User_Info_id);

alter table User_Info
add         constraint User_Info_User_type_id_fk foreign key(User_type_id)
references  User_type(User_type_id);



--================ 
--Table Department
--================

drop table Department cascade constraint;

create table department
(
 department_id        number,
 department_name      varchar2(100) constraint department_department_name_nn not null
                                    constraint department_department_name_uk unique,
 department_location  varchar2(100),
 department_country   varchar2(100),
 action_User          varchar2(100) default user,
 action_date_time     date          default sysdate
);

alter table department
add   constraints department_id_pk primary key(department_id);




--================= 
--Table Designation
--=================

drop table Designation cascade constraint;

create table designation
(
 designation_id           number,
 designation_name         varchar2(100)  constraint designation_designation_name_nn not null
                                         constraint designation_designation_name_uk unique,
 designation_description  varchar2(150),
 action_User              varchar2(100)  default user,
 action_date_time         date           default sysdate
);

alter table designation
add         constraints designation_id_pk primary key(designation_id);


--=============== 
--Table Employee
--===============

drop table Employee cascade constraint;

create table Employee
(
 Employee_ID           number,
 department_id         number,
 designation_id        number,
 Branch_ID             number,
 First_name            varchar2(100) constraint Employee_First_name_nn not null,
 last_name             varchar2(100) constraint Employee_last_name_nn not null,
 Mother_name           varchar2(100),	
 Father_Name           varchar2(100),	
 Present_Address       varchar2(350),	
 Parmanent_Address     varchar2(350),	
 Salary                Number        constraint Employee_salary_ck check(Salary > 0),	
 Join_Date             Date          Default Sysdate,
 Nid                   Number        constraint Employee_Nid_uk Unique,	
 Email                 Varchar2(350) constraint Employee_Email_uk Unique,	
 Cell_Number           varchar2(100) constraint Employee_Cell_Number_uk Unique,	
 Date_of_Birth         Date,	
 Gender                varchar2(100),	
 Religion              varchar2(100),	
 Nationality           varchar2(100),	
 Blood_Group           varchar2(100),	
 Employee_image        Blob,	
 action_User           varchar2(50)   Default user,	
 action_date_Time      date           Default Sysdate
);	
	
alter table Employee
add         constraint Employee_Employee_ID_pk primary key(Employee_ID);

alter table Employee
add         constraint Employee_department_id_fk foreign key(department_id)
references  department(department_id);

alter table Employee
add         constraint Employee_designation_id_fk foreign key(designation_id)
references  designation(designation_id);

alter table Employee
add         constraint Employee_Branch_ID_fk foreign key(Branch_ID)
references  Branch(Branch_ID);


--===============
--Table Expence_type
--===============
create table Expense_type
(
 Expense_Type_ID         Number,	
 Expense_Type_Name       Varchar2(100)  constraint Expense_Type_Expense_Type_Name_nn not null
                                        constraint Expense_Type_Expense_Type_Name_UK unique,
 Expense_description     varchar2(150),
 action_User             Varchar2(100)  Default user,	
 action_Date_Time        Date           Default Sysdate	
);

alter table Expense_Type
add constraints Expense_Type_Expense_Type_ID_pk primary key(Expense_Type_ID);


--============== 
--Table Expence_M
--==============

create table Expense_M
(
 Expense_M_ID       Number,
 Branch_id          Number,	
 Expense_Date       Date  default sysdate,
 action_User        Varchar2(100) default user,
 action_date        Date default sysdate
);
alter table Expense_M
add constraints Expense_M_ID_pk primary key(Expense_M_ID);

alter table Expense_M
add constraints Expense_M_Branch_id_fk foreign key(Branch_id)
references Branch(Branch_id);

--============= 
--Table Expense_D
--=============
drop table Expense_D cascade constraint;
create table Expense_D
(
 Expense_M_ID       Number,
 Expense_Type_ID    Number        constraint Expense_D_Expense_Type_ID_nn not null,	
 Expense_Amount     Number        constraint Expense_D_Expense_Amount_nn not null,	
 Payment_mode       Varchar2(100) constraint Expense_D_Payment_mode_nn not null,
 Expense_by         Number,	
 Description        Varchar2(250),                           	
 action_User        Varchar2(100) default user,
 action_date        Date default sysdate
);
alter table Expense_D
add constraints Expense_D_Expense_Type_ID_fk Foreign key(Expense_Type_ID)
references Expense_Type(Expense_Type_ID);

alter table Expense_D
add constraints Expense_D_Expense_M_ID_fk foreign key(Expense_M_ID)
references Expense_M(Expense_M_ID);
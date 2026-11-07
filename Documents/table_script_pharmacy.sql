
sys as sysdba

drop user ph_ddd56 cascade

create user ph_ddd56
identified by 123
quota unlimited on users;

grant create session, create table, create sequence,
      create synonym, create view, create procedure,
      create trigger
to    ph_ddd56 ;

grant dba to ph_ddd56 identified by 123;

conn ph_ddd56/123



--1.
--===============
--Table User_type
--===============

drop table user_type cascade constraint;
 
create table user_type
(
 user_type_id        number,
 user_type_name      varchar2(100) constraint user_type_user_type_name_nn not null
                                   constraint user_type_user_type_name_uk unique,
 user_description    varchar2(250),
 action_user         varchar2(100) default user,
 action_date_time    date         default sysdate
);

alter table user_type
add         constraint user_type_user_type_id_pk primary key(user_type_id);



--2.
--===============
--Table User_Status
--===============

drop table user_Status cascade constraint;
 
create table user_Status
(
 user_Status_id        number,
 user_Status_name      varchar2(100) constraint user_Status_user_Status_name_nn not null
                                     constraint user_Status_user_Status_name_uk unique,
 user_status_description      varchar2(250),
 action_user           varchar2(100) default user,
 action_date_time      date         default sysdate
);

alter table user_Status
add         constraint user_Status_user_Status_id_pk primary key(user_Status_id);



--3.

--============
--Branch Table
--============

drop table branch cascade constraint;

create table branch
 (
  branch_id           number,
  branch_name         varchar2(100)  constraint branch_branch_name_nn not null,
  phone_number        varchar2(100)  constraint branch_phone_number_uk unique,
  branch_address      varchar2(250),
  email               varchar2(100)  constraint branch_email_uk unique,
  bracnch_description varchar2(250),
  action_user         varchar2(100)   default user,
  action_date_time    date  default  sysdate
 );

alter table branch
add constraint branch_branch_id_pk primary key(branch_id);


--4.
--================ 
--Table Department
--================

drop table Department cascade constraint;

create table department
(
 department_id        number,
 department_name      varchar2(100) constraint department_department_name_nn not null
                                    constraint department_department_name_uk unique,
 department_location  varchar2(250),
 department_country   varchar2(100),
 department_description varchar2(250),
 action_User          varchar2(100) default user,
 action_date_time     date          default sysdate
);

alter table department
add   constraints department_department_id_pk primary key(department_id);



--5.
--================= 
--Table Designation
--=================

drop table Designation cascade constraint;

create table designation
(
 designation_id          number,
 designation_name        varchar2(100)  constraint designation_designation_name_nn not null,
 designation_description varchar2(250),
 action_User             varchar2(100)  default user,
 action_date_time        date           default sysdate
);

alter table designation
add         constraints designation_designation_id_pk primary key(designation_id);


--6.

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
 First_name            varchar2(100) constraint Employee_Employee_First_name_nn not null,
 last_name             varchar2(100) constraint Employee_Employee_last_name_nn not null,
 Mother_name           varchar2(100),	
 Father_Name           varchar2(100),	
 Present_Address       varchar2(250),	
 Parmanent_Address     varchar2(250),	
 Salary                Number        constraint Employee_salary_ck check(Salary > 0),	
 Join_Date             Date          Default Sysdate,
 Nid                   Number        constraint Employee_Nid_uk Unique,	
 Email                 Varchar2(100) constraint Employee_Email_uk Unique,	
 Cell_Number           varchar2(100) constraint Employee_Cell_Number_uk Unique,	
 Date_of_Birth         Date,	
 Gender                varchar2(100),	
 Religion              varchar2(100),	
 Nationality           varchar2(100),	
 Blood_Group           varchar2(100),	
 Employee_image        Blob,	
 action_User           varchar2(100)  Default user,	
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


--7.
--=============== 
--Table User_Info
--===============

drop table User_Info cascade constraint;

create table User_Info
(
 User_Info_id             number,
 User_type_id             number,
 Username                 varchar2(100)  constraint User_Info_user_Username_nn not null
                                         constraint User_Info_user_Username_uk unique,
 password                 varchar2(100), 
 user_image               blob,
 action_User              varchar2(100)  default user,
 action_date              date          default sysdate
);

alter table User_Info
add         constraint user_info_User_Info_id_pk primary key(User_Info_id);

alter table User_Info
add         constraint user_info_User_type_id_fk foreign key(User_type_id)
references  User_type(User_type_id);


--8.

--====================
--Table Expence_type
--===================
drop table expense_type cascade constraint;


create table Expense_type
(
 Expense_Type_ID           Number,	
 Expense_Type_Name         Varchar2(100)  constraint Expense_Type_Expense_Type_Name_nn not null
                                          constraint Expense_Type_Expense_Type_Name_UK unique,
 expense_type_description  varchar2(250),
 action_User               Varchar2(100)  Default user,	
 action_Date_Time          Date           Default Sysdate	
);

alter table Expense_Type
add constraints Expense_Type_Expense_Type_ID_pk primary key(Expense_Type_ID);




--9.
--============== 
--Table Expence_M
--==============
drop table expense_m cascade constraint;


create table Expense_M
(
 Expense_M_ID       Number,
 Branch_id          Number,	
 Expense_Date       Date,
 action_User        Varchar2(100) default user,
 action_date        Date default sysdate
);

alter table Expense_M
add constraints  Expense_M_ID_pk primary key(Expense_M_ID);

alter table Expense_M
add constraints  Expense_M_Branch_id_fk foreign key(Branch_id)
references Branch(Branch_id);





--10.

--===============
--Table Expense_D
--===============

drop table Expense_D cascade constraint;


create table Expense_D
(
 Expense_d_id       number,
 Expense_M_ID       Number,
 Expense_Type_ID    Number,        	
 Expense_Amount     Number        constraint Expense_D_Expense_Amount_nn not null,	
 Payment_mode       Varchar2(100) constraint Expense_D_Payment_mode_nn not null,
 Expense_by         Varchar2(100),	
 Description        Varchar2(250),                           	
 action_User        Varchar2(100) default user,
 action_date        Date default sysdate
);

alter table expense_d
add    constraints  expense_d_expense_d_id_pk  primary key(expense_d_id);


alter table Expense_D
add constraints Expense_D_Expense_Type_ID_fk Foreign key(Expense_Type_ID)
references Expense_Type(Expense_Type_ID);


alter table Expense_D
add constraints Expense_D_Expense_M_ID_fk foreign key(Expense_M_ID)
references Expense_M(Expense_M_ID);


--11.

--====================
--Medicine_Type Table
--====================

drop table medicine_type cascade constraint;


create table medicine_type
 (
  medicine_type_id             number,
  medicine_type_name           varchar2(100)  constraint medicine_type_medicine_type_name_nn not null
                                          constraint medicine_type_medicine_type_name_uk unique,
  medicine_type_description    varchar2(250),
  action_user                  varchar2(100)  default user,
  action_date_time         date           default sysdate
 );

alter table medicine_type
add         constraint medicine_type_medicine_type_id_pk primary key(medicine_type_id);




12.

--==================
--medicine_Categories
--==================

drop table medicine_categories cascade constraint;

create table medicine_categories
(
 medicine_categories_id       number,
 medicine_categories_name     varchar2(100)   constraint medicine_categories_medicine_categories_name_uk unique,                                      
 Action_User                  Varchar2(100)   Default User,
 Action_Date_Time             Date            Default Sysdate
);

Alter table medicine_categories
add   constraint  medicine_categories_medicine_categories_id_pk primary key(medicine_categories_id);




13.

--===========
--Unit
--==========
drop table unit cascade constraint;

create table unit 
(
 unit_id              number,
 unit_name            varchar2(100),	
 unit_quantity        number,
 Strength             varchar2(50),	
 Action_User          Varchar2(100)  Default User,
 Action_Date_Time     Date           Default Sysdate
);

Alter table unit
add   constraint unit_unit_id_pk primary key(unit_id);


14.

--==============
--medicine Table
--==============

drop table medicine cascade constraint;

create table medicine
 (
  medicine_id              number,
  medicine_type_id         number,
  medicine_categories_id   number,
  unit_id                  number,
  medicine_name            varchar2(200)   constraint medicine_medicine_name_nn not null
                                           constraint medicine_medicine_name_uk unique,
  medicine_code            varchar2(100)    constraint medicine_medicine_code_uk unique,
  medicine_purchase_price  number,
  medicine_sales_price     number,
  medicine_image           blob,
  medicine_expired_date    date,
  rack_number              varchar2(50),
  medicine_tag             varchar2(50),
  medicine_description     varchar2(250),
  action_user              varchar2(100)    default user,
  action_date_time         date             default sysdate
 );

alter table medicine
add         constraint medicine_medicine_id_pk primary key(medicine_id);


alter table medicine
add   constraint  medicine_medicine_type_id_fk foreign key(medicine_type_id)
references        medicine_type(medicine_type_id);


alter table medicine 
add   constraint  medicine_medicine_categories_id_fk foreign key(medicine_categories_id)
references        medicine_categories(medicine_categories_id);


alter  table medicine
add    constraint  medicine_unit_id_fk  foreign key(unit_id)
references         unit(unit_id);



15.
--==============
--Representative
--==============

drop table Representative cascade constraint;

create table Representative
(		
 representative_id      number,
 representative_name    varchar2(100)    constraint   representative_representative_name_nn not null,	
 phone                  varchar2(100)    constraint   representative_phone_nn not null
                                         constraint   representative_phone_uk  unique,                                      	
 email                  varchar2(100)     constraint   representative_email_uk  unique,	
 address                varchar2(250),	
 Action_User            Varchar2(100)  Default User,
 Action_Date_Time       Date           Default  Sysdate
);

alter table Representative
add   constraint Representative_representative_id_pk primary key(representative_id);


16.


--===============
-- Table Supplier
--===============

drop table supplier cascade constraint;

create table supplier
 ( 
   supplier_id            number,
   representative_id      number,
   manufacturer_name      varchar2(100) constraint supplier_manufacturer_name_nn not null
                                       constraint supplier_manufacturer_name_uk unique,
   phone_number           varchar2(100) constraint supplier_phone_number_uk unique,
   supplier_address       varchar2(250),
   email                  varchar2(100) constraint supplier_email_uk unique,
   web_address            varchar2(100) constraint supplier_web_address_uk unique,
   bank_account           number        constraint supplier_bank_account_uk unique,
   bank_name              varchar2(100),
   supplier_image         blob,
   action_user            varchar2(100)  default user,
   action_date_time       date          default sysdate
 );

alter table supplier
add         constraint supplier_supplier_id_pk primary key(supplier_id);


17.


--================ 
--Table Purchase_M
--================

drop table Purchase_M cascade constraint;

create table Purchase_M
(
 Purchase_M_id        number,
 supplier_id          number,
 branch_id            number,
 Purchase_invoice     varchar2(100)  constraint Purchase_M_Purchase_invoice_nn not null
                                     constraint Purchase_M_Purchase_invoice_uk unique,
 purchase_date        date           default sysdate,
 Gross_amount         number,
 Discount             number,
 Vat                  number,
 Paid_amount          number,
 Payment_mode         varchar2(50),
 action_User          varchar2(50)   default user,
 action_date_time     date           default sysdate 
);

alter table Purchase_M
add   constraints Purchase_M_Purchase_M_id_pk primary key(Purchase_M_id);

alter table Purchase_M
add   constraints Purchase_M_supplier_id_fk foreign key(supplier_id)
references supplier(supplier_id);

alter table Purchase_M
add   constraints Purchase_M_branch_id_fk foreign key(branch_id)
references branch(branch_id);

18.

--================ 
--Table Purchase_D
--================

drop table Purchase_D cascade constraint;

create table Purchase_D
(
 Purchase_M_id        number,
 Medicine_id          number,
 Quantity             number,
 Unit_price           number,
 action_User          varchar2(100)   default user,
 action_date_time     date            default sysdate 
);

alter table Purchase_D
add   constraints Purchase_D_Purchase_M_id_fk foreign key(Purchase_M_id)
references Purchase_M(Purchase_M_id);

alter table Purchase_D
add   constraints Purchase_D_Medicine_id_fk foreign key(Medicine_id)
references Medicine(Medicine_id);


19.


--======================
--Table Purchase_Return_M
--=======================

drop table Purchase_Return_M cascade constraint;

create table Purchase_Return_M
(
 Purchase_Return_M_id        number,
 Branch_id                   number,
 Purchase_invoice            number,
 Purchase_return_date        date,
 action_User                 varchar2(100)   default user,
 action_date_time            date           default sysdate 
);

alter table Purchase_Return_M
add   constraints Purchase_Return_M_Purchase_Return_M_id_pk primary key(Purchase_Return_M_id);

alter table Purchase_Return_M
add   constraints Purchase_Return_M_Medicine_id_fk foreign key(Branch_id)
references Branch(Branch_id);


20.


--=======================
--Table Purchase_Return_D
--=======================


drop table Purchase_Return_D cascade constraint;

create table Purchase_Return_D
(
 Purchase_Return_D_id        number,
 Purchase_Return_M_id        number,
 Medicine_id                 number,
 Quantity                    number,
 Unit_Price                  number,
 action_User                 varchar2(100)   default user,
 action_date_time            date           default sysdate 
);

alter table Purchase_Return_D
add   constraints Purchase_Return_D_Purchase_Return_D_id_pk primary key(Purchase_Return_D_id);

alter table Purchase_Return_D
add   constraints Purchase_Return_D_Purchase_Return_M_id_fk foreign key(Purchase_Return_M_id)
references Purchase_Return_M(Purchase_Return_M_id);

alter table Purchase_Return_D
add   constraints Purchase_Return_D_Medicine_id_fk foreign key(Medicine_id)
references Medicine(Medicine_id);


21.


--=========
--Stock
--===========

drop table stock cascade constraint ;

create table stock                       
(stock_ID                       number,
 branch_ID                      number,                   
 medicine_ID                    number,                   
 purchase_quantity              number,                     
 sales_quantity                 number,                      
 purchase_return_quantity       number,                         
 sales_return_quantity          number,                   
 damage_quantity                number,              
 medicine_stock                 number,                
 action_user                    varchar2(100)     default user,           
 action_date_time               date              default sysdate
) ;

alter table stock
add constraint stock_stock_id_pk primary key(stock_id) ;


alter table stock
add constraint stock_branch_id_fk foreign key (branch_id)
references branch(branch_id) ;



alter table stock
add constraint stock_medicine_id_fk foreign key (medicine_id)
references medicine(medicine_id) ;


22.


--================ 
--Table Damage
--================


drop table Damage cascade constraint;

create table Damage
(
 Damage_Medicine_id        number,
 Branch_id                 number,
 Medicine_id               number,
 Quantity                  number,
 Damage_Medicine_date      date,
 action_User               varchar2(100)   default user,
 action_date_time          date           default sysdate 
);

alter table Damage
add   constraints Damage_Damage_Medicine_id_pk primary key(Damage_Medicine_id);

alter table Damage
add   constraints Damage_Branch_id_fk foreign key(Branch_id)
references Branch(Branch_id);

alter table Damage
add   constraints Damage_Damage_Medicine_id_fk foreign key(Medicine_id)
references Medicine(Medicine_id);


23.


--==============
--Customer Table
--==============


drop table customer cascade constraint;

create table customer
 (
  customer_id        number,
  customer_name      varchar2(100) constraint customer_customer_name_nn not null,
  phone_number       varchar2(100) constraint customer_phone_number_uk unique,
  customer_address   varchar2(250),
  email              varchar2(100) constraint customer_email_uk unique,
  action_user        varchar2(100)  default user,
  action_date_time   date           default sysdate
 );

alter table customer
add         constraint customer_customer_id_pk primary key(customer_id);



24.

===========
--Sales_M
===========

drop table sales_m cascade constraint;

create table Sales_m
(		
sales_M_ID      number,
supplier_ID     number,
Branch_ID       number,
customer_id     number,
sales_invoice   Varchar2(100) constraint sales_m_sales_invoice_nn not null
                              constraint sales_m_sales_invoice_uk unique,
                                
sales_date      Date Default Sysdate,
Gross_amount    number,	
Discount        number,	
Vat             number,	
Paid_amount     number,
Payment_mode    varchar2(100),	
Action_User     Varchar2(100) Default User,
Action_Date_Time Date Default Sysdate
);

alter table sales_m
add   constraint   sales_m_sales_m_id_pk primary key(sales_m_id);


alter table sales_m
add   constraint   sales_m_supplier_ID_fk foreign key(supplier_ID)
references  supplier(supplier_ID);


alter table sales_m
add   constraint   sales_m_Branch_ID_fk foreign key(Branch_ID)
references  Branch(Branch_ID);

alter table sales_m
add   constraint   sales_m_customer_id _fk foreign key(customer_id)
references  Customer(customer_id );


25.


--========
--Sales_D	
--=======
drop table sales_D cascade constraint;

create table sales_D
(
sales_D_id      number,	
sales_M_ID      number,
Medicine_ID     number,
Quantity        number,
Unit_Price      number,
Action_User     Varchar2(100) Default User,
Action_Date_Time Date Default Sysdate
);

alter table sales_d
add   constraint   sales_d_sales_d_id_pk primary key(sales_d_id);


alter table sales_d
add   constriant   sales_d_sales_m_id_fk foreign key(sales_m_id)
references   sales_m(sales_m_id);



alter table sales_d
add   constriant   sales_d_Medicine_ID_fk foreign key(Medicine_ID)
references  Medicine(Medicine_ID);


26.

--===================
--Table Sales_Return_M
--===================


drop table Sales_Return_M cascade constraint;

create table Sales_Return_M
(
 Sales_Return_M_id        number,
 Branch_id                number,
 customer_id              number,
 Sales_invoice            number   constraint Sales_Return_M_Sales_invoice_nn not null
                                   constraint Sales_Return_M_Sales_invoice_uk not unique,
 Sales_return_date        date,
 action_User              varchar2(100)   default user,
 action_date_time         date           default sysdate 
);

alter table Sales_Return_M
add   constraints Sales_Return_M_Sales_Return_M_id_pk primary key(Sales_Return_M_id);

alter table Sales_Return_M
add   constraints Sales_Return_M_Branch_id_fk foreign key(Branch_id)
references Branch(Branch_id);

alter table Sales_Return_M
add   constraints Sales_Return_M_customer_id_fk foreign key(customer_id)
references customer(customer_id);


27.
--==================
--Table Sales_Return_D
--===================


drop table Sales_Return_D cascade constraint;

create table Sales_Return_D
(
 Sales_Return_d_id        number,
 Sales_Return_M_id        number,
 Medicine_id              number,
 Quantity                 number,
 Unit_price               number,
 action_User              varchar2(100)   default user,
 action_date_time         date           default sysdate 
);


alter table Sales_Return_d
add   constraints Sales_Return_d_Sales_Return_d_id_pk primary key(Sales_Return_d_id);

alter table Sales_Return_d
add   constraints Sales_Return_d_Sales_Return_m_id_fk foreign key(Sales_Return_M_id)
references Sales_Return_M(Sales_Return_M_id);

alter table Sales_Return_d
add   constraints Sales_Return_d_Medicine_id_fk foreign key(Medicine_id)
references Medicine(Medicine_id);















































































































































































































--===============
--Table Medicine_type
--===============

drop table Medicine_type cascade constraint;

create table Medicine_type
(
 Medicine_type_id            number,
 Medicine_type_name          varchar2(100)  constraint Medicine_type_Medicine_type_name_nn not null
                                        constraint Medicine_type_Medicine_type_name_uk unique,
 Medicine_type_description   varchar2(250),
 action_User             varchar2(100)  default user,
 action_date             date           default sysdate
);

alter table Medicine_type
add constraints Medicine_type_id_pk primary key(Medicine_type_id);

--==========
--Insert
--==========

insert into Medicine_type(Medicine_type_id, Medicine_type_name , Medicine_type_description )
values(1,'Tablet','Tablets are one of the most common dosage forms. The process involves compressing a powdered or granulated drug into tablet form.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name , Medicine_type_description )
values(2,'Capsul','  Capsules are typically made from gelatin or other materials and can contain either powdered or liquid medications.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name , Medicine_type_description )
values(3,'Cream',' Topical medications include creams, ointments, gels, and lotions. The manufacturing process involves mixing the active ingredients with appropriate bases.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name , Medicine_type_description )
values(4,'Antibiotics','Antibiotics are a type of medication that are used to treat bacterial infections. They work by either killing the bacteria causing the infection or inhibiting their growth and reproduction.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name , Medicine_type_description )
values(5,'Syrap',' Liquid medications, including syrups, suspensions, and solutions, are produced through various mixing and formulation processes.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name , Medicine_type_description )
values(6,'Inhalation','Inhalable drugs, such as inhalers and nebulizers, require specialized equipment for the formulation and packaging of dry powders or aerosols.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name , Medicine_type_description )
values(7,'Drop','Medicine drops, also known as liquid medications, are pharmaceutical formulations that are administered in a liquid form. They are commonly used for various medical purposes, including oral and topical applications.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name, Medicine_type_description )
values(8,'Powder','Some drugs are administered in powder form, and the manufacturing process includes blending, granulation, and compression.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name, Medicine_type_description )
values(9,'vaccin','This process is used to produce biologics, such as vaccines, monoclonal antibodies, and gene therapies. It involves living cells and complex bioprocessing techniques.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name, Medicine_type_description )
values(10,'Daiper',' Fruits like grapes, cherries, and lychees that are naturally higher in sugars.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name, Medicine_type_description )
values(11,'Milk',' "Kid milk powder" typically refers to a powdered milk formula specially designed for infants and young children.');

insert into Medicine_type(Medicine_type_id, Medicine_type_name, Medicine_type_description )
values(12,'Injection',' Parenteral medications are those administered by injection, including intravenous, intramuscular, and subcutaneous. This manufacturing process requires sterile conditions.');

--==========================
--Medicine_category
--==========================

drop table Medicine_category cascade constraint;

create table Medicine_category
(
 Medicine_category_id            number,
 Medicine_category_name          varchar2(100)  constraint Medicine_category_Medicine_category_name_nn not null
                                        constraint Medicine_category_Medicine_category_name_uk unique,
 Medicine_category_description   varchar2(250),
 action_User             varchar2(100)  default user,
 action_date             date           default sysdate
);

alter table Medicine_category
add constraints Medicine_category_Medicine_category_id_pk primary key(Medicine_category_id);

--==========
--Insert
--==========
insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(1,'Ibuprofen','Used to relieve pain, reduce inflammation, and lower fever.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(2,'Acetaminophen','A common pain reliever and fever reducer.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(3,'Ciprofloxacin','An antibiotic used to treat a variety of bacterial infections, including urinary tract and respiratory infections.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(4,'Amoxicillin','An antibiotic used to treat various bacterial infections.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(5,'Lisinopril','An angiotensin-converting enzyme (ACE) inhibitor used to treat high blood pressure and heart failure.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(6,'Atorvastatin','A statin medication used to lower cholesterol levels.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(7,'Omeprazole','A proton pump inhibitor (PPI) used to reduce stomach acid and treat conditions like acid reflux and ulcers.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(8,'Metformin','An oral antidiabetic medication used to manage blood sugar levels in people with type 2 diabetes.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(9,'Prednisone','A corticosteroid used to treat a range of conditions, including inflammation and autoimmune disorders.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(10,'Losartan','An angiotensin II receptor blocker (ARB) used to treat high blood pressure and prevent stroke.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(11,'Levothyroxine',' A synthetic form of thyroid hormone used to treat hypothyroidism.');

insert into Medicine_category(Medicine_category_id, Medicine_category_name, Medicine_category_description)
values(12,'Fluoxetine',' An antidepressant in the selective serotonin reuptake inhibitor (SSRI) class used to treat depression and anxiety.');

--============ 
--Table Medicine_unit
--============
drop table Medicine_unit cascade constraint;

create table Medicine_unit
(
 Medicine_unit_id      number,
 Medicine_unit_name    varchar2(100) constraint Medicine_unit_Medicine_unit_name_nn not null,
 strength          varchar(50),
 total_unit        varchar2(10),
 action_User       varchar2(100) default user,
 action_date       date          default sysdate
);

alter table Medicine_unit
add constraint Medicine_unit_Medicine_unit_id_pk primary key(Medicine_unit_id);

--==========
--Insert
--==========
insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(1,'Box','100mg','12Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(2,'Strip','500mg','10Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(3,'Strip','200mg','5Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(4,'Strip','5mg','14Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(5,'Paket','0','3Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(6,'Botal','200ml','12Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(7,'carton','200ml','12Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(8,'Box','250mg','500Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(9,'Botal','250ml','12Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(10,'box','20mg','12Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(11,'box','100mg','12Pis');

insert into Medicine_unit(Medicine_unit_id, Medicine_unit_name, strength,total_unit)
values(12,'Strip','40000mg','12Pis');


--============ 
--Table Medicine
--============

drop table Medicine cascade constraint;

create table Medicine
(
 Medicine_id                 number,
 Medicine_type_id            number,
 Medicine_category_id        number,
 Medicine_unit_id            number,
 Medicine_name               varchar2(100)  constraint Medicine_Medicine_name_nn not null
                                        constraint Medicine_Medicine_name_uk unique,
 Medicine_code               varchar2(100)  constraint Medicine_Medicine_code_uk unique,
 Medicine_purchase_price     number,
 Medicine_sales_price        number,
 Medicine_image              blob,
 Medicine_description        varchar2(250),
 Medicine_tag                varchar2(100)  constraint Medicine_Medicine_tag_nn not null,
 rac_number              varchar2(100),
 expire_date             date,
 action_User             varchar2(100)  default user,
 action_date_time        date           default sysdate
);

alter table Medicine
add   constraints Medicine_Medicine_id_pk primary key(Medicine_id);

alter table Medicine
add   constraints Medicine_Medicine_type_id_fk foreign key(Medicine_type_id)
references Medicine_type(Medicine_type_id);

alter table Medicine
add   constraints Medicine_Medicine_category_id_fk foreign key(Medicine_category_id)
references Medicine_category(Medicine_category_id);

alter table Medicine
add   constraints Medicine_Medicine_unit_id_fk foreign key(Medicine_unit_id)
references Medicine_unit(Medicine_unit_id);

--==========
--Insert
--==========

insert into Medicine(Medicine_id, Medicine_type_id, Medicine_category_id, Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag, rac_number)
values(1, 1, 1, 1, 'Advil', 'A', 500, 550, 'availavel', 1);

insert into Medicine(Medicine_id, Medicine_type_id, Medicine_category_id, Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag, rac_number)
values(2, 1 , 1, 1, 'Motrin', 'B', 300, 350, 'availavel', 2);

insert into Medicine(Medicine_id, Medicine_type_id, Medicine_category_id, Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag, rac_number)
values(3, 1 ,1 ,1, 'Nurofen', 'C', 700, 800, 'unavailavel', 3);

insert into Medicine(Medicine_id, Medicine_type_id, Medicine_category_id, Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price,  Medicine_tag, rac_number)
values(4, 2, 2, 2, 'Tylenol', 'D', 1000, 1200, 'unavailavel', 4);

insert into Medicine(Medicine_id, Medicine_type_id, Medicine_category_id, Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag, rac_number)
values(5, 2, 2, 2, 'Panadol', 'E', 700, 800, 'Out Of Stock',5);

insert into Medicine(Medicine_id, Medicine_type_id, Medicine_category_id, Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag, rac_number)
values(6, 2, 2, 2, 'Excedrin', 'F', 2000, 2300, 'Stock limited', 6);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(7, 3,3,3, 'Cipro', 'G', 1500, 1650, 'unavailavel',7);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(8, 3,3,3, 'Cipro XR', 'H', 900, 1000, 'Out Of Stock',8);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(9, 3,3,3, 'Ciloxan', 'I', 3000, 3550, 'Stock limited',9);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(10, 4,4,4, 'Amoxil', 'J', 250, 300, 'availavel',10);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(11, 4, 4, 4, 'Trimox:', 'k', 1700, 1950, 'availavel',11);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(12, 4, 4, 4, 'Moxatag', 'L', 1300, 1550, 'availavel',12);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(13, 5, 5, 5, 'Zestril', 'M', 700, 950, 'availavel',13);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(14, 5, 5, 5, 'Prinivil', 'N', 100, 150, 'availavel',14);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(15, 5,5,5, 'Qbrelis', 'O', 170, 190, 'availavel',15);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(16, 6,6,6, 'Lipitor', 'P', 1900, 2150, 'availavel',16);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(17, 6,6,6, 'Torvast', 'Q', 500, 600, 'Stock limited',17);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(18, 6,6,6, 'Sortis', 'R', 600, 750, 'unavailavel',18);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(19, 7,7,7, 'Opton', 'S', 700, 850, 'availavel',19);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(20, 7,7,7, 'Seclo', 'T', 800, 950, 'availavel',20);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(21, 7,7,7, 'Sergel', 'U', 900, 1075, 'availavel',21);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(22, 8,8,8, 'Glucophage', 'V', 1100, 1250, 'availavel',22);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(23, 8,8,8, 'Fortamet', 'W', 1200, 1450, 'availavel',23);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(24, 8,8,8, 'Riomet', 'X', 1700, 1950, 'unavailavel',24);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(25, 9,9,9, 'Deltasone', 'Y', 150, 250, 'Stock limited',25);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(26, 9,9,9, 'Rayos', 'Z', 250, 350, 'Out of stock',26);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(27, 9,9,9, 'Prednisolone', 'Ab', 350, 450, 'availavel',27);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(28, 10,10,10, 'Cozaar', 'Ac', 450, 550, 'availavel',28);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(29, 10,10,10, 'Hyzaar', 'Ad', 550, 650, 'availavel',29);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(30, 10,10,10, 'Lorzaar', 'Ae', 650, 750, 'availavel',30);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(31, 11,11,11, 'Synthroid', 'Af', 750, 850, 'availavel',31);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(32, 11,11,11, 'Eltroxin', 'Ag', 850, 950, 'availavel',32);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(33, 11,11,11, 'Euthyrox', 'Ah', 950, 1050, 'availavel',33);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(34, 12,12,12, 'Prozac', 'Ai', 1050, 1150, 'availavel',34);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(35, 12,12,12, 'Sarafem', 'Aj', 1150, 1250, 'unavailavel',35);

insert into Medicine(Medicine_id, Medicine_type_id,Medicine_category_id,Medicine_unit_id, Medicine_name, Medicine_code, 
                 Medicine_purchase_price, Medicine_sales_price, Medicine_tag,rac_number)
values(36, 12,12,12, 'Selfemra', 'Ak', 1250, 1350, 'availavel',36);


--============ view ================

create or replace view Medicine_view
as
select i.Medicine_id,i.Medicine_name,i.Medicine_code, i.Medicine_sales_price, i.Medicine_purchase_price, 
       i.Medicine_tag, i.Medicine_description, i.expire_date, i.rac_number,Medicine_image,
       i.Medicine_type_id, t.Medicine_type_name, t.Medicine_type_description,
       i.Medicine_category_id, c.Medicine_category_name, c.Medicine_category_description,
       i.Medicine_unit_id,u.Medicine_unit_name,u.strength,u.total_unit
from   Medicine i, Medicine_type t, Medicine_category c, Medicine_unit u
where  i.Medicine_type_id = t.Medicine_type_id
and    i.Medicine_category_id = c.Medicine_category_id
and    i.Medicine_unit_id = u.Medicine_unit_id
;



--====================
--Table Representive
--====================

drop table Representive cascade constraint;

create table Representive
(
 Representive_id    number,
 Representive_name  varchar2(100) constraint Representive_Representive_name_nn not null,
 Phone              varchar2(25)  constraint Representive_Phone_uk unique,
 Email              varchar2(200) constraint Representive_Email_uk unique,
 Address            varchar2(250),
 action_User        varchar2(100) default user,
 action_date        Date          default sysdate
);

alter table Representive
add   constraints Representive_Representive_id_pk primary key(Representive_id);


--==========
--Insert
--==========

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(1,'Robin','+880 017512345','robin@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(2,'Nafiz','+880 017512346','nafiz@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(3,'Heron','+880 017512347','heron@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(4,'Arif','+880 017512348','Arif@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(5,'Shahin','+880 017512349','Shahin@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(6,'Shumon','+880 017512350','Shumon@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(7,'Shujon','+880 017512351','Shujon@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(8,'Kobir','+880 017512352','Kobir@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(9,'Ismail','+880 017512353','Ismail@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(10,'Ruhul','+880 017512354','Ruhul@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(11,'Riad','+880 017512355','Riad@gmail.com','kamrangir chor');

insert into Representive(Representive_id, Representive_name, Phone, Email, Address)
values(12,'Robiul','+880 017512356','Robiul@gmail.com','kamrangir chor');


--================ 
--Table Supplier
--================

drop table supplier cascade constraint;

create table supplier
(
 supplier_id          number,
 Representive_id      number,
 supplier_name        varchar2(100)  constraint supplier_supplier_name_nn not null,
 cell_number          number         constraint supplier_cell_number_uk unique,
 supplier_address     varchar2(250),
 email                varchar2(150)  constraint supplier_email_uk unique,
 web_address          varchar2(100)  constraint supplier_web_address_uk unique,
 bank_account         number         constraint supplier_bank_account_uk unique,
 bank_name            varchar2(50),
 supplier_image       blob,
 action_User          varchar2(50)   default user,
 action_date_time     date           default sysdate 
);

alter table Supplier
add   constraints Supplier_id_pk primary key(Supplier_id);

alter table Supplier
add   constraints Supplier_Representive_fk foreign key(Representive_id)
references Representive(Representive_id);

--==========
--Insert
--==========

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (2500,1,'Beximco','01521708963','Rampura','Beximco@gmail.com','www.hok.com',77777899900,'Asia Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (2600,2,'Squear','0167708963','Rampura','Squear5@gmail.com','www.silllkom.com',7775599600,'Asia Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (2700,3,'Rediant','01867708963','Gazipur','Rediant@gmail.com','www.sam.com',8899455599600,'Asia Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (2800,4,'Reneta','01967708963','Gazipur','Reneta1236@gmail.com','www.sshaminar.com',885596370,'Brac Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (2900,5,'Incepta','0199664363','Gazipur','Incepta778@gmail.com','www.shukru.com',88236944870,'Brac Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (3000,6,'Skf','0184664363','Motijheel','Skf878@gmail.com','www.pultonplaza.com',8832145970,'Bangladesh Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (3100,7,'Opsonin','01846556963','Motijheel','Opsonin78@gmail.com','www.alhelal.com',883214597090,'Bangladesh Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (3200,8,'Pharmashia','0195656963','Mirpur','Pharmashia98@gmail.com','www.epiqure.com',8844584597090,'Bangladesh Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (3300,9,'Team','0195655555','Khulna','Team98@gmail.com','www.ghorerdokan.com',84589584597090,'Bangladesh Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (3400,10,'Acme','0186655555','Arambag','Acme98@gmail.com','www.kobutor.com',84654584597091,'AB Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (3500,11,'Aci','0196655555','Bangla Motor','Aci@gmail.com','www.idbsty.com',8465565597092,'Asia Bank');

insert into supplier (supplier_id,Representive_id,supplier_name,cell_number,supplier_address,email,web_address,bank_account,bank_name)
values (3600,12,'Drug','0196655556','Bangla Motor','Drug8@gmail.com','www.idbstt.com',8465565597093,'nagod Bank');

--================ 
--Table Customer
--================

drop table Customer cascade constraint;

create table customer
(
 customer_id          number,
 Customer_name        varchar2(100) constraint customer_customer_name_nn not null,
 cell_number          number        constraint customer_cell_number_uk unique,
 customer_address     varchar2(250),
 email                varchar2(100) constraint customer_email_uk unique,
 action_User          varchar2(50)   default user,
 action_date_time     date           default sysdate
);

alter table customer
add   constraints customer_id_pk primary key(customer_id);

--==========
--Insert
--==========

insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(1,'ismail','+88016758494','patuakhali','ismail@gmail.com');

insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(2,'Ruhul','+88017858494','patuakhali','Ruhul@gmail.com');


insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(3,'jayed','+88015658494','patuakhali','jayed@gmail.com');


insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(4,'zubayer','+88017855670','patuakhali','zubayer@gmail.com');

insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(5,'fardin','+880178551234','patuakhali','fardin@gmail.com');

insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(6,'abdullah','+880169551234','patuakhali','abdullah@gmail.com');

insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(7,'sadi','+88016954562','patuakhali','sadi@gmail.com');


insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(8,'riead','+88016997125','patuakhali','riead@gmail.com');

insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(9,'Mamun','+88016955632','patuakhali','Mamun@gmail.com');


insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(10,'rashedul','+88013954562','patuakhali','rashedul@gmail.com');


insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(11,'echa','+88014954572','patuakhali','echa@gmail.com');


insert into customer(customer_id,Customer_name,cell_number,customer_address,email)
values(12,'mucha','+88014954582','patuakhali','mucha@gmail.com');


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
 action_User          varchar2(50)   default user,
 action_date_time     date           default sysdate 
);

alter table Purchase_D
add   constraints Purchase_D_Purchase_M_id_fk foreign key(Purchase_M_id)
references Purchase_M(Purchase_M_id);

alter table Purchase_D
add   constraints Purchase_D_Medicine_id_fk foreign key(Medicine_id)
references Medicine(Medicine_id);

--================ 
--Table Purchase_Return_M
--================

drop table Purchase_Return_M cascade constraint;

create table Purchase_Return_M
(
 Purchase_Return_M_id        number,
 Branch_id                   number,
 Purchase_invoice            number,
 Purchase_return_date        date,
 action_User                 varchar2(50)   default user,
 action_date_time            date           default sysdate 
);

alter table Purchase_Return_M
add   constraints Purchase_Return_M_Purchase_Return_M_id_pk primary key(Purchase_Return_M_id);

alter table Purchase_Return_M
add   constraints Purchase_Return_M_Medicine_id_fk foreign key(Branch_id)
references Branch(Branch_id);

--================ 
--Table Purchase_Return_D
--================


drop table Purchase_Return_D cascade constraint;

create table Purchase_Return_D
(
 Purchase_Return_D_id        number,
 Purchase_Return_M_id        number,
 Medicine_id                 number,
 Quantity                    number,
 Unit_Price                  date,
 action_User                 varchar2(50)   default user,
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
 action_User               varchar2(50)   default user,
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
add   constraint   sales_m_customer_id_fk foreign key(customer_id)
references  Customer(customer_id );


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
add   constriant   sales_d_sales_m_id_fk foreign key(sales_M_ID)
references   sales_m(sales_m_id);



alter table sales_d
add   constriant   sales_d_Medicine_ID_fk foreign key(Medicine_ID)
references  Medicine(Medicine_ID);


--================ 
--Table Sales_Return_M
--================


drop table Sales_Return_M cascade constraint;

create table Sales_Return_M
(
 Sales_Return_M_id        number,
 Branch_id                number,
 customer_id              number,
 Sales_invoice            number   constraint Sales_Return_M_Sales_invoice_nn not null,
 Sales_return_date        date,
 action_User              varchar2(50)   default user,
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

--================ 
--Table Sales_Return_D
--================


drop table Sales_Return_D cascade constraint;

create table Sales_Return_D
(
 Sales_Return_d_id        number,
 Sales_Return_M_id        number,
 Medicine_id              number,
 Quantity                 number,
 Unit_price               date,
 action_User              varchar2(50)   default user,
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




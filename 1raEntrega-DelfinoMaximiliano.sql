create database BaSP2022;
use basp2022;
create table employee (
	id_employee int not null auto_increment,
    name_employee varchar (30) not null,
    lastname_employee varchar (30) not null,
    email_employee varchar (30) not null,
    password_employee varchar (30) not null,
    rate int not null,
    primary key(id_employee)
);

create table roles (
	id_role int not null auto_increment,
    role_name varchar (30) not null,
    primary key(id_role)
);

create table business (
	id_business int not null auto_increment,
    name_business varchar(30) not null,
    primary key(id_business)
);

create table project(
	id_project int not null auto_increment,
    name_project varchar(30) not null,
    project_by int not null,
    primary key (id_project),
    foreign key(project_by)	references business(id_business)
);

insert into employee (name_employee, lastname_employee, email_employee, password_employee, rate)
values
	("max", "delfino", "maxi@gmail.com", "12345678",280),
    ("pepe", "argento", "pepe@gmail.com", "123aaa",300),
    ("homero", "simpson", "homero@gmail.com", "lovemarge",250),
    ("bart", "simpson", "bart@gmail.com", "milhouse",220),
    ("lisa", "simpson", "lisa@gmail.com", "loveme",410),
    ("goku", "son", "goku@gmail.com", "power",380),
    ("vegeta", "king", "vegeta@gmail.com", "second",360);

insert into roles (role_name)
values
	("front end"),
    ("back end"),
	("project manager"),
	("design ux/ui"),
	("data analyst"),
	("tester");
    
insert into business (name_business)
values
	("facebook"),
    ("mercado libre"),
	("amazon"),
	("coca cola"),
	("IBM"),
	("oracle");
    
insert into project (name_project, project_by)
values
	("login_face", 1),
    ("follow_shipping", 2),
	("create_product", 2),
	("new_registration", 3),
	("new_technology", 4),
	("save_password", 1),
	("integrate_tool", 5),
	("new_tool", 6);
    

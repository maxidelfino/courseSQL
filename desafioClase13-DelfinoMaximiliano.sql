use project_db;
create table roles (
	id_role int not null auto_increment,
    name_role varchar (3) not null,
    primary key(id_role)
);

create table employees (
	id_employee int not null auto_increment,
    name_employee varchar (30) not null,
    lastname_employee varchar (30) not null,
    email_employee varchar (30) not null,
    password_employee varchar (30) not null,
    roles int not null,
    rate int not null,
    primary key(id_employee),
	foreign key(roles) references roles(id_role)
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

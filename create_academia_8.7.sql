create table student(
	student_id int,
    roll_number varchar(9) unique not null,
    first_name varchar(30) not null,
    last_name varchar(30),
    email varchar(50) unique not null,
    photograph_path varchar(50),
    cgpa decimal(3,2) not null default 0.0,
    total_credits int not null,
    graduation_year varchar(4),
    domain_id int,
    specialisation_id int,
    placement_id int,
    constraint pk_student primary key (student_id)
);

create table domain(
	domain_id int,
    program varchar(10) not null,
    batch varchar(4) not null,
    capacity int not null,
    qualification varchar(30),
    constraint pk_domain primary key (domain_id)
);

create table organisation(
	id int,
    name varchar(30) not null,
    address varchar(200),
    constraint pk_organisation primary key (id)
);

create table placement_student(
	id int,
    placement_id int,
    student_id int, 
    cv_application varchar(50),
    about varchar(100),
    acceptance enum('PENDING', 'ACCEPTED', 'REJECTED') default 'PENDING',
    comments varchar(100),
    date date,
    constraint pk_placement_student primary key (id)
);

create table placement_filter(
	id int,
    placement_id int,
    specialisation_id int,
    domain_id int,
    constraint pk_placement_filter primary key (id)
);

create table placement(
	id int,
    organisation_id int,
    profile varchar(30) not null,
    description varchar(50),
    intake int not null,
    minimum_grade decimal(3,2),
    constraint pk_placement primary key (id)
);

create table alumni(
	id int,
    email varchar(50) not null unique,
    contact_number varchar(15) not null unique,
    student_id int,
	constraint pk_alumni primary key (id)
);

create table alumni_organisation(
	id int,
    position varchar(30),
    joining_date date not null,
    leaving_date date,
    organisation_id int,
    alumni_id int,
    constraint pk_alumni_organisation primary key (id)
);

create table login(
	id int,
    username varchar(30) not null unique,
    password varchar(30) not null unique,
    role varchar(30) not null,
	constraint pk_login primary key (id)
);
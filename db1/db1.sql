create database student;
use student;
create table client(
client_id int identity(1,1) primary key ,
fname varchar(max) not null,
lname varchar(max) not null,
gender varchar(10) not null,
age varchar(max),
contact_add int not null,
email varchar(max),
password varchar(max)
);

create table membership(
mem_id int identity(1,1) primary key ,
client_id int foreign key references client(client_id),
ststus varchar(10) not null,
date_m date not null,
);

create table payment(
payment_id int identity(1,1) primary key ,
client_id int foreign key references client(client_id),
date_p date not null,
amount money not null,
);

create table transaction_R(
trans_id int identity(1,1) primary key ,
trans_name varchar(max) not null,
client_id int foreign key references client(client_id),
amount money not null,
date_t date not null
);


create table report(
report_id int identity(1,1) primary key ,
client_id int foreign key references client(client_id),
trans_id int foreign key references transaction_R(trans_id),
total_amount money not null,
date_r date not null
);

create table trainor(
trainor_id int identity(1,1) primary key ,
tname varchar(max) not null,
salary money not null ,
email varchar(max),
password varchar(max)
);
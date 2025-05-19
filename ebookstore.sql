create table Author (
authid varchar(10) primary key not null,
f_name varchar(10) not null,
l_name varchar(10)
);
create table Publisher (
pubcode varchar(10) primary key,
namee varchar(30) not null,
city varchar(10),
phone varchar(20) unique
);
create table Book (
ISBN varchar (20) primary key,
title varchar(30),
typee varchar(10),
page_count int,
price float,
pubcode varchar(10),
foreign key (pubcode) references Publisher(pubcode)
);
create table Author_Book (
ISBN varchar(20),
authid varchar(10),
primary key (ISBN,authid),
foreign key (ISBN) references Book(ISBN),
foreign key (authid) references Author(authid)
);
select * from Book;
select * from Author;
select * from Publisher;
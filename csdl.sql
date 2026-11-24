Drop database if exists GoogleClassroomDB;
create database GoogleClassroomDB;
use GoogleClassroomDB;
create table Role (
RoleId int auto_increment primary key,
RoleName varchar(80) not null
);
create table User (
UserId int auto_increment primary key,
UserName varchar (70) not null,
Gmail varchar (70) not null
);
create table Class (
ClassId int auto_increment primary key,
ClassName varchar(80) not null
);
create table ClassUser (
ClassId int,
UserId int,
RoleId int,
primary key (ClassId, UserId),
foreign key (ClassId) references Class (ClassId),
foreign key (UserId) references User (UserId),
foreign key (RoleId) references Role (RoleId)
);
create table Assignment (
AssignmentId int auto_increment primary key,
AssignmentName varchar(80) not null,
UserId varchar(80) not null
);
create table AssignmentClassroom(
AssignmentId int,
ClassId int,
primary key (AssignmentId, ClassId),
foreign key(AssignmentId) references Assignment (AssignmentId),
foreign key (ClassId) references Class (ClassId)
);
create table Comments (
CommentId int auto_increment primary key,
Content varchar (100) not null,
AssignmentId int,
UserId int,
foreign key (AssignmentId) references Assignment (AssignmentId),
foreign key (UserId) references User (UserId)
);

describe user;

select * from Role;
insert into Role (RoleName) value
('Teacher'),
('Student');
select *from User;
insert into  User (UserName,Gmail) value
('Lễ','le@gmail.com'),
('Hào','hao@gmail.com'),
('Dim','dim@gmail.com'),
('Ngọc','ngoc@gmail.com'),
('Phát','phat@gmail.com');
select * from Class;
insert into Class(ClassName) value
('Database A'),
('Python'),
('English'),
('DA'),
('PLT'),
('Database B');
select *from Assignment;
insert into Assignment (AssignmentName,UserId) value
('ERD',1),
('Function',1),
('EnglishClub',5),
('Tư duy phát triển',4);
select *from Comments;
insert into Comments(Content,AssignmentID,UserId) value
('Dạ em đã nhận thông tin rồi ạ',2,5),
('Dạ em xin đại diện lớp xác nhận thông tin',4,3),
('OK em',2,1),
('Dạ em đã làm bài tập đầy đủ ',1,3);
select *from ClassUer;
insert into ClassUser value
(1,1,1),
(2,2,2),
(1,4,1),
(4,3,2),
(3,5,1),
(1,3,2),
(5,1,1),
(2,5,2),
(3,1,2),
(1,5,2),
(2,1,1),
(4,4,1);
select *from AssignmentClassroom;
insert into AssignmentClassroom value
(1,1),
(2,2),
(1,6),
(3,3),
(4,4);





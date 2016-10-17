ALTER DATABASE demoDb SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE demoDb;
GO
create database demoDb;
GO
create table demoDb.dbo.colors (
id int NOT NULL PRIMARY KEY,
color varchar(255) NOT NULL
);
GO

insert into demoDb.dbo.colors (id, color) values (1, 'red');
insert into demoDb.dbo.colors (id, color) values (2, 'yellow');
insert into demoDb.dbo.colors (id, color) values (3, 'purple');

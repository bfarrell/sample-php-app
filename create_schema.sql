ALTER DATABASE demoDb SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE demoDb;
GO
create database demoDb;
GO
create table demoDb.dbo.colors (
id int NOT NULL PRIMARY KEY,
color varchar(255) NOT NULL,
signal varchar(255)
);
GO

insert into demoDb.dbo.colors (id, color, signal) values (1, 'red', 'stop');
insert into demoDb.dbo.colors (id, color, signal) values (2, 'yellow', 'warning');
insert into demoDb.dbo.colors (id, color, signal) values (3, 'green', 'go');
USE [master]
GO

CREATE DATABASE Lesson2Database ON PRIMARY
(
	NAME = N'Lesson2Database',
	FILENAME = N'C:\Lesson2\Lesson2Database.mdf',
	SIZE = 3MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 10%
)
LOG ON
(
	NAME = N'Lesson2DatabaseLog',
	FILENAME = N'C:\Lesson2\Lesson2DatabaseLog.ldf',
	SIZE = 2MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 10%
)
GO
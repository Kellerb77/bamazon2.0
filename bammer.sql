CREATE DATABASE bammmer;

USE bammmer;

CREATE TABLE productss (
ID int NOT NULL,
ProductName varchar(50) NOT NULL,
DepartmentName varchar(50) NOT NULL,
Price DECIMAL(4,2) NOT NULL,
StockQuantity int NOT NULL);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
12345,
'Knives',
'Kitchen',
15,
25);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
67891,
'Brisket',
'Foods',
25,
25);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
23456,
'Belt',
'Clothing',
20,
10);


INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
34567,
'Polo',
'Clothing',
30,
30);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
89123,
'Wheaties',
'Foods',
15,
8);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
45678,
'Dumbbells',
'Equipment',
45,
15);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
91234,
'Fridge',
'Kitchen',
350,
10);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
56789,
'Chicken',
'Foods',
20,
10);

INSERT INTO productss (ID, ProductName, DepartmentName, Price, StockQuantity) VALUES (
11234,
'Power Drill',
'Equipment',
100,
5);

USE bammmer;
CREATE TABLE Departments(
DepartmentId int AUTO_INCREMENT,
PRIMARY KEY(DepartmentId),
DepartmentName varchar(50) NOT NULL,
OverHeadCosts DECIMAL(11,2) NOT NULL,
TotalSales DECIMAL(11,2) NOT NULL);


INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Clothing',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Foods',
10000,
0);

INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Kitchen',
20000,
0);


INSERT INTO Departments (DepartmentName, OverHeadCosts, TotalSales) VALUES (
'Equipments',
25000,
0);


SHOW TABLES;
CREATE VIEW bammmer.TotalProfits AS SELECT DepartmentId, DepartmentName, OverHeadCosts, TotalSales, TotalSales-OverHeadCosts AS TotalProfit FROM Departments;

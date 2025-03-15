-- Products and Purchases, for SELECTs

CREATE TABLE Products (
  Product VARCHAR(50),
  Price DECIMAL,
  Category VARCHAR(50),
  Manufacturer VARCHAR(50)
);

CREATE TABLE Purchases (
  Buyer VARCHAR(50),
  Seller VARCHAR(50),
  Product VARCHAR(50)
);

-- Students and Grades, for JOINs

CREATE TABLE Students (
  SID VARCHAR(32),
  FirstName VARCHAR(50),
  LastName VARCHAR(50)
);

CREATE TABLE Grades (
  SID VARCHAR(32),
  Code VARCHAR(50),
  Grade INTEGER
);

-- Jobs and JobsHistory, for UNIONs

CREATE TABLE Jobs (
  EmployeeID VARCHAR(32),
  Job VARCHAR(50),
  StartDate DATE
);

CREATE TABLE JobsHistory (
  EmployeeID VARCHAR(32),
  Job VARCHAR(50),
  StartDate DATE,
  EndDate DATE
);

-- Employees, for GROUP BY and functions

CREATE TABLE Employees (
  SNO VARCHAR(32),
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Salary DECIMAL,
  Position VARCHAR(50)
);


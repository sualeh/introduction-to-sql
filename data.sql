-- database: sqlite.db
--

INSERT INTO PRODUCTS
(PRODUCT, PRICE, CATEGORY, MANUFACTURER)
VALUES
('Gizmo', 19.99, 'Gadgets', 'GizmoWorks'),
('PowerGizmo', 29.99, 'Gadgets', 'GizmoWorks'),
('Camera Plus', 149.99, 'Photography', 'Pear'),
('Clock', 203.99, 'Household', 'Clock Maker')
;

INSERT INTO PURCHASES
(BUYER, SELLER, PRODUCT)
VALUES
('Joe', 'Sam', 'Gizmo'),
('Alan', 'Fred', 'PowerGizmo'),
('Jill', 'Fred', 'Camera Plus'),
('Alan', 'Fred', 'Camera Plus'),
('Sue', 'Jane', 'Camera Plus')
;

--

INSERT INTO STUDENTS
(SID, FIRSTNAME, LASTNAME)
VALUES
('S103', 'John', 'Smith'),
('S104', 'Mary', 'Jones'),
('S105', 'Jane', 'Brown')
;

INSERT INTO GRADES
(SID, CODE, GRADE)
VALUES
('S103', 'DBS', 72),
('S103', 'IAI', 58),
('S104', 'PR1', 68),
('S104', 'IAI', 65),
('S108', 'DBS', 40)
;

--

INSERT INTO JOBS
(EMPLOYEEID, JOB, STARTDATE)
VALUES
('S103', 'Teacher', '2017-03-12'),
('S104', 'Butler', '2017-05-17')
;

INSERT INTO JOBSHISTORY
(EMPLOYEEID, JOB, STARTDATE, ENDDATE)
VALUES
('S103', 'Driver', '2017-01-15', '2017-02-09'),
('S103', 'Teacher', '2017-02-10', '2017-03-11'),
('S104', 'Fireman', '2017-04-07', '2017-05-16')
;

--

INSERT INTO EMPLOYEES
(SNO, FIRSTNAME, LASTNAME, SALARY, POSITION)
VALUES
('SL100', 'John', 'White', 30000, 'Manager'),
('SL101', 'Susan', 'Brand', 24000, 'Manager'),
('SL102', 'David', 'Ford', 12000, 'Project Manager'),
('SL103', 'Ann', 'Beech', 12000, 'Project Manager'),
('SL104', 'Mary', 'Howe', 9000, 'Project Manager')
;


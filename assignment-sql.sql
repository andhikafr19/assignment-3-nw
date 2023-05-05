-- SQL #1
-- Queriying Data
SELECT employeeNumber, firstName, lastName, jobTitle FROM employees;

-- Sorting Data
SELECT employeeNumber, firstName, lastName, jobTitle FROM employees ORDER BY firstName;

-- Filtering Data
SELECT jobTitle FROM employees ORDER BY jobTitle DESC;

SELECT DISTINCT jobTitle FROM employees ORDER BY jobTitle DESC;

SELECT employeeNumber, firstName, lastName, jobTitle, officeCode 
FROM employees 
WHERE officeCode=1 
ORDER BY firstName;

SELECT employeeNumber, firstName, lastName, jobTitle, officeCode 
FROM employees 
WHERE firstName LIKE 'Le%' 
ORDER BY firstName;

-- Join Data
SELECT officeCode,count(employeeNumber) countOffice
FROM employees
GROUP BY officeCode
HAVING countOffice >= 1;

SELECT prod.productName FROM products AS prod;

SELECT employeeNumber,firstName, lastName, city
FROM employees
INNER JOIN offices
ON employees.officeCode = offices.officeCode
ORDER BY firstName;

SELECT employeeNumber,firstName, lastName, city
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode
ORDER BY firstName;

SELECT employeeNumber,firstName, lastName, o.city AS officeCity
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode
ORDER BY firstName;

-- Agregate
SELECT AVG(quantityOrdered) as AverageOrder FROM orderdetails;

SELECT ROUND(AVG(DISTINCT quantityOrdered),1) as AverageOrder FROM orderdetails;

SELECT officeCode, COUNT(*) FROM employees GROUP BY officeCode;

SELECT e.officeCode, city, COUNT(*)
FROM employees e 
inner join offices o
on o.officeCode = e.officeCode 
GROUP BY e.officeCode;

-- SQL #2
-- DDL Create
create table roles 
(roleID integer(5) primary key,
roleName varchar(11));

-- DDL Alter
alter table roles 
add (status bool);

-- DDL Drop
drop table roles;

-- DML Insert
insert into employees (employeeNumber, firstName, lastName, email, officeCode, reportsTo, jobTitle, extension)
values (1703, "Andhika", "Ramadhan", "andhika@gmail.com", 1, 1002, "Staff", "x700");

-- DML Update
update employees 
set firstName = "Andhika Update"
where employeeNumber = 1703;

-- DML Delete
delete from employees where employeeNumber = 1703;

-- SQL #3
-- Indexes
create index firstName on employees(firstName);
select * from employees where firstName = 'Gerard';

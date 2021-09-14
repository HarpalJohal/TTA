SHOW DATABASES;
DROP DATABASE Customers;
SHOW DATABASES;
CREATE DATABASE Customers;
USE Customers;
CREATE TABLE Customer_details(
  Cust_Id INT NOT NULL,
  Cust_First_Name VARCHAR(30) NOT NULL,
  Cust_Surname VARCHAR(30) NOT NULL,
  Address1 VARCHAR(25) NOT NULL,
  Address2 VARCHAR(25),
  Town VARCHAR(25) NOT NULL,
  County VARCHAR(25) NOT NULL,
  Postcode VARCHAR(8),
  Phone_home INT(15),
  Phone_mob INT (15),
  Email VARCHAR (30),
  PRIMARY KEY (Cust_Id),
  UNIQUE (Cust_Id)
  );
EXPLAIN Customer_details  
  

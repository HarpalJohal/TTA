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
  Email VARCHAR (50),
  PRIMARY KEY (Cust_Id)
  );

ALTER TABLE Customer_details MODIFY Phone_home BIGINT;
ALTER TABLE Customer_details MODIFY Phone_mob BIGINT;

EXPLAIN Customer_details;

SELECT * FROM Customer_details;

INSERT INTO Customer_details (Cust_Id, Cust_First_Name, Cust_Surname, Address1, Address2, Town, County, Postcode, Phone_home, Phone_mob, Email) 
VALUES
(1, 'Tom', 'Smith', '52 Walsall Wood Road', ' ', 'Aldridge', 'West Midlands', 'WS9 0FR', 01543738461, 07528263880, 'ts_roofing@hotmail.com' ), 
(2, 'Chris', 'Powers', '9 Oakley Avenue', ' ', 'Cannock', 'West Midlands', 'WS15 1SR', null, 07872833504, 'chrispowers@live.co.uk' ),
(3, 'Janet', 'Poole', '406 Green Lane', ' ', 'Walsall', 'West Midlands', 'WS2 3GD', 01922634765, 07969281141, 'janspool88@icloud.com' ),
(4, 'George', 'Bennett', 'Beacon Farm', 'Beacon Road', 'Walsall', 'West Midlands', 'WS9 6SA', 01922657338, 07727655661, 'beaconfarmgb@beaconfarms.co.uk' ),
(5, 'Andrew', 'Gaunt', 'Bentley Mill Lane', 'Bentley Mill', 'Bentley', 'West Midlands', 'WS2 4GF', 01922518443, 07583071710, 'andygaunt@agsolutions.co.uk' ),
(6, 'James', 'Holsworth', '32 Myatt Avenue', ' ', 'Walsall', 'West Midlands', 'WS5 2FD', null, 07795697913, 'jimmyhols@outlook.com' ),
(7, 'Julie', 'Davis', 'Unit 3 Birch House', 'Birch Lane ', 'Stonnall', 'West Midlands', 'WS9 0NF', 01543453595, 07970166534, 'ts_roofing@hotmail.com' ),
(8, 'Mark', 'Coveson', '59 Kingsley Street', 'Pleck', 'Walsall', 'West Midlands', 'WS2 7QR', 01922501032, 078345093230, 'm.coveson1965@zerodrytime.com' ),
(9, 'Kelly', 'McGuire', 'Jubilee House', 'Walsall Road', 'Walsall', 'West Midlands', 'WS9 7AG', 01543529234, 07939398156, 'kellymcguire@cozycomforts.co.uk' ),
(10, 'Anita', 'Johnson', '21 Church Way', 'Shelfield', 'Walsall', 'West Midlands', 'WS4 1DP', 01922449043, 07815245294, 'info@ajprints.co.uk' );

SELECT * FROM Customer_details;

DELETE from Customer_details
WHERE Cust_id = 4;

UPDATE Customer_details 
SET Cust_First_Name = 'Christopher' 
WHERE Cust_Id = 2;

SELECT * FROM Customer_details
WHERE Phone_home IS NULL;

SELECT * 
FROM Customer_details
WHERE Address2 = ' ' AND County = 'West Midlands';

SELECT * 
FROM Customer_details
ORDER BY Cust_Surname;

CREATE TABLE Customer_Orders(
Ord_Id INT NOT NULL,
Cust_ID INT NOT NULL,
Ord_Date DATE,
Ord_Status VARCHAR(15) NOT NULL,
PRIMARY KEY (Ord_ID)
);

EXPLAIN Customer_Orders;

INSERT INTO Customer_Orders (Ord_Id, Cust_Id, Ord_Date, Ord_Status) 
VALUES
(1, 3, 20210831, 'Completed'),
(2, 5, 20210831, 'New'),
(3, 3, 20210901, 'Completed'),
(4, 6, 20210901, 'Pending'),
(5, 9, 20210901, 'Cancelled'),
(6, 9, 20210902, 'New'),
(7, 7, 20210902, 'Completed'),
(8, 1, 20210902, 'Pending'),
(9, 8, 20210903, 'New'),
(10, 6, 20210903, 'Pending'),
(11, 5, 20210903, 'Completed'),
(12, 7, 20210904, 'Cancelled')
;

SELECT * 
FROM Customer_Orders
JOIN Customer_details 
ON Customer_Orders.Cust_ID = Customer_details.Cust_Id;

EXPLAIN Customer_details;
EXPLAIN Customer_Orders;
;

SELECT Ord_Id, Ord_Date, Cust_First_Name, Cust_Surname, Email, Ord_Status
FROM Customer_Orders
Right JOIN Customer_details
ON Customer_Orders.Cust_ID = Customer_details.Cust_Id;

SELECT Ord_Id, Ord_Date, Cust_First_Name, Cust_Surname, Email, Ord_Status
FROM Customer_Orders
INNER JOIN Customer_details
ON Customer_Orders.Cust_ID = Customer_details.Cust_Id
WHERE Ord_Status = 'Completed'
ORDER BY Ord_Date;



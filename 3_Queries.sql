[26-03-2025 05:24] Sanket Jadhav: -- Queries to print all data from tables
SELECT * FROM Donor;
SELECT * FROM Donor_Contact;
SELECT * FROM Blood_Bank;
SELECT * FROM Staff;
SELECT * FROM Donation;
SELECT * FROM Blood_Inventory;
SELECT * FROM Donation_Test;
SELECT * FROM Blood_Compatibility;
SELECT * FROM Recipient;
SELECT * FROM Hospital;
SELECT * FROM Request;

-- Queries to describe the structure of all tables
DESCRIBE Donor;
DESCRIBE Donor_Contact;
DESCRIBE Blood_Bank;
DESCRIBE Staff;
DESCRIBE Donation;
DESCRIBE Blood_Inventory;
DESCRIBE Donation_Test;
DESCRIBE Blood_Compatibility;
DESCRIBE Recipient;
DESCRIBE Hospital;
DESCRIBE Request;

-- Queries to show create table statements for all tables
SHOW CREATE TABLE Donor;
SHOW CREATE TABLE Donor_Contact;
SHOW CREATE TABLE Blood_Bank;
SHOW CREATE TABLE Staff;
SHOW CREATE TABLE Donation;
SHOW CREATE TABLE Blood_Inventory;
SHOW CREATE TABLE Donation_Test;
SHOW CREATE TABLE Blood_Compatibility;
SHOW CREATE TABLE Recipient;
SHOW CREATE TABLE Hospital;
SHOW CREATE TABLE Request;

--
-- 1. Retrieve all donors who have donated blood after '2025-01-01'
SELECT * FROM Donor WHERE Last_Donation_Date > '2025-01-01';

-- 2. Find all recipients who have requested blood of type 'O+'
SELECT * FROM Request WHERE Blood_Type = 'O+';

-- 3. Count the number of donations made in each blood bank
SELECT Bank_ID, COUNT(*) AS Donation_Count FROM Donation GROUP BY Bank_ID;

-- 4. Retrieve all blood inventory records where units available are greater than 2
SELECT * FROM Blood_Inventory WHERE Units_Available > 2;

-- 5. Find the names of all staff members working in a specific blood bank (e.g., Bank_ID = 1)
SELECT First_Name, Last_Name FROM Staff WHERE Bank_ID = 1;
[26-03-2025 06:10] Sanket Jadhav: SELECT * FROM Donor WHERE YEAR(Last_Donation_Date) = 2025;
[26-03-2025 06:10] Sanket Jadhav: SELECT * FROM Blood_Bank WHERE Location = 'Mumbai';
[26-03-2025 06:10] Sanket Jadhav: SELECT r.First_Name, r.Last_Name, r.Recipient_Blood_Type, bc.Blood_Type_Suitable 
FROM Recipient r
JOIN Blood_Compatibility bc 
ON r.Recipient_Blood_Type = bc.Recipient_Blood_Type;
[26-03-2025 06:10] Sanket Jadhav: SELECT * FROM Request WHERE Status = 'Pending';
[26-03-2025 06:10] Sanket Jadhav: SELECT bt.Blood_Type, SUM(bi.Units_Available) AS Total_Units
FROM Blood_Inventory bi
JOIN Donation_Test bt ON bi.Donation_ID = bt.Donation_ID
GROUP BY bt.Blood_Type;

--6
SELECT * FROM Donor WHERE YEAR(Last_Donation_Date) = 2025;

--7
SELECT * FROM Blood_Bank WHERE Location = 'Mumbai';

--8
SELECT r.First_Name, r.Last_Name, r.Recipient_Blood_Type, bc.Blood_Type_Suitable 
FROM Recipient r
JOIN Blood_Compatibility bc 
ON r.Recipient_Blood_Type = bc.Recipient_Blood_Type;

--9
SELECT * FROM Request WHERE Status = 'Pending';

--10
SELECT bt.Blood_Type, SUM(bi.Units_Available) AS Total_Units
FROM Blood_Inventory bi
JOIN Donation_Test bt ON bi.Donation_ID = bt.Donation_ID
GROUP BY bt.Blood_Type;

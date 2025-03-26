CREATE TABLE Donor (
    Donor_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Blood_Type VARCHAR(5),
    Email VARCHAR(100),
    Address TEXT,
    Last_Donation_Date DATE
);

CREATE TABLE Donor_Contact (
    Donor_ID INT,
    Contact_No VARCHAR(15),
    FOREIGN KEY (Donor_ID) REFERENCES Donor(Donor_ID)
);

CREATE TABLE Blood_Bank (
    Bank_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Location TEXT,
    Contact_No VARCHAR(15)
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Bank_ID INT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Role VARCHAR(50),
    Email VARCHAR(100),
    Contact_No VARCHAR(15),
    FOREIGN KEY (Bank_ID) REFERENCES Blood_Bank(Bank_ID)
);

CREATE TABLE Donation (
    Donation_ID INT PRIMARY KEY,
    Donor_ID INT,
    Bank_ID INT,
    Donation_Date DATE,
    Units_Donated INT,
    Donation_Type VARCHAR(50),
    FOREIGN KEY (Donor_ID) REFERENCES Donor(Donor_ID),
    FOREIGN KEY (Bank_ID) REFERENCES Blood_Bank(Bank_ID)
);

CREATE TABLE Blood_Inventory (
    Inventory_ID INT PRIMARY KEY,
    Bank_ID INT,
    Donation_ID INT,
    Expiry_Date DATE,
    Units_Available INT,
    Collection_Date DATE,
    FOREIGN KEY (Bank_ID) REFERENCES Blood_Bank(Bank_ID),
    FOREIGN KEY (Donation_ID) REFERENCES Donation(Donation_ID)
);

CREATE TABLE Donation_Test (
    BloodTest_ID INT PRIMARY KEY,
    Donation_ID INT,
    Blood_Type VARCHAR(5),
    Test_Result VARCHAR(50),
    FOREIGN KEY (Donation_ID) REFERENCES Donation(Donation_ID)
);

CREATE TABLE Blood_Compatibility (
    Recipient_Blood_Type VARCHAR(5) PRIMARY KEY,
    Blood_Type_Suitable VARCHAR(55)
);

CREATE TABLE Recipient (
    Recipient_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Recipient_Blood_Type VARCHAR(5),
    Contact_No VARCHAR(15),
    Email VARCHAR(100),
    Address TEXT,
    Emergency_Contact_No VARCHAR(15),
    FOREIGN KEY (Recipient_Blood_Type) REFERENCES Blood_Compatibility(Recipient_Blood_Type)
);

CREATE TABLE Hospital (
    Hospital_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location TEXT,
    Email VARCHAR(100),
    Contact_No VARCHAR(15)
);

CREATE TABLE Request (
    Request_ID INT PRIMARY KEY,
    Recipient_ID INT,
    Hospital_ID INT,
    Blood_Type VARCHAR(5),
    Units_Required INT,
    Request_Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Recipient_ID) REFERENCES Recipient(Recipient_ID),
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID)
);

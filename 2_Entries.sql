-- Insert into Donor
INSERT INTO Donor VALUES
(1, 'Amit', 'Sharma', 30, 'Male', 'O+', 'amit.sharma@gmail.com', 'MG Road, Delhi', '2025-01-15'),
(2, 'Priya', 'Iyer', 25, 'Female', 'A+', 'priya.iyer@yahoo.com', 'Jayanagar, Bangalore', '2025-02-10'),
(3, 'Rohan', 'Patil', 40, 'Male', 'B-', 'rohan.patil@hotmail.com', 'Shivaji Nagar, Pune', '2024-12-20'),
(4, 'Neha', 'Verma', 35, 'Female', 'AB+', 'neha.verma@gmail.com', 'Salt Lake, Kolkata', '2025-03-05'),
(5, 'Vikram', 'Singh', 28, 'Male', 'O-', 'vikram.singh@yahoo.com', 'Anna Nagar, Chennai', '2025-01-30');

-- Insert into Donor_Contact
INSERT INTO Donor_Contact VALUES
(1, '9998887776'),
(2, '8887776665'),
(3, '7776665554'),
(4, '6665554443'),
(5, '5554443332');

-- Insert into Blood_Bank
INSERT INTO Blood_Bank VALUES
(1, 'Apollo Blood Bank', 'apollo@gmail.com', 'Delhi', '9876543210'),
(2, 'Red Cross India', 'redcross@yahoo.com', 'Mumbai', '8765432109'),
(3, 'Narayana Blood Center', 'narayana@hotmail.com', 'Bangalore', '7654321098'),
(4, 'Tata Memorial Bank', 'tata@gmail.com', 'Kolkata', '6543210987'),
(5, 'CMC Blood Bank', 'cmc@yahoo.com', 'Chennai', '5432109876');

-- Insert into Staff
INSERT INTO Staff VALUES
(1, 1, 'Rahul', 'Mishra', 'Technician', 'rahul.mishra@gmail.com', '9998887776'),
(2, 2, 'Kavita', 'Desai', 'Supervisor', 'kavita.desai@yahoo.com', '8887776665'),
(3, 3, 'Ankit', 'Reddy', 'Nurse', 'ankit.reddy@hotmail.com', '7776665554'),
(4, 4, 'Sanjay', 'Bose', 'Doctor', 'sanjay.bose@gmail.com', '6665554443'),
(5, 5, 'Meena', 'Krishnan', 'Assistant', 'meena.krishnan@yahoo.com', '5554443332');

-- Insert into Donation
INSERT INTO Donation VALUES
(101, 1, 1, '2025-01-15', 2, 'Whole Blood'),
(102, 2, 2, '2025-02-10', 1, 'Plasma'),
(103, 3, 3, '2024-12-20', 2, 'Platelets'),
(104, 4, 4, '2025-03-05', 1, 'Whole Blood'),
(105, 5, 5, '2025-01-30', 3, 'Red Blood Cells');

-- Insert into Blood_Inventory
INSERT INTO Blood_Inventory VALUES
(201, 1, 101, '2025-02-15', 2, '2025-01-15'),
(202, 2, 102, '2025-03-10', 1, '2025-02-10'),
(203, 3, 103, '2025-01-20', 2, '2024-12-20'),
(204, 4, 104, '2025-04-05', 1, '2025-03-05'),
(205, 5, 105, '2025-02-28', 3, '2025-01-30');

-- Insert into Donation_Test
INSERT INTO Donation_Test VALUES
(301, 101, 'O+', 'Passed'),
(302, 102, 'A+', 'Passed'),
(303, 103, 'B-', 'Passed'),
(304, 104, 'AB+', 'Failed'),
(305, 105, 'O-', 'Passed');

-- Insert into Blood_Compatibility
INSERT INTO Blood_Compatibility VALUES
('O+', 'O+,O-'),
('O-', 'O-'),
('A+', 'A+,A-,O+,O-'),
('A-', 'A-,O-'),
('B+', 'B+,B-,O+,O-'),
('B-', 'B-,O-'),
('AB+', 'A+,A-,B+,B-,O+,O-,AB+,AB-'),
('AB-', 'A-,B-,O-,AB-');

-- Insert into Recipient
INSERT INTO Recipient VALUES
(401, 'Rajesh', 'Gupta', 50, 'Male', 'O+', '9898989898', 'rajesh.gupta@gmail.com', 'Mumbai Central, Mumbai', '9789789789'),
(402, 'Sonia', 'Kumar', 35, 'Female', 'A+', '9876543210', 'sonia.kumar@yahoo.com', 'Koramangala, Bangalore', '8765432109'),
(403, 'Arjun', 'Naik', 60, 'Male', 'B-', '9765432109', 'arjun.naik@hotmail.com', 'Connaught Place, Delhi', '7654321098'),
(404, 'Pooja', 'Joshi', 45, 'Female', 'AB+', '9654321098', 'pooja.joshi@gmail.com', 'Salt Lake, Kolkata', '6543210987'),
(405, 'Harish', 'Rao', 55, 'Male', 'O-', '9543210987', 'harish.rao@yahoo.com', 'T. Nagar, Chennai', '5432109876');

-- Insert into Hospital
INSERT INTO Hospital VALUES
(1, 'AIIMS', 'Delhi', 'aiims@gmail.com', '9123456789'),
(2, 'Fortis Hospital', 'Mumbai', 'fortis@yahoo.com', '9234567890'),
(3, 'Apollo Hospital', 'Bangalore', 'apollo@hotmail.com', '9345678901'),
(4, 'Tata Medical Center', 'Kolkata', 'tata@gmail.com', '9456789012'),
(5, 'CMC Hospital', 'Chennai', 'cmc@yahoo.com', '9567890123');

-- Insert into Request
INSERT INTO Request VALUES
(501, 401, 2, 'O+', 2, '2025-03-10', 'Pending'),
(502, 402, 3, 'A+', 1, '2025-03-15', 'Approved'),
(503, 403, 1, 'B-', 2, '2025-02-20', 'Rejected'),
(504, 404, 4, 'AB+', 1, '2025-04-05', 'Pending'),
(505, 405, 5, 'O-', 3, '2025-01-30', 'Approved');

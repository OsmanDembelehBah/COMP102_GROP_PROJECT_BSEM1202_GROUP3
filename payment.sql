CREATE TABLE payment(
    payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    paymentMethod Varchar(50),
    paymentDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    paymentAmount DECIMAL(3,2),
    Patient_ID INT,
    FOREIGN KEY(Patient_ID) REFERENCES patient(Patient_ID)
);
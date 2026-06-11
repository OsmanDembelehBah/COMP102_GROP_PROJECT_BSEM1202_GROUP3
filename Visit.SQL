CREATE TABLE Visit(
    Visit_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT NOT NULL,
    Health_Worker_ID INT NOT NULL,
    Visit_Date DATETIME,
    Visit_Time TIME DEFAULT CURRENT_TIME, 
    Check_In_Time DATETIME,
    CHECK_OUT_TIME DATETIME,
    VISIT_TYPE varchar(100),
    FOREIGN KEY (Patient_ID) REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Health_Worker_ID ) REFERENCES Health_Worker (Health_Worker_ID)
);

INSERT INTO Visit (Patient_ID, Health_Worker_ID, Visit_Date, Visit_Time, Check_In_Time, CHECK_OUT_TIME, VISIT_TYPE) 
VALUES
(1, 1, '2026-06-01 08:30:00', '08:30:00', '2026-06-01 08:15:00', '2026-06-01 09:45:00', 'Emergency Consultation'),
(2, 2, '2026-06-01 09:00:00', '09:00:00', '2026-06-01 08:45:00', '2026-06-01 10:15:00', 'Routine Checkup'),
(3, 3, '2026-06-01 10:00:00', '10:00:00', '2026-06-01 09:50:00', '2026-06-01 11:30:00', 'Follow-up Visit'),
(4, 4, '2026-06-02 08:00:00', '08:00:00', '2026-06-02 07:45:00', '2026-06-02 09:15:00', 'New Patient Intake'),
(5, 5, '2026-06-02 11:15:00', '11:15:00', '2026-06-02 11:00:00', '2026-06-02 13:00:00', 'Antenatal Care Clinic'),
(6, 6, '2026-06-02 14:00:00', '14:00:00', '2026-06-02 13:45:00', '2026-06-02 15:10:00', 'Routine Evaluation'),
(7, 7, '2026-06-03 09:30:00', '09:30:00', '2026-06-03 09:15:00', '2026-06-03 12:00:00', 'Surgical Pre-Assessment'),
(8, 8, '2026-06-03 10:45:00', '10:45:00', '2026-06-03 10:30:00', '2026-06-03 11:45:00', 'Postnatal Evaluation'),
(9, 9, '2026-06-03 13:00:00', '13:00:00', '2026-06-03 12:50:00', '2026-06-03 14:15:00', 'Pediatric Checkup'),
(10, 10, '2026-06-04 07:30:00', '07:30:00', '2026-06-04 07:15:00', '2026-06-04 09:00:00', 'Acute Trauma Emergency'),
(11, 11, '2026-06-04 11:00:00', '11:00:00', '2026-06-04 10:45:00', '2026-06-04 12:15:00', 'Epidemic Screening Survey'),
(12, 12, '2026-06-04 15:20:00', '15:20:00', '2026-06-04 15:00:00', '2026-06-04 16:30:00', 'Routine Evaluation'),
(13, 13, '2026-06-05 09:00:00', '09:00:00', '2026-06-05 08:40:00', '2026-06-05 10:30:00', 'Cardiac Follow-up'),
(14, 14, '2026-06-05 10:15:00', '10:15:00', '2026-06-05 10:00:00', '2026-06-05 11:15:00', 'Childhood Immunization'),
(15, 15, '2026-06-05 13:30:00', '13:30:00', '2026-06-05 13:15:00', '2026-06-05 14:45:00', 'General Consultation'),
(16, 16, '2026-06-06 08:45:00', '08:45:00', '2026-06-06 08:30:00', '2026-06-06 09:50:00', 'Pediatric Consultation'),
(17, 17, '2026-06-06 11:00:00', '11:00:00', '2026-06-06 10:50:00', '2026-06-06 12:10:00', 'Routine Management Clinic'),
(18, 18, '2026-06-06 14:15:00', '14:15:00', '2026-06-06 14:00:00', '2026-06-06 15:45:00', 'Psychiatric Follow-up'),
(19, 19, '2026-06-06 16:00:00', '16:00:00', '2026-06-06 15:50:00', '2026-06-06 16:45:00', 'Skin Evaluation Consult'),
(20, 20, '2026-06-06 16:30:00', '16:30:00', '2026-06-06 16:15:00', '2026-06-06 17:30:00', 'Routine Evaluation');
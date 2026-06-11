CREATE TABLE Health_Worker(
    Health_Worker_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Worker_Name Varchar(100) NOT NULL,
    Department Varchar(100),
    Phone VARCHAR(100),
    Date_Of_Birth DATE NOT NULL,
    Gender Varchar(10),
    Address Varchar(255),
    Email_Address Varchar(100),
    Hire_Date DATE,
    License_Number Varchar(50),
    Role Varchar(100)
);

INSERT INTO Health_Worker (Worker_Name, Department, Phone, Date_Of_Birth, Gender, Address, Email_Address, Hire_Date, License_Number, Role) 
VALUES
('Dr. Alusine Jalloh', 'General Medicine', '+23277500100', '1975-04-12', 'Male', '12 Signal Hill, Freetown', 'a.jalloh@clinic.gov.sl', '2024-01-15', 'MDSL-1092', 'Chief Medical Officer'),
('Nurse Aminata Tarawally', 'Outpatient Care', '+23276400200', '1988-08-24', 'Female', '45 Lumley, Freetown', 'a.tarawally@clinic.gov.sl', '2024-03-10', 'RNSL-4412', 'Head Nurse'),
('Dr. Sahr Komba', 'Consulting Room 1', '+23230300400', '1980-01-15', 'Male', '8 Hill Cot Road, Freetown', 's.komba@clinic.gov.sl', '2024-02-20', 'MDSL-2041', 'Senior Physician'),
('Nurse Isatu Dumbuya', 'Triage & Screening', '+23288220011', '1993-11-30', 'Female', '22 Kissy, Freetown', 'i.dumbuya@clinic.gov.sl', '2024-05-01', 'RNSL-5521', 'Staff Nurse'),
('Dr. Fatmata Barrie', 'Maternity Ward', '+23275990011', '1983-05-14', 'Female', '19 Aberdeen, Freetown', 'f.barrie@clinic.gov.sl', '2024-01-15', 'MDSL-3081', 'Consultant Obstetrician'),
('CHO Foday Kallon', 'Community Outreach', '+23276554411', '1986-09-02', 'Male', 'Bo Highway, Bo', 'f.kallon@clinic.gov.sl', '2024-04-18', 'CHOSL-882', 'Community Health Officer'),
('Dr. Samuel Williams', 'Operating Theatre', '+23234112233', '1972-12-25', 'Male', '3 Spur Road, Freetown', 's.williams@clinic.gov.sl', '2024-01-10', 'MDSL-0914', 'Surgeon Specialist'),
('Nurse Mariama Sow', 'Maternity Ward', '+23277332211', '1990-03-18', 'Female', '14 Kingtom, Freetown', 'm.sow@clinic.gov.sl', '2024-06-01', 'MWSL-7741', 'Senior Midwife'),
('Dr. Alhaji Turay', 'Pediatric Unit', '+23230554433', '1978-07-07', 'Male', 'Hangha Road, Kenema', 'a.turay@clinic.gov.sl', '2024-02-11', 'MDSL-1845', 'Pediatrician'),
('Nurse Zainab Fofanah', 'Emergency Ward', '+23288445566', '1995-10-10', 'Female', '9 Wellington, Freetown', 'z.fofanah@clinic.gov.sl', '2024-07-22', 'RNSL-9901', 'ER Nurse'),
('Dr. Lansana Kanneh', 'Research and Statistics', '+23276889911', '1981-06-21', 'Male', '2 Government Wharf, Freetown', 'l.kanneh@clinic.gov.sl', '2024-03-05', 'MDSL-2311', 'Epidemiologist Specialist'),
('Nurse Kadiatu Mansaray', 'Outpatient Care', '+23277114477', '1992-02-14', 'Female', '11 Congo Cross, Freetown', 'k.mansaray@clinic.gov.sl', '2024-05-15', 'RNSL-3104', 'Outpatient Nurse'),
('Dr. David Thomas', 'Consulting Room 2', '+23233887766', '1970-08-05', 'Male', '7 Leicester Peak, Freetown', 'd.thomas@clinic.gov.sl', '2024-01-20', 'MDSL-0512', 'Cardiologist Consultant'),
('Nurse Yeabu Sesay', 'Immunization Unit', '+23278112255', '1994-01-20', 'Female', '34 Cline Town, Freetown', 'y.sesay@clinic.gov.sl', '2024-08-12', 'RNSL-8815', 'Vaccination Coordinator'),
('Dr. Othman Bah', 'General Medicine', '+23276332211', '1987-11-11', 'Male', '15 Goderich Village, Freetown', 'o.bah@clinic.gov.sl', '2024-04-01', 'MDSL-4011', 'Medical Officer'),
('Nurse Hawa Koroma', 'Pediatric Unit', '+23230449911', '1991-05-29', 'Female', '18 Makeni Road, Makeni', 'h.koroma@clinic.gov.sl', '2024-09-05', 'RNSL-6214', 'Staff Nurse (Pediatrics)'),
('CHO Augustine Kamara', 'Outpatient Care', '+23288998811', '1989-03-31', 'Male', '42 Segbwema Road, Kenema', 'a.kamara@clinic.gov.sl', '2024-02-28', 'CHOSL-955', 'Clinical CHO'),
('Nurse Musu Conteh', 'Psychiatry Unit', '+23277228844', '1986-12-12', 'Female', '9 Tower Hill, Freetown', 'm.conteh@clinic.gov.sl', '2024-03-15', 'RNSL-7119', 'Mental Health Nurse'),
('Dr. Ibrahim Bangura', 'Consulting Room 3', '+23276115599', '1976-09-09', 'Male', '26 Brookfields, Freetown', 'i.bangura@clinic.gov.sl', '2024-01-18', 'MDSL-1649', 'Dermatologist'),
('Nurse Finda Saquee', 'Triage & Screening', '+23230663300', '1996-07-19', 'Female', 'Koidu Town, Kono', 'f.saquee@clinic.gov.sl', '2024-10-02', 'RNSL-1025', 'Junior Staff Nurse');
CREATE TABLE Diagnosis(
    Diagnosis_ID INT PRIMARY KEY AUTO_INCREMENT,
    Diagnosis_Code INT,
    Diagnosis_Name Varchar(500),
    Patient_ID INT NOT NULL,
    Visit_ID INT NOT NULL,
    Health_Worker_ID INT NOT NULL,
    Diagnosis_Date DATETIME NOT NULL,
    Diagnosis_result TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Visit_ID) REFERENCES Visit (Visit_ID),
    FOREIGN KEY (Health_Worker_ID) REFERENCES Health_Worker (Health_Worker_ID)
);

INSERT INTO Diagnosis (Diagnosis_Code, Diagnosis_Name, Patient_ID, Visit_ID, Health_Worker_ID, Diagnosis_Date, Diagnosis_result) 
VALUES
(50, 'Severe Plasmodium Falciparum Malaria', 1, 1, 1, '2026-06-01 09:00:00', 'Rapid Diagnostic Test positive. High temperature 39.5C.'),
(51, 'Typhoid Fever Infection', 2, 2, 2, '2026-06-01 09:45:00', 'Widal test positive for Salmonella Typhi bacteria.'),
(52, 'Essential Chronic Hypertension', 3, 3, 3, '2026-06-01 10:30:00', 'Consistent blood pressure log readings above 160/100 mmHg.'),
(53, 'Acute Amoebic Dysentery', 4, 4, 4, '2026-06-02 08:30:00', 'Stool analysis positive for Entamoeba histolytica cysts.'),
(54, 'Normal Multi-gravida Pregnancy', 5, 5, 5, '2026-06-02 12:00:00', '24 weeks gestation confirmed via ultrasound. Normal fetal heart rate.'),
(50, 'Mild Uncomplicated Malaria', 6, 6, 6, '2026-06-02 14:30:00', 'RDT positive. Sent for oral anti-malarial therapies.'),
(55, 'Inguinal Hernia Structure defect', 7, 7, 7, '2026-06-03 10:00:00', 'Physical examination reveals distinct lower abdominal structural protrusion.'),
(56, 'Postpartum Anemia State', 8, 8, 8, '2026-06-03 11:15:00', 'Hemoglobin level tested low at 8.5 g/dL during postnatal check.'),
(57, 'Acute Bronchopneumonia', 9, 9, 9, '2026-06-03 13:30:00', 'Chest auscultation reveals crackles. Oxygen saturation stable at 96%.'),
(58, 'Open Compound Fracture Left Tibia', 10, 10, 10, '2026-06-04 08:00:00', 'Emergency trauma presentation from Okada motorcycle accident.'),
(59, 'Suspected Lassa Fever Contagion', 11, 11, 11, '2026-06-04 11:30:00', 'High fever with mucosal bleeding indicators. Isolation protocol active.'),
(51, 'Gastroenteritis and Mild Dehydration', 12, 12, 12, '2026-06-04 15:45:00', 'Vomiting and watery stool report. Clear signs of fluid depletion.'),
(60, 'Congestive Heart Failure', 13, 13, 13, '2026-06-05 09:30:00', 'Echocardiogram indicates reduced ejection fraction with pitting edema.'),
(61, 'Routine Infancy Immunization Completed', 14, 14, 14, '2026-06-05 10:45:00', 'Administered scheduled Pentavalent and Oral Polio vaccines.'),
(50, 'Plasmodium Falciparum Malaria Case', 15, 15, 15, '2026-06-05 14:00:00', 'RDT positive. Complaints of chronic chills and severe joint pain.'),
(57, 'Mild Upper Respiratory Infection', 16, 16, 16, '2026-06-06 09:15:00', 'Nasal congestion, inflammation, clear throat swab cultivation.'),
(62, 'Type 2 Diabetes Mellitus', 17, 17, 17, '2026-06-06 11:30:00', 'Fasting Blood Glucose tracked elevated at 145 mg/dL.'),
(63, 'Severe Clinical Depression Episode', 18, 18, 18, '2026-06-06 14:45:00', 'PHQ-9 screening assessment indicates high score profile.'),
(64, 'Tinea Corporis Fungal Infection', 19, 19, 19, '2026-06-06 16:20:00', 'Classic circular erythematous lesions visible on skin epidermis.'),
(50, 'Uncomplicated Malaria Case', 20, 20, 20, '2026-06-06 17:00:00', 'RDT positive with fever. Patient responds well to initial triage oral tabs.');
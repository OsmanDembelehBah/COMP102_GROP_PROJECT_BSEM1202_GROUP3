CREATE TABLE Medical_Record(
    Medical_Record_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Diagnosis_ID INT,
    DATE_CREATED DATE,
    Medical_Record_Status varchar(30),
    Prescription TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Diagnosis_ID) REFERENCES Diagnosis (Diagnosis_ID)
);

INSERT INTO Medical_Record (Patient_ID, Diagnosis_ID, DATE_CREATED, Medical_Record_Status, Prescription) 
VALUES
(1, 1, '2026-06-01', 'Critical', 'Artesunate IV Injection first dose, followed by full oral Artesunate-Amodiaquine treatment blocks.'),
(2, 2, '2026-06-01', 'Admitted', 'Ciprofloxacin tablets 500mg twice daily for 7 days. Oral Rehydration Salts.'),
(3, 3, '2026-06-01', 'Chronic Management', 'Amlodipine tablets 5mg daily. Low-sodium diet advisory sheets issued.'),
(4, 4, '2026-06-02', 'Outpatient Treatment', 'Metronidazole tablets 400mg three times daily for 5 continuous days.'),
(5, 5, '2026-06-02', 'Routine Monitoring', 'Folic Acid and Ferrous Sulfate daily prenatal supplement tables.'),
(6, 6, '2026-06-02', 'Recovered Outpatient', 'Artesunate-Amodiaquine (ACT) combination therapy blister packaging.'),
(7, 7, '2026-06-03', 'Scheduled Surgery', 'Pre-operative preparation instructions. Paracetamol 500mg tables for discomfort.'),
(8, 8, '2026-06-03', 'Outpatient Follow-up', 'Iron Dextran supplements alongside High Vitamin C diet guidelines.'),
(9, 9, '2026-06-03', 'Pediatric Observation', 'Amoxicillin Dispersible Tablets 250mg. Salbutamol inhaler therapy as needed.'),
(10, 10, '2026-06-04', 'Transferred Ward', 'Intravenous fluids, Morphine pain management block, Emergency surgical debridement plan.'),
(11, 11, '2026-06-04', 'Strict Isolation', 'Ribavirin therapy experimental course under active protective protocol guidance.'),
(12, 12, '2026-06-04', 'Observation Ward', 'Intravenous Normal Saline hydration drip blocks. Zinc supplements.'),
(13, 13, '2026-06-05', 'Chronic Management', 'Furosemide 40mg daily morning dose. Spironolactone supplements.'),
(14, 14, '2026-06-05', 'Discharged Safely', 'No medications required. Childhood vaccination chart officially authenticated.'),
(15, 15, '2026-06-05', 'Outpatient Treatment', 'Artesunate-Amodiaquine combination course packs. Ibuprofen tabs.'),
(16, 16, '2026-06-06', 'Recovered Outpatient', 'Cetirizine tablets 10mg once daily at night. Vitamin C syrup formulation.'),
(17, 17, '2026-06-06', 'Chronic Management', 'Metformin 500mg daily evening meals. Continuous glucose log monitoring.'),
(18, 18, '2026-06-06', 'Under Psychiatric Care', 'Amitriptyline 25mg nightly. Scheduled counseling therapy referrals.'),
(19, 19, '2026-06-06', 'Outpatient Treatment', 'Clotrimazole topical cream application twice daily for 14 calendar days.'),
(20, 20, '2026-06-06', 'Recovered Outpatient', 'Standard oral anti-malarial ACT treatment configuration protocol.');

CREATE TABLE Treatment(
    Treatment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Visit_ID INT,
    Treatment_Name Varchar(500),
    Dosage Varchar(300),
    Duration INT,
    Start_Date DATE,
    End_Date Date,
    Patient_ID INT,
    Health_Worker_ID INT,
    FOREIGN KEY (Visit_ID) REFERENCES Visit (Visit_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient (Patient_ID),
    FOREIGN KEY (Health_Worker_ID) REFERENCES Health_Worker (Health_Worker_ID)
);

INSERT INTO Treatment (Visit_ID, Treatment_Name, Dosage, Duration, Start_Date, End_Date, Patient_ID, Health_Worker_ID) 
VALUES
(1, 'Intravenous Antimalarial Hydration Protocol', 'Artesunate 2.4mg/kg IV doses', 3, '2026-06-01', '2026-06-04', 1, 1),
(2, 'Enteric Bacterial Elimination Therapy', '500mg Oral Capsules twice daily', 7, '2026-06-01', '2026-06-08', 2, 2),
(3, 'Hypertension Vascular Resistance Management', '5mg Daily tablet baseline tracking', 30, '2026-06-01', '2026-07-01', 3, 3),
(4, 'Amoebiasis Parasitic Eradication Program', '400mg Tablets three times daily schedule', 5, '2026-06-02', '2026-06-07', 4, 4),
(5, 'Maternal Micronutrient Substitution Scheme', '1 Supplement capsule combination daily', 90, '2026-06-02', '2026-08-31', 5, 5),
(6, 'First-Line Oral Anti-Malarial Therapy', 'Standard ACT weight-based configuration blister', 3, '2026-06-02', '2026-06-05', 6, 6),
(7, 'Pre-Surgical Structural Containment Triage', 'Bed rest constraints with analgesics', 14, '2026-06-03', '2026-06-17', 7, 7),
(8, 'Erythrocyte Regeneration Supplementation', '200mg Elemental iron tracking daily', 30, '2026-06-03', '2026-07-03', 8, 8),
(9, 'Pediatric Pulmonary Pathogen Elimination', '250mg Dispersible amoxicillin twice daily', 5, '2026-06-03', '2026-06-08', 9, 9),
(10, 'Emergency Trauma Skeletal Stabilization', 'IV antibiotics, pain block, emergency splinting', 1, '2026-06-04', '2026-06-05', 10, 10),
(11, 'Viremia Containment Isolation Procedure', 'Ribavirin IV titration parameters', 10, '2026-06-04', '2026-06-14', 11, 11),
(12, 'Electrolyte Fluid Volume Optimization', 'IV Normal Saline 1L every 8 hours', 2, '2026-06-04', '2026-06-06', 12, 12),
(13, 'Cardiovascular Fluid Diuretic Management', '40mg Oral tablet morning routine', 30, '2026-06-05', '2026-07-05', 13, 13),
(14, 'EPI Standard Vaccine Delivery Program', '0.5ml IM/Oral drops according to chart', 1, '2026-06-05', '2026-06-05', 14, 14),
(15, 'First-Line Oral Anti-Malarial Therapy', 'Standard ACT weight-based configuration blister', 3, '2026-06-05', '2026-06-08', 15, 15),
(16, 'Upper Airway Symptomatic Relief', '10mg Antihistamine once nightly', 5, '2026-06-06', '2026-06-11', 16, 16),
(17, 'Pancreatic Insulin Sensitivity Optimization', '500mg Oral tablet with dinner block', 60, '2026-06-06', '2026-08-05', 17, 17),
(18, 'Neurological Monoamine Reuptake Adjustment', '25mg Oral tablet at bedtime', 30, '2026-06-06', '2026-07-06', 18, 18),
(19, 'Topical Epidermal Antimycotic Application', 'Apply thin film layer twice daily', 14, '2026-06-06', '2026-06-20', 19, 19),
(20, 'First-Line Oral Anti-Malarial Therapy', 'Standard ACT weight-based configuration blister', 3, '2026-06-06', '2026-06-09', 20, 20);
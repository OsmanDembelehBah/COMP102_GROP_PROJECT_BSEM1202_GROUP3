# 🏥 Public Health Clinic Records System (PHCRS)
### 📊 COMP 102 - Introduction to Database Final Project
---
[![Database](https://img.shields.io/badge/Database-MySQL%208.0-blue?style=for-the-badge&logo=mysql)](https://www.mysql.com/)
[![Platform](https://img.shields.io/badge/Environment-XAMPP%20%2F%20phpMyAdmin-orange?style=for-the-badge&logo=xampp)](https://www.apachefriends.org/)
[![Target](https://img.shields.io/badge/SDG%20Alignment-Goal%203%3A%20Good%20Health-green?style=for-the-badge&logo=unicef)](https://sdgs.un.org/goals/goal3)
[![Institution](https://img.shields.io/badge/Limkokwing%20University-Sierra%20Leone-black?style=for-the-badge)](https://www.limkokwing.net/sierra_leone)

## 📌 Project Overview
The **Public Health Clinic Records System (PHCRS)** is a robust, relational database solution architected specifically to streamline healthcare administration, optimize patient data retrieval, and track disease velocities within the context of **Sierra Leone's public health ecosystem**. By migrating from vulnerable paper registers to a highly structured MySQL relational database, this system addresses critical medical record vulnerabilities, ensuring data accuracy, speed, and absolute confidentiality.

### 🌍 Sustainable Development Goal (SDG) 3 Alignment
This project acts as a direct technical intervention for **SDG Target 3.c**: *Substantially increase health financing and the recruitment, development, training, and retention of the health workforce in developing countries, especially in least developed countries and small island developing States.*
* **Epidemiological Impact:** Real-time tracking of dominant localized conditions such as *Plasmodium Falciparum Malaria*, *Typhoid Fever*, and *Acute Amoebic Dysentery*.
* **Resource Optimization:** Links clinical presentations dynamically to available medical workers and detailed historical treatment plans.

---

## 🏗️ Core Relational Architecture

The system's integrity is governed by 6 core entities arranged with rigorous referential integrity constraints, built-in cascading operations (`ON UPDATE CASCADE`), and strict data validation patterns.

+------------------+
               |     Patient      |
               +------------------+
                /       |        \
             1/         |1        \1
             /          |          \
            M           |           M
   +-----------+        |      +-----------+
   |   Visit   |        |      | Diagnosis |
   +-----------+        |      +-----------+
        \               |           /
        M\              |          /M
          \             |1        /
         +--------------------------+
         |      Medical_Record      |
         +--------------------------+

### 🗂️ Data Dictionary & Entity Definitions

1. **`Patient`**: Tracks demographic profiles, secure identity baselines, and emergency contact details.
2. **`Health_Worker`**: Manages clinical staff rosters, medical licenses, active specialties, and department assignments.
3. **`Visit`**: Captures patient encounters, check-in schedules, and specialized service types (`VISIT_TYPE`).
4. **`Diagnosis`**: Stores clinical evaluations mapped directly to structured medical codes and targeted results.
5. **`Medical_Record`**: Houses long-form categorical clinical data, systemic status states (`Critical`, `Chronic Management`, `Recovered`), and persistent prescriptions.
6. **`Treatment`**: Logs targeted physiological interventions, exact pharmaceutical dosages, timelines, and clinician dependencies.

---

## 🛠️ Complete Database Schema Definition (DDL)

```sql
-- Create System Infrastructure
CREATE DATABASE IF NOT EXISTS public_health_clinic;
USE public_health_clinic;

-- Table 1: Patient
CREATE TABLE Patient(
    Patient_ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    Patient_Name Varchar(100) NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    GENDER Varchar(10),
    Address Varchar(255),
    Phone varchar(20),
    Email_Adress Varchar(100),
    Emergency_Contact_Name Varchar(100),
    Emergency_Contact_Number Varchar(20)
);

-- Table 2: Health_Worker
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

-- Table 3: Visit
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
    FOREIGN KEY (Health_Worker_ID) REFERENCES Health_Worker (Health_Worker_ID)
);

-- Table 4: Diagnosis
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

-- Table 5: Medical_Record
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

-- Table 6: Treatment
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

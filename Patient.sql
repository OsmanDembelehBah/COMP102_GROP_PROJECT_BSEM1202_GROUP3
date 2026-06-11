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

INSERT INTO Patient (Patient_Name, DATE_OF_BIRTH, GENDER, Address, Phone, Email_Adress, Emergency_Contact_Name, Emergency_Contact_Number) 
VALUES
('Sia Tamba', '1998-04-12', 'Female', '14 Wilkinson Road, Freetown', '+23277102030', 'sia.tamba@email.sl', 'Kono Tamba', '+23277102031'),
('Mohamed Bangura', '1985-09-23', 'Male', '45 Kissy Road, Freetown', '+23276405060', 'm.bangura@email.sl', 'Fatmata Bangura', '+23276405061'),
('Kadiatu Kamara', '2002-11-05', 'Female', '12 Campbell Street, Freetown', '+23230556677', 'kadie.k@email.sl', 'Alusine Kamara', '+23230556678'),
('Tamba Nyuma', '1973-01-30', 'Male', '88 Hangha Road, Kenema', '+23288112233', 'tamba.nyuma@email.sl', 'Finda Nyuma', '+23288112234'),
('Amadu Bah', '1991-07-15', 'Male', '32 Lumley Beach Road, Freetown', '+23277889900', 'amadu.bah@email.sl', 'Mariama Bah', '+23277889901'),
('Fatmata Sesay', '2005-03-22', 'Female', '19 Bo Jon Junction, Bo', '+23276223344', 'f.sesay@email.sl', 'Samuel Sesay', '+23276223345'),
('Emmanuel Mansaray', '1968-12-14', 'Male', '77 Siaka Stevens Street, Freetown', '+23233445566', 'e.mansaray@email.sl', 'Zainab Mansaray', '+23233445567'),
('Isatu Turay', '1995-05-19', 'Female', '5 Augusta Road, Regent', '+23278990011', 'isatu.turay@email.sl', 'Brima Turay', '+23278990012'),
('Sahr Gando', '1989-10-02', 'Male', '10 Makeni Highway, Makeni', '+23280443322', 'sahr.gando@email.sl', 'Kumba Gando', '+23280443323'),
('Mabinty Conteh', '2001-02-28', 'Female', '62 Aberdeen Village, Freetown', '+23275667788', 'mabinty.c@email.sl', 'Osman Conteh', '+23275667789'),
('Alimamy Koroma', '1979-08-11', 'Male', '21 Bai Bureh Road, Freetown', '+23277334455', 'alimamy.k@email.sl', 'Hawa Koroma', '+23277334456'),
('Finda Kpakiwa', '1994-06-04', 'Female', '34 Kono Highway, Koidu', '+23276554433', 'finda.k@email.sl', 'Sahr Kpakiwa', '+23276554434'),
('Osman Jalloh', '1983-03-17', 'Male', '9 Wellington Street, Freetown', '+23230112233', 'osman.jalloh@email.sl', 'Aissatou Jalloh', '+23230112234'),
('Zainab Kanu', '2000-09-09', 'Female', '15 Goderich Village, Freetown', '+23288776655', 'zainab.kanu@email.sl', 'Momodu Kanu', '+23288776656'),
('Brima Kargbo', '1992-11-25', 'Male', '4 Lunsar Road, Marampa', '+23277665544', 'brima.kargbo@email.sl', 'Aminata Kargbo', '+23277665545'),
('Musu Massaquoi', '1976-07-07', 'Female', '56 Tiama Highway, Njala', '+23276119922', 'musu.mass@email.sl', 'Joseph Massaquoi', '+23276119923'),
('Samuel Cole', '1987-01-15', 'Male', '102 Sanders Street, Freetown', '+23234998877', 'sam.cole@email.sl', 'Gladys Cole', '+23234998878'),
('Hawa Fornah', '2003-05-30', 'Female', '18 Kabala Road, Kabala', '+23279112233', 'hawa.fornah@email.sl', 'Sorie Fornah', '+23279112234'),
('Lamin Sanoh', '1990-10-10', 'Male', '11 Pujehun Road, Bo', '+23275334455', 'lamin.sanoh@email.sl', 'Mariama Sanoh', '+23275334456'),
('Tenneh Marah', '1997-02-14', 'Female', '27 Falaba Road, Koinadugu', '+23288990011', 'tenneh.marah@email.sl', 'Alhaji Marah', '+23288990012');
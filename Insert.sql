-- Inserting into PEPPER Table.

INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Jalapeno', 11121442, 3500, 'Veracruz, Mexico');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Habanero', 71016893, 250000, 'Yucatan Peninsula, Mexico');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Cayenne', 93031901, 40000, 'Cayenne, French Guiana');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Pepper X', 71347848, 3180000, 'Rock Hill, South Carolina');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Chipotle', 49673330, 5000, 'Aztecs');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Ghost (Bhutlah) Pepper', 31671864, 1000000, 'Northeast India');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Chocolate Bhutlah', 32565286, 1750000, 'Wisconsin');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Chili Pepper', 31840935, 7000, 'Mexico');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Carolina Reaper', 85195440, 1500000, 'Fort Mill, South Carolina');
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Chocolate Douglah', 87156399, 1250000, 'The Caribbean');

-- Inserting into COMPANY Table.

INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Huy Fong Foods', 'Irwindale, CA', 1980, 1);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Hot Ones', 'Brooklyn, NY', 2017, 7);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Ashley Food Company', 'Sudbury, MA', 1976, 2);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Blairs Sauce and Snacks', 'Highland, NJ', 1989, 2);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Spicin Foods', 'Kansas City, KS', 1999, 1);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Bravado Spice Company', 'Houston, TX', 2012, 3);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('El Yucateco', 'Yucatan, Mexico', 1968, 1);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Adoboloco', 'Maui, HI', 2010, 3);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Puckerbutt', 'Fort Mill, SC', 1960, 1);
INSERT INTO COMPANY (Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values ('Heartbeat Hot Sauce', 'Thunder Bay, Ontario', 2016, 2);


-- Inserting into HOTSAUCE table.

INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Sriracha', 68202, 2200, 'Huy Fong Foods', 11121442, 1980, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('The Last Dab', 10831, 2000000, 'Hot Ones', 71347848, 1991, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Mad Dog 357', 63066, 357000, 'Ashley Food Company', 93031901, 2017, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Blairs Original Death Sauce with Chipotle', 23789, 30000, 'Blairs Sauce and Snacks', 71016893, 1989, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Da Bomb Beyond Insanity', 29051, 135600, 'Spicin Foods', 71016893, 1999, 4);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Aka Miso', 35078, 116000, 'Bravado Spice Company', 31671864, 2012, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Chile Habanero', 85495, 5790, 'El Yucateco', 71016893, 1998, 1);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Kolohe Kid', 63757, 61000, 'Adoboloco', 31671864, 2016, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Chocolate Plague', 11925, 690000, 'Puckerbutt', 32565286, 2005, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Pineapple Habanero', 98341, 12000, 'Heartbeat Hot Sauce', 71016893, 2017, 0);



-- Inserting into SEASON Table.
INSERT INTO SEASON (Season_Number, HS_ID)
Values (1, 85495);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (1, 23789);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (1, 63066);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (2, 68202);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (2, 85495);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (2, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (2, 63066);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (3, 68202);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (3, 85495);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (3, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (3, 63066);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (4, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (4, 10831);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (5, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (6, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (7, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (8, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (9, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (10, 29051);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (10, 35078);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (8, 63757);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (9, 11925);
INSERT INTO SEASON (Season_Number, HS_ID)
Values (10, 98341);

-- Inserting into EPISODES Table.

INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (8, '"DJ Khaled Talks Fuccbois, Finga Licking, and Media Dinosaurs While Eating Spicy Wings"', "2015-10-22", 'Fail', 1);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (40, '"Bobby Lee Has an Accident Eating Spicy Wings"', "2016-10-27", 'Pass', 2);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (63, '"Guy Fieri Becomes the Mayor of Spicy Wings"', "2017-04-27", 'Pass', 3);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (93, '"Logic Solves a Rubiks Cube While Eating Spicy Wings"', "2017-12-07", 'Pass', 4);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (100, '"Rich Brian Experiences Peak Bromance While Eating Spicy Wings"', "2018-02-08", 'Pass', 5);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (114, '"Natalie Portman Pirouettes in Pain While Eating Spicy Wings"', "2018-06-14", 'Pass', 6);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (130, '"Lil Yachty Has His First Experience With Spicy Wings"', "2018-10-04", 'Fail', 7);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (138, '"Gordon Ramsay Savagely Critiques Spicy Wings"', "2019-01-24", 'Pass', 8);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (150, '"The Jonas Brothers Burn Up While Eating Spicy Wings"', "2019-05-30", 'Pass', 9);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Guest_Completion, Season_Number)
Values (172, '"Chance the Rapper Battles Spicy Wings"', "2019-11-21", 'Pass', 10);

Update EPISODES SET Episode_ID = 130 WHERE Episode_ID = 126;

-- Inserting GUEST Table.

INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('DJ Khaled', 8, 85495, 'Producer');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Bobby Lee', 40, 'NULL', 'Comedian');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Guy Fieri', 63, 'NULL', 'Chef');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Logic', 93, 'NULL', 'Musician');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Rich Brian', 100, 'NULL', 'Musician');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Natalie Portman', 114, 'NULL', 'Actor');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Lil Yachty', 130, '29051', 'Musician');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Gordon Ramsay', 138, 'NULL', 'Chef');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Jonas Brothers', 150, 'NULL', 'Musician');
INSERT INTO GUESTS (Guest_Name, Episode_ID, HS_ID_Fail, Profession)
Values ('Chance the Rapper', 172, 'NULL', 'Musician');




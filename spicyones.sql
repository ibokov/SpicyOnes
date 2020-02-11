-- SQL Script
/* ********************************
Project Phase II
Group 6 (MySQL-Version 8.0.19)
This SQL Script was tested on MySQL using Azure MySQL server. To run, simply load this script file and run. ********************************
*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- *****************************************************
-- Part A
-- *****************************************************

-- *****************************************************
-- Create Schema SPICYONES
-- *****************************************************
CREATE SCHEMA IF NOT EXISTS `SPICYONES`;
USE `SPICYONES` ;


-- *****************************************************
-- Create Tables
-- *****************************************************

-- 
-- Create Table `SPICYONES`.`PEPPER` Stores data about Peppers
-- 
CREATE TABLE IF NOT EXISTS `SPICYONES`.`PEPPER` (
  `PepName` VARCHAR(50) NOT NULL,
  `Pep_ID` CHAR(8) NOT NULL,
  `Pep_Scoville` INT NOT NULL,
  `Pep_Location` VARCHAR(50) NULL,
  PRIMARY KEY (`Pep_ID`),
  UNIQUE INDEX `Pep_ID_UNIQUE` (`Pep_ID` ASC) VISIBLE,
  -- CONSTRAINT chk_Pep_ID CHECK ('Pep_ID' like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'));
  CONSTRAINT chk_Pep_ID CHECK ('Pep_ID' NOT LIKE '%[^0-9]%'));

-- 
-- Create Table `SPICYONES`.`COMPANY` Stores data about hot sauce companies. 
-- 
CREATE TABLE IF NOT EXISTS `SPICYONES`.`COMPANY` (
  `Company_Name` VARCHAR(100) NOT NULL,
  `HQ_Location` VARCHAR(50) NOT NULL,
  `Established_Date` YEAR(4) NOT NULL,
  `Num_HS_Produced` INT NOT NULL DEFAULT 1,
  PRIMARY KEY (`Company_Name`));



-- 
-- Create Table `SPICYONES`.`HOTSAUCE` Stores data about Hot sauces. 
-- 
CREATE TABLE IF NOT EXISTS `SPICYONES`.`HOTSAUCE` (
  `HSName` VARCHAR(50) NOT NULL,
  `HS_ID` CHAR(5) NOT NULL,
  `HS_Scoville` INT UNSIGNED NOT NULL,
  `Company_Name` VARCHAR(100) NOT NULL,
  `Pepper_ID` CHAR(8) NOT NULL,
  `Creation_Date` YEAR(4) NULL,
  `SFR` INT NULL DEFAULT 0,
  PRIMARY KEY (`HS_ID`),
  INDEX `Pepper_ID_idx` (`Pepper_ID` ASC) VISIBLE,
  INDEX `Company_Name_idx` (`Company_Name` ASC) VISIBLE,
  CONSTRAINT `Pepper_ID`
    FOREIGN KEY (`Pepper_ID`)
    REFERENCES `SPICYONES`.`PEPPER` (`Pep_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `Company_Name`
    FOREIGN KEY (`Company_Name`)
    REFERENCES `SPICYONES`.`COMPANY` (`Company_Name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    -- CONSTRAINT chk_HS_ID CHECK (hs_id like '[0-9][0-9][0-9][0-9][0-9]'));
    CONSTRAINT chk_HS_ID CHECK (hs_id NOT LIKE '%[^0-9]%'));


-- 
-- Create Table `SPICYONES`.`SEASON` Stores data about HotOnes Seasons.
-- 
CREATE TABLE IF NOT EXISTS `SPICYONES`.`SEASON` (
  `Season_Number` INT UNSIGNED NOT NULL CHECK(Season_Number < 11),
  `HS_ID` CHAR(5) NOT NULL,
  PRIMARY KEY (`Season_Number`, `HS_ID`),
  INDEX `HS_ID_idx` (`HS_ID` ASC) VISIBLE,
  CONSTRAINT `HS_ID`
    FOREIGN KEY (`HS_ID`)
    REFERENCES `SPICYONES`.`HOTSAUCE` (`HS_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



-- 
-- Create Table `SPICYONES`.`EPISODES` Stores data about individual Episodes.
-- 
CREATE TABLE IF NOT EXISTS `SPICYONES`.`EPISODES` (
  `Episode_ID` INT UNSIGNED NOT NULL CHECK(Episode_ID > 0),
  `Ep_Name` VARCHAR(250) NOT NULL,
  `Ep_Airdate` DATE NOT NULL,
  `Guest_Completion` VARCHAR(10) NULL DEFAULT 'YES',
  `Season_Number` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Episode_ID`),
  INDEX `Season_Number_idx` (`Season_Number` ASC) VISIBLE,
  CONSTRAINT `Season_Number`
    FOREIGN KEY (`Season_Number`)
    REFERENCES `SPICYONES`.`SEASON` (`Season_Number`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



-- *******************************************************************************************************
-- Create Table `SPICYONES`.`GUEST` Stores data about each Guest that appeared on HotOnes.
-- *******************************************************************************************************
CREATE TABLE IF NOT EXISTS `SPICYONES`.`GUESTS` (
  `Guest_Name` VARCHAR(50) NOT NULL,
  `Episode_ID` INT UNSIGNED NOT NULL,
  `HS_ID_Fail` CHAR(5) NULL DEFAULT NULL,
  `Profession` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Guest_Name`, `Episode_ID`),
  INDEX `Episode_ID_idx` (`Episode_ID` ASC) VISIBLE,
  CONSTRAINT `Episode_ID`
    FOREIGN KEY (`Episode_ID`)
    REFERENCES `SPICYONES`.`EPISODES` (`Episode_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -- ************************************************************************************

-- *****************************************************
-- Part B 
-- *****************************************************



-- Insert sample data for PEPPER Table
-- Summary: store data about different Peppers.
INSERT INTO PEPPER (PepName, Pep_ID, Pep_Scoville, Pep_Location)
Values ('Jalapeno', '11121442', 3500, 'Veracruz, Mexico');
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


-- Insert sample data for COMPANY Table
-- Summary: store data about different Companies.
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



-- Insert sample data for HOTSAUCE Table
-- Summary: store data about different Hotsauces.
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Sriracha', 68202, 2200, 'Huy Fong Foods', 11121442, 1980, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('The Last Dab', 10831, 2000000, 'Hot Ones', 71347848, 1991, 0);
INSERT INTO HOTSAUCE (HSName, HS_ID, HS_Scoville, Company_Name, Pepper_ID, Creation_Date, SFR)
Values ('Mad Dog 357', 63066, 357000, 'Ashley Food Company', 93031901, 1991, 0);
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


-- Insert sample data for SEASON Table
-- Summary: store data about different Seasons.
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

-- Insert sample data for EPISODES Table
-- Summary: store data about different EPISODES.
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




-- Insert sample data for GUESTS Table
-- Summary: store data about different Guests.
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



-- -- ************************************************************************************

-- *****************************************************
-- Part C
-- *****************************************************


-- Query 1
-- Purpose: To get Hot Ones Guest with their appropriate Season and Episode.
-- Expected: Returns a table that displays a Hot Ones Guest with their appropriate Season and Episode.
SELECT DISTINCT g.Guest_Name, e.Episode_ID, s.Season_Number
FROM GUESTS g
INNER JOIN EPISODES e ON e.Episode_ID = g.Episode_ID
INNER JOIN SEASON s ON s.Season_Number = e.Season_Number
ORDER BY s.Season_Number;


-- Query 2
-- Purpose: Use a nested query with the ANY operator and a GROUP BY clause to get 
-- Expected: A table that summarizes all the hotsauce id from season table that have a scoville level higher than 200000. 
SELECT HS_ID
FROM SEASON
WHERE HS_ID = ANY ( SELECT HS_ID
                    FROM HOTSAUCE
                    WHERE HS_Scoville > 200000)
GROUP BY HS_ID;


-- Query 3
-- Purpose: Returns all hot sauces from a certain brand that are above-average in scoville rating using correlated nested query.
-- Expected: A table summarizing all of the hot sauces from a brand that are hotter than average hot sauces from the Hot Sauce table. 
SELECT * 
FROM HOTSAUCE
WHERE HS_Scoville > (SELECT AVG(HOTSAUCE.HS_Scoville) 
					 FROM HOTSAUCE);

-- Query 4
-- Purpose: Display all the information about Hot Sauces and Peppers that were featured on the show.
-- Expected: A table that lists hot sauces used in the season, along with a list of the primary pepper used in that hot sauce, in addition to the secondary peppers.
--           MySQL DOES NOT support FULL JOIN, here an equivalent statement is used with LEFT JOIN, UNION, RIGHT JOIN to replicate the functionality of FULL JOIN

SELECT *
FROM HOTSAUCE H
LEFT JOIN PEPPER P ON H.PEPPER_ID = P.PEP_ID
UNION
SELECT *
FROM HOTSAUCE 
RIGHT JOIN PEPPER ON HOTSAUCE.PEPPER_ID = PEPPER.PEP_ID;

-- Query 5
-- Purpose: Display all of the Musicians and Comedians featured on the show.
-- Expected: A table that shows the guest names, the episode id and season of the musicians and comedians that were featured on the show.
SELECT G.GUEST_NAME AS Guest_Name, G.EPISODE_ID, E.SEASON_NUMBER
FROM GUESTS G JOIN EPISODES E ON E. EPISODE_ID = G.EPISODE_ID
WHERE G.Episode_ID IN (SELECT G.EPISODE_ID
                    FROM GUESTS G
                    WHERE G.Profession = 'Musician')

UNION

SELECT G.GUEST_NAME AS Guest_Name, G.EPISODE_ID, E.SEASON_NUMBER
FROM GUESTS G JOIN EPISODES E ON E. EPISODE_ID = G.EPISODE_ID
WHERE G.Episode_ID IN (SELECT G.EPISODE_ID
                    FROM GUESTS G
                    WHERE G.Profession = 'Comedian');



-- Query 6
-- Purpose: Return a list of the most frequent hot sauces to be featured on the show. 
-- Expected: A table that lists the Hot sauce name(Hot_Sacue), and how often the hotsauce was featured on the show (Frequency).
SELECT H.HSName as Hot_Sauce, C.NUM_HS_Produced as Frequency
FROM HOTSAUCE H
JOIN COMPANY C ON C.COMPANY_Name = H.COMPANY_Name
WHERE C.Num_HS_Produced > 1;


-- Query 7
-- Purpose: Return percentage of failures per profession.
-- Expected: A table that returns the quantity of each profession along with how many have failed and finally a failure percentage. 
SELECT Profession, Count(Profession) 'Quantity', 
    (SELECT COUNT(HS_ID_FAIL)
        FROM GUESTS
            WHERE HS_ID_FAIL <> 'NULL' AND Profession = g.Profession) 'Failures', 
            CAST(((SELECT COUNT(HS_ID_FAIL)
                FROM GUESTS
                    WHERE HS_ID_FAIL <> 'NULL' AND Profession = g.Profession)/Count(Profession))*100 AS DECIMAL(18,2))+'%' as 'Fail Percentage'
FROM GUESTS g
GROUP BY g.Profession;


-- Query 8
-- Purpose: Show the relationship between fail rate, hot sauce scoville, and pepper scoville. 
-- Expected: A table that displays fail rate of sauce and the scoville rating of the sauce and main pepper. Ordered by fail rate. 
SELECT HOTSAUCE.HSNAME AS 'Hot Sauce', 
    HOTSAUCE.SFR AS 'Hot Sauce Fail Rate', 
    HOTSAUCE.HS_Scoville AS 'Hot Sauce Scoville', 
    PEPPER.Pep_Scoville AS 'Constituent Pepper Scoville'
FROM HOTSAUCE, PEPPER 
WHERE HOTSAUCE.Pepper_ID = PEPPER.Pep_ID 
ORDER BY HOTSAUCE.SFR DESC, HOTSAUCE.HS_Scoville DESC;


-- Query 9
-- Purpose: Compare the different seasons of the show from multiple tables.
-- Expected: Return a table showing the average scoville of sauces for each season, most used pepper for each season’s sauces, and number of failures in the season. 
SELECT E.EPISODE_ID AS Episode_Number, 
       E.GUEST_COMPLETION AS Guest_Completion,
               G.Guest_Name AS Guest_Name,
               H.HSName AS Hotsauce_Name
FROM EPISODES E JOIN GUESTS G ON E.EPISODE_ID = G.EPISODE_ID
JOIN HOTSAUCE H ON H.HS_ID = G.HS_ID_FAIL
WHERE E.Guest_Completion = 'FAIL'; 


-- Query 10 
-- Purpose: Show the hot sauce that was created the longest time before its appearance on an episode.
-- Expected: Return a table with one hot sauce and the number of years between its creation and appearance on the episode.

Select DISTINCT HotsauceName, Years_Created_Before_Showcase
FROM (SELECT h.HSName as 'HotsauceName', CAST(year(e.Ep_Airdate) as SIGNED)- CAST(h.Creation_Date as SIGNED) AS 'Years_Created_Before_Showcase'
		FROM HOTSAUCE h
		JOIN SEASON s ON h.HS_ID=s.HS_ID
		JOIN EPISODES e ON e.Season_Number = s.Season_Number) AS Aliens
WHERE Years_Created_Before_Showcase = (SELECT MAX(Years_Created_Before_Showcase)
										FROM (SELECT h.HSName as 'HotsauceName', CAST(year(e.Ep_Airdate) as SIGNED)- CAST(h.Creation_Date as SIGNED) AS 'Years_Created_Before_Showcase'
											  FROM HOTSAUCE h
											  JOIN SEASON s ON h.HS_ID=s.HS_ID
											  JOIN EPISODES e ON e.Season_Number = s.Season_Number) AS Aliens2);

                                        


-- End of Script (Feb 11, 2020)

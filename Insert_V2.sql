

-- *****************************************************
-- Part B 
-- *****************************************************



-- Insert sample data for PEPPER Table
-- Summary: store data about different Peppers.
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (11121442,'Jalapeno', 3500, 'Veracruz, Mexico');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (71016893, 'Habanero', 250000, 'Yucatan Peninsula, Mexico');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (93031901,'Cayenne', 40000, 'Cayenne, French Guiana');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (71347848, 'Pepper X', 3180000, 'Rock Hill, South Carolina');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (49673330, 'Chipotle', 5000, 'Aztecs');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values ( 31671864, 'Ghost (Bhutlah) Pepper',1000000, 'Northeast India');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (32565286, 'Chocolate Bhutlah', 1750000, 'Wisconsin');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (31840935, 'Chili Pepper', 7000, 'Mexico');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (85195440, 'Carolina Reaper', 1500000, 'Fort Mill, South Carolina');
INSERT INTO PRIMARY_PEPPER (Pep_ID, Pep_Name, Pep_Scoville, Pep_Location)
Values (87156399, 'Chocolate Douglah', 1250000, 'The Caribbean');



-- Insert sample data for COMPANY Table
-- Summary: store data about different Companies.
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (1, 'Huy Fong Foods', 'Irwindale, CA', 1980, 1);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (2, 'Hot Ones', 'Brooklyn, NY', 2017, 7);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (3, 'Ashley Food Company', 'Sudbury, MA', 1976, 2);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (4, 'Blairs Sauce and Snacks', 'Highland, NJ', 1989, 2);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (5, 'Spicin Foods', 'Kansas City, KS', 1999, 1);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (6, 'Bravado Spice Company', 'Houston, TX', 2012, 3);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (7, 'El Yucateco', 'Yucatan, Mexico', 1968, 1);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (8, 'Adoboloco', 'Maui, HI', 2010, 3);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (9, 'Puckerbutt', 'Fort Mill, SC', 1960, 1);
INSERT INTO COMPANY (Company_ID, Company_Name, HQ_Location, Established_Date, Num_HS_Produced)
Values (10, 'Heartbeat Hot Sauce', 'Thunder Bay, Ontario', 2016, 2);


-- Insert sample data for HOTSAUCE Table
-- Summary: store data about different Hotsauces.
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (68202, 'Sriracha', 2200, 1980, 11121442, 1);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (10831, 'The Last Dab', 2000000, 2017, 71347848,  2);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (63066, 'Mad Dog 357', 357000, 1991, 93031901, 3);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values ( 23789, 'Blairs Original Death Sauce with Chipotle', 30000, 1989, 71016893, 4);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (29051, 'Da Bomb Beyond Insanity', 135600, 1999, 71016893, 5);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (35078, 'Aka Miso', 116000, 2012, 31671864, 6);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (85495, 'Chile Habanero', 5790, 1998, 71016893,  7);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (63757, 'Kolohe Kid', 61000, 2016, 31671864, 8);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (11925, 'Chocolate Plague', 690000, 2005, 32565286, 9);
INSERT INTO HOTSAUCE (HS_ID, HS_Name, HS_Scoville, Creation_Date, Pepper_ID, Comp_ID)
Values (98341, 'Pineapple Habanero', 12000, 2017, 71016893, 10);


-- Insert sample data for SEASON Table.
-- Summary: store data about different Seasons and where they started.
INSERT INTO SEASON (Season_Number, Start_Year)
Values (1, 2015);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (2, 2015);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (3, 2016);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (4, 2017);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (5, 2017);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (6, 2018);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (7, 2018);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (8, 2019);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (9, 2019);
INSERT INTO SEASON (Season_Number, Start_Year)
Values (10, 2019);


-- Insert sample data for FEATURED_IN Table
-- Summary: store data about different Hotsauces featured in different seasons.
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (85495, 1, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values ( 23789, 1, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (63066, 1, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (68202, 2, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (85495, 2, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 2, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (63066, 2, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (68202, 3, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (85495, 3, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 3, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (63066, 3, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 4, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (10831, 4, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 5, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 6, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 7, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 8, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 9, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (29051, 10, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (35078, 10, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (63757, 10, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (11925, 9, 1);
INSERT INTO FEATURED_IN (HS_ID, Season_Number, Num_times_featured)
Values (98341, 10, 1);

-- Insert sample data for EPISODES Table
-- Summary: store data about different EPISODES.
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (8, '"DJ Khaled Talks Fuccbois, Finga Licking, and Media Dinosaurs While Eating Spicy Wings"', "2015-10-22", 1);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (40, '"Bobby Lee Has an Accident Eating Spicy Wings"', "2016-10-27", 2);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (63, '"Guy Fieri Becomes the Mayor of Spicy Wings"', "2017-04-27", 3);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (93, '"Logic Solves a Rubiks Cube While Eating Spicy Wings"', "2017-12-07", 4);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (100, '"Rich Brian Experiences Peak Bromance While Eating Spicy Wings"', "2018-02-08", 5);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (114, '"Natalie Portman Pirouettes in Pain While Eating Spicy Wings"', "2018-06-14", 6);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (130, '"Lil Yachty Has His First Experience With Spicy Wings"', "2018-10-04", 7);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (138, '"Gordon Ramsay Savagely Critiques Spicy Wings"', "2019-01-24", 8);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (150, '"The Jonas Brothers Burn Up While Eating Spicy Wings"', "2019-05-30", 9);
INSERT INTO EPISODES (Episode_ID, Ep_Name, Ep_Airdate, Season_Num)
Values (172, '"Chance the Rapper Battles Spicy Wings"', "2019-11-21", 10);




-- Insert sample data for GUESTS Table
-- Summary: store data about different Guests.
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (1, 'DJ Khaled', 'Producer');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (2, 'Bobby Lee', 'Comedian');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (3, 'Guy Fieri', 'Chef');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (4, 'Logic', 'Musician');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (5, 'Rich Brian','Musician');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (6, 'Natalie Portman','Actor');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (7, 'Lil Yachty', 'Musician');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (8, 'Gordon Ramsay', 'Chef');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (9, 'Jonas Brothers', 'Musician');
INSERT INTO GUEST (Guest_ID, Guest_Name, Profession)
Values (10, 'Chance the Rapper', 'Musician');


-- Insert sample data for APPEARS_IN Table
-- Summary: store data about which guests appeared on what episode and the number of times.
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (8, 1, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (40, 2, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (63, 3, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (93, 4, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (100, 5, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (114, 6, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (130, 7, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (138, 8, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (150, 9, 1);
INSERT INTO APPEARS_IN (EPISODES_ID, GUESTS_ID, Guest_appearances)
Values (172, 10, 1);

-- Insert sample data for HALL_OF_SHAME
-- Summary: All the guests that have "failed" the HotOnes challange, and on which hotsauce they failed on. 
INSERT INTO HALL_OF_SHAME (GUEST_ID, HS_FAIL_ID, Fail_Count) 
Values (1, 85495, 1);
INSERT INTO HALL_OF_SHAME (GUEST_ID, HS_FAIL_ID, Fail_Count) 
Values (7, 29051, 1);

-- -- ************************************************************************************

-- *****************************************************
-- Part C
-- *****************************************************


-- Query 1 (DOES NOT WORK RIGHT NOW, we have appears_in table that does this already.)
-- Purpose: To get Hot Ones Guest with their appropriate Season and Episode.
-- Expected: Returns a table that displays a Hot Ones Guest with their appropriate Season and Episode.
SELECT DISTINCT g.Guest_Name, e.Episode_ID, s.Season_Number
FROM GUEST g
INNER JOIN EPISODES e ON e.Episode_ID = g.Episode_ID -- g.Episode_ID doesn't exists now.
INNER JOIN SEASON s ON s.Season_Number = e.Season_Number
ORDER BY s.Season_Number;


-- Query 2 
-- Purpose: Use a nested query with the ANY operator and a GROUP BY clause to get 
-- Expected: A table that summarizes all the hotsauce id from season table that have a scoville level higher than 200000. 
SELECT HS_ID
FROM FEATURED_IN
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
LEFT JOIN PRIMARY_PEPPER P ON H.PEPPER_ID = P.PEP_ID
UNION
SELECT *
FROM HOTSAUCE 
RIGHT JOIN PRIMARY_PEPPER ON HOTSAUCE.PEPPER_ID = PRIMARY_PEPPER.PEP_ID;

-- Query 5 (DOESN'T WORK)
-- Purpose: Display all of the Musicians and Comedians featured on the show.
-- Expected: A table that shows the guest names, the episode id and season of the musicians and comedians that were featured on the show.
SELECT G.GUEST_NAME AS Guest_Name, G.EPISODE_ID, E.SEASON_NUMBER
FROM GUEST G JOIN EPISODES E ON E. EPISODE_ID = G.EPISODE_ID
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
SELECT H.HS_Name as Hot_Sauce, C.NUM_HS_Produced as Frequency
FROM HOTSAUCE H
JOIN COMPANY C ON C.Company_ID = H.Comp_ID
WHERE C.Num_HS_Produced > 1;


-- Query 7 (DOENS'T WORKS)
-- Purpose: Return percentage of failures per profession.
-- Expected: A table that returns the quantity of each profession along with how many have failed and finally a failure percentage. 
SELECT Profession, Count(Profession) 'Quantity', 
    (SELECT COUNT(HS_ID_FAIL)
	 FROM GUEST
	 WHERE HS_ID_FAIL <> 'NULL' AND Profession = g.Profession) 'Failures', CAST(((SELECT COUNT(HS_ID_FAIL)
																				  FROM GUESTS
																				  WHERE HS_ID_FAIL <> 'NULL' AND Profession = g.Profession)/Count(Profession))*100 AS DECIMAL(18,2))+'%' as 'Fail Percentage'
FROM GUESTS g
GROUP BY g.Profession;


-- Query 8 (DOESN'T WORK)
-- Purpose: Show the relationship between fail rate, hot sauce scoville, and pepper scoville. 
-- Expected: A table that displays fail rate of sauce and the scoville rating of the sauce and main pepper. Ordered by fail rate. 
SELECT HOTSAUCE.HSNAME AS 'Hot Sauce', 
	   HOTSAUCE.SFR AS 'Hot Sauce Fail Rate', 
       HOTSAUCE.HS_Scoville AS 'Hot Sauce Scoville', 
       PEPPER.Pep_Scoville AS 'Constituent Pepper Scoville'
FROM HOTSAUCE, PRIMARY_PEPPER 
WHERE HOTSAUCE.Pepper_ID = PEPPER.Pep_ID 
ORDER BY HOTSAUCE.SFR DESC, HOTSAUCE.HS_Scoville DESC;


-- Query 9 (DOESN'T WORK)
-- Purpose: Compare the different seasons of the show from multiple tables.
-- Expected: Return a table showing the average scoville of sauces for each season, most used pepper for each season’s sauces, and number of failures in the season. 
SELECT E.EPISODE_ID AS Episode_Number, 
       E.GUEST_COMPLETION AS Guest_Completion,
	   G.Guest_Name AS Guest_Name,
       H.HSName AS Hotsauce_Name
FROM EPISODES E JOIN GUESTS G ON E.EPISODE_ID = G.EPISODE_ID
JOIN HOTSAUCE H ON H.HS_ID = G.HS_ID_FAIL
WHERE E.Guest_Completion = 'FAIL'; 


-- Query 10 (DOESN'T WORK)
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

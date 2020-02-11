-- Queries 

-- SQL Query 1: Computes a join of at least three tables.
		
SELECT DISTINCT g.Guest_Name, e.Episode_ID, 
   s.Season_Number
FROM GUESTS g
INNER JOIN EPISODES e ON e.Episode_ID = g.Episode_ID
INNER JOIN SEASON s ON s.Season_Number = e.Season_Number
ORDER BY s.Season_Number;

-- SQL Query 2: A correlated nested query.
SELECT HS_ID
FROM SEASON
WHERE HS_ID = ANY ( SELECT HS_ID
					FROM HOTSAUCE
                    WHERE HS_Scoville > 200000)
GROUP BY HS_ID;
	
-- SQL Query 3: A correlated nested query.

SELECT * 
FROM HOTSAUCE
WHERE HS_Scoville > (SELECT AVG(HOTSAUCE.HS_Scoville) 
					 FROM HOTSAUCE);


SELECT H.HSName as Hot_Sauce, C.NUM_HS_Produced as Frequency
FROM HOTSAUCE H
JOIN COMPANY C ON C.COMPANY_Name = H.COMPANY_Name
WHERE C.Num_HS_Produced > 1;

SELECT HOTSAUCE.HSNAME AS 'Hot Sauce', 
    HOTSAUCE.SFR AS 'Hot Sauce Fail Rate', 
    HOTSAUCE.HS_Scoville AS 'Hot Sauce Scoville', 
    PEPPER.Pep_Scoville AS 'Constituent Pepper Scoville'
FROM HOTSAUCE, PEPPER 
WHERE HOTSAUCE.Pepper_ID = PEPPER.Pep_ID 
ORDER BY HOTSAUCE.SFR DESC, HOTSAUCE.HS_Scoville DESC;

















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

                                        


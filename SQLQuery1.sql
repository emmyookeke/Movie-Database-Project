/********************************************************Question 1*******************************************************************/

CREATE DATABASE Movies;

/********************************************************Question 2*******************************************************************/
USE Movies;
GO;

CREATE SCHEMA mov;



/********************************************************Question 3*******************************************************************/

CREATE TABLE mov.Movie_Director (
    Director_ID INTEGER PRIMARY KEY IDENTITY(100, 10) NOT NULL,
    Director_First_Name VARCHAR(50) ,
    Director_Last_Name VARCHAR(50) ,
    Director_Age_in_Years INTEGER,
    Director_Gender VARCHAR(10),
    CreatedOn DATE NOT NULL DEFAULT GETDATE()
);

USE Movies;
INSERT INTO mov.Movie_Director (Director_First_Name, Director_Last_Name, Director_Age_in_Years, Director_Gender)
VALUES
('Kevin', 'Smith', 52, 'Male'),
('Miguel', 'Arteta', 41, 'Male'),
('Mark', 'Johnson', 58, 'Male'),
('Tom', 'Vaughan', 37, 'Male'),
('Francis', 'Lawrence', 52, 'Male'),
('Adrienne', 'Shelly', 40, 'Female'),
('David', 'Slade', 53, 'Male'),
('Mark', 'Palansky', 53, 'Male'),
('Jeff', 'Lowell', 49, 'Male'),
('Simon', 'Curtis', 37, 'Male'),
('Marc', 'Lawrence', 95, 'Male'),
('Anand', 'Tucker', 59, 'Male'),
('Judd', 'Apatow', 55, 'Male'),
('Cary', 'Fukunaga', 45, 'Male'),
('Mark', 'Helfrich', 49, 'Male'),
('Nanette', 'Burstein', 52, 'Female'),
('James', 'McAvoy', 44, 'Male'),
('Mark', 'Waters', 58, 'Male'),
('Seth', 'Gordon', 46, 'Male'),
('Alex', 'Kendrick', 52, 'Male'),
('Kevin', 'Lima', 60, 'Male'),
('Lasse', 'Hallström', 76, 'Male'),
('Ewan', 'McGregor', 52, 'Male'),
('Rajkumar', 'Hirani', 60, 'Male'),
('Ashutosh', 'Gowariker', 59, 'Male'),
('Karan', 'Johar', 50, 'Male'),
('S.S', 'Rajamouli', 49, 'Male'),
('Sukumar', NULL, 53, 'Male'),
('Aditya', 'Chopra', 51, 'Male'),
('Umesh', 'Shukla', 52, 'Male');

/********************************************************Question 4*******************************************************************/

USE Movies;
GO

CREATE TABLE mov.Movies (
    Movie_ID INTEGER PRIMARY KEY IDENTITY(1000, 1) NOT NULL,
    Movie_Name VARCHAR(100),
    Movie_Released_Year INTEGER,
    Movie_Lead_Studio VARCHAR(100),
    Movie_Language VARCHAR(50),
    Movie_Category VARCHAR(50),
    Movie_Duration_in_Min INTEGER,
    Movie_Worldwide_Earning_in_$M DECIMAL(15, 2),
    Movie_Type VARCHAR(20),
    Director_ID INTEGER,
    CreatedOn DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (Director_ID) REFERENCES mov.Movie_Director (Director_ID)
);


INSERT INTO mov.Movies (Movie_Name, Movie_Released_Year, Movie_Lead_Studio, Movie_Language, Movie_Category, Movie_Duration_in_Min, Movie_Worldwide_Earning_in_$M, Movie_Type, Director_ID)
VALUES
('Zack and Miri Make a Porno', 2008, 'The Weinstein Company', 'English', 'Romance', 101, 41.94, 'Hollywood', 100),
('Youth in Revolt', 2010, 'The Weinstein Company', 'English', 'Comedy', 90, 19.62, 'Hollywood', 110),
('When in Rome', 2010, 'Disney', 'English', 'Comedy', 91, 43.04, 'Hollywood', 120),
('What Happens in Vegas', 2008, 'Fox', 'English', 'Comedy', 99, 219.37, 'Hollywood', 130),
('Water For Elephants', 2011, '20th Century Fox', 'English', 'Drama', 120, 117.09, 'Hollywood', 140),
('Waitress', 2007, 'Independent', 'English', 'Romance', 108, 22.18, 'Hollywood', 150),
('Twilight', 2008, 'Summit', 'English', 'Romance', 122, 376.66, 'Hollywood', 160),
('Penelope', 2008, 'Summit', 'English', 'Comedy', 144, 20.74, 'Hollywood', 170),
('Over Her Dead Body', 2008, 'New Line', 'English', 'Comedy', 95, 20.71, 'Hollywood', 180),
('My Week with Marilyn', 2011, 'The Weinstein Company', 'English', 'Drama', 99, 8.26, 'Hollywood', 190),
('Music and Lyrics', 2007, 'Warner Bros.', 'English', 'Romance', 104, 145.9, 'Hollywood', 200),
('Leap Year', 2010, 'Universal', 'English', 'Comedy', 100, 32.59, 'Hollywood', 210),
('Knocked Up', 2007, 'Universal', 'English', 'Comedy', 129, 219, 'Hollywood', 220),
('Jane Eyre', 2011, 'Universal', 'English', 'Romance', 120, 30.15, 'Hollywood', 230),
('Good Luck Chuck', 2007, 'Lionsgate', 'English', 'Comedy', 101, 59.19, 'Hollywood', 240),
('Going the Distance', 2010, 'Warner Bros.', 'English', 'Comedy', 103, 42.05, 'Hollywood', 250),
('Gnomeo and Juliet', 2011, 'Disney', 'English', 'Animation', 84, 193.97, 'Hollywood', 260),
('Ghosts of Girlfriends Past', 2009, 'Warner Bros.', 'English', 'Comedy', 100, 102.22, 'Hollywood', 270),
('Four Christmases', 2008, 'Warner Bros.', 'English', 'Comedy', 88, 161.83, 'Hollywood', 280),
('Fireproof', 2008, 'Independent', 'English', 'Drama', 122, 33.47, 'Hollywood', 290),
('Enchanted', 2007, 'Disney', 'English', 'Comedy', 107, 340.49, 'Hollywood', 300),
('Dear John', 2010, 'Sony', 'English', 'Drama', 108, 114.97, 'Hollywood', 310),
('Beginners', 2011, 'Independent', 'English', 'Comedy', 105, 14.31, 'Hollywood', 320),
('3 Idiots', 2009, 'Vinod Chopra Films', 'Hindi', 'Comedy', 171, 4000, 'Bollywood', 330),
('Lagaan', 2001, 'Aamir Khan Productions', 'Hindi', 'Romance', 224, 659, 'Bollywood', 340),
('My Name Is Khan', 2010, 'Dharma Productions', 'Hindi', 'Drama', 165, 48.77, 'Bollywood', 350),
('Baahubali', 2015, 'Arka Media Works', 'Telugu', 'Thriller', 159, 6500, 'Bollywood', 360),
('Dilwale Dulhania Le Jayenge', 1995, 'Yash Chopra', 'Hindi', 'Romance', 189, 2000, 'Bollywood', 380),
('Oh My God', 2012, '', 'Hindi', 'Comedy', 165, 1200, 'Bollywood', 390),
('Pushpa', 2021, 'Mythri Movie Makers', 'Telugu', 'Drama', 179, 3730, 'Bollywood', 370);


/********************************************************Question 5*******************************************************************/

USE Movies;
GO

CREATE TABLE mov.Movie_Actor (
    Actor_ID INTEGER PRIMARY KEY IDENTITY(10, 1) NOT NULL,
    Actor_First_Name VARCHAR(50),
    Actor_Last_Name VARCHAR(50) ,
    Actor_Age_in_Years INTEGER,
    Actor_Location VARCHAR(100),
    Movie_ID INTEGER,
    CreatedOn DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (Movie_ID) REFERENCES mov.Movies (Movie_ID)
);


INSERT INTO mov.Movie_Actor (Actor_First_Name, Actor_Last_Name, Actor_Age_in_Years, Actor_Location, Movie_ID)
VALUES
('Seth', 'Rogen', 53, 'Los Angeles', 1000),
('Michael', 'Cera', 49, 'New York', 1001),
('Josh', 'Duhamel', 37, 'North Dakota', 1002),
('Jason', 'Sudeikis', 60, 'Kansas', 1003),
('Robert', 'Pattinson', 45, 'Los Angeles', 1004),
('Nathan', 'Fillion', 55, 'Canada', 1005),
('Robert', 'Pattinson', 45, 'Los Angeles', 1006),
('James', 'McAvoy', 49, 'Scotland', 1007),
('Paul', 'Rudd', 52, 'New York', 1008),
('Kenneth', 'Branagh', 44, 'Northern Ireland', 1009),
('Hugh', 'Grant', 58, 'London', 1010),
('Matthew', 'Goode', 46, 'England', 1011),
('Judd', 'Apatow', 58, 'Los Angeles', 1012),
('Michael', 'Fassbender', 46, 'Germany', 1013),
('Dane', 'Cook', 52, 'United States', 1014),
('Jason', 'Sudeikis', 60, 'Kansas', 1015),
('Kelly', 'Asbury', 76, 'United States', 1016),
('Matthew', 'McConaughey', 52, 'Los Angeles', 1017),
('Vince', 'Vaughn', 60, 'Minnesota', 1018),
('Kirk', 'Cameron', 59, 'United States', 1019),
('James', 'Marsden', 50, 'Columbia', 1020),
('Channing', 'Tatum', 58, 'Alabama', 1021),
('Mike', 'Mills', 37, 'New York', 1022),
('Aamir', 'Khan', 52, 'India', 1023),
('Aamir', 'Khan', 52, 'India', 1024),
('Shah Rukh', 'Khan', 53, 'India', 1025),
('Prabhas', NULL, 53, 'India', 1026),
('Allu', 'Arjun', 49, 'India', 1027),
('Shah Rukh', 'Khan', 53, 'India', 1028),
('Akshay', 'Kumar', 50, 'India', 1029);


/********************************************************Question 6*******************************************************************/

USE Movies;
GO

CREATE TABLE mov.Movie_Rating (
    Movie_Rating_ID INTEGER PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    Rating_Audience_Score VARCHAR(10),
    Rating_Rotten_Tomatoes VARCHAR(10),
    Movie_ID INTEGER,
    CreatedOn DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (Movie_ID) REFERENCES mov.Movies (Movie_ID)
);



INSERT INTO mov.Movie_Rating (Rating_Audience_Score, Rating_Rotten_Tomatoes, Movie_ID)
VALUES
('70', '64', 1000),
('52', '68', 1001),
('44', '15', 1002),
('72', '28', 1003),
('72', '60', 1004),
('67', '89', 1005),
('82', '49', 1006),
('74', '52', 1007),
('47', '15', 1008),
('84', '83', 1009),
('70', '63', 1010),
('49', '21', 1011),
('83', '91', 1012),
('77', '85', 1013),
('61', '3', 1014),
('56', '53', 1015),
('52', '56', 1016),
('47', '27', 1017),
('52', '26', 1018),
('51', '40', 1019),
('80', '93', 1020),
('66', '29', 1021),
('80', '84', 1022),
('95', '100', 1023),
('81', '95', 1024),
('79', '83', 1025),
('80', '90', 1026),
('76', '82', 1027),
('85', '100', 1028),
('81', '74', 1029);


/********************************************************Question 7a*******************************************************************/

SELECT *
FROM mov.Movies;

/********************************************************Question 7b*******************************************************************/

SELECT *
FROM mov.Movie_Director;

/********************************************************Question 7c*******************************************************************/

SELECT *
FROM mov.Movie_Actor;

/********************************************************Question 7d*******************************************************************/

SELECT *
FROM mov.Movie_Rating;

/********************************************************Question 7e*******************************************************************/

SELECT *
FROM mov.Movies
WHERE Movie_Released_Year = 2010;

/********************************************************Question 7f*******************************************************************/

SELECT *
FROM mov.Movies
WHERE Movie_Lead_Studio = 'The Weinstein Company';

/********************************************************Question 7g*******************************************************************/

SELECT *
FROM mov.Movies
WHERE Movie_Language = 'English';

/********************************************************Question 7h*******************************************************************/

SELECT *
FROM mov.Movies
WHERE Movie_Name LIKE 'G%';

/********************************************************Question 7i*******************************************************************/

SELECT *
FROM mov.Movies
WHERE Movie_Category = 'Comedy';

/********************************************************Question 7j*******************************************************************/

SELECT *
FROM mov.Movies
WHERE Movie_Type = 'Hollywood';

/********************************************************Question 7k*******************************************************************/

SELECT *
FROM mov.Movie_Director
WHERE Director_Gender = 'Female';

/********************************************************Question 7l*******************************************************************/

SELECT *
FROM mov.Movie_Director
WHERE Director_Age_in_Years > 45;

/********************************************************Question 7m*******************************************************************/

SELECT *
FROM mov.Movie_Actor
WHERE Actor_Location = 'Los Angeles';

/********************************************************Question 7n*******************************************************************/

SELECT *
FROM mov.Movie_Actor
WHERE Actor_Age_in_Years < 50;

/********************************************************Question 7o*******************************************************************/

SELECT *
FROM mov.Movie_Actor
WHERE Actor_First_Name LIKE 'J%';

/********************************************************Question 7p*******************************************************************/

SELECT *
FROM mov.Movie_Actor
WHERE Actor_Location IN ('Los Angeles', 'New York');

/********************************************************Question 7q*******************************************************************/

SELECT 
    Director_First_Name + ' ' + Director_Last_Name AS Director_FullName,
    Director_Age_in_Years,
    Director_Gender
FROM mov.Movie_Director;

/********************************************************Question 7r*******************************************************************/

SELECT 
    Director_First_Name + ' ' + Director_Last_Name AS Director_FullName,
    Director_Age_in_Years,
    Director_Gender
FROM mov.Movie_Director
WHERE Director_Age_in_Years < 45;


/********************************************************Question 8a*******************************************************************/

SELECT m.Movie_Name, a.Actor_First_Name, a.Actor_Last_Name
FROM mov.Movies m
INNER JOIN mov.Movie_Actor ma ON m.Movie_ID = ma.Movie_ID
INNER JOIN mov.Movie_Actor a ON ma.Actor_ID = a.Actor_ID;

/********************************************************Question 8b*******************************************************************/
SELECT m.Movie_Name, mr.Rating_Audience_Score, mr.Rating_Rotten_Tomatoes
FROM mov.Movies m
INNER JOIN mov.Movie_Rating mr ON m.Movie_ID = mr.Movie_ID;


/********************************************************Question 8c*******************************************************************/
SELECT m.Movie_Name, a.Actor_First_Name, a.Actor_Last_Name, md.Director_First_Name, md.Director_Last_Name
FROM mov.Movies m
INNER JOIN mov.Movie_Actor ma ON m.Movie_ID = ma.Movie_ID
INNER JOIN mov.Movie_Actor a ON ma.Actor_ID = a.Actor_ID
INNER JOIN mov.Movie_Director md ON m.Director_ID = md.Director_ID;


/********************************************************Question 8d*******************************************************************/
SELECT m.Movie_Name, a.Actor_First_Name, a.Actor_Last_Name, md.Director_First_Name, md.Director_Last_Name, mr.Rating_Audience_Score, mr.Rating_Rotten_Tomatoes
FROM mov.Movies m
INNER JOIN mov.Movie_Actor ma ON m.Movie_ID = ma.Movie_ID
INNER JOIN mov.Movie_Actor a ON ma.Actor_ID = a.Actor_ID
INNER JOIN mov.Movie_Director md ON m.Director_ID = md.Director_ID
INNER JOIN mov.Movie_Rating mr ON m.Movie_ID = mr.Movie_ID;


/********************************************************Question 8e*******************************************************************/
SELECT m.Movie_Name, a.Actor_First_Name, a.Actor_Last_Name, md.Director_First_Name, md.Director_Last_Name, mr.Rating_Audience_Score, mr.Rating_Rotten_Tomatoes
FROM mov.Movies m
INNER JOIN mov.Movie_Actor ma ON m.Movie_ID = ma.Movie_ID
INNER JOIN mov.Movie_Actor a ON ma.Actor_ID = a.Actor_ID
INNER JOIN mov.Movie_Director md ON m.Director_ID = md.Director_ID
INNER JOIN mov.Movie_Rating mr ON m.Movie_ID = mr.Movie_ID
WHERE mr.Rating_Audience_Score > 80;

/********************************************************Question 8f*******************************************************************/
SELECT m.*
FROM mov.Movies m
INNER JOIN mov.Movie_Rating mr ON m.Movie_ID = mr.Movie_ID
WHERE mr.Rating_Rotten_Tomatoes > 90;


/********************************************************Question 9a*******************************************************************/

SELECT * INTO mov.MovieCopy FROM mov.Movies;



/********************************************************Question 9b*******************************************************************/
SELECT * INTO mov.DirectorCopy FROM mov.Movie_Director WHERE 1 = 0;


/********************************************************Question 9c*******************************************************************/
SELECT * INTO mov.ActorCopy FROM mov.Movie_Actor;



/********************************************************Question 9d*******************************************************************/
SELECT * INTO mov.RatingCopy FROM mov.Movie_Rating;



/********************************************************Question 9e*******************************************************************/
SELECT * INTO mov.RatingCopies FROM mov.Movie_Rating WHERE 1 = 0;



/********************************************************Question 10a*******************************************************************/

DELETE FROM mov.RatingCopy;


/********************************************************Question 10b*******************************************************************/
DELETE FROM mov.MovieCopy WHERE Movie_Released_Year = 2010;




/********************************************************Question 10c*******************************************************************/
DELETE FROM mov.MovieCopy WHERE Movie_Language = 'Hindi';




/********************************************************Question 10d*******************************************************************/
DELETE mc
FROM mov.MovieCopy mc
INNER JOIN mov.Movie_Rating mr ON mc.Movie_ID = mr.Movie_ID
WHERE mr.Rating_Audience_Score < 80; 


/********************************************************Question 10e*******************************************************************/
DELETE mc
FROM mov.MovieCopy mc
INNER JOIN mov.Movie_Rating mr ON mc.Movie_ID = mr.Movie_ID
WHERE mr.Rating_Rotten_Tomatoes < 70;



/********************************************************Question 11a*******************************************************************/

UPDATE mov.Movie_Rating
SET Rating_Audience_Score = CAST(Rating_Audience_Score AS DECIMAL(5, 2)) * 1.85
FROM mov.Movie_Rating mr
INNER JOIN mov.Movies m ON mr.Movie_ID = m.Movie_ID
WHERE m.Movie_Lead_Studio = 'The Weinstein Company'; 


/********************************************************Question 11b*******************************************************************/

UPDATE mov.Movie_Rating
SET Rating_Rotten_Tomatoes = CAST(Rating_Rotten_Tomatoes AS DECIMAL(5, 2)) * 1.75
FROM mov.Movie_Rating mr
INNER JOIN mov.Movies m ON mr.Movie_ID = m.Movie_ID
WHERE m.Movie_Released_Year = 2010; 


/********************************************************Question 11c*******************************************************************/
UPDATE mov.Movie_Actor
SET Actor_Age_in_Years = Actor_Age_in_Years + 2
WHERE Actor_First_Name = 'Michael' AND Actor_Last_Name = 'Cera'; 


/********************************************************Question 11d*******************************************************************/
UPDATE mov.Movie_Director
SET Director_Age_in_Years = Director_Age_in_Years + 3
WHERE Director_ID = (
    SELECT md.Director_ID
    FROM mov.Movies m
    INNER JOIN mov.Movie_Director md ON m.Director_ID = md.Director_ID
    WHERE m.Movie_Name = 'Leap Year'
); 


/********************************************************Question 11e*******************************************************************/
UPDATE mov.Movie_Director
SET Director_Age_in_Years = Director_Age_in_Years + 1
WHERE Director_ID IN (
    SELECT md.Director_ID
    FROM mov.Movies m
    INNER JOIN mov.Movie_Director md ON m.Director_ID = md.Director_ID
    WHERE m.Movie_Name = 'Leap Year' AND m.Movie_Lead_Studio = 'Universal'
);


/********************************************************Question 12a*******************************************************************/

CREATE VIEW mov.Movie_View AS
SELECT *
FROM mov.Movies;

/********************************************************Question 12b*******************************************************************/
SELECT m.Movie_ID, m.Movie_Name, m.Movie_Released_Year, m.Movie_Lead_Studio, m.Movie_Language,
       m.Movie_Category, m.Movie_Duration_in_Min, m.Movie_Worldwide_Earning_in_$M, m.Movie_Type,
       mr.Rating_Audience_Score, mr.Rating_Rotten_Tomatoes
FROM mov.Movies m
INNER JOIN mov.Movie_Rating mr ON m.Movie_ID = mr.Movie_ID;


/********************************************************Question 12c*******************************************************************/
SELECT m.Movie_ID, m.Movie_Name, m.Movie_Released_Year, m.Movie_Lead_Studio, m.Movie_Language,
       m.Movie_Category, m.Movie_Duration_in_Min, m.Movie_Worldwide_Earning_in_$M, m.Movie_Type,
       ma.Actor_ID, ma.Actor_First_Name, ma.Actor_Last_Name, ma.Actor_Age_in_Years, ma.Actor_Location
FROM mov.Movies m
INNER JOIN mov.Movie_Actor ma ON m.Movie_ID = ma.Movie_ID; 


/********************************************************Question 12d*******************************************************************/
SELECT m.Movie_ID, m.Movie_Name, m.Movie_Released_Year, m.Movie_Lead_Studio, m.Movie_Language,
       m.Movie_Category, m.Movie_Duration_in_Min, m.Movie_Worldwide_Earning_in_$M, m.Movie_Type,
       md.Director_ID, md.Director_First_Name, md.Director_Last_Name, md.Director_Age_in_Years, md.Director_Gender,
       mr.Rating_Audience_Score, mr.Rating_Rotten_Tomatoes,
       ma.Actor_ID, ma.Actor_First_Name, ma.Actor_Last_Name, ma.Actor_Age_in_Years, ma.Actor_Location
FROM mov.Movies m
INNER JOIN mov.Movie_Director md ON m.Director_ID = md.Director_ID
INNER JOIN mov.Movie_Rating mr ON m.Movie_ID = mr.Movie_ID
INNER JOIN mov.Movie_Actor ma ON m.Movie_ID = ma.Movie_ID;  

/********************************************************Question 12e*******************************************************************/
SELECT Director_First_Name + ' ' + Director_Last_Name AS Director_FullName,
       Director_Age_in_Years,
       Director_Gender
FROM mov.Movie_Director;



/********************************************************Question 13a*******************************************************************/

SELECT name AS DatabaseName
FROM sys.databases; 


/********************************************************Question 13b*******************************************************************/
USE Movies; 

EXEC sp_MSforeachtable @command1='
    DECLARE @sizeKB INT
    SET @sizeKB = (SELECT SUM(reserved_page_count) * 8 FROM sys.dm_db_partition_stats WHERE object_id = OBJECT_ID("?"))
    IF @sizeKB IS NOT NULL
        PRINT "?" + CHAR(9) + CAST(@sizeKB AS VARCHAR) + '' KB''
'; 

/********************************************************Question 13c*******************************************************************/

EXEC sp_MSforeachtable @command1='
    DECLARE @rowCount INT
    SET @rowCount = (SELECT COUNT(*) FROM ?)
    PRINT "?" + CHAR(9) + CAST(@rowCount AS VARCHAR) + '' records''
';  


/********************************************************Question 13d*******************************************************************/

SELECT 
    TABLE_NAME AS TableName,
    CONSTRAINT_NAME AS PrimaryKeyName,
    COLUMN_NAME AS ColumnName
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + CONSTRAINT_NAME), 'IsPrimaryKey') = 1;



SELECT 
    FK.TABLE_NAME AS TableName,
    CU.COLUMN_NAME AS ColumnName,
    PK.TABLE_NAME AS ReferencedTableName,
    PT.COLUMN_NAME AS ReferencedColumnName,
    C.CONSTRAINT_NAME AS ForeignKeyName
FROM 
    INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS C
INNER JOIN 
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS FK ON C.CONSTRAINT_NAME = FK.CONSTRAINT_NAME
INNER JOIN 
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS PK ON C.UNIQUE_CONSTRAINT_NAME = PK.CONSTRAINT_NAME
INNER JOIN 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE CU ON C.CONSTRAINT_NAME = CU.CONSTRAINT_NAME
INNER JOIN 
    (
        SELECT 
            i1.TABLE_NAME, i2.COLUMN_NAME
        FROM 
            INFORMATION_SCHEMA.TABLE_CONSTRAINTS i1
        INNER JOIN 
            INFORMATION_SCHEMA.KEY_COLUMN_USAGE i2 ON i1.CONSTRAINT_NAME = i2.CONSTRAINT_NAME
        WHERE 
            i1.CONSTRAINT_TYPE = 'PRIMARY KEY'
    ) PT ON PT.TABLE_NAME = PK.TABLE_NAME;


/********************************************************Question 13e*******************************************************************/

SELECT 
    t.name AS TableName,
    c.name AS ColumnName
FROM 
    sys.tables AS t
INNER JOIN 
    sys.columns AS c ON t.object_id = c.object_id
WHERE 
    c.is_nullable = 1;


/********************************************************Question 13f*******************************************************************/
SELECT t.name AS TableName
FROM sys.tables AS t
LEFT JOIN sys.index_columns AS ic ON t.object_id = ic.object_id
LEFT JOIN sys.indexes AS i ON ic.object_id = i.object_id AND ic.index_id = i.index_id
WHERE i.object_id IS NULL OR i.is_primary_key = 0;



/********************************************************Question 13g*******************************************************************/
SELECT t.name AS TableName
FROM sys.tables AS t
WHERE t.object_id NOT IN (
    SELECT object_id
    FROM sys.columns
    WHERE is_identity = 1
);


/********************************************************Question 13h*******************************************************************/
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()), 0) AS FirstDateOfMonth;



/********************************************************Question 13i*******************************************************************/
SELECT DATEADD(day, -1, DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 1, 0)) AS LastDateOfMonth;



/********************************************************Question 13j*******************************************************************/

SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 1, 0) AS FirstDateOfNextMonth; 



/********************************************************Question 13k*******************************************************************/
SELECT DATEADD(day, -1, DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 2, 0)) AS LastDateOfNextMonth;



/********************************************************Question 13l*******************************************************************/
SELECT * FROM mov.Movies;

-- Retrieveing all the information from the Movie_Director table
SELECT * FROM mov.Movie_Director;

-- Retrieveing all the information from the Movie_Actor table
SELECT * FROM mov.Movie_Actor;

-- Retrieveing all the information from the Movie_Rating table
SELECT * FROM mov.Movie_Rating; 


/********************************************************Question 13m*******************************************************************/

SELECT 
    t.name AS TableName,
    c.name AS ColumnName,
    CONSTRAINT_NAME = ccu.CONSTRAINT_NAME
FROM 
    sys.tables AS t
JOIN 
    sys.columns AS c ON t.object_id = c.object_id
LEFT JOIN 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS ccu ON t.name = ccu.TABLE_NAME AND c.name = ccu.COLUMN_NAME
WHERE 
    ccu.CONSTRAINT_NAME IS NOT NULL;


/********************************************************Question 13n*******************************************************************/

SELECT DISTINCT TABLE_NAME
FROM INFORMATION_SCHEMA.VIEW_TABLE_USAGE;


/********************************************************Question 13o*******************************************************************/

SELECT DISTINCT c.TABLE_NAME, c.COLUMN_NAME
FROM INFORMATION_SCHEMA.VIEW_COLUMN_USAGE v
JOIN INFORMATION_SCHEMA.COLUMNS c ON v.VIEW_NAME = c.TABLE_NAME
WHERE v.TABLE_SCHEMA = 'mov' -- Replace 'mov' with the schema name of your views
  AND c.TABLE_SCHEMA = 'mov' -- Replace 'mov' with the schema name of your tables
ORDER BY c.TABLE_NAME, c.COLUMN_NAME;
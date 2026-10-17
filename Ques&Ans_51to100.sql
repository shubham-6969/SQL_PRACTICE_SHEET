/* MovieDB SQL Practice — Part 2 (Q51–Q100) 🔥8 */

/* Intermediate — Aggregation */


/* aggregating in SQL means taking multiple rows and calculating a single result from them */

USE MovieDB

-- 51. Count the total number of movies.

SELECT COUNT(*) AS total_count
FROM Movies

-- 52. Find the average movie rating.

SELECT AVG(rating) AS average_rating
FROM Movies

-- 53. Find the highest rating.

SELECT MAX(rating) AS highest_rating
FROM Movies

-- 54. Find the lowest rating.

SELECT MIN(rating) AS lowest_rating
FROM Movies

-- 55. Find the longest movie duration.

SELECT MAX(duration_minutes) AS logest_duration_movie
FROM Movies

-- 56. Find the shortest movie duration.

SELECT MIN(duration_minutes) AS Shortest_duration_movie
FROM Movies

-- 57. Find the average movie duration.

SELECT AVG(duration_minutes) AS average_movie_duration
FROM Movies

-- 58. Count how many Hindi movies exist.

SELECT language, COUNT(language) AS hindi_movies
FROM Movies
GROUP BY language
HAVING language = 'Hindi'


-- 59. Count how many English movies exist.

SELECT language, COUNT(language) AS english_movies
FROM Movies
GROUP BY language
HAVING language = 'English'

--  OR

SELECT COUNT(*) AS english_movies
FROM Movies
WHERE language = 'English'



-- 60. Count how many movies were released in 2019.

SELECT 
	COUNT(*) AS moives_released_in_2019
FROM Movies
WHERE release_year = 2019;


/* Intermediate — GROUP BY */


-- 61. Count movies by genre.

SELECT genre, COUNT(genre) AS genre_movies_count
FROM Movies
GROUP BY genre;

-- 62. Count movies by language.

SELECT language, COUNT(language) AS language_movies_count
FROM Movies
GROUP BY language;

-- 63. Find the average rating for each genre.

SELECT genre, AVG(rating) AS avg_rating_genre
FROM Movies
GROUP BY genre;


-- 64. Find the average rating for each language.

SELECT language, AVG(rating) AS avg_rating_lang
FROM Movies
GROUP BY language;

-- 65. Find the highest rating in each genre.

SELECT genre, MAX(rating) AS highest_rating
FROM Movies
GROUP BY genre;


-- 66. Find the lowest rating in each genre.

SELECT genre, MIN(rating) AS lowest_rating_genre
FROM Movies
GROUP BY genre

-- 67. Find the average duration for each genre.

SELECT genre, AVG(duration_minutes) AS avg_duration
FROM Movies
GROUP BY genre

-- 68. Find the number of movies released in each year.

SELECT release_year, COUNT(*) AS movies_released_in_each_year
FROM Movies
GROUP BY release_year


-- 69. Find the average rating for each release year.

SELECT release_year, AVG(rating) AS avg_release_year_rating
FROM Movies
GROUP BY release_year

--70. Find the maximum duration for each genre.

SELECT genre, MAX(duration_minutes) AS max_duration_by_genre
FROM Movies
GROUP BY genre

SELECT language, COUNT(language) AS english_movies
FROM Movies
GROUP BY language
HAVING language = 'English'

-- Intermediate — HAVING


-- 71. Find genres having more than 2 movies.

SELECT genre, COUNT(*) AS total_movies
FROM Movies
GROUP BY genre
HAVING COUNT(*) > 2;

-- 72. Find languages having more than 3 movies.

SELECT genre, COUNT(*) AS total_movies
FROM Movies
GROUP BY genre
HAVING COUNT(*) > 3;


-- 73. Find genres whose average rating is greater than 8.3.

SELECT genre, AVG(rating) AS avg_rating
FROM Movies
GROUP BY genre
HAVING AVG(rating) > 8.3;

-- 74. Find languages whose average rating is greater than 8.2.


SELECT genre, AVG(rating) AS avg_rating
FROM Movies
GROUP BY language
HAVING AVG(rating) > 8.2;

-- 75. Find years having more than 1 movie.


SELECT release_year, COUNT(*) AS total_movies
FROM Movies
GROUP BY release_year
HAVING COUNT(*) > 1;


--- 76. Find genres whose maximum rating is greater than 8.7.

SELECT genre, MAX(rating) AS total_movies
FROM Movies
GROUP BY genre
HAVING MAX(rating) > 8.7

-- 77. Find genres whose average duration is greater than 150 minutes.


SELECT genre, AVG(duration_minutes) AS total_movies
FROM Movies
GROUP BY genre
HAVING AVG(duration_minutes) > 150;


--- 78. Find languages whose minimum rating is greater than 7.5.


SELECT language, MIN(rating) AS total_movies
FROM Movies
GROUP BY language
HAVING MIN(rating) > 7.5;

--79. Find years whose average rating is greater than 8.0.

select * from movies;

SELECT release_year, AVG(rating) AS total_movies
FROM Movies
GROUP BY release_year
HAVING AVG(rating) > 8.0;

-- 80. Find genres having at least 2 movies and average rating above 8.0

SELECT 
	genre, 
	COUNT(*) AS total_movies, 
	AVG(rating) AS avg_rating
FROM Movies
GROUP BY genre
HAVING COUNT(*) >= 2 AND AVG(rating) > 8.0;

/* Intermediate — Mixed logic */

-- 81. Find the highest-rated English movie.

SELECT TOP 1  title, language, rating
FROM Movies
WHERE language = 'English'
ORDER BY rating DESC;


-- 82. Find the lowest-rated Hindi movie.

SELECT TOP 1  title, language, rating
FROM Movies
WHERE language = 'Hindi'
ORDER BY rating ASC;

--- 83. Find the longest Action movie.

SELECT TOP 1
	title,
	language,
	genre,
	rating,
	duration_minutes
FROM Movies
WHERE genre = 'Action'
ORDER BY duration_minutes DESC;

-- OR --- 

-- By using subquery

SELECT 
	title,
	language,
	genre,
	rating,
	duration_minutes
FROM Movies
WHERE genre = 'Action'
	AND duration_minutes = (
		SELECT MAX(duration_minutes)
		FROM Movies
		Where genre = 'Action'
);

-- 84. Find the shortest Animation movie.


SELECT TOP 1
	title,
	language,
	genre,
	rating,
	duration_minutes
FROM Movies
WHERE genre = 'Animation'
ORDER BY duration_minutes ASC; 


-- 85. Find the average rating of movies released after 2010.

SELECT 
	AVG(rating) AS avg_rating_2010_Movies
FROM Movies
WHERE release_year > 2010


-- 86. Count Action movies released after 2015.
select * from movies

SELECT 
	COUNT(genre) As action_movies_after2015
FROM Movies
WHERE genre = 'Action' AND release_year > 2015


---87. Find the average duration of English movies.

SELECT 
	AVG(duration_minutes) AS avg_duration_English_Movies
FROM Movies
WHERE language = 'English'

-- 88. Find the highest-rated movie released between 2010 and 2020.
SELECT TOP 1
	title AS highest_rated_movie,
	rating,
	release_year
FROM Movies
WHERE release_year BETWEEN 2010 AND 2020
ORDER BY rating DESC;

-- 89. Find the top 3 highest-rated Hindi movies.

SELECT TOP 3
	title AS highest_rated_movie,
	rating,
	language
FROM Movies
WHERE language = 'Hindi' 
ORDER BY rating DESC;

---90. Find the top 5 longest movies with rating above 8.0.

SELECT TOP 5
	title AS longest_movie,
	duration_minutes,
	rating
FROM Movies
WHERE rating > 8.0
ORDER BY duration_minutes DESC;



/* Intermediate — UPDATE / DELETE / practical  */

select * from Movies


-- 91. Increase the rating of 'Inception' by 0.1.

UPDATE Movies
	SET rating = rating + 0.1
WHERE title = 'Inception'

--92. Change the genre of 'The Social Network' to 'Biography'.

UPDATE Movies
	SET genre = 'Biography'
WHERE title = 'The Social Network'

-- 93. Change the language of 'RRR' to 'Telugu'.

UPDATE Movies
	SET language = 'Telugu'
WHERE title = 'RRR'

-- 94. Increase the duration of 'Toy Story' by 5 minutes.

UPDATE Movies
	SET duration_minutes = duration_minutes + 5
WHERE title = 'Toy Story'


--95. Set the rating of 'Pushpa' to 7.8.

UPDATE Movies
	SET rating = 7.8
WHERE title = 'Pushpa'

-- 96. Update all movies released before 2000 and set their genre to 'Classic'.

UPDATE Movies
	SET genre = 'Classic'
WHERE release_year < 2000


-- 97. Increase the rating by 0.1 for all movies with rating below 8.0.

UPDATE Movies
	SET rating = rating + 0.1
WHERE rating < 8.0;

-- 98. Delete the movie with movie_id 20.

DELETE FROM Movies
WHERE movie_id = 20;

--99. Delete movies with rating below 7.8.

DELETE FROM Movies
WHERE rating < 7.8;

-- 100. After your updates/deletes, write a query to display all remaining movies ordered by rating descending.

SELECT *
FROM Movies
ORDER BY rating DESC;


/* 


**📝 Note for Visitors**

Some queries may contain minor errors in column aliases (`AS`) or alias names. Please ignore these minor naming issues, as the main focus of this repository is on SQL query logic, problem-solving, and practicing SQL concepts.

This repository documents my learning journey, and I will continue improving my queries as I learn more. Thank you for understanding! 😊

## 🎯 Final Note

I have completed 100 SQL practice questions using SQL Server and a custom Movies database. This journey improved my SQL fundamentals, query logic, and problem-solving skills as I work toward becoming a **Data Analyst**.

**Note:** Please ignore minor `AS` alias naming errors, as the main focus is on SQL logic and practice.

Thank you for visiting my repository! ⭐

*/
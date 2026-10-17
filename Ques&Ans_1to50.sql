/* MovieDB SQL Practice quuestions */

USE MovieDB

-- SELECT & Basics

-- Question 1:- Display all columns from the Movies Table.

SELECT * FROM Movies;

-- Question 2:- Display only title and genre

SELECT title, genre
FROM Movies;

-- Question 3:- Display title, release_year, and rating.

 SELECT title, release_year, rating
FROM Movies;

--Question 4:- Display title and duration_minutes.

SELECT title, duration_minutes
FROM Movies;

-- 5. Display all Hindi movies' title, language, and genre.

SELECT title, language , genre
FROM Movies
WHERE language = 'Hindi'

-- 6. Display all distinct genres.

SELECT DISTINCT genre
FROM Movies

-- 7. Display all distinct languages.

SELECT DISTINCT language
FROM Movies

-- 8. Display movie title with an alias Movie_Name.

SELECT title AS Movie_Name
FROM Movies

-- 9. Display rating with an alias IMDb_Rating.

SELECT rating AS IMDb_Rating
FROM Movies


--10. Display title, duration_minutes, and rating for every movie.

SELECT title, duration_minutes, rating
FROM Movies



/* WHERE & comparison operators */


-- 11. Find movies released after 2010.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year > 2010

-- 12. Find movies released before 2000.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year < 2000

-- 13. Find movies released in 2019.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year = 2019


-- 14. Find movies with rating greater than 8.5.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE rating > 8.5


-- 15. Find movies with rating less than 8.0.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE rating < 8.0

-- 16. Find movies with duration greater than 180 minutes.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE duration_minutes > 180


-- 17. Find movies with duration less than 100 minutes.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE duration_minutes < 100


-- 18. Find movies released in 2010 or later.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year >= 2010


-- 19. Find movies whose rating is exactly 8.4.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE rating = 8.4

-- 20. Find movies whose duration is exactly 152 minutes.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE duration_minutes = 152

/* Easy --- And / OR */


-- 21. Find English movies released after 2010.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE language = 'English'
AND release_year > 2010

-- 22. Find Hindi movies with rating above 8.0.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE language = 'Hindi'
AND rating > 8.0

-- 23. Find Sci-Fi movies with rating above 8.5.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE genre = 'Sci-Fi'
AND rating > 8.5


--- 24. Find Action movies released after 2015.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE language = 'Action'
AND release_year > 2015


-- 25. Find movies released after 2010 AND rating above 8.0.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year > 2010
AND rating > 8.0	

-- 26. Find movies released before 2000 OR rating above 8.8.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year < 2000
AND rating > 8.8


-- 27. Find English movies with duration greater than 140 minutes.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE language = 'English'
AND duration_minutes > 140

-- 28. Find Hindi movies released after 2010 AND rating above 8.0.

SELECT 
	movie_id, 
	title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE language = 'Hindi'
AND release_year > 2010
AND rating > 8.0 

-- 29. Find Animation movies with rating greater than 8.3.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE genre= 'Animation'
AND rating > 8.3

-- 30. Find movies that are either Action or Drama.


SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE 
	genre = 'Action' 
	OR genre = 'Drama'



/* Easy--- Like / IN / NOT IN */


--31. Find movies whose title starts with 'The'.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE title LIKE 'The%'

-- 32. Find movies whose title contains the word 'The'.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE title LIKE '%The%'


--33. Find movies whose title ends with 'y'.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE title LIKE '%y'

-- 34. Find movies whose title contains 'Toy'.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE title LIKE '%Toy%'

-- 35. Find movies whose genre is either Action, Drama, or Comedy using IN.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE genre IN ('Action', 'Drama', 'Comedy')

-- 36. Find movies whose language is English or Hindi using IN.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE language IN ('Hindi', 'English')


-- 37. Find movies whose language is NOT English.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE NOT language = 'English'

--38. Find movies whose genre is NOT Action.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE NOT genre = 'Action'

-- 39. Find movies whose title contains the letter 'a'.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE title LIKE '%a%'


--40. Find movies whose title starts with 'T' and rating is above 8.0.

SELECT 
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE title LIKE 'T%'


/* Easy — BETWEEN / ORDER BY / TOP / DISTINCT */


-- 41. Find movies released between 2000 and 2010.


SELECT
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year BETWEEN 2000 AND 2010

-- 42. Find movies with rating between 8.0 and 8.5.

SELECT
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE rating BETWEEN 8.0 AND 8.5


-- 43. Find movies with duration between 120 and 160 minutes.

SELECT
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE duration_minutes BETWEEN 120 AND 160

-- 44. Find movies released between 2010 and 2020 and show newest first.

SELECT
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
WHERE release_year BETWEEN 2010 AND 2020

-- 45. Display all movies ordered by rating from highest to lowest.

SELECT
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
ORDER BY rating DESC;

-- 46. Display all movies ordered by duration from shortest to longest.

SELECT
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
ORDER BY rating ASC;

-- 47. Display movies ordered by release_year descending.

SELECT
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
ORDER BY release_year DESC;


--48. Display the top 5 highest-rated movies.

SELECT TOP 5
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
ORDER BY rating DESC

-- 49. Display the top 3 longest movies.

SELECT TOP 3
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
ORDER BY duration_minutes 


-- 50. Display the top 5 newest movies

SELECT TOP 5
	movie_id, title, 
	release_year, 
	genre, 
	language, 
	duration_minutes, 
	rating
FROM  Movies
ORDER BY release_year DESC;

-- ============================================================
-- 🎯 SQL Practice: Questions 1–50 Completed
--
-- One step at a time, one query at a time.
-- Keep learning, keep practicing, and keep growing! 🚀
--
-- Thank you for staying with me on this journey.
-- Bane raho shero! 🦁🔥
--
-- Next milestone: Questions 51–100
-- The next practice set will be shared separately.
--
-- Keep coding. Keep improving. Keep pushing forward! 💪
-- ============================================================
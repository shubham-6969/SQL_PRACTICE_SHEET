USE MovieDB

CREATE TABLE Movies
(
	movie_id INT PRIMARY KEY,
	title VARCHAR(100),
	release_year INT,
	genre VARCHAR(50),
	language VARCHAR(30),
	duration_minutes INT,
	rating DECIMAL(3,1)
);


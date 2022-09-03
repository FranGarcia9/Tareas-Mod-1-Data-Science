user master;
show tables;
Select * FROM netflix_titles;

#1
SELECT type, title, director, country FROM netflix_titles

#2
;SELECT type, COUNT(*)FROM netflix_titles GROUP BY type

#3
;SELECT country, MAX(release_year) FROM netflix_titles 

#4
;SELECT title, director, MIN(release_year) FROM netflix_titles;

#5
SELECT title, cast, rating FROM netflix_titles WHERE duration = "1 Season"

#6
;SELECT title, duration, description, country FROM netflix_titles Where listed_in = "Comedies";

#7
;SELECT title, duration, description, release_year FROM netflix_titles WHERE type = "Movie" ORDER BY release_year DESC limit 30
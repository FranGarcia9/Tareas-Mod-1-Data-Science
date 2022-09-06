use master;
show tables;
describe cities;
describe countries;
SELECT cities.name AS city, code, country_name AS country, region, city_proper_pop
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code
ORDER BY country_code DESC;

#ejercicio 2

SELECT country_name AS country, local_name,name AS language, percent
FROM countries
LEFT JOIN languages
ON languages.code = countries.code
#En las indicaciones del ejercicio no menciona ordenar de forma desendente los nombres, pero en la comptura del ejemplo sí aparecen
ORDER BY country_name DESC;

#ejercicio 3
SELECT country_name, region, gdp_percapita
FROM countries
LEFT JOIN economies
ON countries.code = economies.code
WHERE economies.year = 2010

#ejercicio 4
#En este ejercicio no me quedaron claras las intrucciones
SELECT city, urbanarea_pop, country_name AS country, indep_year, city, language, percent
FROM countries
RIGHT JOIN (SELECT languages.name AS language, percent, cities.name AS city, urbanarea_pop, code
            FROM languages 
            RIGHT JOIN cities ON languages.code = cities.country_code) AS cities
            ON countries.code = cities.code;

#Ejercicio 5
#Este ejercicio no me quedo todo claro
SELECT * FROM populations WHERE life_expectancy > 1.15* (SELECT AVG (life_expectancy) FROM populations WHERE populations.year = 2015) AND year = 2015;

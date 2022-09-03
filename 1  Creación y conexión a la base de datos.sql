
;INSERT INTO user VALUES ('bob@example.com', 'Bob', 'Codd', '123 Fantasy lane, Fantasy City', '30')
;INSERT INTO user VALUES ('tom@web.com', 'Tom', 'Fake', '456 Fantasy lane, Fantasy City', 39)

;SELECT * FROM user

;SELECT email, first_name FROM user
;SELECT first_name, last_name FROM user

;SELECT email, gender FROM user

;SELECT *FROM user WHERE age = 39

;SELECT email, age FROM user ORDER BY age DESC

;ALTER TABLE user ADD COLUMN gender text

;UPDATE user SET gender = "M"
#Tuve un problema con actualizar ese valor, pero en la parte de MESSAGE aperecía la solución 
;SELECT email, gender FROM user

;UPDATE user SET age= 38 WHERE user.email="bob@example.com"
;SELECT email, gender, age FROM user ORDER BY age DESC

;INSERT INTO user VALUES('shelly@www.com', 'Shelly', 'Milar', '123, Ocean View Lane', 39, 'F')
;SELECT * FROM user

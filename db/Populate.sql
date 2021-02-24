INSERT All
INTO Client VALUES  (1,'Dancho', 'Ivanov', 'Petrov')
INTO Client VALUES  (2,'Ivan', 'Krasimirov', 'Stefanov')
INTO Client VALUES  (3,'Gergin', 'Petrov', 'Cembov')
INTO Client VALUES  (4,'Pesho', 'Krasimirov', 'Stefanov')
INTO Client VALUES  (5,'Mesho', 'Ivanov', 'Dembov')
INTO Client VALUES  (6,'Lili', 'Krasimirov', 'Membow')
INTO Client VALUES  (7,'Stefan', 'Petrov', 'Ivanov')
INTO Client VALUES  (8,'Canko', 'Krasimirov', 'Dochev')
INTO Client VALUES  (9,'Manko', 'Dochev', 'Stefanov')
INTO Client VALUES  (10,'Didi', 'Krasimirov', 'Dochev')
SELECT 1 FROM DUAL;


INSERT All
INTO Driver VALUES  (1,'Dancho', 'Ivanov', '11-Nov-1999','Banishora','VW', 1)
INTO Driver VALUES  (2,'Ivan', 'Stefanov', '11-Nov-1999','Banishora','VW', 1)
INTO Driver VALUES  (3,'Gergin', 'Cembov', '11-Nov-1999','Banishora','VW', 1)
INTO Driver VALUES  (4,'Pesho', 'Stefanov', '11-Nov-1999','Banishora','VW', 1)
INTO Driver VALUES  (5,'Mesho', 'Dembov', '11-Nov-1999','Banishora','VW', 1)
SELECT 1 FROM DUAL;
 
 
INSERT All
INTO Place VALUES ('Varna',(point(43,19)))
INTO Place VALUES ('Sofia',(point(64,12)))
INTO Place VALUES ('Ruse',(point(89,23)))
INTO Place VALUES ('Burgas',(point(44,17)))
INTO Place VALUES ('Vidin',(point(76,18)))
INTO Place VALUES ('Lom',(point(99,10)))
INTO Place VALUES ('Silistra',(point(11,12)))
INTO Place VALUES ('Nikopol',(point(4123,1232)))
INTO Place VALUES ('Tarno-Magureli',(point(33,53)))
SELECT 1 FROM DUAL;

INSERT All
INTO Available VALUES (1,'11-Nov-1999',(point(39,11)))
INTO Available VALUES (3,'11-Nov-1999',(point(21,24)))
INTO Available VALUES (2,'11-Nov-1999',(point(33,29)))
INTO Available VALUES (4,'11-Nov-1999',(point(56,12)))
SELECT 1 FROM DUAL;

INSERT All
INTO Request VALUES (1,3,'18-Nov-1999','Varna','Burgas')
INTO Request VALUES (2,3,'17-Nov-1999','Silistra','Burgas')
INTO Request VALUES (3,2,'16-Nov-1999','Ruse','Nikopol')
INTO Request VALUES (4,1,'15-Nov-1999','Varna','Burgas')
INTO Request VALUES (5,2,'14-Nov-1999','Ruse','Nikopol')
SELECT 1 FROM DUAL;


INSERT All
INTO Dispatch VALUES (1,5,(point(20,15)),'14-Nov-1999')
INTO Dispatch VALUES (3,2,(point(50,30)),'14-Nov-1999')
INTO Dispatch VALUES (2,4,(point(10,70)),'14-Nov-1999')
INTO Dispatch VALUES (4,5,(point(50,60)),'14-Nov-1999')
SELECT 1 FROM DUAL;

INSERT All
INTO Pickup VALUES (1,'14-Nov-1999')
INTO Pickup VALUES (2,'15-Nov-1999')
INTO Pickup VALUES (3,'16-Nov-1999')
INTO Pickup VALUES (4,'17-Nov-1999')
SELECT 1 FROM DUAL;

INSERT All
INTO Dropoff VALUES (1,'14-Nov-1999')
INTO Dropoff VALUES (2,'15-Nov-1999')
INTO Dropoff VALUES (3,'16-Nov-1999')
INTO Dropoff VALUES (4,'17-Nov-1999')
SELECT 1 FROM DUAL;

INSERT All
INTO Billed VALUES (1,100)
INTO Billed VALUES (2,231)
INTO Billed VALUES (3,76)
INTO Billed VALUES (4,87)
SELECT 1 FROM DUAL;

INSERT All
INTO DriverRating VALUES (1,4)
INTO DriverRating VALUES (2,5)
INTO DriverRating VALUES (3,5)
INTO DriverRating VALUES (4,3)
SELECT 1 FROM DUAL;

INSERT All
INTO ClientRating VALUES (1,4)
INTO ClientRating VALUES (2,5)
INTO ClientRating VALUES (3,5)
INTO ClientRating VALUES (4,3)
SELECT 1 FROM DUAL;









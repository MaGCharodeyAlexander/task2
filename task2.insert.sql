INSERT INTO RESEARCH_DIRECTORY (NAME,COST,DURATION) VALUES 	
		('MRT',550,'13:20:00'),
		('MRT scan',700,'13:25:00'),
		('Ultrasonography',740,'14:30:00'),
		('Massage',400,'16:00:00'),
		('fluorography',160,'15:04:00'),
		('Laser vision correction',2700,'03:00:00'),
		('Cardiogram',250,'17:07:00'),
		('fluorography',200,'14:04:00');

INSERT INTO ADDRESS (COUNTRY,REGION,CITY,STREET,HOUSE) VALUES 	
		('Russia','Moscow Region','Moscow','Krasnaya Presnya','6'),
		('England','Greater Manchester','Manchester','Old Trafford','5'),
		('Poland','Lisbon Region','Lisbon','Ray','4'),
		('Spain','Catalonia','Barcelona','Nou Camp','3');

INSERT INTO SUBDIVISION(NAME,ID_ADDRESS)VALUES
	 	('Super clinic','2'),
		('Bad clinic','1'),
		('50/50 clinic','3'),
		('Good Smile Clinic','4'),
		('Death Clinic','1'),
		('Trafalgar clinic','2'),
		('Queen Clinic','3'),
		('Expensive clinic','4');

INSERT INTO PATIENT(SURNAME,NAME,MIDDLE_NAME,BIRTHDAY,GENDER,PHONE,EMAIL,APARTMENT,ID_ADDRESS)VALUES	
		('Ivanov','Ivan','Ivanovich','1986-12-01','Man','5476612','ivanov_ii@email.com',32,'1'),
		('Sanchez','Karter',NULL,'1987-10-30','Man','897525689','grzegosz@email.com',11,'4'),
		('Samsonov','Igor','Olegovich','1998-03-11','Man','65897456','semenov_ii@email.com',85,'1'),
		('Norman','Alexandra','Sergeevna','1988-04-01','Woman','54726828','katova_ii@email.com',14,'3'),
		('Voina','Irina','Ivanovna','1968-04-18','Woman','547354725','ivanova_ii@email.com',2,'2');

INSERT INTO VISIT(STATUS_VISIT,VISIT_DATE,ID_PATIENT,ID_SUBDIVISION)VALUES
		('waited','2010-06-11','1','1'),
		('waited','2011-04-14','1','3'),
		('on researches','2012-06-14','2','4'),
		('in department','2013-12-31','4','4'),
		('on researches','2009-06-16','3','5'),
		('in department','2008-07-05','1','3'),
		('finished','2005-03-14','2','8'),
		('finished','2014-01-01','5','7'),
		('finished','2009-05-05','5','8');

INSERT INTO STYDU(START_DATE,EXPIRATION_DATE,STATUS,ID_VISIT,ID_RESEARCH_DIRECTORY)VALUES
		('2015-06-11 10:20:15',NULL,'started','2','4'),
		('2011-04-13 12:45:23','2011-04-14 13:02:23','finished','2','8'),
		('2012-06-14 09:15:48','2012-06-16 09:48:15','finished','5','7'),
		('2012-06-14 11:42:17','2012-06-15 11:53:14','finished','5','8'),
		('2015-11-03 15:00:00',NULL,'during','3','5'),
		('2009-06-17 14:23:11',NULL,'started','4','4'),
		('2011-04-15 12:28:17',NULL,'during','3','5'),
		('2013-12-31 23:40:40',NULL,'started','4','4');


CREATE TABLE PAYS
(		
				
   CODE_PAYS CHAR(2) ,
   LIB_PAYS varchar(60),
   CODE_REGION CHAR(2) ,
   LIB_REGION varchar(60),
   NB_JOUEURS_PAYS BIGINT
)
;
INSERT INTO PAYS  VALUES ('JP','Japon','AS','Asie',20000000);
INSERT INTO PAYS  VALUES ('US','Etats Unis','AN','Amérique du Nord',100000000);
INSERT INTO PAYS  VALUES ('BE','Belgique','EU','Europe',1000000);				
INSERT INTO PAYS  VALUES ('ML','Mali','AF','Afrique',20000);				
INSERT INTO PAYS  VALUES ('FR','France','EU','Europe',5000000);					
		
CREATE TABLE MAGASIN
(
   CODE_MAGASIN CHAR(2),
   LIB_MAGASIN varchar(50),
   CA_ANNUEL REAL,
   CODE_RESPONSABLE CHAR(3),
   CODE_CHAINE CHAR(4),
   LIB_CHAINE  varchar(50)
)
;
INSERT INTO MAGASIN  VALUES ('CS','Micromania Creteil Soleil',1500000,'CSC','MCM','Micromania');
INSERT INTO MAGASIN  VALUES ('BE','Micromania Belle Epine',1200000,'VPC','MCM','Micromania');
INSERT INTO MAGASIN  VALUES ('PM','FNAC Paris Montparnasse',3100000,'PMC','FNAC','FNAC');	
INSERT INTO MAGASIN  VALUES ('HA','FNAC Chatelet - Les Halles',6500000,'HAC','FNAC','FNAC');	

CREATE TABLE DEVELOPPEUR
(
   CODE_DEVELOPPEUR CHAR(2) ,
   LIB_DEVELOPPEUR varchar(60),
   ID_EDITEUR CHAR(2),
   LIB_EDITEUR varchar(60),
   CODE_PAYS CHAR(2),
   DATE_CREATION DATE,
   NB_EMPLOYES INT
)
;
						
INSERT INTO DEVELOPPEUR  VALUES ('FS','From Software','FS','From Software','JP','1986-11-01',600);
INSERT INTO DEVELOPPEUR  VALUES ('BE','Blizzard Entertainment','BE','Blizzard Entertainment','US','1991-01-01',6700);
INSERT INTO DEVELOPPEUR  VALUES ('T2','Take 2 Interactive','RS','Rockstar Games','US','1998-01-01',2500);
INSERT INTO DEVELOPPEUR  VALUES ('LS','Larian Studio','LS','Larian Studio','BE','1996-01-01',70);
INSERT INTO DEVELOPPEUR  VALUES ('PG','Platinum Games','SE','Sega','JP','2006-08-01',110);
INSERT INTO DEVELOPPEUR  VALUES ('SE','Sega','SE','Sega','JP','1951-01-01',2000);
INSERT INTO DEVELOPPEUR  VALUES ('BT','Bethesda Software','ZE','Zenimax','US','1986-06-28',400);
INSERT INTO DEVELOPPEUR  VALUES ('NI','Nintendo Entertainment Planning & Development','NI','Nintendo','JP','2015-09-16',700);


CREATE TABLE JEUX
(
					

   ID_JEU INT,
   CODE_JEU varchar(5) ,
   CODE_DEVELOPPEUR CHAR(2),
   LIB_JEU varchar(60),
   DATE_SORTIE DATE,
   PRIX_SORTIE float(20)
)
;

INSERT INTO JEUX VALUES (1,'DM1','FS','Demon Souls ','2009-02-05',40.0);
INSERT INTO JEUX VALUES (2,'DS1','FS','Dark Souls ','2011-09-01',50.0);
INSERT INTO JEUX VALUES (3,'DS2','FS','Dark Souls 2','2014-03-01',60.0);
INSERT INTO JEUX VALUES (4,'SC1','BE','Starcraft','1998-01-01',20.0);
INSERT INTO JEUX VALUES (5,'SC2','BE','Starcraft 2','2010-07-27',40.0);
INSERT INTO JEUX VALUES (6,'SC2W','BE','Starcraft 2 Wings Of Liberty','2013-03-12',50.0);
INSERT INTO JEUX VALUES (7,'WC1','BE','Warcraft','1994-01-01',20.0);
INSERT INTO JEUX VALUES (8,'WC2','BE','Warcraft 3','2012-07-01',40.0);
INSERT INTO JEUX VALUES (9,'GTA4','T2','Grand Theft Auto IV','2008-01-01',40.0);
INSERT INTO JEUX VALUES (10,'GTA5','T2','Grand Theft Auto V','2013-10-10',50.0);
INSERT INTO JEUX VALUES (11,'RDR','T2','Red Dead Redemption','2010-05-18',45.0);
INSERT INTO JEUX VALUES (12,'DD','LS','Divine Divinity','2002-09-20',35.0);
INSERT INTO JEUX VALUES (13,'DDOS','LS','Divinity - Original Sin','2014-04-02',60.0);
INSERT INTO JEUX VALUES (14,'BAY1','PG','Bayonetta 1','2010-01-05',55.0);
INSERT INTO JEUX VALUES (15,'BAY2','PG','Bayonetta 2','2014-10-01',65.0);
INSERT INTO JEUX VALUES (16,'SO1','SE','Sonic Generation','2011-11-01',50.0);
INSERT INTO JEUX VALUES (17,'BG3','LS','Baldur s Gate III','2023-08-03',70.0);
INSERT INTO JEUX VALUES (18,'STF','BT','Starfield','2023-09-06',75.0);
INSERT INTO JEUX VALUES (19,'ZL5','NI','The Legend of Zelda: Tears of the Kingdom','2023-05-12',75.0);

 

		
CREATE TABLE VENTES
(	
   ID_TRANSACTION BIGINT,
   DT_TRANSACTION DATE ,
   CODE_MAGASIN CHAR(3),
   CODE_JEU varchar(5),
   PRIX_VENTE float(20),
   CODE_VENDEUR CHAR(3)
);

INSERT INTO VENTES VALUES (1,'2014-11-01','CS','SC2',15,'CS1');
INSERT INTO VENTES VALUES (2,'2014-11-01','CS','DS2',35,'CS1');
INSERT INTO VENTES VALUES (3,'2014-11-01','CS','WC2',35,'CS1');
INSERT INTO VENTES VALUES (4,'2014-11-01','CS','GTA5',50,'CS1');
INSERT INTO VENTES VALUES (5,'2014-11-02','PM','GTA4',35,'PM1');
INSERT INTO VENTES VALUES (6,'2014-11-02','PM','SC2',25,'PM1');
INSERT INTO VENTES VALUES (7,'2014-11-03','CS','BAY1',35,'CS2');
INSERT INTO VENTES VALUES (8,'2014-11-03','CS','BAY1',40,'CS2');
INSERT INTO VENTES VALUES (9,'2014-11-03','CS','BAY2',50,'CS1');
INSERT INTO VENTES VALUES (10,'2014-11-03','CS','BAY2',55,'CS1');
INSERT INTO VENTES VALUES (11,'2014-11-03','BE','SC2W',35,'BE1');
INSERT INTO VENTES VALUES (12,'2014-11-03','BE','RDR',40,'BE2');
INSERT INTO VENTES VALUES (13,'2014-11-03','BE','DS1',15,'BE1');
INSERT INTO VENTES VALUES (14,'2014-11-04','CS','SC2',50,'CS1');
INSERT INTO VENTES VALUES (15,'2014-11-04','CS','BAY2',55,'CS1');
INSERT INTO VENTES VALUES (16,'2014-11-04','CS','BAY2',55,'CS1');
INSERT INTO VENTES VALUES (17,'2014-11-05','CS','GTA4',45,'CS2');
INSERT INTO VENTES VALUES (18,'2014-11-05','CS','GTA5',50,'CS1');
INSERT INTO VENTES VALUES (19,'2014-11-05','CS','SC2',25,'CS1');
INSERT INTO VENTES VALUES (20,'2014-11-05','PM','DDOS',50,'PM1');
INSERT INTO VENTES VALUES (21,'2014-11-05','PM','COD3',30,'PM1');
INSERT INTO VENTES VALUES (22,'2014-11-06','BE','BAY2',55,'BE3');
INSERT INTO VENTES VALUES (23,'2014-11-06','BE','SO1',60,'BE1');
INSERT INTO VENTES VALUES (24,'2014-11-07','CS','SC2W',45,'CS1');
INSERT INTO VENTES VALUES (25,'2014-11-07','BE','SC2W',45,'BE2');
INSERT INTO VENTES VALUES (26,'2014-11-08','CS','RDR',45,'CS1');
INSERT INTO VENTES VALUES (27,'2014-11-09','CS','BAY2',55,'CS1');
INSERT INTO VENTES VALUES (28,'2023-09-02','CS','BG3',65,'CS1');
INSERT INTO VENTES VALUES (29,'2023-09-04','CS','BG3',65,'CS2');
INSERT INTO VENTES VALUES (30,'2023-09-06','PM','BG3',65,'PM1');
INSERT INTO VENTES VALUES (31,'2023-09-07','PM','BG3',65,'PM1');
INSERT INTO VENTES VALUES (32,'2023-09-12','CS','STF',67,'CS1');
INSERT INTO VENTES VALUES (33,'2023-09-14','CS','STF',67,'CS2');
INSERT INTO VENTES VALUES (34,'2023-09-15','PM','STF',68,'PM1');
INSERT INTO VENTES VALUES (35,'2023-09-18','PM','STF',68,'PM1');
INSERT INTO VENTES VALUES (36,'2023-09-14','CS','STF',65,'CS1');
INSERT INTO VENTES VALUES (37,'2023-09-15','CS','STF',65,'CS2');
INSERT INTO VENTES VALUES (38,'2023-09-17','PM','STF',65,'PM1');
INSERT INTO VENTES VALUES (39,'2023-09-18','PM','STF',65,'PM1');
INSERT INTO VENTES VALUES (40,'2023-09-19','CS','STF',67,'CS1');
INSERT INTO VENTES VALUES (41,'2023-09-20','CS','STF',67,'CS2');
INSERT INTO VENTES VALUES (42,'2023-09-21','PM','STF',68,'PM1');
INSERT INTO VENTES VALUES (43,'2023-09-22','PM','STF',68,'PM1');

fsiddiquicarteencfsiddiqui